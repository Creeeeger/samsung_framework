package com.android.server.wm;

import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import android.util.Slog;
import com.android.server.display.DisplayPowerController2;
import com.android.server.wm.CoreSaStatusLoggingService;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.server.util.SafetySystemService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class BoundsCompatStatusLogger implements CoreSaStatusLoggingService.CoreSaStatusLogger {
    public static final boolean DEBUG = CoreRune.SAFE_DEBUG;
    public static final String TAG = "BoundsCompatStatusLogger";
    public ActivityTaskManagerService mAtmService;
    public final HashMap mSettings;

    /* loaded from: classes3.dex */
    public abstract class LazyHolder {
        public static final BoundsCompatStatusLogger sLogger = new BoundsCompatStatusLogger();
    }

    /* loaded from: classes3.dex */
    public interface StatusCollector {
        default boolean collectIfNeededLocked(int i, String str) {
            return true;
        }

        void initializeLocked();
    }

    public static BoundsCompatStatusLogger get() {
        return LazyHolder.sLogger;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0029 A[Catch: all -> 0x0032, TRY_LEAVE, TryCatch #0 {all -> 0x0032, blocks: (B:6:0x000e, B:12:0x0029, B:16:0x001a), top: B:5:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean executeShellCommand(java.lang.String r3, java.lang.String[] r4, java.io.PrintWriter r5) {
        /*
            boolean r5 = com.android.server.wm.BoundsCompatStatusLogger.DEBUG
            r0 = 0
            if (r5 == 0) goto L52
            java.lang.String r5 = "-bcsl"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto Le
            goto L52
        Le:
            r5 = r4[r0]     // Catch: java.lang.Throwable -> L32
            int r1 = r5.hashCode()     // Catch: java.lang.Throwable -> L32
            r2 = 317649683(0x12eef313, float:1.5079834E-27)
            if (r1 == r2) goto L1a
            goto L25
        L1a:
            java.lang.String r1 = "maintenance"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L32
            if (r5 == 0) goto L25
            r5 = r0
            goto L26
        L25:
            r5 = -1
        L26:
            if (r5 == 0) goto L29
            goto L52
        L29:
            com.android.server.wm.BoundsCompatStatusLogger r5 = get()     // Catch: java.lang.Throwable -> L32
            r5.onStatusLogging()     // Catch: java.lang.Throwable -> L32
            r3 = 1
            return r3
        L32:
            java.lang.String r5 = com.android.server.wm.BoundsCompatStatusLogger.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to execute command="
            r1.append(r2)
            r1.append(r3)
            java.lang.String r3 = ", opt="
            r1.append(r3)
            r3 = r4[r0]
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            android.util.Slog.e(r5, r3)
        L52:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.BoundsCompatStatusLogger.executeShellCommand(java.lang.String, java.lang.String[], java.io.PrintWriter):boolean");
    }

    public BoundsCompatStatusLogger() {
        this.mSettings = new HashMap();
    }

    public void onSystemReady(ActivityTaskManagerService activityTaskManagerService) {
        this.mAtmService = activityTaskManagerService;
        CoreSaStatusLoggingService.registerCoreSaStatusLogger(this);
    }

    @Override // com.android.server.wm.CoreSaStatusLoggingService.CoreSaStatusLogger
    public String getName() {
        return TAG;
    }

    @Override // com.android.server.wm.CoreSaStatusLoggingService.CoreSaStatusLogger
    public void onStatusLogging() {
        try {
            ArrayList arrayList = new ArrayList();
            byte b = 0;
            byte b2 = 0;
            if (CoreRune.FW_FIXED_ASPECT_RATIO_MODE) {
                arrayList.add(new FixedAspectRatioStatusCollector());
            }
            if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO) {
                arrayList.add(new OrientationControlStatusCollector());
            }
            if (CoreRune.FW_BOUNDS_COMPAT_ALIGNMENT_CONTROL) {
                arrayList.add(new AlignmentStatusCollector());
            }
            collectAndSendStatus(arrayList);
        } catch (Throwable th) {
            Slog.e(TAG, "Failed to logBoundsCompatStatus", th);
        }
    }

    public final void collectAndSendStatus(List list) {
        LauncherApps launcherApps;
        if (list.isEmpty() || (launcherApps = (LauncherApps) SafetySystemService.getSystemService(LauncherApps.class)) == null) {
            return;
        }
        int userId = this.mAtmService.mContext.getUserId();
        List<LauncherActivityInfo> activityList = launcherApps.getActivityList(null, UserHandle.of(userId));
        synchronized (this.mAtmService.mGlobalLockWithoutBoost) {
            this.mSettings.clear();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                StatusCollector statusCollector = (StatusCollector) it.next();
                statusCollector.initializeLocked();
                Iterator<LauncherActivityInfo> it2 = activityList.iterator();
                while (it2.hasNext() && !statusCollector.collectIfNeededLocked(userId, it2.next().getApplicationInfo().packageName)) {
                }
            }
            if (!this.mSettings.isEmpty()) {
                HashMap hashMap = new HashMap();
                for (Map.Entry entry : this.mSettings.entrySet()) {
                    String str = (String) entry.getKey();
                    String sb = ((StringBuilder) entry.getValue()).toString();
                    if (DEBUG) {
                        Slog.d(TAG, "collectAndSendStatus: settingsId=" + str + ", value=" + sb);
                    }
                    hashMap.put(str, sb);
                }
                CoreSaLogger.sendSaLoggingBroadcastForBasicSetting(this.mAtmService.mContext, hashMap);
            }
        }
    }

    public final StringBuilder createSettingLocked(String str) {
        StringBuilder sb = new StringBuilder();
        this.mSettings.put(str, sb);
        return sb;
    }

    public final StringBuilder getSettingLocked(String str) {
        StringBuilder sb = (StringBuilder) this.mSettings.get(str);
        return sb != null ? sb : createSettingLocked(str);
    }

    public final void putSettingLocked(String str, String str2) {
        StringBuilder settingLocked = getSettingLocked(str);
        if (!settingLocked.toString().isEmpty()) {
            settingLocked.append(", ");
        }
        settingLocked.append(str2);
    }

    /* loaded from: classes3.dex */
    public class FixedAspectRatioStatusCollector implements StatusCollector {
        public FixedAspectRatioStatusCollector() {
        }

        @Override // com.android.server.wm.BoundsCompatStatusLogger.StatusCollector
        public void initializeLocked() {
            BoundsCompatStatusLogger.this.createSettingLocked("519402");
            BoundsCompatStatusLogger.this.createSettingLocked("519403");
        }

        @Override // com.android.server.wm.BoundsCompatStatusLogger.StatusCollector
        public boolean collectIfNeededLocked(int i, String str) {
            float mergedChange = BoundsCompatStatusLogger.this.mAtmService.mExt.mFixedAspectRatioController.getMergedChange(i, str);
            if (mergedChange == -1.0f || mergedChange == DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
                return false;
            }
            if (mergedChange == 1.7777778f) {
                BoundsCompatStatusLogger.this.putSettingLocked("519402", str);
                return false;
            }
            if (mergedChange != 1.3333334f) {
                return false;
            }
            BoundsCompatStatusLogger.this.putSettingLocked("519403", str);
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public class OrientationControlStatusCollector implements StatusCollector {
        public OrientationControlStatusCollector() {
        }

        @Override // com.android.server.wm.BoundsCompatStatusLogger.StatusCollector
        public void initializeLocked() {
            BoundsCompatStatusLogger.this.createSettingLocked("LVPA01");
            BoundsCompatStatusLogger.this.createSettingLocked("LVPA02");
        }

        @Override // com.android.server.wm.BoundsCompatStatusLogger.StatusCollector
        public boolean collectIfNeededLocked(int i, String str) {
            int policy = BoundsCompatStatusLogger.this.mAtmService.mExt.mOrientationController.getPolicy(i, str);
            if (policy == 7) {
                BoundsCompatStatusLogger.this.putSettingLocked("LVPA02", str);
                return false;
            }
            if (policy != 31) {
                return false;
            }
            BoundsCompatStatusLogger.this.putSettingLocked("LVPA01", str);
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public class AlignmentStatusCollector implements StatusCollector {
        public AlignmentStatusCollector() {
        }

        @Override // com.android.server.wm.BoundsCompatStatusLogger.StatusCollector
        public void initializeLocked() {
            int boundsCompatAlignment = BoundsCompatStatusLogger.this.mAtmService.getBoundsCompatAlignment();
            int i = boundsCompatAlignment & 112;
            String str = "Center";
            BoundsCompatStatusLogger.this.putSettingLocked("519306", i == 48 ? "Top" : i == 16 ? "Center" : "Bottom");
            int i2 = boundsCompatAlignment & 7;
            BoundsCompatStatusLogger boundsCompatStatusLogger = BoundsCompatStatusLogger.this;
            if (i2 == 3) {
                str = "Left";
            } else if (i2 != 1) {
                str = "Right";
            }
            boundsCompatStatusLogger.putSettingLocked("519305", str);
        }
    }
}
