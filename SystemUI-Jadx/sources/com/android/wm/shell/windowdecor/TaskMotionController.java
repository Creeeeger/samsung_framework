package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.graphics.Rect;
import android.os.Debug;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.util.Slog;
import android.view.SurfaceControl;
import android.view.ViewConfiguration;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.animation.PhysicsAnimator;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.windowdecor.TaskMotionAnimator;
import com.android.wm.shell.windowdecor.WindowDecoration;
import com.facebook.rebound.OrigamiValueConverter;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringConfig;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TaskMotionController {
    public static final boolean DEBUG = CoreRune.SAFE_DEBUG;
    public final ShellExecutor mAnimExecutor;
    public final DisplayController mDisplayController;
    public PhysicsAnimator.FlingConfig mFlingConfigX;
    public PhysicsAnimator.FlingConfig mFlingConfigY;
    public final FreeformStashState mFreeformStashState;
    public final Handler mHandler;
    public ActivityManager.RunningTaskInfo mLastTaskInfo;
    public int mMinVisibleWidth;
    public TaskMotionController$$ExternalSyntheticLambda4 mResizeFreeformUpdateListener;
    public int mScaledFreeformHeight;
    public int mScreenEdgeInset;
    public PhysicsAnimator.FlingConfig mStashConfigX;
    public int mStashMoveThreshold;
    public TaskMotionInfo mTaskMotionInfo;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final SurfaceControl mTaskSurface;
    public PhysicsAnimator mTemporaryBoundsPhysicsAnimator;
    public final MultitaskingWindowDecoration mWindowDecoration;
    public final Rect mTmpRect = new Rect();
    public final Rect mTmpRect2 = new Rect();
    public final Rect mLastReportedTaskBounds = new Rect();
    public final PhysicsAnimator.SpringConfig mSpringConfig = new PhysicsAnimator.SpringConfig(200.0f, 0.7f);
    public final SurfaceControl.Transaction mTransaction = new SurfaceControl.Transaction();
    public boolean mAllowTouches = true;
    public boolean mCanceled = false;
    public final Rect mTargetBounds = new Rect();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TaskMotionInfo {
        public final Rect mDisplayBounds;
        public final Rect mMaxBounds;
        public final ArrayMap mMotionAnimators;
        public final Rect mSafeBounds;
        public final Rect mStableBounds;
        public final ActivityManager.RunningTaskInfo mTaskInfo;

        public TaskMotionInfo(ActivityManager.RunningTaskInfo runningTaskInfo, Rect rect, Rect rect2) {
            Rect rect3 = new Rect();
            this.mMaxBounds = rect3;
            Rect rect4 = new Rect();
            this.mStableBounds = rect4;
            Rect rect5 = new Rect();
            this.mDisplayBounds = rect5;
            Rect rect6 = new Rect();
            this.mSafeBounds = rect6;
            this.mMotionAnimators = new ArrayMap();
            this.mTaskInfo = runningTaskInfo;
            rect5.set(rect);
            rect4.set(rect2);
            Rect bounds = runningTaskInfo.configuration.windowConfiguration.getBounds();
            int width = bounds.width();
            int height = bounds.height();
            int i = (rect4.left + TaskMotionController.this.mMinVisibleWidth) - width;
            int i2 = rect4.top;
            MultitaskingWindowDecoration multitaskingWindowDecoration = TaskMotionController.this.mWindowDecoration;
            int captionVisibleHeight = multitaskingWindowDecoration.getCaptionVisibleHeight() + multitaskingWindowDecoration.getFreeformThickness$1() + i2;
            int i3 = rect4.right;
            int i4 = TaskMotionController.this.mMinVisibleWidth;
            rect3.set(i, captionVisibleHeight, (i3 - i4) + width, (rect4.bottom - i4) + height);
            rect6.set(rect4);
            int i5 = rect6.left;
            int i6 = TaskMotionController.this.mScreenEdgeInset;
            rect6.left = i5 + i6;
            rect6.right -= i6;
            rect6.top += i6;
            rect6.bottom = rect3.bottom - (i6 * 2);
        }

        public final void clearAnimator(boolean z) {
            int i = 0;
            while (true) {
                ArrayMap arrayMap = this.mMotionAnimators;
                if (i <= 3) {
                    TaskMotionAnimator taskMotionAnimator = (TaskMotionAnimator) arrayMap.get(Integer.valueOf(i));
                    if (taskMotionAnimator != null) {
                        taskMotionAnimator.mAnimation.cancel(z);
                        if (TaskMotionController.DEBUG) {
                            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("cancelMotion: animType=", i, " mTaskInfo=");
                            m.append(this.mTaskInfo);
                            Slog.d("TaskMotionController", m.toString());
                        }
                    }
                    i++;
                } else {
                    arrayMap.clear();
                    return;
                }
            }
        }

        public final boolean isAnimating(int i) {
            TaskMotionAnimator taskMotionAnimator = (TaskMotionAnimator) this.mMotionAnimators.get(Integer.valueOf(i));
            if (taskMotionAnimator != null && taskMotionAnimator.mAnimation.isAnimating()) {
                return true;
            }
            return false;
        }

        public final TaskMotionAnimator makeAnimator(int i, SurfaceControl surfaceControl, TaskMotionAnimator.OnAnimationFinishedCallback onAnimationFinishedCallback) {
            TaskMotionAnimator taskMotionAnimator = new TaskMotionAnimator(i, TaskMotionController.this.mFreeformStashState, surfaceControl, onAnimationFinishedCallback);
            this.mMotionAnimators.put(Integer.valueOf(i), taskMotionAnimator);
            return taskMotionAnimator;
        }
    }

    public TaskMotionController(DisplayController displayController, ShellTaskOrganizer shellTaskOrganizer, ShellExecutor shellExecutor, Handler handler, MultitaskingWindowDecoration multitaskingWindowDecoration) {
        this.mDisplayController = displayController;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mAnimExecutor = shellExecutor;
        this.mTaskSurface = multitaskingWindowDecoration.mTaskSurface;
        this.mWindowDecoration = multitaskingWindowDecoration;
        this.mFreeformStashState = multitaskingWindowDecoration.mFreeformStashState;
        this.mHandler = handler;
    }

    public final void addTaskToMotionInfo(ActivityManager.RunningTaskInfo runningTaskInfo) {
        DisplayLayout displayLayout = this.mDisplayController.getDisplayLayout(runningTaskInfo.displayId);
        Rect rect = this.mTmpRect;
        Rect rect2 = this.mTmpRect2;
        displayLayout.getDisplayBounds(rect);
        displayLayout.getStableBounds(rect2, false);
        synchronized (this) {
            this.mTaskMotionInfo = new TaskMotionInfo(runningTaskInfo, rect, rect2);
        }
    }

    public final void cancelBoundsAnimator(Rect rect, String str) {
        PhysicsAnimator physicsAnimator = this.mTemporaryBoundsPhysicsAnimator;
        if (physicsAnimator != null && physicsAnimator.isRunning()) {
            Slog.d("TaskMotionController", "Bounds Animator canceled by ".concat(str));
            this.mTemporaryBoundsPhysicsAnimator.cancel();
            rect.set(this.mTargetBounds);
            this.mAllowTouches = true;
            this.mCanceled = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0072 A[Catch: all -> 0x00d9, DONT_GENERATE, TryCatch #0 {, blocks: (B:8:0x0004, B:11:0x000c, B:16:0x0023, B:20:0x002d, B:23:0x003f, B:25:0x0044, B:29:0x004d, B:36:0x0060, B:40:0x0072, B:43:0x0066, B:49:0x0074, B:51:0x008b, B:53:0x008d, B:57:0x009e, B:60:0x00a6, B:62:0x00a8, B:64:0x00c9, B:66:0x00d3, B:69:0x00cf, B:72:0x00d5, B:74:0x0016, B:4:0x00d7), top: B:7:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int computeStashState(android.graphics.Rect r11, android.graphics.Rect r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.TaskMotionController.computeStashState(android.graphics.Rect, android.graphics.Rect, boolean):int");
    }

    public final boolean isMotionAnimating() {
        boolean z;
        boolean z2;
        synchronized (this) {
            TaskMotionInfo taskMotionInfo = this.mTaskMotionInfo;
            z = false;
            if (taskMotionInfo != null) {
                int i = 0;
                while (true) {
                    if (i <= 3) {
                        TaskMotionAnimator taskMotionAnimator = (TaskMotionAnimator) taskMotionInfo.mMotionAnimators.get(Integer.valueOf(i));
                        if (taskMotionAnimator != null && taskMotionAnimator.mAnimation.isAnimating()) {
                            z2 = true;
                            break;
                        }
                        i++;
                    } else {
                        z2 = false;
                        break;
                    }
                }
                if (z2) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a0, code lost:
    
        if (r5 > 7000.0f) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f A[Catch: all -> 0x0133, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x000f, B:9:0x0011, B:11:0x0036, B:13:0x0041, B:17:0x004f, B:19:0x005a, B:26:0x006f, B:33:0x0085, B:34:0x00a3, B:36:0x00bf, B:37:0x00c4, B:40:0x00ee, B:44:0x011d, B:47:0x0101, B:48:0x0125, B:49:0x0131, B:51:0x00c2, B:61:0x0099), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bf A[Catch: all -> 0x0133, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x000f, B:9:0x0011, B:11:0x0036, B:13:0x0041, B:17:0x004f, B:19:0x005a, B:26:0x006f, B:33:0x0085, B:34:0x00a3, B:36:0x00bf, B:37:0x00c4, B:40:0x00ee, B:44:0x011d, B:47:0x0101, B:48:0x0125, B:49:0x0131, B:51:0x00c2, B:61:0x0099), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c2 A[Catch: all -> 0x0133, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x000f, B:9:0x0011, B:11:0x0036, B:13:0x0041, B:17:0x004f, B:19:0x005a, B:26:0x006f, B:33:0x0085, B:34:0x00a3, B:36:0x00bf, B:37:0x00c4, B:40:0x00ee, B:44:0x011d, B:47:0x0101, B:48:0x0125, B:49:0x0131, B:51:0x00c2, B:61:0x0099), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008f  */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.wm.shell.windowdecor.TaskMotionController$$ExternalSyntheticLambda4] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void moveToTarget(final android.graphics.Rect r23, android.graphics.PointF r24, com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda1 r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.TaskMotionController.moveToTarget(android.graphics.Rect, android.graphics.PointF, com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda1, boolean):void");
    }

    public final void postAnimationFinished(int i, ActivityManager.RunningTaskInfo runningTaskInfo, Rect rect, WindowContainerTransaction windowContainerTransaction) {
        windowContainerTransaction.setBounds(runningTaskInfo.token, rect);
        if (this.mFreeformStashState.isStashed()) {
            this.mHandler.post(new TaskMotionController$$ExternalSyntheticLambda3(this, 0));
        }
        windowContainerTransaction.setChangeFreeformStashScale(runningTaskInfo.token, 1.0f);
        if (i == 1) {
            windowContainerTransaction.requestForceTaskInfoChange(runningTaskInfo.token);
        }
        this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        removeMotionAnimator(i);
        this.mLastReportedTaskBounds.set(rect);
        this.mLastTaskInfo = runningTaskInfo;
        if (DEBUG) {
            Slog.d("TaskMotionController", "postAnimationFinished: Task=" + runningTaskInfo + " animType=" + i + " endBounds=" + rect + " Callers=" + Debug.getCallers(6));
        }
    }

    public final void rebuildFlingConfigs(Rect rect) {
        int width = rect.width();
        int height = rect.height();
        Rect rect2 = this.mTaskMotionInfo.mSafeBounds;
        this.mFlingConfigX = new PhysicsAnimator.FlingConfig(1.9f, rect2.left, rect2.right - width);
        this.mFlingConfigY = new PhysicsAnimator.FlingConfig(1.9f, this.mWindowDecoration.getCaptionVisibleHeight() + this.mTaskMotionInfo.mSafeBounds.top, this.mTaskMotionInfo.mSafeBounds.bottom - height);
        Rect rect3 = this.mTaskMotionInfo.mMaxBounds;
        this.mStashConfigX = new PhysicsAnimator.FlingConfig(1.9f, rect3.left, rect3.right - width);
    }

    public final void removeMotionAnimator(int i) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        synchronized (this) {
            TaskMotionInfo taskMotionInfo = this.mTaskMotionInfo;
            if (taskMotionInfo != null) {
                taskMotionInfo.mMotionAnimators.remove(Integer.valueOf(i));
            }
            if (DEBUG) {
                StringBuilder sb = new StringBuilder("removeMotionAnimator: clear taskInfo=");
                if (taskMotionInfo != null) {
                    runningTaskInfo = taskMotionInfo.mTaskInfo;
                } else {
                    runningTaskInfo = null;
                }
                sb.append(runningTaskInfo);
                sb.append(" Callers=");
                sb.append(Debug.getCallers(5));
                Slog.d("TaskMotionController", sb.toString());
            }
        }
    }

    public final void scheduleAnimateRestore(Rect rect, Rect rect2, boolean z) {
        SurfaceControl surfaceControl = this.mTaskSurface;
        if (surfaceControl != null && surfaceControl.isValid()) {
            final ActivityManager.RunningTaskInfo runningTaskInfo = this.mWindowDecoration.mTaskInfo;
            if (!this.mFreeformStashState.isStashed()) {
                Slog.d("TaskMotionController", "scheduleAnimateRestore fail: taskInfo=" + runningTaskInfo + " startBounds=" + rect + " endBounds=" + rect2);
                return;
            }
            TaskMotionInfo taskMotionInfo = this.mTaskMotionInfo;
            if (taskMotionInfo == null) {
                addTaskToMotionInfo(runningTaskInfo);
            } else {
                taskMotionInfo.clearAnimator(false);
            }
            if (rect2.isEmpty()) {
                MultiWindowUtils.getDefaultFreeformBounds(this.mTaskMotionInfo.mDisplayBounds, rect2);
                if (this.mTaskMotionInfo.mStableBounds.width() < rect2.width()) {
                    rect2.right = this.mTaskMotionInfo.mStableBounds.width();
                }
                if (this.mTaskMotionInfo.mStableBounds.height() < rect2.height()) {
                    rect2.bottom = this.mTaskMotionInfo.mStableBounds.height();
                }
            }
            int computeStashState = computeStashState(this.mTaskMotionInfo.mStableBounds, rect2, z);
            if (computeStashState != 0) {
                Slog.d("TaskMotionController", "scheduleAnimateRestore adjust restore bounds: taskInfo=" + runningTaskInfo + " startBounds=" + rect + " endBounds=" + rect2);
                rect2.offsetTo((this.mTaskMotionInfo.mDisplayBounds.width() - rect2.width()) / 2, (this.mTaskMotionInfo.mDisplayBounds.height() - rect2.height()) / 2);
            }
            Rect bounds = runningTaskInfo.configuration.windowConfiguration.getBounds();
            if (bounds.width() != rect2.width() || bounds.height() != rect2.height()) {
                rect2.right = bounds.width() + rect2.left;
                rect2.bottom = bounds.height() + rect2.top;
            }
            if (computeStashState == 0 && this.mTaskMotionInfo.mMaxBounds.top > rect2.top) {
                int height = rect2.height();
                int i = this.mTaskMotionInfo.mMaxBounds.top;
                rect2.top = i;
                rect2.bottom = i + height;
            }
            TaskMotionAnimator makeAnimator = this.mTaskMotionInfo.makeAnimator(4, this.mTaskSurface, new TaskMotionAnimator.OnAnimationFinishedCallback() { // from class: com.android.wm.shell.windowdecor.TaskMotionController$$ExternalSyntheticLambda0
                @Override // com.android.wm.shell.windowdecor.TaskMotionAnimator.OnAnimationFinishedCallback
                public final void onAnimationFinished(Rect rect3) {
                    TaskMotionController taskMotionController = TaskMotionController.this;
                    taskMotionController.removeMotionAnimator(0);
                    FreeformStashState freeformStashState = taskMotionController.mFreeformStashState;
                    freeformStashState.mAnimating = false;
                    freeformStashState.setStashed(0);
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    taskMotionController.setStashDim(windowContainerTransaction, false);
                    taskMotionController.postAnimationFinished(4, runningTaskInfo, rect3, windowContainerTransaction);
                    freeformStashState.mLastFreeformBoundsBeforeStash.set(rect3);
                }
            });
            TaskMotionAnimator.StashRestoreAnimation stashRestoreAnimation = (TaskMotionAnimator.StashRestoreAnimation) makeAnimator.mAnimation;
            float f = this.mFreeformStashState.mScale;
            synchronized (TaskMotionAnimator.this.mLock) {
                stashRestoreAnimation.mStartBounds.set(rect);
                stashRestoreAnimation.mAnimatedBounds.set(rect);
                stashRestoreAnimation.mEndBounds.set(rect2);
                Spring createSpring = stashRestoreAnimation.mSpringSystem.createSpring();
                stashRestoreAnimation.mSpringTranslateX = createSpring;
                createSpring.setSpringConfig(new SpringConfig(OrigamiValueConverter.tensionFromOrigamiValue(200.0d), OrigamiValueConverter.frictionFromOrigamiValue(20.0d)));
                Spring createSpring2 = stashRestoreAnimation.mSpringSystem.createSpring();
                stashRestoreAnimation.mSpringTranslateY = createSpring2;
                createSpring2.setSpringConfig(new SpringConfig(OrigamiValueConverter.tensionFromOrigamiValue(200.0d), OrigamiValueConverter.frictionFromOrigamiValue(20.0d)));
                stashRestoreAnimation.mSpringTranslateX.setCurrentValue(stashRestoreAnimation.mStartBounds.left);
                stashRestoreAnimation.mSpringTranslateY.setCurrentValue(stashRestoreAnimation.mStartBounds.top);
                stashRestoreAnimation.mSpringTranslateX.setVelocity(60.0d);
                stashRestoreAnimation.mSpringTranslateY.setVelocity(60.0d);
                stashRestoreAnimation.mSpringTranslateX.addListener(stashRestoreAnimation);
                stashRestoreAnimation.mSpringTranslateY.addListener(stashRestoreAnimation);
                stashRestoreAnimation.mScale = f;
            }
            if (DEBUG) {
                Slog.d("TaskMotionAnimator", "StashRestoreAnimation:initialize(): startBounds=" + rect + " endBounds=" + stashRestoreAnimation.mEndBounds);
            }
            ((HandlerExecutor) this.mAnimExecutor).execute(new TaskMotionController$$ExternalSyntheticLambda1(makeAnimator, 0));
        }
    }

    public final boolean scheduleAnimateScaleDown(Rect rect) {
        TaskMotionInfo taskMotionInfo;
        synchronized (this) {
            SurfaceControl surfaceControl = this.mTaskSurface;
            int i = 0;
            if (surfaceControl != null && surfaceControl.isValid() && (taskMotionInfo = this.mTaskMotionInfo) != null) {
                if (taskMotionInfo.isAnimating(0)) {
                    Slog.d("TaskMotionController", "scheduleAnimateScaleDown: failed, already animating, t #" + this.mWindowDecoration.mTaskInfo.taskId);
                    return false;
                }
                int i2 = 1;
                if (this.mTaskMotionInfo.isAnimating(1)) {
                    this.mTaskMotionInfo.clearAnimator(false);
                }
                FreeformStashState freeformStashState = this.mFreeformStashState;
                freeformStashState.mAnimType = 0;
                freeformStashState.mAnimating = true;
                TaskMotionAnimator makeAnimator = this.mTaskMotionInfo.makeAnimator(0, this.mTaskSurface, new TaskMotionController$$ExternalSyntheticLambda2(this, i));
                ((TaskMotionAnimator.ScaleAnimation) makeAnimator.mAnimation).initialize(0, this.mFreeformStashState.mScale, this.mScaledFreeformHeight / this.mWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds().height(), this.mWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds(), rect, this.mFreeformStashState.isLeftStashed());
                ((HandlerExecutor) this.mAnimExecutor).execute(new TaskMotionController$$ExternalSyntheticLambda1(makeAnimator, i2));
                if (DEBUG) {
                    Slog.d("TaskMotionController", "scheduleAnimateScaleDown: taskInfo=" + this.mWindowDecoration.mTaskInfo + " callers=" + Debug.getCallers(4));
                }
                return true;
            }
            return false;
        }
    }

    public final boolean scheduleAnimateScaleUp(Rect rect) {
        TaskMotionInfo taskMotionInfo;
        synchronized (this) {
            SurfaceControl surfaceControl = this.mTaskSurface;
            if (surfaceControl != null && surfaceControl.isValid() && (taskMotionInfo = this.mTaskMotionInfo) != null) {
                int i = 1;
                if (taskMotionInfo.isAnimating(1)) {
                    Slog.d("TaskMotionController", "scheduleAnimateScaleUp: failed, already animating, t #" + this.mWindowDecoration.mTaskInfo.taskId);
                    return false;
                }
                if (this.mTaskMotionInfo.isAnimating(0)) {
                    this.mTaskMotionInfo.clearAnimator(false);
                }
                FreeformStashState freeformStashState = this.mFreeformStashState;
                freeformStashState.mAnimType = 1;
                freeformStashState.mAnimating = true;
                if (DEBUG) {
                    Slog.d("TaskMotionController", "scheduleAnimateScaleUp: taskInfo=" + this.mWindowDecoration.mTaskInfo + " callers=" + Debug.getCallers(4));
                }
                TaskMotionAnimator makeAnimator = this.mTaskMotionInfo.makeAnimator(1, this.mTaskSurface, new TaskMotionController$$ExternalSyntheticLambda2(this, i));
                ((TaskMotionAnimator.ScaleAnimation) makeAnimator.mAnimation).initialize(1, this.mFreeformStashState.mScale, 1.0f, this.mWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds(), rect, this.mFreeformStashState.isLeftStashed());
                ((HandlerExecutor) this.mAnimExecutor).execute(new TaskMotionController$$ExternalSyntheticLambda1(makeAnimator, 2));
                return true;
            }
            return false;
        }
    }

    public final void setStashDim(WindowContainerTransaction windowContainerTransaction, boolean z) {
        WindowContainerTransaction windowContainerTransaction2;
        int i;
        int i2;
        int i3;
        int i4;
        MultitaskingWindowDecoration multitaskingWindowDecoration = this.mWindowDecoration;
        ActivityManager.RunningTaskInfo runningTaskInfo = multitaskingWindowDecoration.mTaskInfo;
        if (!runningTaskInfo.isVisible) {
            return;
        }
        if (z) {
            this.mFreeformStashState.createStashDimOverlay(this.mTaskSurface, this.mDisplayController.getDisplayContext(runningTaskInfo.displayId), runningTaskInfo, multitaskingWindowDecoration.getCaptionVisibleHeight());
        }
        int i5 = 2;
        if (multitaskingWindowDecoration.mDragResizeInputSurface != null && multitaskingWindowDecoration.mResult.mRootView != null) {
            if (z) {
                if (multitaskingWindowDecoration.mFreeformStashDimInputListener == null) {
                    DragResizeInputListener dragResizeInputListener = multitaskingWindowDecoration.mDragResizeListener;
                    if (dragResizeInputListener != null) {
                        dragResizeInputListener.close();
                        multitaskingWindowDecoration.mDragResizeListener = null;
                    }
                    multitaskingWindowDecoration.mFreeformStashDimInputListener = new FreeformDimInputListener(multitaskingWindowDecoration.mContext, multitaskingWindowDecoration.mHandler, multitaskingWindowDecoration.mChoreographer, multitaskingWindowDecoration.mDisplay.getDisplayId(), multitaskingWindowDecoration.mDragResizeInputSurface, multitaskingWindowDecoration.mTaskPositioner, multitaskingWindowDecoration.mTaskInfo.taskId);
                }
            } else {
                if (multitaskingWindowDecoration.mDragResizeListener == null) {
                    FreeformDimInputListener freeformDimInputListener = multitaskingWindowDecoration.mFreeformStashDimInputListener;
                    if (freeformDimInputListener != null) {
                        freeformDimInputListener.close();
                        multitaskingWindowDecoration.mFreeformStashDimInputListener = null;
                    }
                    multitaskingWindowDecoration.mDragResizeListener = new DragResizeInputListener(multitaskingWindowDecoration.mContext, multitaskingWindowDecoration.mHandler, multitaskingWindowDecoration.mChoreographer, multitaskingWindowDecoration.mDisplay.getDisplayId(), multitaskingWindowDecoration.mDragResizeInputSurface, multitaskingWindowDecoration.mDragPositioningCallback, multitaskingWindowDecoration.mTaskOrganizer);
                }
                DisplayMetrics displayMetrics = ((WindowDecorLinearLayout) multitaskingWindowDecoration.mResult.mRootView).getResources().getDisplayMetrics();
                int dipToPixel = MultiWindowUtils.dipToPixel(10, displayMetrics);
                if (multitaskingWindowDecoration.mTaskInfo.displayId == 2 && multitaskingWindowDecoration.mIsDexEnabled) {
                    i = dipToPixel;
                } else {
                    i = 48;
                }
                int i6 = i * 2;
                if (!multitaskingWindowDecoration.mIsDexEnabled) {
                    i2 = MultiWindowUtils.dipToPixel(4, displayMetrics);
                } else {
                    i2 = 0;
                }
                int scaledTouchSlop = ViewConfiguration.get(((WindowDecorLinearLayout) multitaskingWindowDecoration.mResult.mRootView).getContext()).getScaledTouchSlop();
                if (multitaskingWindowDecoration.mCaptionType == 0) {
                    i3 = ((WindowDecorLinearLayout) multitaskingWindowDecoration.mResult.mRootView).getResources().getDimensionPixelSize(multitaskingWindowDecoration.mRelayoutParams.mCaptionWidthId);
                } else {
                    i3 = 0;
                }
                DragResizeInputListener dragResizeInputListener2 = multitaskingWindowDecoration.mDragResizeListener;
                if (CoreRune.MW_CAPTION_SHELL) {
                    i4 = multitaskingWindowDecoration.getCaptionVisibleHeight();
                } else {
                    i4 = 0;
                }
                WindowDecoration.RelayoutResult relayoutResult = multitaskingWindowDecoration.mResult;
                dragResizeInputListener2.setGeometry(i4, i3, dipToPixel, i2, relayoutResult.mWidth, relayoutResult.mHeight, i, i6, scaledTouchSlop, !multitaskingWindowDecoration.mTaskInfo.isForceHidden);
                multitaskingWindowDecoration.mDragResizeListener.mIsDexEnabled = multitaskingWindowDecoration.mIsDexEnabled;
            }
        }
        if (windowContainerTransaction != null) {
            windowContainerTransaction2 = windowContainerTransaction;
        } else {
            windowContainerTransaction2 = new WindowContainerTransaction();
        }
        WindowContainerToken windowContainerToken = runningTaskInfo.token;
        if (!z) {
            i5 = 1;
        }
        windowContainerTransaction2.setChangeFreeformStashMode(windowContainerToken, i5);
        if (windowContainerTransaction != null) {
            return;
        }
        this.mTaskOrganizer.applyTransaction(windowContainerTransaction2);
    }

    public final void startBoundsAnimator(TaskPositioner$$ExternalSyntheticLambda1 taskPositioner$$ExternalSyntheticLambda1) {
        if (!this.mTemporaryBoundsPhysicsAnimator.isRunning()) {
            PhysicsAnimator physicsAnimator = this.mTemporaryBoundsPhysicsAnimator;
            physicsAnimator.updateListeners.add(this.mResizeFreeformUpdateListener);
            physicsAnimator.withEndActions(new TaskMotionController$$ExternalSyntheticLambda3(this, 1), taskPositioner$$ExternalSyntheticLambda1);
        }
        this.mTemporaryBoundsPhysicsAnimator.start();
    }
}
