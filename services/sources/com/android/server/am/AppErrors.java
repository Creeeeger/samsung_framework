package com.android.server.am;

import android.app.ActivityManager;
import android.app.ApplicationErrorReport;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.ProcessMap;
import com.android.server.PackageWatchdog;
import com.android.server.am.AppErrorDialog;
import com.sec.android.iaft.IAFDDiagnosis;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;

/* loaded from: classes.dex */
public class AppErrors {
    public ArraySet mAppsNotReportingCrashes;
    public final Context mContext;
    public final PackageWatchdog mPackageWatchdog;
    public final ActivityManagerGlobalLock mProcLock;
    public final ActivityManagerService mService;
    public final ProcessMap mProcessCrashTimes = new ProcessMap();
    public final ProcessMap mProcessCrashTimesPersistent = new ProcessMap();
    public final ProcessMap mProcessCrashShowDialogTimes = new ProcessMap();
    public final ProcessMap mProcessCrashCounts = new ProcessMap();
    public volatile ProcessMap mBadProcesses = new ProcessMap();
    public final Object mBadProcessLock = new Object();
    public final CrashDetectionAndOptimization crashDetectionAndOptimization = new CrashDetectionAndOptimization();

    public AppErrors(Context context, ActivityManagerService activityManagerService, PackageWatchdog packageWatchdog) {
        context.assertRuntimeOverlayThemable();
        this.mService = activityManagerService;
        this.mProcLock = activityManagerService.mProcLock;
        this.mContext = context;
        this.mPackageWatchdog = packageWatchdog;
        IAFDDiagnosis.getInstance().init(context);
    }

    public void resetState() {
        Slog.i("ActivityManager", "Resetting AppErrors");
        synchronized (this.mBadProcessLock) {
            this.mAppsNotReportingCrashes.clear();
            this.mProcessCrashTimes.clear();
            this.mProcessCrashTimesPersistent.clear();
            this.mProcessCrashShowDialogTimes.clear();
            this.mProcessCrashCounts.clear();
            this.mBadProcesses = new ProcessMap();
        }
    }

    public void dumpDebugLPr(ProtoOutputStream protoOutputStream, long j, String str) {
        ArrayMap arrayMap;
        int i;
        String str2;
        SparseArray sparseArray;
        long j2;
        String str3;
        SparseArray sparseArray2;
        ArrayMap arrayMap2;
        int i2;
        ProcessMap processMap = this.mBadProcesses;
        if (this.mProcessCrashTimes.getMap().isEmpty() && processMap.getMap().isEmpty()) {
            return;
        }
        long start = protoOutputStream.start(j);
        protoOutputStream.write(1112396529665L, SystemClock.uptimeMillis());
        long j3 = 1138166333441L;
        if (!processMap.getMap().isEmpty()) {
            ArrayMap map = processMap.getMap();
            int size = map.size();
            int i3 = 0;
            while (i3 < size) {
                long start2 = protoOutputStream.start(2246267895811L);
                String str4 = (String) map.keyAt(i3);
                SparseArray sparseArray3 = (SparseArray) map.valueAt(i3);
                int size2 = sparseArray3.size();
                protoOutputStream.write(j3, str4);
                int i4 = 0;
                while (i4 < size2) {
                    int keyAt = sparseArray3.keyAt(i4);
                    ProcessRecord processRecord = (ProcessRecord) this.mService.getProcessNamesLOSP().get(str4, keyAt);
                    if (str == null || (processRecord != null && processRecord.getPkgList().containsKey(str))) {
                        BadProcessInfo badProcessInfo = (BadProcessInfo) sparseArray3.valueAt(i4);
                        j2 = start;
                        str3 = str4;
                        sparseArray2 = sparseArray3;
                        ArrayMap arrayMap3 = map;
                        long start3 = protoOutputStream.start(2246267895810L);
                        protoOutputStream.write(1120986464257L, keyAt);
                        arrayMap2 = arrayMap3;
                        i2 = size;
                        protoOutputStream.write(1112396529666L, badProcessInfo.time);
                        protoOutputStream.write(1138166333443L, badProcessInfo.shortMsg);
                        protoOutputStream.write(1138166333444L, badProcessInfo.longMsg);
                        protoOutputStream.write(1138166333445L, badProcessInfo.stack);
                        protoOutputStream.end(start3);
                    } else {
                        arrayMap2 = map;
                        j2 = start;
                        i2 = size;
                        str3 = str4;
                        sparseArray2 = sparseArray3;
                    }
                    i4++;
                    str4 = str3;
                    size = i2;
                    sparseArray3 = sparseArray2;
                    start = j2;
                    map = arrayMap2;
                }
                protoOutputStream.end(start2);
                i3++;
                j3 = 1138166333441L;
            }
        }
        long j4 = start;
        synchronized (this.mBadProcessLock) {
            if (!this.mProcessCrashTimes.getMap().isEmpty()) {
                ArrayMap map2 = this.mProcessCrashTimes.getMap();
                int size3 = map2.size();
                int i5 = 0;
                while (i5 < size3) {
                    long start4 = protoOutputStream.start(2246267895810L);
                    String str5 = (String) map2.keyAt(i5);
                    SparseArray sparseArray4 = (SparseArray) map2.valueAt(i5);
                    int size4 = sparseArray4.size();
                    protoOutputStream.write(1138166333441L, str5);
                    int i6 = 0;
                    while (i6 < size4) {
                        int keyAt2 = sparseArray4.keyAt(i6);
                        ProcessRecord processRecord2 = (ProcessRecord) this.mService.getProcessNamesLOSP().get(str5, keyAt2);
                        if (str == null || (processRecord2 != null && processRecord2.getPkgList().containsKey(str))) {
                            arrayMap = map2;
                            i = size3;
                            long start5 = protoOutputStream.start(2246267895810L);
                            protoOutputStream.write(1120986464257L, keyAt2);
                            str2 = str5;
                            sparseArray = sparseArray4;
                            protoOutputStream.write(1112396529666L, ((Long) sparseArray4.valueAt(i6)).longValue());
                            protoOutputStream.end(start5);
                        } else {
                            arrayMap = map2;
                            i = size3;
                            str2 = str5;
                            sparseArray = sparseArray4;
                        }
                        i6++;
                        map2 = arrayMap;
                        str5 = str2;
                        size3 = i;
                        sparseArray4 = sparseArray;
                    }
                    protoOutputStream.end(start4);
                    i5++;
                    map2 = map2;
                    size3 = size3;
                }
            }
        }
        protoOutputStream.end(j4);
    }

