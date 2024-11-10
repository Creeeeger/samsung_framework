package com.android.server.wm;

import android.app.ActivityOptions;
import android.util.Slog;
import android.window.TaskSnapshot;
import java.util.ArrayList;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class StartingSurfaceController {
    public static final String TAG = "WindowManager";
    public final ArrayList mDeferringAddStartActivities = new ArrayList();
    public boolean mDeferringAddStartingWindow;
    public boolean mInitNewTask;
    public boolean mInitProcessRunning;
    public boolean mInitTaskSwitch;
    public final WindowManagerService mService;
    public final SplashScreenExceptionList mSplashScreenExceptionsList;

    public StartingSurfaceController(WindowManagerService windowManagerService) {
        this.mService = windowManagerService;
        this.mSplashScreenExceptionsList = new SplashScreenExceptionList(windowManagerService.mContext.getMainExecutor());
    }

    public StartingSurface createSplashScreenStartingSurface(ActivityRecord activityRecord, int i) {
        WindowManagerGlobalLock windowManagerGlobalLock = this.mService.mGlobalLock;
        WindowManagerService.boostPriorityForLockedSection();
        synchronized (windowManagerGlobalLock) {
            try {
                Task task = activityRecord.getTask();
                if (task == null || !this.mService.mAtmService.mTaskOrganizerController.addStartingWindow(task, activityRecord, i, null)) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return null;
                }
                StartingSurface startingSurface = new StartingSurface(task);
                WindowManagerService.resetPriorityAfterLockedSection();
                return startingSurface;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean isExceptionApp(String str, int i, Supplier supplier) {
        return this.mSplashScreenExceptionsList.isException(str, i, supplier);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x000f, code lost:
    
        if (r8 == 1) goto L11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int makeStartingWindowTypeParameter(boolean r0, boolean r1, boolean r2, boolean r3, boolean r4, boolean r5, boolean r6, boolean r7, int r8, java.lang.String r9, int r10) {
        /*
            if (r1 == 0) goto L4
            r0 = r0 | 2
        L4:
            if (r2 == 0) goto L8
            r0 = r0 | 4
        L8:
            if (r3 == 0) goto Lc
            r0 = r0 | 8
        Lc:
            if (r4 != 0) goto L11
            r1 = 1
            if (r8 != r1) goto L13
        L11:
            r0 = r0 | 16
        L13:
            if (r5 == 0) goto L17
            r0 = r0 | 32
        L17:
            if (r6 == 0) goto L1c
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 | r1
        L1c:
            if (r7 == 0) goto L20
            r0 = r0 | 64
        L20:
            r1 = 2
            if (r8 != r1) goto L32
            r1 = 205907456(0xc45e600, double:1.017318E-315)
            android.os.UserHandle r3 = android.os.UserHandle.of(r10)
            boolean r1 = android.app.compat.CompatChanges.isChangeEnabled(r1, r9, r3)
            if (r1 == 0) goto L32
            r0 = r0 | 128(0x80, float:1.794E-43)
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.StartingSurfaceController.makeStartingWindowTypeParameter(boolean, boolean, boolean, boolean, boolean, boolean, boolean, boolean, int, java.lang.String, int):int");
    }

    public StartingSurface createTaskSnapshotSurface(ActivityRecord activityRecord, TaskSnapshot taskSnapshot) {
        WindowManagerGlobalLock windowManagerGlobalLock = this.mService.mGlobalLock;
        WindowManagerService.boostPriorityForLockedSection();
        synchronized (windowManagerGlobalLock) {
            try {
                Task task = activityRecord.getTask();
                if (task == null) {
                    Slog.w(TAG, "TaskSnapshotSurface.create: Failed to find task for activity=" + activityRecord);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return null;
                }
                ActivityRecord topFullscreenActivity = activityRecord.getTask().getTopFullscreenActivity();
                if (topFullscreenActivity == null) {
                    Slog.w(TAG, "TaskSnapshotSurface.create: Failed to find top fullscreen for task=" + task);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return null;
                }
                if (topFullscreenActivity.getTopFullscreenOpaqueWindow() == null) {
                    Slog.w(TAG, "TaskSnapshotSurface.create: no opaque window in " + topFullscreenActivity);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return null;
                }
                if (activityRecord.mDisplayContent.getRotation() != taskSnapshot.getRotation()) {
                    activityRecord.mDisplayContent.handleTopActivityLaunchingInDifferentOrientation(activityRecord, false);
                }
                this.mService.mAtmService.mTaskOrganizerController.addStartingWindow(task, activityRecord, 0, taskSnapshot);
                StartingSurface startingSurface = new StartingSurface(task);
                WindowManagerService.resetPriorityAfterLockedSection();
                return startingSurface;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class DeferringStartingWindowRecord {
        public final ActivityRecord mDeferring;
        public final ActivityRecord mPrev;
        public final ActivityRecord mSource;

        public DeferringStartingWindowRecord(ActivityRecord activityRecord, ActivityRecord activityRecord2, ActivityRecord activityRecord3) {
            this.mDeferring = activityRecord;
            this.mPrev = activityRecord2;
            this.mSource = activityRecord3;
        }
    }

    public void showStartingWindow(ActivityRecord activityRecord, ActivityRecord activityRecord2, boolean z, boolean z2, ActivityRecord activityRecord3, boolean z3) {
        if (this.mDeferringAddStartingWindow) {
            addDeferringRecord(activityRecord, activityRecord2, z, z2, activityRecord3);
        } else if (z3) {
            activityRecord.showStartingWindow(activityRecord2, z, z2, activityRecord.isProcessRunning(), true, activityRecord3, null, true);
        } else {
            activityRecord.showStartingWindow(activityRecord2, z, z2, true, activityRecord3);
        }
    }

    public final void addDeferringRecord(ActivityRecord activityRecord, ActivityRecord activityRecord2, boolean z, boolean z2, ActivityRecord activityRecord3) {
        if (this.mDeferringAddStartActivities.isEmpty()) {
            this.mInitProcessRunning = activityRecord.isProcessRunning();
            this.mInitNewTask = z;
            this.mInitTaskSwitch = z2;
        }
        this.mDeferringAddStartActivities.add(new DeferringStartingWindowRecord(activityRecord, activityRecord2, activityRecord3));
    }

    public final void showStartingWindowFromDeferringActivities(ActivityOptions activityOptions) {
        for (int size = this.mDeferringAddStartActivities.size() - 1; size >= 0; size--) {
            DeferringStartingWindowRecord deferringStartingWindowRecord = (DeferringStartingWindowRecord) this.mDeferringAddStartActivities.get(size);
            if (deferringStartingWindowRecord.mDeferring.getTask() == null) {
                Slog.e(TAG, "No task exists: " + deferringStartingWindowRecord.mDeferring.shortComponentName + " parent: " + deferringStartingWindowRecord.mDeferring.getParent());
            } else {
                deferringStartingWindowRecord.mDeferring.showStartingWindow(deferringStartingWindowRecord.mPrev, this.mInitNewTask, this.mInitTaskSwitch, this.mInitProcessRunning, true, deferringStartingWindowRecord.mSource, activityOptions);
                if (deferringStartingWindowRecord.mDeferring.mStartingData != null) {
                    break;
                }
            }
        }
        this.mDeferringAddStartActivities.clear();
    }

    public void beginDeferAddStartingWindow() {
        this.mDeferringAddStartingWindow = true;
    }

    public void endDeferAddStartingWindow(ActivityOptions activityOptions) {
        this.mDeferringAddStartingWindow = false;
        showStartingWindowFromDeferringActivities(activityOptions);
    }

    public void cleanupDeferAddStartingWindow() {
        this.mDeferringAddStartingWindow = false;
        this.mDeferringAddStartActivities.clear();
    }

    /* loaded from: classes3.dex */
    public final class StartingSurface {
        public final Task mTask;

        public StartingSurface(Task task) {
            this.mTask = task;
        }

        public void remove(boolean z) {
            WindowManagerGlobalLock windowManagerGlobalLock = StartingSurfaceController.this.mService.mGlobalLock;
            WindowManagerService.boostPriorityForLockedSection();
            synchronized (windowManagerGlobalLock) {
                try {
                    StartingSurfaceController.this.mService.mAtmService.mTaskOrganizerController.removeStartingWindow(this.mTask, z);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        }
    }
}
