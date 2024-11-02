package com.android.wm.shell.taskview;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.os.Binder;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.CloseGuard;
import android.util.Log;
import android.view.SurfaceControl;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.taskview.TaskView;
import com.android.wm.shell.taskview.TaskViewTransitions;
import com.samsung.android.nexus.video.BuildConfig;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TaskViewTaskController implements ShellTaskOrganizer.TaskListener {
    public final Context mContext;
    public final CloseGuard mGuard;
    public TaskView.Listener mListener;
    public Executor mListenerExecutor;
    public boolean mNotifiedForInitialized;
    public ActivityManager.RunningTaskInfo mPendingInfo;
    public final TaskViewTaskController$$ExternalSyntheticLambda0 mRecreateSurfaceTimeoutRunnable;
    public final Executor mShellExecutor;
    public SurfaceControl mSurfaceControl;
    public boolean mSurfaceCreated;
    public final SyncTransactionQueue mSyncQueue;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public SurfaceControl mTaskLeash;
    public boolean mTaskNotFound;
    public final ShellTaskOrganizer mTaskOrganizer;
    public WindowContainerToken mTaskToken;
    public TaskViewBase mTaskViewBase;
    public final TaskViewTransitions mTaskViewTransitions;
    public final SurfaceControl.Transaction mTransaction;
    public boolean mWaitingForSurfaceCreated;

    public TaskViewTaskController(Context context, ShellTaskOrganizer shellTaskOrganizer, TaskViewTransitions taskViewTransitions, SyncTransactionQueue syncTransactionQueue) {
        CloseGuard closeGuard = new CloseGuard();
        this.mGuard = closeGuard;
        this.mTransaction = new SurfaceControl.Transaction();
        this.mWaitingForSurfaceCreated = false;
        this.mRecreateSurfaceTimeoutRunnable = new TaskViewTaskController$$ExternalSyntheticLambda0(this, 0);
        this.mContext = context;
        this.mTaskOrganizer = shellTaskOrganizer;
        Executor executor = shellTaskOrganizer.getExecutor();
        this.mShellExecutor = executor;
        this.mSyncQueue = syncTransactionQueue;
        this.mTaskViewTransitions = taskViewTransitions;
        executor.execute(new TaskViewTaskController$$ExternalSyntheticLambda0(this, 1));
        closeGuard.open(BuildConfig.BUILD_TYPE);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void attachChildSurfaceToTask(int i, SurfaceControl.Builder builder) {
        builder.setParent(findTaskSurface(i));
    }

    public final void cleanUpPendingTask() {
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mPendingInfo;
        if (runningTaskInfo != null) {
            if (this.mListener != null) {
                this.mListenerExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda1(this, runningTaskInfo.taskId, 3));
            }
            this.mTaskViewBase.getClass();
            this.mTaskOrganizer.setInterceptBackPressedOnTaskRoot(this.mPendingInfo.token, false);
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.removeTask(this.mPendingInfo.token);
            TaskViewTransitions taskViewTransitions = this.mTaskViewTransitions;
            taskViewTransitions.updateVisibilityState(this, false);
            taskViewTransitions.mPending.add(new TaskViewTransitions.PendingTransition(2, windowContainerTransaction, this, null));
            taskViewTransitions.startNextTransition();
        }
        resetTaskInfo();
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void dump(PrintWriter printWriter, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("  ");
        printWriter.println(str + this);
    }

    public final void finalize() {
        try {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
                performRelease();
            }
        } finally {
            super.finalize();
        }
    }

    public final SurfaceControl findTaskSurface(int i) {
        SurfaceControl surfaceControl;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
        if (runningTaskInfo != null && (surfaceControl = this.mTaskLeash) != null && runningTaskInfo.taskId == i) {
            return surfaceControl;
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("There is no surface for taskId=", i));
    }

    public final void finishRecreateSurface(String str) {
        ShellExecutor shellExecutor;
        if (this.mWaitingForSurfaceCreated) {
            this.mWaitingForSurfaceCreated = false;
            Executor executor = this.mShellExecutor;
            if (executor instanceof ShellExecutor) {
                shellExecutor = (ShellExecutor) executor;
            } else {
                shellExecutor = null;
            }
            if (shellExecutor != null) {
                ((HandlerExecutor) shellExecutor).removeCallbacks(this.mRecreateSurfaceTimeoutRunnable);
            }
            Log.d("TaskViewTaskController", "finishRecreateSurface: " + this + ", reason=" + str);
        }
    }

    public final boolean isUsingShellTransitions() {
        TaskViewTransitions taskViewTransitions = this.mTaskViewTransitions;
        if (taskViewTransitions != null && taskViewTransitions.mTransitions.mIsRegistered) {
            return true;
        }
        return false;
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) {
        WindowContainerToken windowContainerToken = this.mTaskToken;
        if (windowContainerToken != null && windowContainerToken.equals(runningTaskInfo.token) && this.mListener != null) {
            this.mListenerExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda1(this, runningTaskInfo.taskId, 0));
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskAppeared(final ActivityManager.RunningTaskInfo runningTaskInfo, final SurfaceControl surfaceControl) {
        if (isUsingShellTransitions()) {
            this.mPendingInfo = runningTaskInfo;
            if (this.mTaskNotFound) {
                cleanUpPendingTask();
                return;
            }
            return;
        }
        this.mTaskInfo = runningTaskInfo;
        this.mTaskToken = runningTaskInfo.token;
        this.mTaskLeash = surfaceControl;
        if (this.mSurfaceCreated) {
            this.mTransaction.reparent(surfaceControl, this.mSurfaceControl).show(this.mTaskLeash).apply();
        } else {
            updateTaskVisibility();
        }
        this.mTaskOrganizer.setInterceptBackPressedOnTaskRoot(this.mTaskToken, true);
        this.mSyncQueue.runInSync(new SyncTransactionQueue.TransactionRunnable(runningTaskInfo, surfaceControl) { // from class: com.android.wm.shell.taskview.TaskViewTaskController$$ExternalSyntheticLambda2
            public final /* synthetic */ ActivityManager.RunningTaskInfo f$1;

            @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
            public final void runWithTransaction(SurfaceControl.Transaction transaction) {
                TaskView taskView = (TaskView) TaskViewTaskController.this.mTaskViewBase;
                taskView.getBoundsOnScreen(taskView.mTmpRect);
                taskView.mTaskViewTaskController.setWindowBounds(taskView.mTmpRect);
                ActivityManager.TaskDescription taskDescription = this.f$1.taskDescription;
                if (taskDescription != null) {
                    taskView.setResizeBackgroundColor(taskDescription.getBackgroundColor());
                }
            }
        });
        if (this.mListener != null) {
            final int i = runningTaskInfo.taskId;
            final ComponentName componentName = runningTaskInfo.baseActivity;
            this.mListenerExecutor.execute(new Runnable() { // from class: com.android.wm.shell.taskview.TaskViewTaskController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    TaskViewTaskController taskViewTaskController = TaskViewTaskController.this;
                    taskViewTaskController.mListener.onTaskCreated(i);
                }
            });
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskInfoChanged(final ActivityManager.RunningTaskInfo runningTaskInfo) {
        final TaskView taskView = (TaskView) this.mTaskViewBase;
        taskView.getClass();
        ActivityManager.TaskDescription taskDescription = runningTaskInfo.taskDescription;
        if (taskDescription != null) {
            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_BUG_FIX) {
                taskView.mTaskViewTaskController.mSyncQueue.runInSync(new SyncTransactionQueue.TransactionRunnable() { // from class: com.android.wm.shell.taskview.TaskView$$ExternalSyntheticLambda0
                    @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
                    public final void runWithTransaction(SurfaceControl.Transaction transaction) {
                        TaskView taskView2 = TaskView.this;
                        taskView2.getClass();
                        taskView2.setResizeBackgroundColor(transaction, runningTaskInfo.taskDescription.getBackgroundColor());
                    }
                });
            } else {
                taskView.setResizeBackgroundColor(taskDescription.getBackgroundColor());
            }
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        WindowContainerToken windowContainerToken = this.mTaskToken;
        if (windowContainerToken != null && windowContainerToken.equals(runningTaskInfo.token)) {
            if (this.mListener != null) {
                this.mListenerExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda1(this, runningTaskInfo.taskId, 1));
            }
            this.mTaskOrganizer.setInterceptBackPressedOnTaskRoot(this.mTaskToken, false);
            this.mTransaction.reparent(this.mTaskLeash, null).apply();
            resetTaskInfo();
            this.mTaskViewBase.getClass();
        }
    }

    public final void performRelease() {
        this.mShellExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda0(this, 2));
        this.mGuard.close();
        if (this.mListener != null && this.mNotifiedForInitialized) {
            this.mListenerExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda0(this, 7));
            this.mNotifiedForInitialized = false;
        }
    }

    public final void prepareActivityOptions(ActivityOptions activityOptions, Rect rect) {
        final Binder binder = new Binder();
        this.mShellExecutor.execute(new Runnable() { // from class: com.android.wm.shell.taskview.TaskViewTaskController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                TaskViewTaskController taskViewTaskController = TaskViewTaskController.this;
                Binder binder2 = binder;
                ShellTaskOrganizer shellTaskOrganizer = taskViewTaskController.mTaskOrganizer;
                synchronized (shellTaskOrganizer.mLock) {
                    shellTaskOrganizer.mLaunchCookieToListener.put(binder2, taskViewTaskController);
                }
            }
        });
        activityOptions.setLaunchBounds(rect);
        activityOptions.setLaunchCookie(binder);
        activityOptions.setLaunchWindowingMode(6);
        activityOptions.setRemoveWithTaskOrganizer(true);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void reparentChildSurfaceToTask(int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.reparent(surfaceControl, findTaskSurface(i));
    }

    public final void resetTaskInfo() {
        this.mTaskInfo = null;
        this.mTaskToken = null;
        this.mTaskLeash = null;
        this.mPendingInfo = null;
        this.mTaskNotFound = false;
    }

    public final void setWindowBounds(Rect rect) {
        if (this.mTaskToken == null) {
            return;
        }
        if (isUsingShellTransitions()) {
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setBounds(this.mTaskToken, rect);
            Log.d("TaskViewTaskController", "setWindowBounds: boundsOnScreen=" + rect);
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
            TaskViewTransitions.TaskViewRequestedState taskViewRequestedState = (TaskViewTransitions.TaskViewRequestedState) this.mTaskViewTransitions.mTaskViews.get(this);
            if (taskViewRequestedState != null) {
                taskViewRequestedState.mBounds.set(rect);
            }
            SurfaceControl surfaceControl = this.mTaskLeash;
            if (surfaceControl != null && surfaceControl.isValid() && rect.isValid()) {
                Rect rect2 = new Rect(rect);
                rect2.offsetTo(0, 0);
                this.mTransaction.setCrop(this.mTaskLeash, rect2).apply();
                return;
            }
            return;
        }
        WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
        windowContainerTransaction2.setBounds(this.mTaskToken, rect);
        this.mSyncQueue.queue(windowContainerTransaction2);
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("TaskViewTaskController:");
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
        if (runningTaskInfo != null) {
            obj = Integer.valueOf(runningTaskInfo.taskId);
        } else {
            obj = "null";
        }
        sb.append(obj);
        return sb.toString();
    }

    public final void updateTaskVisibility() {
        boolean z;
        if (this.mTaskToken == null) {
            Log.w("TaskViewTaskController", "updateTaskVisibility: failed, task token is null");
            return;
        }
        if (!this.mSurfaceCreated && this.mWaitingForSurfaceCreated) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setHidden(this.mTaskToken, true ^ this.mSurfaceCreated);
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        }
        if (this.mListener == null) {
            return;
        }
        final int i = this.mTaskInfo.taskId;
        this.mSyncQueue.runInSync(new SyncTransactionQueue.TransactionRunnable() { // from class: com.android.wm.shell.taskview.TaskViewTaskController$$ExternalSyntheticLambda4
            @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
            public final void runWithTransaction(SurfaceControl.Transaction transaction) {
                TaskViewTaskController taskViewTaskController = TaskViewTaskController.this;
                taskViewTaskController.mListenerExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda1(taskViewTaskController, i, 2));
            }
        });
    }
}