    public boolean dumpLPr(FileDescriptor fileDescriptor, PrintWriter printWriter, boolean z, String str) {
        boolean z2;
        int i;
        int i2;
        AppErrors appErrors = this;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (appErrors.mBadProcessLock) {
            if (appErrors.mProcessCrashTimes.getMap().isEmpty()) {
                z2 = z;
            } else {
                ArrayMap map = appErrors.mProcessCrashTimes.getMap();
                int size = map.size();
                z2 = z;
                int i3 = 0;
                boolean z3 = false;
                while (i3 < size) {
                    String str2 = (String) map.keyAt(i3);
                    SparseArray sparseArray = (SparseArray) map.valueAt(i3);
                    int size2 = sparseArray.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        int keyAt = sparseArray.keyAt(i4);
                        ArrayMap arrayMap = map;
                        ProcessRecord processRecord = (ProcessRecord) appErrors.mService.getProcessNamesLOSP().get(str2, keyAt);
                        if (str == null || (processRecord != null && processRecord.getPkgList().containsKey(str))) {
                            if (!z3) {
                                if (z2) {
                                    printWriter.println();
                                }
                                printWriter.println("  Time since processes crashed:");
                                z2 = true;
                                z3 = true;
                            }
                            printWriter.print("    Process ");
                            printWriter.print(str2);
                            printWriter.print(" uid ");
                            printWriter.print(keyAt);
                            printWriter.print(": last crashed ");
                            i2 = size;
                            TimeUtils.formatDuration(uptimeMillis - ((Long) sparseArray.valueAt(i4)).longValue(), printWriter);
                            printWriter.println(" ago");
                        } else {
                            i2 = size;
                        }
                        i4++;
                        size = i2;
                        map = arrayMap;
                    }
                    i3++;
                    map = map;
                }
            }
            if (!appErrors.mProcessCrashCounts.getMap().isEmpty()) {
                ArrayMap map2 = appErrors.mProcessCrashCounts.getMap();
                int size3 = map2.size();
                boolean z4 = false;
                for (int i5 = 0; i5 < size3; i5++) {
                    String str3 = (String) map2.keyAt(i5);
                    SparseArray sparseArray2 = (SparseArray) map2.valueAt(i5);
                    int size4 = sparseArray2.size();
                    int i6 = 0;
                    while (i6 < size4) {
                        int keyAt2 = sparseArray2.keyAt(i6);
                        ArrayMap arrayMap2 = map2;
                        ProcessRecord processRecord2 = (ProcessRecord) appErrors.mService.getProcessNamesLOSP().get(str3, keyAt2);
                        if (str == null || (processRecord2 != null && processRecord2.getPkgList().containsKey(str))) {
                            if (!z4) {
                                if (z2) {
                                    printWriter.println();
                                }
                                printWriter.println("  First time processes crashed and counts:");
                                z4 = true;
                                z2 = true;
                            }
                            printWriter.print("    Process ");
                            printWriter.print(str3);
                            printWriter.print(" uid ");
                            printWriter.print(keyAt2);
                            printWriter.print(": first crashed ");
                            i = size3;
                            TimeUtils.formatDuration(uptimeMillis - ((Long) ((Pair) sparseArray2.valueAt(i6)).first).longValue(), printWriter);
                            printWriter.print(" ago; crashes since then: ");
                            printWriter.println(((Pair) sparseArray2.valueAt(i6)).second);
                        } else {
                            i = size3;
                        }
                        i6++;
                        map2 = arrayMap2;
                        size3 = i;
                    }
                }
            }
        }
        ProcessMap processMap = appErrors.mBadProcesses;
        if (!processMap.getMap().isEmpty()) {
            ArrayMap map3 = processMap.getMap();
            int size5 = map3.size();
            int i7 = 0;
            boolean z5 = false;
            while (i7 < size5) {
                String str4 = (String) map3.keyAt(i7);
                SparseArray sparseArray3 = (SparseArray) map3.valueAt(i7);
                int size6 = sparseArray3.size();
                int i8 = 0;
                while (i8 < size6) {
                    int keyAt3 = sparseArray3.keyAt(i8);
                    ProcessRecord processRecord3 = (ProcessRecord) appErrors.mService.getProcessNamesLOSP().get(str4, keyAt3);
                    if (str == null || (processRecord3 != null && processRecord3.getPkgList().containsKey(str))) {
                        if (!z5) {
                            if (z2) {
                                printWriter.println();
                            }
                            printWriter.println("  Bad processes:");
                            z5 = true;
                            z2 = true;
                        }
                        BadProcessInfo badProcessInfo = (BadProcessInfo) sparseArray3.valueAt(i8);
                        printWriter.print("    Bad process ");
                        printWriter.print(str4);
                        printWriter.print(" uid ");
                        printWriter.print(keyAt3);
                        printWriter.print(": crashed at time ");
                        printWriter.println(badProcessInfo.time);
                        if (badProcessInfo.shortMsg != null) {
                            printWriter.print("      Short msg: ");
                            printWriter.println(badProcessInfo.shortMsg);
                        }
                        if (badProcessInfo.longMsg != null) {
                            printWriter.print("      Long msg: ");
                            printWriter.println(badProcessInfo.longMsg);
                        }
                        if (badProcessInfo.stack != null) {
                            printWriter.println("      Stack:");
                            int i9 = 0;
                            for (int i10 = 0; i10 < badProcessInfo.stack.length(); i10++) {
                                if (badProcessInfo.stack.charAt(i10) == '\n') {
                                    printWriter.print("        ");
                                    printWriter.write(badProcessInfo.stack, i9, i10 - i9);
                                    printWriter.println();
                                    i9 = i10 + 1;
                                }
                            }
                            if (i9 < badProcessInfo.stack.length()) {
                                printWriter.print("        ");
                                String str5 = badProcessInfo.stack;
                                printWriter.write(str5, i9, str5.length() - i9);
                                printWriter.println();
                            }
                        }
                    }
                    i8++;
                    appErrors = this;
                }
                i7++;
                appErrors = this;
            }
        }
        return z2;
    }

    public boolean isBadProcess(String str, int i) {
        return this.mBadProcesses.get(str, i) != null;
    }

    public void clearBadProcess(String str, int i) {
        synchronized (this.mBadProcessLock) {
            ProcessMap processMap = new ProcessMap();
            processMap.putAll(this.mBadProcesses);
            processMap.remove(str, i);
            this.mBadProcesses = processMap;
        }
    }

    public void markBadProcess(String str, int i, BadProcessInfo badProcessInfo) {
        synchronized (this.mBadProcessLock) {
            ProcessMap processMap = new ProcessMap();
            processMap.putAll(this.mBadProcesses);
            processMap.put(str, i, badProcessInfo);
            this.mBadProcesses = processMap;
        }
    }

    public void resetProcessCrashTime(String str, int i) {
        synchronized (this.mBadProcessLock) {
            this.mProcessCrashTimes.remove(str, i);
            this.mProcessCrashCounts.remove(str, i);
        }
    }

    public void resetProcessCrashTime(boolean z, int i, int i2) {
        synchronized (this.mBadProcessLock) {
            ArrayMap map = this.mProcessCrashTimes.getMap();
            for (int size = map.size() - 1; size >= 0; size--) {
                SparseArray sparseArray = (SparseArray) map.valueAt(size);
                resetProcessCrashMapLBp(sparseArray, z, i, i2);
                if (sparseArray.size() == 0) {
                    map.removeAt(size);
                }
            }
            ArrayMap map2 = this.mProcessCrashCounts.getMap();
            for (int size2 = map2.size() - 1; size2 >= 0; size2--) {
                SparseArray sparseArray2 = (SparseArray) map2.valueAt(size2);
                resetProcessCrashMapLBp(sparseArray2, z, i, i2);
                if (sparseArray2.size() == 0) {
                    map2.removeAt(size2);
                }
            }
        }
    }

    public final void resetProcessCrashMapLBp(SparseArray sparseArray, boolean z, int i, int i2) {
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            int keyAt = sparseArray.keyAt(size);
            if (z ? UserHandle.getUserId(keyAt) == i2 : !(i2 != -1 ? keyAt != UserHandle.getUid(i2, i) : UserHandle.getAppId(keyAt) != i)) {
                sparseArray.removeAt(size);
            }
        }
    }

    public void loadAppsNotReportingCrashesFromConfig(String str) {
        if (str != null) {
            String[] split = str.split(",");
            if (split.length > 0) {
                synchronized (this.mBadProcessLock) {
                    ArraySet arraySet = new ArraySet();
                    this.mAppsNotReportingCrashes = arraySet;
                    Collections.addAll(arraySet, split);
                }
            }
        }
    }

    public void killAppAtUserRequestLocked(ProcessRecord processRecord) {
        int i;
        int i2;
        ErrorDialogController dialogController = processRecord.mErrorState.getDialogController();
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (dialogController.hasDebugWaitingDialog()) {
                    i = 13;
                    i2 = 1;
                } else {
                    i = 6;
                    i2 = 0;
                }
                dialogController.clearAllErrorDialogs();
                killAppImmediateLSP(processRecord, i, i2, "user-terminated", "user request after error");
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
    }

    public final void killAppImmediateLSP(ProcessRecord processRecord, int i, int i2, String str, String str2) {
        ProcessErrorStateRecord processErrorStateRecord = processRecord.mErrorState;
        processErrorStateRecord.setCrashing(false);
        processErrorStateRecord.setCrashingReport(null);
        processErrorStateRecord.setNotResponding(false);
        processErrorStateRecord.setNotRespondingReport(null);
        int pid = processErrorStateRecord.mApp.getPid();
        if (pid <= 0 || pid == ActivityManagerService.MY_PID) {
            return;
        }
        synchronized (this.mBadProcessLock) {
            handleAppCrashLSPB(processRecord, str, null, null, null, null);
        }
        processRecord.killLocked(str2, i, i2, true);
    }

    public void scheduleAppCrashLocked(int i, int i2, String str, int i3, String str2, boolean z, int i4, Bundle bundle) {
        int i5;
        final ProcessRecord processRecord;
        synchronized (this.mService.mPidsSelfLocked) {
            processRecord = null;
            int i6 = 0;
            while (true) {
                if (i6 >= this.mService.mPidsSelfLocked.size()) {
                    break;
                }
                ProcessRecord valueAt = this.mService.mPidsSelfLocked.valueAt(i6);
                if (i < 0 || valueAt.uid == i) {
                    if (valueAt.getPid() == i2) {
                        processRecord = valueAt;
                        break;
                    } else if (valueAt.getPkgList().containsKey(str) && (i3 < 0 || valueAt.userId == i3)) {
                        processRecord = valueAt;
                    }
                }
                i6++;
            }
        }
        if (processRecord == null) {
            Slog.w("ActivityManager", "crashApplication: nothing for uid=" + i + " initialPid=" + i2 + " packageName=" + str + " userId=" + i3);
            return;
        }
        if (i4 == 5) {
            String[] packageList = processRecord.getPackageList();
            for (i5 = 0; i5 < packageList.length; i5++) {
                if (this.mService.mPackageManagerInt.isPackageStateProtected(packageList[i5], processRecord.userId)) {
                    Slog.w("ActivityManager", "crashApplication: Can not crash protected package " + packageList[i5]);
                    return;
                }
            }
        }
        this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeProcess(i2, 12);
        processRecord.scheduleCrashLocked(str2, i4, bundle);
        if (z) {
            this.mService.mHandler.postDelayed(new Runnable() { // from class: com.android.server.am.AppErrors$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AppErrors.this.lambda$scheduleAppCrashLocked$0(processRecord);
                }
            }, 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleAppCrashLocked$0(ProcessRecord processRecord) {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        killAppImmediateLSP(processRecord, 13, 14, "forced", "killed for invalid state");
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
            } catch (Throwable th2) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public void sendRecoverableCrashToAppExitInfo(ProcessRecord processRecord, ApplicationErrorReport.CrashInfo crashInfo) {
        if (processRecord == null || crashInfo == null || !"Native crash".equals(crashInfo.exceptionClassName)) {
            return;
        }
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                this.mService.mProcessList.noteAppRecoverableCrash(processRecord);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public void crashApplication(ProcessRecord processRecord, ApplicationErrorReport.CrashInfo crashInfo) {
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            crashApplicationInner(processRecord, crashInfo, callingPid, callingUid);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x029b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void crashApplicationInner(final com.android.server.am.ProcessRecord r25, android.app.ApplicationErrorReport.CrashInfo r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppErrors.crashApplicationInner(com.android.server.am.ProcessRecord, android.app.ApplicationErrorReport$CrashInfo, int, int):void");
    }

    public final boolean handleAppCrashInActivityController(final ProcessRecord processRecord, final ApplicationErrorReport.CrashInfo crashInfo, final String str, final String str2, final String str3, long j, int i, int i2) {
        AppErrors appErrors;
        final int i3;
        final String str4 = processRecord != null ? processRecord.processName : null;
        int pid = processRecord != null ? processRecord.getPid() : i;
        if (processRecord != null) {
            appErrors = this;
            i3 = processRecord.info.uid;
        } else {
            appErrors = this;
            i3 = i2;
        }
        final int i4 = pid;
        return appErrors.mService.mAtmInternal.handleAppCrashInActivityController(str4, pid, str, str2, j, crashInfo.stackTrace, new Runnable() { // from class: com.android.server.am.AppErrors$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppErrors.this.lambda$handleAppCrashInActivityController$1(crashInfo, str4, i4, processRecord, str, str2, str3, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleAppCrashInActivityController$1(ApplicationErrorReport.CrashInfo crashInfo, String str, int i, ProcessRecord processRecord, String str2, String str3, String str4, int i2) {
        if (Build.IS_DEBUGGABLE && "Native crash".equals(crashInfo.exceptionClassName)) {
            Slog.w("ActivityManager", "Skip killing native crashed app " + str + "(" + i + ") during testing");
            return;
        }
        Slog.w("ActivityManager", "Force-killing crashed app " + str + " at watcher's request");
        if (processRecord != null) {
            if (makeAppCrashingLocked(processRecord, str2, str3, str4, null)) {
                return;
            }
            processRecord.killLocked("crash", 4, true);
        } else {
            Process.killProcess(i);
            ProcessList.killProcessGroup(i2, i);
            this.mService.mProcessList.noteAppKill(i, i2, 4, 0, "crash");
        }
    }

    public final boolean makeAppCrashingLocked(ProcessRecord processRecord, String str, String str2, String str3, AppErrorDialog.Data data) {
        boolean handleAppCrashLSPB;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                ProcessErrorStateRecord processErrorStateRecord = processRecord.mErrorState;
                processErrorStateRecord.setCrashing(true);
                processErrorStateRecord.setCrashingReport(generateProcessError(processRecord, 1, null, str, str2, str3));
                processErrorStateRecord.startAppProblemLSP();
                processRecord.getWindowProcessController().stopFreezingActivities();
                synchronized (this.mBadProcessLock) {
                    handleAppCrashLSPB = handleAppCrashLSPB(processRecord, "force-crash", str, str2, str3, data);
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
        return handleAppCrashLSPB;
    }

    public ActivityManager.ProcessErrorStateInfo generateProcessError(ProcessRecord processRecord, int i, String str, String str2, String str3, String str4) {
        ActivityManager.ProcessErrorStateInfo processErrorStateInfo = new ActivityManager.ProcessErrorStateInfo();
        processErrorStateInfo.condition = i;
        processErrorStateInfo.processName = processRecord.processName;
        processErrorStateInfo.pid = processRecord.getPid();
        processErrorStateInfo.uid = processRecord.info.uid;
        processErrorStateInfo.tag = str;
        processErrorStateInfo.shortMsg = str2;
        processErrorStateInfo.longMsg = str3;
        processErrorStateInfo.stackTrace = str4;
        return processErrorStateInfo;
    }

    public Intent createAppErrorIntentLOSP(ProcessRecord processRecord, long j, ApplicationErrorReport.CrashInfo crashInfo) {
        ApplicationErrorReport createAppErrorReportLOSP = createAppErrorReportLOSP(processRecord, j, crashInfo);
        if (createAppErrorReportLOSP == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.APP_ERROR");
        intent.setComponent(processRecord.mErrorState.getErrorReportReceiver());
        intent.putExtra("android.intent.extra.BUG_REPORT", createAppErrorReportLOSP);
        intent.addFlags(268435456);
        return intent;
    }

    public final ApplicationErrorReport createAppErrorReportLOSP(ProcessRecord processRecord, long j, ApplicationErrorReport.CrashInfo crashInfo) {
        ProcessErrorStateRecord processErrorStateRecord = processRecord.mErrorState;
        if (processErrorStateRecord.getErrorReportReceiver() == null) {
            return null;
        }
        if (!processErrorStateRecord.isCrashing() && !processErrorStateRecord.isNotResponding() && !processErrorStateRecord.isForceCrashReport()) {
            return null;
        }
        ApplicationErrorReport applicationErrorReport = new ApplicationErrorReport();
        applicationErrorReport.packageName = processRecord.info.packageName;
        applicationErrorReport.installerPackageName = processErrorStateRecord.getErrorReportReceiver().getPackageName();
        applicationErrorReport.processName = processRecord.processName;
        applicationErrorReport.time = j;
        applicationErrorReport.systemApp = (processRecord.info.flags & 1) != 0;
        if (processErrorStateRecord.isCrashing() || processErrorStateRecord.isForceCrashReport()) {
            applicationErrorReport.type = 1;
            applicationErrorReport.crashInfo = crashInfo;
        } else if (processErrorStateRecord.isNotResponding()) {
            ActivityManager.ProcessErrorStateInfo notRespondingReport = processErrorStateRecord.getNotRespondingReport();
            if (notRespondingReport == null) {
                return null;
            }
            applicationErrorReport.type = 2;
            ApplicationErrorReport.AnrInfo anrInfo = new ApplicationErrorReport.AnrInfo();
            applicationErrorReport.anrInfo = anrInfo;
            anrInfo.activity = notRespondingReport.tag;
            anrInfo.cause = notRespondingReport.shortMsg;
            anrInfo.info = notRespondingReport.longMsg;
        }
        return applicationErrorReport;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean handleAppCrashLSPB(com.android.server.am.ProcessRecord r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, com.android.server.am.AppErrorDialog.Data r28) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppErrors.handleAppCrashLSPB(com.android.server.am.ProcessRecord, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.android.server.am.AppErrorDialog$Data):boolean");
    }

    public final void updateProcessCrashCountLBp(String str, int i, long j) {
        Pair pair;
        Pair pair2 = (Pair) this.mProcessCrashCounts.get(str, i);
        if (pair2 == null || ((Long) pair2.first).longValue() + ActivityManagerConstants.PROCESS_CRASH_COUNT_RESET_INTERVAL < j) {
            pair = new Pair(Long.valueOf(j), 1);
        } else {
            pair = new Pair((Long) pair2.first, Integer.valueOf(((Integer) pair2.second).intValue() + 1));
        }
        this.mProcessCrashCounts.put(str, i, pair);
    }

    public final boolean isProcOverCrashLimitLBp(ProcessRecord processRecord, long j) {
        Pair pair = (Pair) this.mProcessCrashCounts.get(processRecord.processName, processRecord.uid);
        return !processRecord.isolated && pair != null && j < ((Long) pair.first).longValue() + ActivityManagerConstants.PROCESS_CRASH_COUNT_RESET_INTERVAL && ((Integer) pair.second).intValue() >= ActivityManagerConstants.PROCESS_CRASH_COUNT_LIMIT;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(24:47|48|(1:50)(1:116)|51|(1:53)(1:115)|54|(1:56)(1:114)|57|(1:113)(1:61)|62|(2:64|(4:66|67|(9:91|92|93|94|95|96|(3:98|(1:100)|101)(1:105)|102|(1:104))(2:(1:71)|72)|73))(1:112)|111|67|(0)|91|92|93|94|95|96|(0)(0)|102|(0)|73) */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x019e, code lost:
    
        android.util.Slog.d("ActivityManager", "IAFDParse false");
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x019c, code lost:
    
        r2 = r19;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01c4 A[Catch: all -> 0x01ff, TryCatch #4 {, blocks: (B:48:0x00c4, B:50:0x00c8, B:51:0x00d6, B:54:0x00e8, B:57:0x0102, B:59:0x010a, B:62:0x0117, B:64:0x011d, B:67:0x0131, B:71:0x01d4, B:73:0x01da, B:89:0x0145, B:91:0x0149, B:93:0x0167, B:96:0x016d, B:98:0x01a8, B:100:0x01b2, B:102:0x01c0, B:104:0x01c4, B:105:0x01b8, B:108:0x019e), top: B:47:0x00c4, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01b8 A[Catch: all -> 0x01ff, TryCatch #4 {, blocks: (B:48:0x00c4, B:50:0x00c8, B:51:0x00d6, B:54:0x00e8, B:57:0x0102, B:59:0x010a, B:62:0x0117, B:64:0x011d, B:67:0x0131, B:71:0x01d4, B:73:0x01da, B:89:0x0145, B:91:0x0149, B:93:0x0167, B:96:0x016d, B:98:0x01a8, B:100:0x01b2, B:102:0x01c0, B:104:0x01c4, B:105:0x01b8, B:108:0x019e), top: B:47:0x00c4, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01a8 A[Catch: all -> 0x01ff, TryCatch #4 {, blocks: (B:48:0x00c4, B:50:0x00c8, B:51:0x00d6, B:54:0x00e8, B:57:0x0102, B:59:0x010a, B:62:0x0117, B:64:0x011d, B:67:0x0131, B:71:0x01d4, B:73:0x01da, B:89:0x0145, B:91:0x0149, B:93:0x0167, B:96:0x016d, B:98:0x01a8, B:100:0x01b2, B:102:0x01c0, B:104:0x01c4, B:105:0x01b8, B:108:0x019e), top: B:47:0x00c4, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleShowAppErrorUi(android.os.Message r30) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppErrors.handleShowAppErrorUi(android.os.Message):void");
    }

    public final void stopReportingCrashesLBp(ProcessRecord processRecord) {
        if (this.mAppsNotReportingCrashes == null) {
            this.mAppsNotReportingCrashes = new ArraySet();
        }
        this.mAppsNotReportingCrashes.add(processRecord.info.packageName);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleShowAnrUi(android.os.Message r11) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppErrors.handleShowAnrUi(android.os.Message):void");
    }

    public void handleDismissAnrDialogs(ProcessRecord processRecord) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                ProcessErrorStateRecord processErrorStateRecord = processRecord.mErrorState;
                this.mService.mUiHandler.removeMessages(2, processErrorStateRecord.getAnrData());
                if (processErrorStateRecord.getDialogController().hasAnrDialogs()) {
                    processErrorStateRecord.setNotResponding(false);
                    processErrorStateRecord.setNotRespondingReport(null);
                    processErrorStateRecord.getDialogController().clearAnrDialogs();
                }
                processRecord.mErrorState.setAnrData(null);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
    }

    /* loaded from: classes.dex */
    public final class BadProcessInfo {
        public final String longMsg;
        public final String shortMsg;
        public final String stack;
        public final long time;

        public BadProcessInfo(long j, String str, String str2, String str3) {
            this.time = j;
            this.shortMsg = str;
            this.longMsg = str2;
            this.stack = str3;
        }
    }
}
