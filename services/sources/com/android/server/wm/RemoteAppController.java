package com.android.server.wm;

import android.app.ActivityOptions;
import android.app.BackgroundStartPrivileges;
import android.content.Intent;
import android.os.Bundle;
import android.util.secutil.Slog;
import com.android.server.wm.ActivityStarter;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class RemoteAppController implements IController {
    public final ActivityTaskManagerService mAtmService;
    public final ArrayList mListeners = new ArrayList();
    public final Object mLock = new Object();
    public RootWindowContainer mRoot;

    @Override // com.android.server.wm.IController
    public void initialize() {
    }

    public RemoteAppController(ActivityTaskManagerService activityTaskManagerService) {
        this.mAtmService = activityTaskManagerService;
    }

    @Override // com.android.server.wm.IController
    public void setWindowManager(WindowManagerService windowManagerService) {
        this.mRoot = this.mAtmService.mRootWindowContainer;
    }

    @Override // com.android.server.wm.IController
    public void dumpLocked(PrintWriter printWriter, String str) {
        printWriter.println("[RemoteAppController]");
        printWriter.println(str + "isRemoteAppDisplayRunning=" + isRemoteAppDisplayRunningLocked());
        synchronized (this.mLock) {
            printWriter.println(str + "mListeners=" + this.mListeners);
        }
    }

    public void registerCallbacks(RemoteAppControllerCallbacks remoteAppControllerCallbacks) {
        synchronized (this.mLock) {
            this.mListeners.add(remoteAppControllerCallbacks);
            Slog.d("RemoteAppController", "registerCallbacks: " + remoteAppControllerCallbacks);
        }
    }

    public void unregisterCallbacks(RemoteAppControllerCallbacks remoteAppControllerCallbacks) {
        synchronized (this.mLock) {
            this.mListeners.remove(remoteAppControllerCallbacks);
            Slog.d("RemoteAppController", "unregisterCallbacks: " + remoteAppControllerCallbacks);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean notifyStartActivityInterceptedLocked(android.content.Intent r15, android.app.ActivityOptions r16, android.content.pm.ActivityInfo r17, int r18, boolean r19, android.app.ActivityManager.RunningTaskInfo r20, com.android.server.wm.ActivityRecord r21, com.android.server.uri.NeededUriGrants r22, int r23, int r24, com.android.server.wm.ActivityStarter.Request r25) {
        /*
            r14 = this;
            r0 = r14
            r1 = r21
            r2 = r25
            if (r22 == 0) goto L18
            if (r1 == 0) goto Lf
            com.android.server.wm.RemoteAppController$CallerInfo r2 = new com.android.server.wm.RemoteAppController$CallerInfo
            r2.<init>(r1)
            goto L19
        Lf:
            if (r2 == 0) goto L18
            com.android.server.wm.RemoteAppController$CallerInfo r1 = new com.android.server.wm.RemoteAppController$CallerInfo
            r1.<init>(r2)
            r11 = r1
            goto L1a
        L18:
            r2 = 0
        L19:
            r11 = r2
        L1a:
            java.lang.Object r12 = r0.mLock
            monitor-enter(r12)
            java.util.ArrayList r0 = r0.mListeners     // Catch: java.lang.Throwable -> L49
            java.util.Iterator r13 = r0.iterator()     // Catch: java.lang.Throwable -> L49
            r0 = 0
        L24:
            boolean r1 = r13.hasNext()     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L47
            java.lang.Object r0 = r13.next()     // Catch: java.lang.Throwable -> L49
            com.android.server.wm.RemoteAppControllerCallbacks r0 = (com.android.server.wm.RemoteAppControllerCallbacks) r0     // Catch: java.lang.Throwable -> L49
            r1 = r15
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r20
            r7 = r11
            r8 = r22
            r9 = r23
            r10 = r24
            boolean r0 = r0.onStartActivityInterceptedLocked(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L49
            goto L24
        L47:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L49
            return r0
        L49:
            r0 = move-exception
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L49
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.RemoteAppController.notifyStartActivityInterceptedLocked(android.content.Intent, android.app.ActivityOptions, android.content.pm.ActivityInfo, int, boolean, android.app.ActivityManager$RunningTaskInfo, com.android.server.wm.ActivityRecord, com.android.server.uri.NeededUriGrants, int, int, com.android.server.wm.ActivityStarter$Request):boolean");
    }

    public boolean interceptStartActivityFromRecentsLocked(Task task, ActivityOptions activityOptions, int i, String str) {
        ActivityRecord rootActivity = task.getRootActivity();
        DisplayContent displayContent = this.mRoot.getDisplayContent(i);
        if (rootActivity != null && rootActivity.intent != null && displayContent != null) {
            if (rootActivity.isTaskOverlay()) {
                if (CoreRune.SAFE_DEBUG) {
                    Slog.d("RemoteAppController", "interceptStartActivityFromRecentsLocked: Can't intercept taskOverlay, r=" + rootActivity);
                }
                return false;
            }
            if (rootActivity.isResolverOrDelegateActivity()) {
                if (CoreRune.SAFE_DEBUG) {
                    Slog.d("RemoteAppController", "interceptStartActivityFromRecentsLocked: Can't intercept Chooser/Resolver, r=" + rootActivity);
                }
                return false;
            }
            if (i == 0 && isRemoteAppDisplayLocked(task.getDisplayId())) {
                boolean notifyStartActivityInterceptedLocked = notifyStartActivityInterceptedLocked(rootActivity.intent, activityOptions, rootActivity.info, i, task.isVisible(), task.getTaskInfo(), null, null, rootActivity.mUserId, 2, null);
                Slog.d("RemoteAppController", "interceptStartActivityFromRecentsLocked: intercepted=" + notifyStartActivityInterceptedLocked + ", reason=" + str + ", r=" + rootActivity + ", intent=" + rootActivity.intent + ", displayId=" + i + ", recentTask=" + task + ", intercept_reason=" + RemoteAppControllerCallbacks.interceptReasonToString(2));
                return notifyStartActivityInterceptedLocked;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean interceptStartActivityLocked(com.android.server.wm.ActivityRecord r19, com.android.server.wm.Task r20, com.android.server.wm.ActivityRecord r21, android.app.ActivityOptions r22, int r23, com.android.server.uri.NeededUriGrants r24, java.lang.String r25, com.android.server.wm.ActivityStarter.Request r26) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.RemoteAppController.interceptStartActivityLocked(com.android.server.wm.ActivityRecord, com.android.server.wm.Task, com.android.server.wm.ActivityRecord, android.app.ActivityOptions, int, com.android.server.uri.NeededUriGrants, java.lang.String, com.android.server.wm.ActivityStarter$Request):boolean");
    }

    public boolean isRemoteAppDisplayRunningLocked() {
        for (int childCount = this.mRoot.getChildCount() - 1; childCount >= 0; childCount--) {
            if (((DisplayContent) this.mRoot.getChildAt(childCount)).isRemoteAppDisplay()) {
                return true;
            }
        }
        return false;
    }

    public boolean isRemoteAppDisplayLocked(int i) {
        for (int childCount = this.mRoot.getChildCount() - 1; childCount >= 0; childCount--) {
            DisplayContent displayContent = (DisplayContent) this.mRoot.getChildAt(childCount);
            if (displayContent.getDisplayId() == i) {
                return displayContent.isRemoteAppDisplay();
            }
        }
        return false;
    }

    public static boolean isValidActivityTypeLocked(ActivityRecord activityRecord) {
        return activityRecord.isActivityTypeStandardOrUndefined() || activityRecord.isActivityTypeAssistant();
    }

    public static boolean isInterceptRequested(Intent intent) {
        try {
            return intent.isRemoteAppLaunch();
        } catch (Exception unused) {
            return false;
        }
    }

    public void startActivityAsCaller(Intent intent, CallerInfo callerInfo, int i, Bundle bundle) {
        this.mAtmService.getActivityStartController().obtainStarter(intent, "startActivityAsCaller").setCallingUid(callerInfo.launchedFromUid).setCallingPackage(callerInfo.launchedFromPackage).setCallingFeatureId(callerInfo.launchedFromFeatureId).setResolvedType(callerInfo.resolvedType).setRequestCode(-1).setActivityOptions(bundle).setUserId(i).setIgnoreTargetSecurity(false).setFilterCallingUid(callerInfo.isResolver ? 0 : callerInfo.launchedFromUid).setBackgroundStartPrivileges(BackgroundStartPrivileges.ALLOW_BAL).execute();
    }

    /* loaded from: classes3.dex */
    public class CallerInfo {
        public boolean isResolver;
        public String launchedFromFeatureId;
        public String launchedFromPackage;
        public int launchedFromUid;
        public String resolvedType;

        public CallerInfo(ActivityRecord activityRecord) {
            this.launchedFromUid = activityRecord.launchedFromUid;
            this.launchedFromPackage = activityRecord.launchedFromPackage;
            this.launchedFromFeatureId = activityRecord.launchedFromFeatureId;
            this.isResolver = activityRecord.isResolverOrChildActivity();
            this.resolvedType = activityRecord.resolvedType;
        }

        public CallerInfo(ActivityStarter.Request request) {
            this.launchedFromUid = request.callingUid;
            this.launchedFromPackage = request.callingPackage;
            this.launchedFromFeatureId = request.callingFeatureId;
            this.isResolver = false;
            this.resolvedType = request.resolvedType;
        }
    }
}
