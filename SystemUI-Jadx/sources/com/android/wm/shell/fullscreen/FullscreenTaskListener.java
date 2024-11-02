package com.android.wm.shell.fullscreen;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.TaskInfo;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.SurfaceControl;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.fullscreen.AffordanceAnimController;
import com.android.wm.shell.fullscreen.FullscreenTaskListener;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.windowdecor.DexWindowDecorViewModel;
import com.android.wm.shell.windowdecor.WindowDecorViewModel;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FullscreenTaskListener implements ShellTaskOrganizer.TaskListener {
    public final SparseArray mAffordanceControllerList;
    public final Context mContext;
    public final Optional mDexWindowDecorViewModelOptional;
    public final Optional mRecentTasksOptional;
    public final ShellTaskOrganizer mShellTaskOrganizer;
    public final Optional mSplitScreenController;
    public final SyncTransactionQueue mSyncQueue;
    public final SparseArray mTasks;
    public final Optional mWindowDecorViewModelOptional;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class State {
        public SurfaceControl mLeash;
        public ActivityManager.RunningTaskInfo mTaskInfo;

        private State() {
        }

        public /* synthetic */ State(int i) {
            this();
        }
    }

    public FullscreenTaskListener(SyncTransactionQueue syncTransactionQueue) {
        this(null, null, syncTransactionQueue, Optional.empty(), Optional.empty(), Optional.empty(), null, null);
    }

    public final void animForAffordance(int i, int i2) {
        final AffordanceAnimController affordanceAnimController;
        Keyframe[] keyframeArr;
        boolean z;
        boolean z2;
        boolean z3;
        State state = (State) this.mTasks.get(i);
        if (state != null) {
            int i3 = state.mTaskInfo.displayId;
            Keyframe[] keyframeArr2 = null;
            Context context = this.mContext;
            if (context == null) {
                affordanceAnimController = null;
            } else {
                SparseArray sparseArray = this.mAffordanceControllerList;
                if (!sparseArray.contains(i3)) {
                    sparseArray.put(i3, new AffordanceAnimController(context, i3));
                }
                affordanceAnimController = (AffordanceAnimController) sparseArray.get(i3);
            }
            if (affordanceAnimController != null) {
                final SurfaceControl surfaceControl = state.mLeash;
                ActivityManager.RunningTaskInfo runningTaskInfo = state.mTaskInfo;
                if (surfaceControl != null && runningTaskInfo != null) {
                    Rect bounds = runningTaskInfo.getConfiguration().windowConfiguration.getBounds();
                    Rect rect = affordanceAnimController.mBounds;
                    rect.set(bounds);
                    if (!rect.isEmpty()) {
                        ValueAnimator valueAnimator = affordanceAnimController.mAnimator;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                        }
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        affordanceAnimController.mDisplayContext.getDisplay().getMetrics(displayMetrics);
                        float f = displayMetrics.density;
                        if ((i2 & 4) != 0) {
                            if ((i2 & 1) != 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            keyframeArr = affordanceAnimController.getKeyFrames(f, true, z3);
                        } else if ((i2 & 8) != 0) {
                            if ((i2 & 1) != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            keyframeArr = affordanceAnimController.getKeyFrames(f, false, z);
                        } else {
                            keyframeArr = null;
                        }
                        if ((i2 & 1) != 0) {
                            if ((i2 & 12) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            keyframeArr2 = affordanceAnimController.getKeyFrames(f, true, z2);
                        } else if ((i2 & 2) != 0) {
                            keyframeArr2 = affordanceAnimController.getKeyFrames(f, false, false);
                        }
                        if (keyframeArr == null && keyframeArr2 == null) {
                            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                            affordanceAnimController.mAnimator = ofFloat;
                            ofFloat.setDuration(affordanceAnimController.mAnimation.getDuration());
                            affordanceAnimController.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.fullscreen.AffordanceAnimController$$ExternalSyntheticLambda0
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    AffordanceAnimController affordanceAnimController2 = AffordanceAnimController.this;
                                    SurfaceControl surfaceControl2 = surfaceControl;
                                    Transformation transformation = affordanceAnimController2.mTmpTransformation;
                                    transformation.clear();
                                    affordanceAnimController2.mAnimation.getTransformation(AnimationUtils.currentAnimationTimeMillis(), transformation);
                                    Matrix matrix = transformation.getMatrix();
                                    SurfaceControl.Transaction transaction = affordanceAnimController2.mTransaction;
                                    transaction.setMatrix(surfaceControl2, matrix, affordanceAnimController2.mTmpFloat9);
                                    transaction.apply();
                                }
                            });
                            affordanceAnimController.mAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.fullscreen.AffordanceAnimController.2
                                public final /* synthetic */ SurfaceControl val$leash;

                                public AnonymousClass2(final SurfaceControl surfaceControl2) {
                                    r2 = surfaceControl2;
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    AffordanceAnimController.this.mAnimation.cancel();
                                    AffordanceAnimController affordanceAnimController2 = AffordanceAnimController.this;
                                    SurfaceControl surfaceControl2 = r2;
                                    Matrix matrix = Matrix.IDENTITY_MATRIX;
                                    SurfaceControl.Transaction transaction = affordanceAnimController2.mTransaction;
                                    transaction.setMatrix(surfaceControl2, matrix, affordanceAnimController2.mTmpFloat9);
                                    transaction.apply();
                                    AffordanceAnimController affordanceAnimController3 = AffordanceAnimController.this;
                                    if (affordanceAnimController3.mRadius != 0.0f) {
                                        affordanceAnimController3.mTransaction.setWindowCrop(r2, 0, 0);
                                        AffordanceAnimController.this.mTransaction.setCornerRadius(r2, 0.0f);
                                    }
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                    AffordanceAnimController affordanceAnimController2 = AffordanceAnimController.this;
                                    affordanceAnimController2.mAnimation.initialize(affordanceAnimController2.mBounds.width(), AffordanceAnimController.this.mBounds.height(), AffordanceAnimController.this.mBounds.width(), AffordanceAnimController.this.mBounds.height());
                                    AffordanceAnimController.this.mAnimation.start();
                                    AffordanceAnimController affordanceAnimController3 = AffordanceAnimController.this;
                                    if (affordanceAnimController3.mRadius != 0.0f) {
                                        affordanceAnimController3.mTransaction.setWindowCrop(r2, affordanceAnimController3.mBounds.width(), AffordanceAnimController.this.mBounds.height());
                                        AffordanceAnimController affordanceAnimController4 = AffordanceAnimController.this;
                                        affordanceAnimController4.mTransaction.setCornerRadius(r2, affordanceAnimController4.mRadius);
                                    }
                                }
                            });
                            affordanceAnimController.mAnimator.start();
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        if (keyframeArr != null) {
                            arrayList.add(PropertyValuesHolder.ofKeyframe(AffordanceAnimController.AnimTarget.X, keyframeArr));
                        }
                        if (keyframeArr2 != null) {
                            arrayList.add(PropertyValuesHolder.ofKeyframe(AffordanceAnimController.AnimTarget.Y, keyframeArr2));
                        }
                        AffordanceAnimController.AnimTarget animTarget = new AffordanceAnimController.AnimTarget(surfaceControl2);
                        ObjectAnimator duration = ObjectAnimator.ofPropertyValuesHolder(animTarget, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[0])).setDuration(500L);
                        affordanceAnimController.mAnimator = duration;
                        duration.setInterpolator(new LinearInterpolator());
                        affordanceAnimController.mAnimator.addUpdateListener(animTarget);
                        affordanceAnimController.mAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.fullscreen.AffordanceAnimController.1
                            public final /* synthetic */ SurfaceControl val$leash;

                            public AnonymousClass1(final SurfaceControl surfaceControl2) {
                                r2 = surfaceControl2;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                AffordanceAnimController.this.mTransaction.setPosition(r2, 0.0f, 0.0f);
                                AffordanceAnimController affordanceAnimController2 = AffordanceAnimController.this;
                                if (affordanceAnimController2.mRadius != 0.0f) {
                                    affordanceAnimController2.mTransaction.setWindowCrop(r2, 0, 0);
                                    AffordanceAnimController.this.mTransaction.setCornerRadius(r2, 0.0f);
                                }
                                AffordanceAnimController.this.mTransaction.apply();
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationStart(Animator animator) {
                                AffordanceAnimController affordanceAnimController2 = AffordanceAnimController.this;
                                if (affordanceAnimController2.mRadius != 0.0f) {
                                    affordanceAnimController2.mTransaction.setWindowCrop(r2, affordanceAnimController2.mBounds.width(), AffordanceAnimController.this.mBounds.height());
                                    AffordanceAnimController affordanceAnimController3 = AffordanceAnimController.this;
                                    affordanceAnimController3.mTransaction.setCornerRadius(r2, affordanceAnimController3.mRadius);
                                }
                                AffordanceAnimController.this.mTransaction.apply();
                            }
                        });
                        affordanceAnimController.mAnimator.start();
                    }
                }
            }
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void attachChildSurfaceToTask(int i, SurfaceControl.Builder builder) {
        builder.setParent(findTaskSurface(i));
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void createRestartDialog(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        Optional optional = this.mDexWindowDecorViewModelOptional;
        if (optional.isPresent()) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            ((DexWindowDecorViewModel) optional.get()).onTaskOpening(runningTaskInfo, surfaceControl, transaction, transaction);
            transaction.apply();
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void dump(PrintWriter printWriter, String str) {
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        printWriter.println(str + this);
        printWriter.println(m + this.mTasks.size() + " Tasks");
    }

    public final SurfaceControl findTaskSurface(int i) {
        SparseArray sparseArray = this.mTasks;
        if (sparseArray.contains(i)) {
            return ((State) sparseArray.get(i)).mLeash;
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("There is no surface for taskId=", i));
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final TaskInfo getTaskInfo(int i) {
        SparseArray sparseArray = this.mTasks;
        if (sparseArray.get(i) != null) {
            return ((State) sparseArray.get(i)).mTaskInfo;
        }
        return null;
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskAppeared(final ActivityManager.RunningTaskInfo runningTaskInfo, final SurfaceControl surfaceControl) {
        SparseArray sparseArray = this.mTasks;
        if (sparseArray.get(runningTaskInfo.taskId) == null) {
            int i = 1;
            if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, 111706912, 1, null, Long.valueOf(runningTaskInfo.taskId));
            }
            final Point point = runningTaskInfo.positionInParent;
            boolean z = false;
            State state = new State(0 == true ? 1 : 0);
            state.mLeash = surfaceControl;
            state.mTaskInfo = runningTaskInfo;
            sparseArray.put(runningTaskInfo.taskId, state);
            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                return;
            }
            this.mRecentTasksOptional.ifPresent(new FullscreenTaskListener$$ExternalSyntheticLambda2(runningTaskInfo, i));
            Optional optional = this.mWindowDecorViewModelOptional;
            if (optional.isPresent()) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                z = ((WindowDecorViewModel) optional.get()).onTaskOpening(runningTaskInfo, surfaceControl, transaction, transaction);
                transaction.apply();
            }
            if (!z) {
                this.mSyncQueue.runInSync(new SyncTransactionQueue.TransactionRunnable() { // from class: com.android.wm.shell.fullscreen.FullscreenTaskListener$$ExternalSyntheticLambda1
                    @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
                    public final void runWithTransaction(SurfaceControl.Transaction transaction2) {
                        SurfaceControl surfaceControl2 = surfaceControl;
                        if (surfaceControl2.isValid()) {
                            transaction2.setWindowCrop(surfaceControl2, null);
                            Point point2 = point;
                            transaction2.setPosition(surfaceControl2, point2.x, point2.y);
                            transaction2.setAlpha(surfaceControl2, 1.0f);
                            transaction2.setMatrix(surfaceControl2, 1.0f, 0.0f, 0.0f, 1.0f);
                            if (runningTaskInfo.isVisible) {
                                transaction2.show(surfaceControl2);
                            }
                        }
                    }
                });
                return;
            }
            return;
        }
        throw new IllegalStateException("Task appeared more than once: #" + runningTaskInfo.taskId);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        final State state = (State) this.mTasks.get(runningTaskInfo.taskId);
        ActivityManager.RunningTaskInfo runningTaskInfo2 = state.mTaskInfo;
        Point point = runningTaskInfo2.positionInParent;
        boolean z = runningTaskInfo2.isVisible;
        Optional optional = this.mWindowDecorViewModelOptional;
        if (optional.isPresent()) {
            ((WindowDecorViewModel) optional.get()).onTaskInfoChanged(runningTaskInfo);
        }
        state.mTaskInfo = runningTaskInfo;
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            return;
        }
        final boolean z2 = true;
        this.mRecentTasksOptional.ifPresent(new FullscreenTaskListener$$ExternalSyntheticLambda2(runningTaskInfo, true ? 1 : 0));
        final Point point2 = state.mTaskInfo.positionInParent;
        boolean z3 = !point.equals(point2);
        if (z || !state.mTaskInfo.isVisible) {
            z2 = false;
        }
        if (z2 || z3) {
            this.mSyncQueue.runInSync(new SyncTransactionQueue.TransactionRunnable() { // from class: com.android.wm.shell.fullscreen.FullscreenTaskListener$$ExternalSyntheticLambda3
                @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
                public final void runWithTransaction(SurfaceControl.Transaction transaction) {
                    FullscreenTaskListener.State state2 = FullscreenTaskListener.State.this;
                    if (state2.mLeash.isValid()) {
                        if (z2) {
                            transaction.show(state2.mLeash);
                        }
                        SurfaceControl surfaceControl = state2.mLeash;
                        Point point3 = point2;
                        transaction.setPosition(surfaceControl, point3.x, point3.y);
                    }
                }
            });
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -2117150342, 1, null, Long.valueOf(runningTaskInfo.taskId));
        }
        this.mTasks.remove(runningTaskInfo.taskId);
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            return;
        }
        Optional optional = this.mWindowDecorViewModelOptional;
        if (optional.isPresent()) {
            ((WindowDecorViewModel) optional.get()).destroyWindowDecoration(runningTaskInfo);
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void reparentChildSurfaceToTask(int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.reparent(surfaceControl, findTaskSurface(i));
    }

    public final String toString() {
        return "FullscreenTaskListener:" + ShellTaskOrganizer.taskListenerTypeToString(-2);
    }

    public FullscreenTaskListener(ShellInit shellInit, ShellTaskOrganizer shellTaskOrganizer, SyncTransactionQueue syncTransactionQueue, Optional<RecentTasksController> optional, Optional<WindowDecorViewModel> optional2, Optional<DexWindowDecorViewModel> optional3, Optional<SplitScreenController> optional4, Context context) {
        this.mTasks = new SparseArray();
        this.mAffordanceControllerList = new SparseArray();
        this.mShellTaskOrganizer = shellTaskOrganizer;
        this.mSyncQueue = syncTransactionQueue;
        this.mRecentTasksOptional = optional;
        this.mWindowDecorViewModelOptional = optional2;
        this.mDexWindowDecorViewModelOptional = optional3;
        this.mSplitScreenController = optional4;
        this.mContext = context;
        if (shellInit != null) {
            shellInit.addInitCallback(new Runnable() { // from class: com.android.wm.shell.fullscreen.FullscreenTaskListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FullscreenTaskListener fullscreenTaskListener = FullscreenTaskListener.this;
                    fullscreenTaskListener.mShellTaskOrganizer.addListenerForType(fullscreenTaskListener, -2);
                    fullscreenTaskListener.mSplitScreenController.ifPresent(new FullscreenTaskListener$$ExternalSyntheticLambda2(fullscreenTaskListener, 0));
                }
            }, this);
        }
    }
}
