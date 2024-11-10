package com.android.server.am;

import android.app.ActivityManager;
import android.app.ApplicationErrorReport;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.os.Process;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Slog;
import android.util.SparseBooleanArray;
import com.android.internal.os.anr.AnrLatencyTracker;
import com.android.server.Watchdog;
import com.android.server.am.AppNotRespondingDialog;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.stats.pull.ProcfsMemoryUtil;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ProcessErrorStateRecord {
    public boolean DEBUG_ATRACE;
    public String mAnrAnnotation;
    public AppNotRespondingDialog.Data mAnrData;
    public final ProcessRecord mApp;
    public boolean mBad;
    public Runnable mCrashHandler;
    public boolean mCrashing;
    public ActivityManager.ProcessErrorStateInfo mCrashingReport;
    public final ErrorDialogController mDialogController;
    public ComponentName mErrorReportReceiver;
    public boolean mForceCrashReport;
    public boolean mNotResponding;
    public ActivityManager.ProcessErrorStateInfo mNotRespondingReport;
    public final ActivityManagerGlobalLock mProcLock;
    public final ActivityManagerService mService;

    public boolean isBad() {
        return this.mBad;
    }

    public void setBad(boolean z) {
        this.mBad = z;
    }

    public boolean isCrashing() {
        return this.mCrashing;
    }

    public void setCrashing(boolean z) {
        this.mCrashing = z;
        this.mApp.getWindowProcessController().setCrashing(z);
    }

    public boolean isForceCrashReport() {
        return this.mForceCrashReport;
    }

    public void setForceCrashReport(boolean z) {
        this.mForceCrashReport = z;
    }

    public boolean isNotResponding() {
        return this.mNotResponding;
    }

    public void setNotResponding(boolean z) {
        this.mNotResponding = z;
        this.mApp.getWindowProcessController().setNotResponding(z);
    }

    public Runnable getCrashHandler() {
        return this.mCrashHandler;
    }

    public void setCrashHandler(Runnable runnable) {
        this.mCrashHandler = runnable;
    }

    public ActivityManager.ProcessErrorStateInfo getCrashingReport() {
        return this.mCrashingReport;
    }

    public void setCrashingReport(ActivityManager.ProcessErrorStateInfo processErrorStateInfo) {
        this.mCrashingReport = processErrorStateInfo;
    }

    public String getAnrAnnotation() {
        return this.mAnrAnnotation;
    }

    public void setAnrAnnotation(String str) {
        this.mAnrAnnotation = str;
    }

    public ActivityManager.ProcessErrorStateInfo getNotRespondingReport() {
        return this.mNotRespondingReport;
    }

    public void setNotRespondingReport(ActivityManager.ProcessErrorStateInfo processErrorStateInfo) {
        this.mNotRespondingReport = processErrorStateInfo;
    }

    public ComponentName getErrorReportReceiver() {
        return this.mErrorReportReceiver;
    }

    public ErrorDialogController getDialogController() {
        return this.mDialogController;
    }

    public void setAnrData(AppNotRespondingDialog.Data data) {
        this.mAnrData = data;
    }

    public AppNotRespondingDialog.Data getAnrData() {
        return this.mAnrData;
    }

    public ProcessErrorStateRecord(ProcessRecord processRecord) {
        this.DEBUG_ATRACE = CoreRune.IS_DEBUG_LEVEL_MID || CoreRune.IS_DEBUG_LEVEL_HIGH;
        this.mApp = processRecord;
        ActivityManagerService activityManagerService = processRecord.mService;
        this.mService = activityManagerService;
        this.mProcLock = activityManagerService.mProcLock;
        this.mDialogController = new ErrorDialogController(processRecord);
    }

    public boolean skipAnrLocked(String str) {
        if (this.mService.mAtmInternal.isShuttingDown()) {
            Slog.i("ActivityManager", "During shutdown skipping ANR: " + this + " " + str);
            return true;
        }
        if (isNotResponding()) {
            Slog.i("ActivityManager", "Skipping duplicate ANR: " + this + " " + str);
            return true;
        }
        if (isCrashing()) {
            Slog.i("ActivityManager", "Crashing app skipping ANR: " + this + " " + str);
            return true;
        }
        if (this.mApp.isKilledByAm()) {
            Slog.i("ActivityManager", "App already killed by AM skipping ANR: " + this + " " + str);
            return true;
        }
        if (!this.mApp.isKilled()) {
            return false;
        }
        Slog.i("ActivityManager", "Skipping died app ANR: " + this + " " + str);
        return true;
    }

    public void captureAtraceLog() {
        if (this.DEBUG_ATRACE) {
            int i = SystemProperties.getInt("debug.perfmond.atrace", 0);
            boolean z = i == 1 || i == 3 || i == 103;
            Slog.i("ActivityManager", "Trace mode: " + i + ", ANR trace enabled : " + z);
            if (z) {
                Intent intent = new Intent("com.samsung.intent.action.PERFORMANCE_LOGGING");
                intent.putExtra("performance_logging_ctrl", 3);
                this.mService.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x051d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0482  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0408  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void appNotResponding(java.lang.String r56, android.content.pm.ApplicationInfo r57, java.lang.String r58, com.android.server.wm.WindowProcessController r59, boolean r60, com.android.internal.os.TimeoutRecord r61, java.util.concurrent.ExecutorService r62, final boolean r63, boolean r64, java.util.concurrent.Future r65) {
        /*
            Method dump skipped, instructions count: 1489
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ProcessErrorStateRecord.appNotResponding(java.lang.String, android.content.pm.ApplicationInfo, java.lang.String, com.android.server.wm.WindowProcessController, boolean, com.android.internal.os.TimeoutRecord, java.util.concurrent.ExecutorService, boolean, boolean, java.util.concurrent.Future):void");
    }

    public /* synthetic */ void lambda$appNotResponding$0(AnrLatencyTracker anrLatencyTracker, String str) {
        anrLatencyTracker.waitingOnAMSLockStarted();
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                anrLatencyTracker.waitingOnAMSLockEnded();
                setAnrAnnotation(str);
                this.mApp.killLocked("anr", 6, true);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public /* synthetic */ void lambda$appNotResponding$1(AnrLatencyTracker anrLatencyTracker) {
        anrLatencyTracker.updateCpuStatsNowCalled();
        this.mService.updateCpuStatsNow();
        anrLatencyTracker.updateCpuStatsNowReturned();
    }

    public static /* synthetic */ void lambda$appNotResponding$2(int i, int i2, ArrayList arrayList, SparseBooleanArray sparseBooleanArray, ProcessRecord processRecord) {
        int pid;
        if (processRecord == null || processRecord.getThread() == null || (pid = processRecord.getPid()) <= 0 || pid == i || pid == i2 || pid == ActivityManagerService.MY_PID) {
            return;
        }
        if (processRecord.isPersistent()) {
            arrayList.add(Integer.valueOf(pid));
        } else if (processRecord.mServices.isTreatedLikeActivity()) {
            arrayList.add(Integer.valueOf(pid));
        } else {
            sparseBooleanArray.put(pid, true);
        }
    }

    public /* synthetic */ ArrayList lambda$appNotResponding$3(AnrLatencyTracker anrLatencyTracker, boolean z, boolean z2) {
        String[] strArr;
        anrLatencyTracker.nativePidCollectionStarted();
        ArrayList arrayList = null;
        if (!(this.mApp.info.isSystemApp() || this.mApp.info.isSystemExt()) || z || z2) {
            int i = 0;
            while (true) {
                String[] strArr2 = Watchdog.NATIVE_STACKS_OF_INTEREST;
                if (i >= strArr2.length) {
                    strArr = null;
                    break;
                }
                if (strArr2[i].equals(this.mApp.processName)) {
                    strArr = new String[]{this.mApp.processName};
                    break;
                }
                i++;
            }
        } else {
            strArr = Watchdog.NATIVE_STACKS_OF_INTEREST;
        }
        int[] pidsForCommands = strArr == null ? null : Process.getPidsForCommands(strArr);
        if (pidsForCommands != null) {
            arrayList = new ArrayList(pidsForCommands.length);
            for (int i2 : pidsForCommands) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        anrLatencyTracker.nativePidCollectionEnded();
        return arrayList;
    }

    public /* synthetic */ void lambda$appNotResponding$4() {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                this.mApp.killLocked("anr", 6, true);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public /* synthetic */ void lambda$appNotResponding$5() {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                this.mService.mServices.scheduleServiceTimeoutLocked(this.mApp);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public final void makeAppNotRespondingLSP(String str, String str2, String str3) {
        setNotResponding(true);
        AppErrors appErrors = this.mService.mAppErrors;
        if (appErrors != null) {
            this.mNotRespondingReport = appErrors.generateProcessError(this.mApp, 2, str, str2, str3, null);
        }
        startAppProblemLSP();
        this.mApp.getWindowProcessController().stopFreezingActivities();
    }

    public void startAppProblemLSP() {
        this.mErrorReportReceiver = null;
        for (int i : this.mService.mUserController.getCurrentProfileIds()) {
            ProcessRecord processRecord = this.mApp;
            if (processRecord.userId == i) {
                this.mErrorReportReceiver = ApplicationErrorReport.getErrorReportReceiver(this.mService.mContext, processRecord.info.packageName, this.mApp.info.flags);
            }
        }
        for (BroadcastQueue broadcastQueue : this.mService.mBroadcastQueues) {
            broadcastQueue.onApplicationProblemLocked(this.mApp);
        }
    }

    public final boolean isInterestingForBackgroundTraces() {
        if (this.mApp.getPid() == ActivityManagerService.MY_PID || this.mApp.isInterestingToUserLocked()) {
            return true;
        }
        return (this.mApp.info != null && "com.android.systemui".equals(this.mApp.info.packageName)) || this.mApp.mState.hasTopUi() || this.mApp.mState.hasOverlayUi();
    }

    public final boolean getShowBackground() {
        ContentResolver contentResolver = this.mService.mContext.getContentResolver();
        return Settings.Secure.getIntForUser(contentResolver, "anr_show_background", 0, contentResolver.getUserId()) != 0;
    }

    public final String buildMemoryHeadersFor(int i) {
        if (i <= 0) {
            Slog.i("ActivityManager", "Memory header requested with invalid pid: " + i);
            return null;
        }
        ProcfsMemoryUtil.MemorySnapshot readMemorySnapshotFromProcfs = ProcfsMemoryUtil.readMemorySnapshotFromProcfs(i);
        if (readMemorySnapshotFromProcfs == null) {
            Slog.i("ActivityManager", "Failed to get memory snapshot for pid:" + i);
            return null;
        }
        return "RssHwmKb: " + readMemorySnapshotFromProcfs.rssHighWaterMarkInKilobytes + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + "RssKb: " + readMemorySnapshotFromProcfs.rssInKilobytes + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + "RssAnonKb: " + readMemorySnapshotFromProcfs.anonRssInKilobytes + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + "RssShmemKb: " + readMemorySnapshotFromProcfs.rssShmemKilobytes + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + "VmSwapKb: " + readMemorySnapshotFromProcfs.swapInKilobytes + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE;
    }

    public boolean isSilentAnr() {
        return (getShowBackground() || isInterestingForBackgroundTraces()) ? false : true;
    }

    public boolean isMonitorCpuUsage() {
        AppProfiler appProfiler = this.mService.mAppProfiler;
        return true;
    }

    public void onCleanupApplicationRecordLSP() {
        getDialogController().clearAllErrorDialogs();
        setCrashing(false);
        setNotResponding(false);
    }

    public void dump(PrintWriter printWriter, String str, long j) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (this.mCrashing || this.mDialogController.hasCrashDialogs() || this.mNotResponding || this.mDialogController.hasAnrDialogs() || this.mBad) {
                    printWriter.print(str);
                    printWriter.print(" mCrashing=" + this.mCrashing);
                    printWriter.print(" " + this.mDialogController.getCrashDialogs());
                    printWriter.print(" mNotResponding=" + this.mNotResponding);
                    printWriter.print(" " + this.mDialogController.getAnrDialogs());
                    printWriter.print(" bad=" + this.mBad);
                    if (this.mErrorReportReceiver != null) {
                        printWriter.print(" errorReportReceiver=");
                        printWriter.print(this.mErrorReportReceiver.flattenToShortString());
                    }
                    printWriter.println();
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
    }
}
