package com.android.server.chimera;

import android.os.Looper;
import android.text.TextUtils;
import com.android.server.chimera.ChimeraAppInfo;
import com.android.server.chimera.ChimeraCommonUtil;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class AggressivePolicyHandler extends PolicyHandler {
    public long mAdjustTargetFreeEndTime;
    public double mAdjustTargetFreeFactor;
    public ProtectLevel mCurProtectLevel;
    public int mHeavyLaunchBufferSize;
    public HeavyLaunchCounter mHeavyLaunchCounter;
    public int mHeavyLaunchPackageLimit;
    public boolean mIsAdjustTargetFree;
    public boolean mIsHeavyLaunchOn;
    public int mPkgKillIntervalDefault;
    public long mReleasedMemory;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum ProtectLevel {
        NORMAL,
        HEAVY
    }

    public static /* synthetic */ boolean lambda$doKill$3(int i) {
        return i >= 100 && i < 300;
    }

    public final boolean isFreeTargetSatisfied(long j, long j2) {
        return j >= j2 || j2 - j < 20480;
    }

    public AggressivePolicyHandler(ChimeraAppManager chimeraAppManager, ChimeraStrategy chimeraStrategy, SystemRepository systemRepository, SettingRepository settingRepository, AbnormalFgsDetector abnormalFgsDetector, Looper looper) {
        super(chimeraAppManager, chimeraStrategy, systemRepository, settingRepository, abnormalFgsDetector, looper);
        this.mPkgKillIntervalDefault = 43200000;
        this.mReleasedMemory = 0L;
        this.mIsAdjustTargetFree = false;
        this.mAdjustTargetFreeEndTime = 0L;
        this.mAdjustTargetFreeFactor = 1.0d;
        this.mCurProtectLevel = ProtectLevel.NORMAL;
        this.mIsHeavyLaunchOn = false;
        this.mHeavyLaunchBufferSize = 0;
        this.mHeavyLaunchPackageLimit = 0;
        this.mSkipReasonLogger = new SkipReasonLogger(systemRepository);
        readSystemProperties();
        if (this.mIsHeavyLaunchOn) {
            this.mHeavyLaunchCounter = new HeavyLaunchCounter(this.mHeavyLaunchBufferSize, this.mHeavyLaunchPackageLimit);
            this.mSystemRepository.log("AggressivePolicyHandler", "Heavy launch param : " + this.mHeavyLaunchBufferSize + "," + this.mHeavyLaunchPackageLimit);
        }
    }

    private void readSystemProperties() {
        String systemProperty = this.mSystemRepository.getSystemProperty("ro.slmk.chimera_kill_interval_ms", "");
        if (systemProperty != null && systemProperty.length() > 0) {
            String[] split = systemProperty.split(",");
            if (split.length == 2) {
                this.mPkgKillIntervalDefault = Integer.parseInt(split[0]);
                this.mPkgKillIntervalHeavy = Integer.parseInt(split[1]);
            }
        }
        this.mSystemRepository.log("AggressivePolicyHandler", "PKG_KILL_INTERVAL_DEFAULT: " + this.mPkgKillIntervalDefault);
        this.mSystemRepository.log("AggressivePolicyHandler", "PKG_KILL_INTERVAL_HEAVY: " + this.mPkgKillIntervalHeavy);
        int parseInt = Integer.parseInt(this.mSystemRepository.getSystemProperty("persist.sys.chimera_pkg_kill_interval_ms", this.mPkgKillIntervalDefault + ""));
        this.mCemPkgKillIntervalMs = Integer.parseInt(this.mSystemRepository.getSystemProperty("ro.slmk.chimera_cem_pkg_kill_interval_ms", PolicyHandler.CEM_PKG_KILL_INTERVAL_DEFAULT));
        this.mPkgProtectedParameters = new int[][]{new int[]{200, 850, parseInt}, new int[]{100, 850, this.mPkgKillIntervalHeavy}};
        this.mIsKillBoostModeOnNormal = ((Boolean) Optional.of(this.mSystemRepository.getSystemProperty("ro.slmk.chimera_kill_boost_on_normal", "")).filter(new Predicate() { // from class: com.android.server.chimera.AggressivePolicyHandler$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$readSystemProperties$0;
                lambda$readSystemProperties$0 = AggressivePolicyHandler.lambda$readSystemProperties$0((String) obj);
                return lambda$readSystemProperties$0;
            }
        }).map(new Function() { // from class: com.android.server.chimera.AggressivePolicyHandler$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(Boolean.parseBoolean((String) obj));
            }
        }).orElse(Boolean.valueOf(ChimeraCommonUtil.getRamSizeGb() <= 3))).booleanValue();
        this.mIsKillBoostModeOnHeavy = ((Boolean) Optional.of(this.mSystemRepository.getSystemProperty("ro.slmk.chimera_kill_boost_on_heavy", "")).filter(new Predicate() { // from class: com.android.server.chimera.AggressivePolicyHandler$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$readSystemProperties$1;
                lambda$readSystemProperties$1 = AggressivePolicyHandler.lambda$readSystemProperties$1((String) obj);
                return lambda$readSystemProperties$1;
            }
        }).map(new Function() { // from class: com.android.server.chimera.AggressivePolicyHandler$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(Boolean.parseBoolean((String) obj));
            }
        }).orElse(Boolean.valueOf(ChimeraCommonUtil.getRamSizeGb() <= 3))).booleanValue();
        PolicyHandler.mIsBubEnabled = ChimeraCommonUtil.isBubEnabled(this.mSystemRepository);
        String systemProperty2 = this.mSystemRepository.getSystemProperty("ro.slmk.chimera_adjust_boot_targetfree", "");
        if (!TextUtils.isEmpty(systemProperty2)) {
            String[] split2 = systemProperty2.split(",");
            if (split2.length == 2) {
                try {
                    int parseInt2 = Integer.parseInt(split2[0]);
                    this.mAdjustTargetFreeEndTime = System.currentTimeMillis() + (parseInt2 * 1000);
                    this.mAdjustTargetFreeFactor = Double.parseDouble(split2[1]);
                    this.mIsAdjustTargetFree = true;
                    this.mSystemRepository.log("AggressivePolicyHandler", "Adjust targetfree : " + parseInt2 + ", " + this.mAdjustTargetFreeFactor);
                } catch (Exception unused) {
                    this.mSystemRepository.log("AggressivePolicyHandler", "Error while adjust targetfee");
                }
            }
        }
        if (ChimeraCommonUtil.getRamSizeGb() <= 4) {
            this.mHeavyLaunchBufferSize = 80;
            this.mHeavyLaunchPackageLimit = 25;
            this.mIsHeavyLaunchOn = true;
        }
    }

    public static /* synthetic */ boolean lambda$readSystemProperties$0(String str) {
        return !TextUtils.isEmpty(str);
    }

    public static /* synthetic */ boolean lambda$readSystemProperties$1(String str) {
        return !TextUtils.isEmpty(str);
    }

    public void setWeight(float f, float f2) {
        this.mWeightLru = f;
        this.mWeightStandbyBucket = f2;
        this.mWeightMem = new BigDecimal(Float.toString(1.0f)).subtract(new BigDecimal(Float.toString(this.mWeightLru)).add(new BigDecimal(Float.toString(this.mWeightStandbyBucket)))).floatValue();
    }

    @Override // com.android.server.chimera.PolicyHandler
    public int executePolicy(ChimeraCommonUtil.TriggerSource triggerSource, int i) {
        int doKill;
        if (!prepareForTrigger(triggerSource)) {
            this.mSystemRepository.log("AggressivePolicyHandler", "executePolicy() - prepareForTrigger fails");
            return 0;
        }
        this.mSystemRepository.log("AggressivePolicyHandler", "executePolicy() - triggerSource: " + triggerSource);
        long currentTimeMillis = System.currentTimeMillis();
        this.mTriggerCnt = this.mTriggerCnt + 1;
        int[] iArr = this.mTriggerCntSrc;
        int ordinal = triggerSource.ordinal();
        iArr[ordinal] = iArr[ordinal] + 1;
        long availableMemoryKb = ChimeraCommonUtil.getAvailableMemoryKb(this.mSystemRepository);
        long freeMemTarget = this.mChimeraStrategy.getFreeMemTarget(availableMemoryKb);
        if (this.mIsAdjustTargetFree && currentTimeMillis < this.mAdjustTargetFreeEndTime) {
            freeMemTarget = (long) (freeMemTarget * this.mAdjustTargetFreeFactor);
        }
        long j = freeMemTarget - availableMemoryKb;
        if (j <= 10240) {
            this.mSystemRepository.log("AggressivePolicyHandler", "available memory: " + availableMemoryKb + ", free memory target: " + freeMemTarget + ", quit chimera");
            return 0;
        }
        int protectedCountOnLmkdTrigger = triggerSource == ChimeraCommonUtil.TriggerSource.TRIGGER_SOURCE_LMKD ? this.mChimeraStrategy.getProtectedCountOnLmkdTrigger() : this.mChimeraStrategy.getProtectedCountOnHomeTrigger();
        if (this.mIsHeavyLaunchOn && this.mHeavyLaunchCounter.isHeavyLaunch()) {
            protectedCountOnLmkdTrigger = (int) ((protectedCountOnLmkdTrigger / 2) + 0.5d);
        }
        this.mSystemRepository.log("AggressivePolicyHandler", "memAvailable: " + availableMemoryKb + ", memFreeTarget: " + freeMemTarget + ", releaseTarget:" + j + ", protectedLruCount: " + protectedCountOnLmkdTrigger);
        this.mSkipReasonLogger.clear();
        List appsToKill = this.mAppManager.getAppsToKill(this.mSkipReasonLogger, protectedCountOnLmkdTrigger, triggerSource);
        if (appsToKill == null || appsToKill.size() < 3) {
            SystemRepository systemRepository = this.mSystemRepository;
            StringBuilder sb = new StringBuilder();
            sb.append("executePolicy() - getAppsToKill return ");
            sb.append(appsToKill != null ? appsToKill.size() : 0);
            systemRepository.logDebug("AggressivePolicyHandler", sb.toString());
            return 0;
        }
        calcAppScores(appsToKill);
        Collections.sort(appsToKill, new Comparator() { // from class: com.android.server.chimera.AggressivePolicyHandler$$ExternalSyntheticLambda3
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$executePolicy$2;
                lambda$executePolicy$2 = AggressivePolicyHandler.lambda$executePolicy$2((ChimeraAppInfo) obj, (ChimeraAppInfo) obj2);
                return lambda$executePolicy$2;
            }
        });
        if (!this.mSystemRepository.isUserShipBuild()) {
            printAllAppInfo(appsToKill);
        }
        if (isGcReclaimEnabled() && j < 51200 && triggerSource == ChimeraCommonUtil.TriggerSource.TRIGGER_SOURCE_HOME_IDLE) {
            performGcAndReclaim();
            return 0;
        }
        this.mReleasedMemory = 0L;
        while (true) {
            List list = appsToKill;
            doKill = doKill(appsToKill, j, availableMemoryKb, triggerSource);
            if (doKill > 0) {
                doGcReclaimIfNecessary(doKill, triggerSource, this.mReleasedMemory, j);
                this.mCurProtectLevel = ProtectLevel.NORMAL;
                updateActionStatistics(triggerSource);
            } else {
                this.mNoActionCnt++;
                ProtectLevel protectLevel = this.mCurProtectLevel;
                ProtectLevel protectLevel2 = ProtectLevel.HEAVY;
                if (protectLevel == protectLevel2) {
                    doGcReclaimIfNecessary(doKill, triggerSource, this.mReleasedMemory, j);
                    break;
                }
                this.mCurProtectLevel = protectLevel2;
            }
            if (doKill != 0) {
                break;
            }
            appsToKill = list;
        }
        this.mSkipReasonLogger.printLog("AggressivePolicyHandler");
        this.mSystemRepository.log("AggressivePolicyHandler", "Processing time(ms) " + (System.currentTimeMillis() - currentTimeMillis));
        return doKill;
    }

    public static /* synthetic */ int lambda$executePolicy$2(ChimeraAppInfo chimeraAppInfo, ChimeraAppInfo chimeraAppInfo2) {
        return Float.compare(chimeraAppInfo2.finalScore, chimeraAppInfo.finalScore);
    }

    public int doKill(List list, long j, long j2, ChimeraCommonUtil.TriggerSource triggerSource) {
        boolean z;
        this.mSystemRepository.log("AggressivePolicyHandler", "Start doKill, protected policy: " + this.mCurProtectLevel);
        if (list == null) {
            return 0;
        }
        Iterator it = list.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ChimeraAppInfo chimeraAppInfo = (ChimeraAppInfo) it.next();
            if (chimeraAppInfo.group >= 4) {
                this.mSystemRepository.logDebug("AggressivePolicyHandler", "killing stopped to group 4");
                break;
            }
            if (isAppKillable(chimeraAppInfo)) {
                Iterator it2 = chimeraAppInfo.procList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    }
                    ChimeraAppInfo.ProcessInfo processInfo = (ChimeraAppInfo.ProcessInfo) it2.next();
                    if (this.mAbnormalFgsDetector.isHeavyForegroundService(processInfo.pid, processInfo.pss, processInfo.importance)) {
                        this.mAbnormalFgsDetector.putKillableHeavyApp(processInfo.processName, chimeraAppInfo.uid, processInfo.pss);
                        z = true;
                        break;
                    }
                }
                if (!Arrays.stream(chimeraAppInfo.statsAndOomScores.mScores).anyMatch(new IntPredicate() { // from class: com.android.server.chimera.AggressivePolicyHandler$$ExternalSyntheticLambda4
                    @Override // java.util.function.IntPredicate
                    public final boolean test(int i3) {
                        boolean lambda$doKill$3;
                        lambda$doKill$3 = AggressivePolicyHandler.lambda$doKill$3(i3);
                        return lambda$doKill$3;
                    }
                })) {
                    z = false;
                }
                if (z || isExpiredKillInterval(chimeraAppInfo)) {
                    this.mLastKilledTimeMap.put(chimeraAppInfo.packageName, Long.valueOf(System.currentTimeMillis()));
                    this.mSystemRepository.log("AggressivePolicyHandler", "Killed on trigger" + triggerSource.ordinal() + " : " + chimeraAppInfo.packageName + chimeraAppInfo.getPidList() + ", freed: " + chimeraAppInfo.pss + toAppInfoDescription(chimeraAppInfo));
                    addRescheduleExceptionPackage(chimeraAppInfo.packageName);
                    for (ChimeraAppInfo.ProcessInfo processInfo2 : chimeraAppInfo.procList) {
                        this.mSystemRepository.killProcessForChimera(processInfo2.processName, chimeraAppInfo.uid, "Chimera #" + triggerSource.ordinal());
                    }
                    i = (int) (i + chimeraAppInfo.pss);
                    i2++;
                    updateKillStatistics(chimeraAppInfo, triggerSource);
                    ProtectLevel protectLevel = this.mCurProtectLevel;
                    if ((protectLevel != ProtectLevel.NORMAL || !this.mIsKillBoostModeOnNormal) && (protectLevel != ProtectLevel.HEAVY || !this.mIsKillBoostModeOnHeavy)) {
                        if (isRelTargetEnough(j, i)) {
                            break;
                        }
                    }
                }
            }
        }
        int i3 = this.mActionCnt;
        long j3 = i;
        this.mAvgReleasedMem = ((i3 * this.mAvgReleasedMem) + j3) / (i3 + 1);
        this.mAvgAvailableMem = (((i3 * this.mAvgAvailableMem) + j2) + j3) / (i3 + 1);
        this.mReleasedMemory += j3;
        this.mSystemRepository.log("AggressivePolicyHandler", "kill complete: killed " + i2 + " apps, freed " + i + " KB");
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        return true;
     */
    @Override // com.android.server.chimera.PolicyHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean hasProtectedAdjOrProcState(com.android.server.chimera.ChimeraAppInfo r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L9b
            com.android.server.chimera.ProcessStatsAndOomScores r1 = r9.statsAndOomScores
            if (r1 == 0) goto L9b
            r1 = r0
        L8:
            com.android.server.chimera.ProcessStatsAndOomScores r2 = r9.statsAndOomScores
            int[] r3 = r2.mPids
            int r3 = r3.length
            if (r1 >= r3) goto L9b
            int[] r2 = r2.mScores
            r2 = r2[r1]
            r3 = 200(0xc8, float:2.8E-43)
            r4 = 1
            if (r2 > r3) goto L2d
            java.lang.String r2 = "com.sds.emm.sers"
            java.lang.String r5 = r9.packageName
            boolean r2 = r2.equals(r5)
            if (r2 != 0) goto L2c
            java.lang.String r2 = r9.packageName
            java.lang.String r5 = "com.samsung.android.bixby.ondevice"
            boolean r2 = r2.startsWith(r5)
            if (r2 == 0) goto L2d
        L2c:
            return r4
        L2d:
            com.android.server.chimera.ProcessStatsAndOomScores r2 = r9.statsAndOomScores
            int[] r2 = r2.mScores
            r2 = r2[r1]
            int[][] r5 = r8.mPkgProtectedParameters
            com.android.server.chimera.AggressivePolicyHandler$ProtectLevel r6 = r8.mCurProtectLevel
            int r6 = r6.ordinal()
            r5 = r5[r6]
            r5 = r5[r0]
            if (r2 >= r5) goto L4c
            com.android.server.chimera.ProcessStatsAndOomScores r2 = r9.statsAndOomScores
            int[] r2 = r2.mScores
            r2 = r2[r1]
            r5 = -1000(0xfffffffffffffc18, float:NaN)
            if (r2 < r5) goto L4c
            return r4
        L4c:
            com.android.server.chimera.ProcessStatsAndOomScores r2 = r9.statsAndOomScores
            int[] r2 = r2.mScores
            r2 = r2[r1]
            r5 = 100
            r6 = 5
            r7 = 300(0x12c, float:4.2E-43)
            if (r2 < r5) goto L70
            if (r2 >= r7) goto L70
            int r5 = r9.curStandbyBucket
            if (r5 != r6) goto L60
            return r4
        L60:
            if (r2 >= r3) goto L67
            r2 = 40
            if (r5 >= r2) goto L67
            return r4
        L67:
            java.lang.String r2 = r9.packageName
            boolean r2 = r8.isPowerWhitelistedApp(r2)
            if (r2 == 0) goto L70
            return r4
        L70:
            com.android.server.chimera.ProcessStatsAndOomScores r2 = r9.statsAndOomScores
            int[] r3 = r2.mStates
            r3 = r3[r1]
            r5 = 3
            if (r3 == r5) goto L9a
            if (r3 != r6) goto L7c
            goto L9a
        L7c:
            int[] r2 = r2.mScores
            r2 = r2[r1]
            r3 = 830(0x33e, float:1.163E-42)
            if (r2 != r3) goto L85
            return r4
        L85:
            boolean r3 = com.android.server.chimera.PolicyHandler.mIsBubEnabled
            if (r3 != 0) goto L8e
            int r3 = com.android.server.chimera.PolicyHandler.PICKED_OOM_ADJ
            if (r2 != r3) goto L8e
            return r4
        L8e:
            r3 = 700(0x2bc, float:9.81E-43)
            if (r2 != r3) goto L93
            return r4
        L93:
            if (r2 != r7) goto L96
            return r4
        L96:
            int r1 = r1 + 1
            goto L8
        L9a:
            return r4
        L9b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.chimera.AggressivePolicyHandler.hasProtectedAdjOrProcState(com.android.server.chimera.ChimeraAppInfo):boolean");
    }

    @Override // com.android.server.chimera.PolicyHandler
    public void dump(PrintWriter printWriter, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        if ("-a".equals(strArr[0])) {
            dumpCommonInfo(printWriter);
            dumpInfo(printWriter);
            printWriter.println();
            if (this.mIsHeavyLaunchOn && this.mHeavyLaunchCounter.isHeavyLaunch()) {
                printWriter.println("HeavyLaunch mode from " + this.mHeavyLaunchCounter.getLastStartedUpTime());
            }
            printWriter.println("************** adjinfo ****************");
            dumpAdjInfo(printWriter);
            printWriter.println("\n************** appinfo ****************");
            dumpAppInfo(printWriter);
            printWriter.println("\n************** kill history ****************");
            dumpHistoryBuffer(printWriter);
            return;
        }
        if (strArr.length > 0) {
            String str = strArr[0];
            if (str.equals("weight") && strArr.length > 2) {
                try {
                    String str2 = strArr[1];
                    String str3 = strArr[2];
                    float floatValue = Float.valueOf(str2).floatValue();
                    float floatValue2 = Float.valueOf(str3).floatValue();
                    setWeight(floatValue, floatValue2);
                    printWriter.println("wLru: " + floatValue + " wStandbyBucket: " + floatValue2);
                    return;
                } catch (NumberFormatException e) {
                    printWriter.println(e.getMessage());
                    return;
                }
            }
            if (str.equals("set_normal_boost_mode") && strArr.length > 1) {
                this.mIsKillBoostModeOnNormal = "on".equals(strArr[1].toLowerCase());
                StringBuilder sb = new StringBuilder();
                sb.append("Normal kill boost : ");
                sb.append(this.mIsKillBoostModeOnNormal ? "on" : "off");
                printWriter.println(sb.toString());
                return;
            }
            if (str.equals("set_heavy_boost_mode") && strArr.length > 1) {
                this.mIsKillBoostModeOnHeavy = "on".equals(strArr[1].toLowerCase());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Heavy kill boost : ");
                sb2.append(this.mIsKillBoostModeOnHeavy ? "on" : "off");
                printWriter.println(sb2.toString());
                return;
            }
            if (str.equals("set_normal_kill_interval") && strArr.length > 1) {
                try {
                    this.mPkgProtectedParameters[ProtectLevel.NORMAL.ordinal()][2] = Integer.parseInt(strArr[1]) * 1000;
                } catch (NumberFormatException e2) {
                    printWriter.println(e2.getMessage());
                }
                printWriter.println("Normal kill interval : " + this.mPkgProtectedParameters[ProtectLevel.NORMAL.ordinal()][2]);
                return;
            }
            if (str.equals("set_heavy_kill_interval") && strArr.length > 1) {
                try {
                    this.mPkgProtectedParameters[ProtectLevel.HEAVY.ordinal()][2] = Integer.parseInt(strArr[1]) * 1000;
                } catch (NumberFormatException e3) {
                    printWriter.println(e3.getMessage());
                }
                printWriter.println("Heavy kill interval : " + this.mPkgProtectedParameters[ProtectLevel.HEAVY.ordinal()][2]);
                return;
            }
            if (str.equals("info")) {
                dumpCommonInfo(printWriter);
                dumpInfo(printWriter);
            } else {
                if (str.equals("appinfo")) {
                    dumpAppInfo(printWriter);
                    return;
                }
                if (str.equals("adjinfo")) {
                    dumpAdjInfo(printWriter);
                } else if (str.equals("history")) {
                    printWriter.println("Chimera Kill History:");
                    dumpHistoryBuffer(printWriter);
                }
            }
        }
    }

    public final void dumpInfo(PrintWriter printWriter) {
        printWriter.println("ScoreWeight: lru=" + this.mWeightLru + " standbybucket=" + this.mWeightStandbyBucket + " mem=" + this.mWeightMem);
        StringBuilder sb = new StringBuilder();
        sb.append("Normal kill interval : ");
        sb.append(toHHmmss((long) this.mPkgProtectedParameters[ProtectLevel.NORMAL.ordinal()][2]));
        printWriter.println(sb.toString());
        printWriter.println("Heavy kill interval : " + toHHmmss((long) this.mPkgProtectedParameters[ProtectLevel.HEAVY.ordinal()][2]));
        if (this.mIsKillBoostModeOnNormal || this.mIsKillBoostModeOnHeavy) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Kill boost mode:");
            sb2.append(this.mIsKillBoostModeOnNormal ? " Normal" : "");
            sb2.append(this.mIsKillBoostModeOnHeavy ? " Heavy" : "");
            printWriter.println(sb2.toString());
            return;
        }
        printWriter.println("Kill boost mode: off");
    }

    public final void doGcReclaimIfNecessary(int i, ChimeraCommonUtil.TriggerSource triggerSource, long j, long j2) {
        if (isGcReclaimEnabled()) {
            if ((i == 0 || !isFreeTargetSatisfied(j, j2)) && triggerSource == ChimeraCommonUtil.TriggerSource.TRIGGER_SOURCE_HOME_IDLE) {
                performGcAndReclaim();
            }
        }
    }

    @Override // com.android.server.chimera.PolicyHandler, com.android.server.chimera.SystemRepository.ChimeraProcessObserver
    public void onForegroundActivitiesChanged(int i, int i2, boolean z, int i3, String[] strArr, boolean z2) {
        HeavyLaunchCounter heavyLaunchCounter;
        super.onForegroundActivitiesChanged(i, i2, z, i3, strArr, z2);
        if (!this.mIsHeavyLaunchOn || z2 || !z || (heavyLaunchCounter = this.mHeavyLaunchCounter) == null) {
            return;
        }
        heavyLaunchCounter.addLaunch(i2, System.currentTimeMillis());
    }
}
