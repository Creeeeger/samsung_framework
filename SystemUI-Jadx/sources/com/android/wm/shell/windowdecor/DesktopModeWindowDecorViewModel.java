package com.android.wm.shell.windowdecor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.input.InputManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.InputChannel;
import android.view.InputEventReceiver;
import android.view.InputMonitor;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.DisplayAreaInfo;
import android.window.SurfaceSyncGroup;
import android.window.TransitionInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.systemui.R;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.desktopmode.DesktopModeController;
import com.android.wm.shell.desktopmode.DesktopModeStatus;
import com.android.wm.shell.desktopmode.DesktopModeVisualIndicator;
import com.android.wm.shell.desktopmode.DesktopTasksController;
import com.android.wm.shell.desktopmode.EnterDesktopTaskTransitionHandler;
import com.android.wm.shell.desktopmode.EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;
import com.android.wm.shell.freeform.FreeformTaskTransitionHandler;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.util.KtProtoLog;
import com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel;
import com.android.wm.shell.windowdecor.DesktopModeWindowDecoration;
import com.android.wm.shell.windowdecor.DragDetector;
import com.android.wm.shell.windowdecor.DragPositioningCallbackUtility;
import com.android.wm.shell.windowdecor.HandleMenu;
import com.android.wm.shell.windowdecor.WindowDecoration;
import com.samsung.android.knox.EnterpriseContainerCallback;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DesktopModeWindowDecorViewModel implements WindowDecorViewModel {
    public final Context mContext;
    public final TaskCornersListenerImpl mCornersListener;
    public final Optional mDesktopModeController;
    public final DesktopModeWindowDecoration.Factory mDesktopModeWindowDecorFactory;
    public final Optional mDesktopTasksController;
    public final DisplayController mDisplayController;
    public final DragStartListenerImpl mDragStartListener;
    public final Rect mDragToDesktopAnimationStartBounds;
    public boolean mDragToDesktopAnimationStarted;
    public ValueAnimator mDragToDesktopValueAnimator;
    public final SparseArray mEventReceiversByDisplay;
    public final InputMonitorFactory mInputMonitorFactory;
    public final Choreographer mMainChoreographer;
    public final Handler mMainHandler;
    public final Optional mSplitScreenController;
    public final SyncTransactionQueue mSyncQueue;
    public TaskOperations mTaskOperations;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final Supplier mTransactionFactory;
    public boolean mTransitionDragActive;
    public final Transitions mTransitions;
    public final SparseArray mWindowDecorByTaskId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends AnimatorListenerAdapter {
        public final /* synthetic */ MotionEvent val$ev;
        public final /* synthetic */ DesktopModeWindowDecoration val$relevantDecor;

        public AnonymousClass1(DesktopModeWindowDecoration desktopModeWindowDecoration, MotionEvent motionEvent) {
            this.val$relevantDecor = desktopModeWindowDecoration;
            this.val$ev = motionEvent;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            Optional optional = DesktopModeWindowDecorViewModel.this.mDesktopTasksController;
            final DesktopModeWindowDecoration desktopModeWindowDecoration = this.val$relevantDecor;
            final MotionEvent motionEvent = this.val$ev;
            optional.ifPresent(new Consumer() { // from class: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$1$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DesktopModeWindowDecorViewModel.AnonymousClass1 anonymousClass1 = DesktopModeWindowDecorViewModel.AnonymousClass1.this;
                    DesktopModeWindowDecoration desktopModeWindowDecoration2 = desktopModeWindowDecoration;
                    MotionEvent motionEvent2 = motionEvent;
                    DesktopTasksController desktopTasksController = (DesktopTasksController) obj;
                    anonymousClass1.getClass();
                    ActivityManager.RunningTaskInfo runningTaskInfo = desktopModeWindowDecoration2.mTaskInfo;
                    Rect calculateFreeformBounds = DesktopModeWindowDecorViewModel.this.calculateFreeformBounds(0.6f, motionEvent2.getDisplayId());
                    desktopTasksController.getClass();
                    KtProtoLog.Companion companion = KtProtoLog.Companion;
                    ShellProtoLogGroup shellProtoLogGroup = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                    Object[] objArr = {Integer.valueOf(runningTaskInfo.taskId)};
                    companion.getClass();
                    KtProtoLog.Companion.v(shellProtoLogGroup, "DesktopTasksController: moveToDesktop with animation taskId=%d", objArr);
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    desktopTasksController.bringDesktopAppsToFront(windowContainerTransaction, runningTaskInfo.displayId);
                    DesktopTasksController.addMoveToDesktopChanges(runningTaskInfo.getToken(), windowContainerTransaction);
                    windowContainerTransaction.setBounds(runningTaskInfo.token, calculateFreeformBounds);
                    if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                        EnterDesktopTaskTransitionHandler enterDesktopTaskTransitionHandler = desktopTasksController.enterDesktopTaskTransitionHandler;
                        enterDesktopTaskTransitionHandler.mOnAnimationFinishedCallback = desktopTasksController.mOnAnimationFinishedCallback;
                        ((ArrayList) enterDesktopTaskTransitionHandler.mPendingTransitionTokens).add(enterDesktopTaskTransitionHandler.mTransitions.startTransition(EnterpriseContainerCallback.CONTAINER_PACKAGE_INFORMATION, windowContainerTransaction, enterDesktopTaskTransitionHandler));
                        return;
                    }
                    desktopTasksController.shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                    desktopTasksController.releaseVisualIndicator();
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DesktopModeTouchEventListener implements View.OnClickListener, View.OnTouchListener, DragDetector.MotionEventHandler {
        public final DragDetector mDragDetector;
        public int mDragPointerId;
        public final DragPositioningCallback mDragPositioningCallback;
        public boolean mIsDragging;
        public final int mTaskId;
        public final WindowContainerToken mTaskToken;

        public /* synthetic */ DesktopModeTouchEventListener(DesktopModeWindowDecorViewModel desktopModeWindowDecorViewModel, ActivityManager.RunningTaskInfo runningTaskInfo, DragPositioningCallback dragPositioningCallback, int i) {
            this(runningTaskInfo, dragPositioningCallback);
        }

        @Override // com.android.wm.shell.windowdecor.DragDetector.MotionEventHandler
        public final boolean handleMotionEvent(final MotionEvent motionEvent) {
            final ActivityManager.RunningTaskInfo runningTaskInfo = DesktopModeWindowDecorViewModel.this.mTaskOrganizer.getRunningTaskInfo(this.mTaskId);
            if (DesktopModeStatus.IS_PROTO2_ENABLED && runningTaskInfo.getWindowingMode() == 1) {
                return false;
            }
            if (DesktopModeStatus.IS_SUPPORTED && DesktopModeWindowDecorViewModel.this.mDesktopModeController.isPresent()) {
                DesktopModeController desktopModeController = (DesktopModeController) DesktopModeWindowDecorViewModel.this.mDesktopModeController.get();
                if (((DisplayAreaInfo) desktopModeController.mRootTaskDisplayAreaOrganizer.mDisplayAreasInfo.get(runningTaskInfo.displayId)).configuration.windowConfiguration.getWindowingMode() == 1) {
                    return false;
                }
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                int i = 3;
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        if (actionMasked != 3) {
                            return true;
                        }
                    } else {
                        final DesktopModeWindowDecoration desktopModeWindowDecoration = (DesktopModeWindowDecoration) DesktopModeWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
                        final int findPointerIndex = motionEvent.findPointerIndex(this.mDragPointerId);
                        DesktopModeWindowDecorViewModel.this.mDesktopTasksController.ifPresent(new Consumer() { // from class: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda1
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                ActivityManager.RunningTaskInfo runningTaskInfo2 = runningTaskInfo;
                                DesktopModeWindowDecoration desktopModeWindowDecoration2 = desktopModeWindowDecoration;
                                MotionEvent motionEvent2 = motionEvent;
                                int i2 = findPointerIndex;
                                DesktopTasksController desktopTasksController = (DesktopTasksController) obj;
                                SurfaceControl surfaceControl = desktopModeWindowDecoration2.mTaskSurface;
                                float rawY = motionEvent2.getRawY(i2);
                                desktopTasksController.getClass();
                                if (runningTaskInfo2.getWindowingMode() == 5) {
                                    float statusBarHeight = desktopTasksController.getStatusBarHeight(runningTaskInfo2);
                                    if (rawY <= statusBarHeight && desktopTasksController.visualIndicator == null) {
                                        DesktopModeVisualIndicator desktopModeVisualIndicator = new DesktopModeVisualIndicator(desktopTasksController.syncQueue, runningTaskInfo2, desktopTasksController.displayController, desktopTasksController.context, surfaceControl, desktopTasksController.shellTaskOrganizer, desktopTasksController.rootTaskDisplayAreaOrganizer);
                                        desktopTasksController.visualIndicator = desktopModeVisualIndicator;
                                        desktopModeVisualIndicator.mIsFullscreen = true;
                                        desktopModeVisualIndicator.mView.setBackgroundResource(R.drawable.desktop_windowing_transition_background);
                                        DesktopModeVisualIndicator.VisualIndicatorAnimator.toFullscreenAnimatorWithAnimatedBounds(desktopModeVisualIndicator.mView, desktopModeVisualIndicator.mDisplayController.getDisplayLayout(desktopModeVisualIndicator.mTaskInfo.displayId)).start();
                                        return;
                                    }
                                    if (rawY > statusBarHeight && desktopTasksController.visualIndicator != null) {
                                        desktopTasksController.releaseVisualIndicator();
                                    }
                                }
                            }
                        });
                        this.mDragPositioningCallback.onDragPositioningMove(motionEvent.getRawX(findPointerIndex), motionEvent.getRawY(findPointerIndex));
                        this.mIsDragging = true;
                        return true;
                    }
                }
                int findPointerIndex2 = motionEvent.findPointerIndex(this.mDragPointerId);
                Point point = new Point((int) (motionEvent.getRawX(findPointerIndex2) - motionEvent.getX(findPointerIndex2)), (int) (motionEvent.getRawY(findPointerIndex2) - motionEvent.getY(findPointerIndex2)));
                this.mDragPositioningCallback.onDragPositioningEnd(motionEvent.getRawX(findPointerIndex2), motionEvent.getRawY(findPointerIndex2));
                DesktopModeWindowDecorViewModel.this.mDesktopTasksController.ifPresent(new DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1(runningTaskInfo, point, i));
                boolean z = this.mIsDragging;
                this.mIsDragging = false;
                return z;
            }
            this.mDragPointerId = motionEvent.getPointerId(0);
            this.mDragPositioningCallback.onDragPositioningStart(motionEvent.getRawX(0), motionEvent.getRawY(0), 0);
            this.mIsDragging = false;
            return false;
        }

        public final void moveTaskToFront(final ActivityManager.RunningTaskInfo runningTaskInfo) {
            if (!runningTaskInfo.isFocused) {
                final int i = 0;
                DesktopModeWindowDecorViewModel.this.mDesktopTasksController.ifPresent(new Consumer() { // from class: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i) {
                            case 0:
                                ActivityManager.RunningTaskInfo runningTaskInfo2 = runningTaskInfo;
                                DesktopTasksController desktopTasksController = (DesktopTasksController) obj;
                                desktopTasksController.getClass();
                                KtProtoLog.Companion companion = KtProtoLog.Companion;
                                ShellProtoLogGroup shellProtoLogGroup = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                Object[] objArr = {Integer.valueOf(runningTaskInfo2.taskId)};
                                companion.getClass();
                                KtProtoLog.Companion.v(shellProtoLogGroup, "DesktopTasksController: moveTaskToFront taskId=%d", objArr);
                                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                windowContainerTransaction.reorder(runningTaskInfo2.token, true);
                                if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                    desktopTasksController.transitions.startTransition(3, windowContainerTransaction, null);
                                    return;
                                } else {
                                    desktopTasksController.shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                                    return;
                                }
                            default:
                                ActivityManager.RunningTaskInfo runningTaskInfo3 = runningTaskInfo;
                                DesktopModeController desktopModeController = (DesktopModeController) obj;
                                desktopModeController.getClass();
                                WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                                windowContainerTransaction2.reorder(runningTaskInfo3.token, true);
                                if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                    desktopModeController.mTransitions.startTransition(3, windowContainerTransaction2, null);
                                    return;
                                } else {
                                    desktopModeController.mShellTaskOrganizer.applyTransaction(windowContainerTransaction2);
                                    return;
                                }
                        }
                    }
                });
                final int i2 = 1;
                DesktopModeWindowDecorViewModel.this.mDesktopModeController.ifPresent(new Consumer() { // from class: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i2) {
                            case 0:
                                ActivityManager.RunningTaskInfo runningTaskInfo2 = runningTaskInfo;
                                DesktopTasksController desktopTasksController = (DesktopTasksController) obj;
                                desktopTasksController.getClass();
                                KtProtoLog.Companion companion = KtProtoLog.Companion;
                                ShellProtoLogGroup shellProtoLogGroup = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                Object[] objArr = {Integer.valueOf(runningTaskInfo2.taskId)};
                                companion.getClass();
                                KtProtoLog.Companion.v(shellProtoLogGroup, "DesktopTasksController: moveTaskToFront taskId=%d", objArr);
                                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                windowContainerTransaction.reorder(runningTaskInfo2.token, true);
                                if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                    desktopTasksController.transitions.startTransition(3, windowContainerTransaction, null);
                                    return;
                                } else {
                                    desktopTasksController.shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                                    return;
                                }
                            default:
                                ActivityManager.RunningTaskInfo runningTaskInfo3 = runningTaskInfo;
                                DesktopModeController desktopModeController = (DesktopModeController) obj;
                                desktopModeController.getClass();
                                WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                                windowContainerTransaction2.reorder(runningTaskInfo3.token, true);
                                if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                    desktopModeController.mTransitions.startTransition(3, windowContainerTransaction2, null);
                                    return;
                                } else {
                                    desktopModeController.mShellTaskOrganizer.applyTransaction(windowContainerTransaction2);
                                    return;
                                }
                        }
                    }
                });
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ColorStateList colorStateList;
            ColorStateList colorStateList2;
            ColorStateList colorStateList3;
            DesktopModeWindowDecoration desktopModeWindowDecoration = (DesktopModeWindowDecoration) DesktopModeWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
            int id = view.getId();
            final int i = 0;
            final int i2 = 1;
            if (id != R.id.close_window && id != R.id.close_button) {
                if (id == R.id.back_button) {
                    TaskOperations taskOperations = DesktopModeWindowDecorViewModel.this.mTaskOperations;
                    Context context = taskOperations.mContext;
                    taskOperations.sendBackEvent(0, context.getDisplayId());
                    taskOperations.sendBackEvent(1, context.getDisplayId());
                    return;
                }
                final int i3 = 2;
                if (id != R.id.caption_handle && id != R.id.open_menu_button) {
                    if (id == R.id.desktop_button) {
                        DesktopModeWindowDecorViewModel.this.mDesktopModeController.ifPresent(new DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0(1));
                        DesktopModeWindowDecorViewModel.this.mDesktopTasksController.ifPresent(new Consumer(this) { // from class: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0
                            public final /* synthetic */ DesktopModeWindowDecorViewModel.DesktopModeTouchEventListener f$0;

                            {
                                this.f$0 = this;
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
                            /* JADX WARN: Type inference failed for: r5v8 */
                            /* JADX WARN: Type inference failed for: r5v9 */
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                Object obj2;
                                Integer num;
                                boolean z;
                                boolean z2;
                                switch (i) {
                                    case 0:
                                        DesktopTasksController desktopTasksController = (DesktopTasksController) obj;
                                        int i4 = this.f$0.mTaskId;
                                        ShellTaskOrganizer shellTaskOrganizer = desktopTasksController.shellTaskOrganizer;
                                        ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer.getRunningTaskInfo(i4);
                                        if (runningTaskInfo != null) {
                                            KtProtoLog.Companion companion = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr = {Integer.valueOf(runningTaskInfo.taskId)};
                                            companion.getClass();
                                            KtProtoLog.Companion.v(shellProtoLogGroup, "DesktopTasksController: moveToDesktop taskId=%d", objArr);
                                            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                            desktopTasksController.bringDesktopAppsToFront(windowContainerTransaction, runningTaskInfo.displayId);
                                            DesktopTasksController.addMoveToDesktopChanges(runningTaskInfo.token, windowContainerTransaction);
                                            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                desktopTasksController.transitions.startTransition(6, windowContainerTransaction, null);
                                                return;
                                            } else {
                                                shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                                                return;
                                            }
                                        }
                                        return;
                                    case 1:
                                        DesktopTasksController desktopTasksController2 = (DesktopTasksController) obj;
                                        int i5 = this.f$0.mTaskId;
                                        ShellTaskOrganizer shellTaskOrganizer2 = desktopTasksController2.shellTaskOrganizer;
                                        ActivityManager.RunningTaskInfo runningTaskInfo2 = shellTaskOrganizer2.getRunningTaskInfo(i5);
                                        if (runningTaskInfo2 != null) {
                                            KtProtoLog.Companion companion2 = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup2 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr2 = {Integer.valueOf(runningTaskInfo2.taskId)};
                                            companion2.getClass();
                                            KtProtoLog.Companion.v(shellProtoLogGroup2, "DesktopTasksController: moveToFullscreen taskId=%d", objArr2);
                                            WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                                            desktopTasksController2.addMoveToFullscreenChanges(runningTaskInfo2.token, windowContainerTransaction2);
                                            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                desktopTasksController2.transitions.startTransition(6, windowContainerTransaction2, null);
                                                return;
                                            } else {
                                                shellTaskOrganizer2.applyTransaction(windowContainerTransaction2);
                                                return;
                                            }
                                        }
                                        return;
                                    default:
                                        DesktopTasksController desktopTasksController3 = (DesktopTasksController) obj;
                                        int i6 = this.f$0.mTaskId;
                                        ShellTaskOrganizer shellTaskOrganizer3 = desktopTasksController3.shellTaskOrganizer;
                                        ActivityManager.RunningTaskInfo runningTaskInfo3 = shellTaskOrganizer3.getRunningTaskInfo(i6);
                                        if (runningTaskInfo3 == null) {
                                            KtProtoLog.Companion companion3 = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup3 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr3 = {Integer.valueOf(i6)};
                                            companion3.getClass();
                                            KtProtoLog.Companion.w(shellProtoLogGroup3, "moveToNextDisplay: taskId=%d not found", objArr3);
                                            return;
                                        }
                                        KtProtoLog.Companion companion4 = KtProtoLog.Companion;
                                        ShellProtoLogGroup shellProtoLogGroup4 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                        Object[] objArr4 = {Integer.valueOf(i6), Integer.valueOf(runningTaskInfo3.displayId)};
                                        companion4.getClass();
                                        KtProtoLog.Companion.v(shellProtoLogGroup4, "moveToNextDisplay: taskId=%d taskDisplayId=%d", objArr4);
                                        RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer = desktopTasksController3.rootTaskDisplayAreaOrganizer;
                                        int size = rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.size();
                                        int[] iArr = new int[size];
                                        for (int i7 = 0; i7 < rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.size(); i7++) {
                                            iArr[i7] = rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.keyAt(i7);
                                        }
                                        Integer[] numArr = new Integer[size];
                                        for (int i8 = 0; i8 < size; i8++) {
                                            numArr[i8] = Integer.valueOf(iArr[i8]);
                                        }
                                        Integer[] numArr2 = numArr;
                                        if (numArr2.length > 1) {
                                            Arrays.sort(numArr2);
                                        }
                                        List asList = Arrays.asList(numArr);
                                        Iterator it = asList.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                obj2 = it.next();
                                                if (((Number) obj2).intValue() > runningTaskInfo3.displayId) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                if (z2) {
                                                }
                                            } else {
                                                obj2 = null;
                                            }
                                        }
                                        Integer num2 = (Integer) obj2;
                                        if (num2 == null) {
                                            Iterator it2 = asList.iterator();
                                            while (true) {
                                                if (it2.hasNext()) {
                                                    num = it2.next();
                                                    if (((Number) num).intValue() < runningTaskInfo3.displayId) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (z) {
                                                    }
                                                } else {
                                                    num = 0;
                                                }
                                            }
                                            num2 = num;
                                        }
                                        if (num2 == null) {
                                            KtProtoLog.Companion.getClass();
                                            KtProtoLog.Companion.w(ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE, "moveToNextDisplay: next display not found", new Object[0]);
                                            return;
                                        }
                                        int intValue = num2.intValue();
                                        KtProtoLog.Companion companion5 = KtProtoLog.Companion;
                                        ShellProtoLogGroup shellProtoLogGroup5 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                        Object[] objArr5 = {Integer.valueOf(runningTaskInfo3.taskId), Integer.valueOf(intValue)};
                                        companion5.getClass();
                                        KtProtoLog.Companion.v(shellProtoLogGroup5, "moveToDisplay: taskId=%d displayId=%d", objArr5);
                                        if (runningTaskInfo3.displayId == intValue) {
                                            KtProtoLog.Companion.d(shellProtoLogGroup5, "moveToDisplay: task already on display", new Object[0]);
                                            return;
                                        }
                                        DisplayAreaInfo displayAreaInfo = (DisplayAreaInfo) rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.get(intValue);
                                        if (displayAreaInfo == null) {
                                            KtProtoLog.Companion.w(shellProtoLogGroup5, "moveToDisplay: display not found", new Object[0]);
                                            return;
                                        }
                                        WindowContainerTransaction windowContainerTransaction3 = new WindowContainerTransaction();
                                        windowContainerTransaction3.reparent(runningTaskInfo3.token, displayAreaInfo.token, true);
                                        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                            desktopTasksController3.transitions.startTransition(6, windowContainerTransaction3, null);
                                            return;
                                        } else {
                                            shellTaskOrganizer3.applyTransaction(windowContainerTransaction3);
                                            return;
                                        }
                                }
                            }
                        });
                        desktopModeWindowDecoration.closeHandleMenu();
                        return;
                    } else if (id == R.id.fullscreen_button) {
                        DesktopModeWindowDecorViewModel.this.mDesktopModeController.ifPresent(new DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0(2));
                        DesktopModeWindowDecorViewModel.this.mDesktopTasksController.ifPresent(new Consumer(this) { // from class: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0
                            public final /* synthetic */ DesktopModeWindowDecorViewModel.DesktopModeTouchEventListener f$0;

                            {
                                this.f$0 = this;
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
                            /* JADX WARN: Type inference failed for: r5v8 */
                            /* JADX WARN: Type inference failed for: r5v9 */
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                Object obj2;
                                Integer num;
                                boolean z;
                                boolean z2;
                                switch (i2) {
                                    case 0:
                                        DesktopTasksController desktopTasksController = (DesktopTasksController) obj;
                                        int i4 = this.f$0.mTaskId;
                                        ShellTaskOrganizer shellTaskOrganizer = desktopTasksController.shellTaskOrganizer;
                                        ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer.getRunningTaskInfo(i4);
                                        if (runningTaskInfo != null) {
                                            KtProtoLog.Companion companion = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr = {Integer.valueOf(runningTaskInfo.taskId)};
                                            companion.getClass();
                                            KtProtoLog.Companion.v(shellProtoLogGroup, "DesktopTasksController: moveToDesktop taskId=%d", objArr);
                                            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                            desktopTasksController.bringDesktopAppsToFront(windowContainerTransaction, runningTaskInfo.displayId);
                                            DesktopTasksController.addMoveToDesktopChanges(runningTaskInfo.token, windowContainerTransaction);
                                            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                desktopTasksController.transitions.startTransition(6, windowContainerTransaction, null);
                                                return;
                                            } else {
                                                shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                                                return;
                                            }
                                        }
                                        return;
                                    case 1:
                                        DesktopTasksController desktopTasksController2 = (DesktopTasksController) obj;
                                        int i5 = this.f$0.mTaskId;
                                        ShellTaskOrganizer shellTaskOrganizer2 = desktopTasksController2.shellTaskOrganizer;
                                        ActivityManager.RunningTaskInfo runningTaskInfo2 = shellTaskOrganizer2.getRunningTaskInfo(i5);
                                        if (runningTaskInfo2 != null) {
                                            KtProtoLog.Companion companion2 = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup2 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr2 = {Integer.valueOf(runningTaskInfo2.taskId)};
                                            companion2.getClass();
                                            KtProtoLog.Companion.v(shellProtoLogGroup2, "DesktopTasksController: moveToFullscreen taskId=%d", objArr2);
                                            WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                                            desktopTasksController2.addMoveToFullscreenChanges(runningTaskInfo2.token, windowContainerTransaction2);
                                            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                desktopTasksController2.transitions.startTransition(6, windowContainerTransaction2, null);
                                                return;
                                            } else {
                                                shellTaskOrganizer2.applyTransaction(windowContainerTransaction2);
                                                return;
                                            }
                                        }
                                        return;
                                    default:
                                        DesktopTasksController desktopTasksController3 = (DesktopTasksController) obj;
                                        int i6 = this.f$0.mTaskId;
                                        ShellTaskOrganizer shellTaskOrganizer3 = desktopTasksController3.shellTaskOrganizer;
                                        ActivityManager.RunningTaskInfo runningTaskInfo3 = shellTaskOrganizer3.getRunningTaskInfo(i6);
                                        if (runningTaskInfo3 == null) {
                                            KtProtoLog.Companion companion3 = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup3 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr3 = {Integer.valueOf(i6)};
                                            companion3.getClass();
                                            KtProtoLog.Companion.w(shellProtoLogGroup3, "moveToNextDisplay: taskId=%d not found", objArr3);
                                            return;
                                        }
                                        KtProtoLog.Companion companion4 = KtProtoLog.Companion;
                                        ShellProtoLogGroup shellProtoLogGroup4 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                        Object[] objArr4 = {Integer.valueOf(i6), Integer.valueOf(runningTaskInfo3.displayId)};
                                        companion4.getClass();
                                        KtProtoLog.Companion.v(shellProtoLogGroup4, "moveToNextDisplay: taskId=%d taskDisplayId=%d", objArr4);
                                        RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer = desktopTasksController3.rootTaskDisplayAreaOrganizer;
                                        int size = rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.size();
                                        int[] iArr = new int[size];
                                        for (int i7 = 0; i7 < rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.size(); i7++) {
                                            iArr[i7] = rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.keyAt(i7);
                                        }
                                        Integer[] numArr = new Integer[size];
                                        for (int i8 = 0; i8 < size; i8++) {
                                            numArr[i8] = Integer.valueOf(iArr[i8]);
                                        }
                                        Integer[] numArr2 = numArr;
                                        if (numArr2.length > 1) {
                                            Arrays.sort(numArr2);
                                        }
                                        List asList = Arrays.asList(numArr);
                                        Iterator it = asList.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                obj2 = it.next();
                                                if (((Number) obj2).intValue() > runningTaskInfo3.displayId) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                if (z2) {
                                                }
                                            } else {
                                                obj2 = null;
                                            }
                                        }
                                        Integer num2 = (Integer) obj2;
                                        if (num2 == null) {
                                            Iterator it2 = asList.iterator();
                                            while (true) {
                                                if (it2.hasNext()) {
                                                    num = it2.next();
                                                    if (((Number) num).intValue() < runningTaskInfo3.displayId) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (z) {
                                                    }
                                                } else {
                                                    num = 0;
                                                }
                                            }
                                            num2 = num;
                                        }
                                        if (num2 == null) {
                                            KtProtoLog.Companion.getClass();
                                            KtProtoLog.Companion.w(ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE, "moveToNextDisplay: next display not found", new Object[0]);
                                            return;
                                        }
                                        int intValue = num2.intValue();
                                        KtProtoLog.Companion companion5 = KtProtoLog.Companion;
                                        ShellProtoLogGroup shellProtoLogGroup5 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                        Object[] objArr5 = {Integer.valueOf(runningTaskInfo3.taskId), Integer.valueOf(intValue)};
                                        companion5.getClass();
                                        KtProtoLog.Companion.v(shellProtoLogGroup5, "moveToDisplay: taskId=%d displayId=%d", objArr5);
                                        if (runningTaskInfo3.displayId == intValue) {
                                            KtProtoLog.Companion.d(shellProtoLogGroup5, "moveToDisplay: task already on display", new Object[0]);
                                            return;
                                        }
                                        DisplayAreaInfo displayAreaInfo = (DisplayAreaInfo) rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.get(intValue);
                                        if (displayAreaInfo == null) {
                                            KtProtoLog.Companion.w(shellProtoLogGroup5, "moveToDisplay: display not found", new Object[0]);
                                            return;
                                        }
                                        WindowContainerTransaction windowContainerTransaction3 = new WindowContainerTransaction();
                                        windowContainerTransaction3.reparent(runningTaskInfo3.token, displayAreaInfo.token, true);
                                        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                            desktopTasksController3.transitions.startTransition(6, windowContainerTransaction3, null);
                                            return;
                                        } else {
                                            shellTaskOrganizer3.applyTransaction(windowContainerTransaction3);
                                            return;
                                        }
                                }
                            }
                        });
                        desktopModeWindowDecoration.closeHandleMenu();
                        return;
                    } else if (id == R.id.collapse_menu_button) {
                        desktopModeWindowDecoration.closeHandleMenu();
                        return;
                    } else {
                        if (id == R.id.select_button && DesktopModeStatus.IS_DISPLAY_CHANGE_ENABLED) {
                            DesktopModeWindowDecorViewModel.this.mDesktopTasksController.ifPresent(new Consumer(this) { // from class: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0
                                public final /* synthetic */ DesktopModeWindowDecorViewModel.DesktopModeTouchEventListener f$0;

                                {
                                    this.f$0 = this;
                                }

                                /* JADX WARN: Multi-variable type inference failed */
                                /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
                                /* JADX WARN: Type inference failed for: r5v8 */
                                /* JADX WARN: Type inference failed for: r5v9 */
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    Object obj2;
                                    Integer num;
                                    boolean z;
                                    boolean z2;
                                    switch (i3) {
                                        case 0:
                                            DesktopTasksController desktopTasksController = (DesktopTasksController) obj;
                                            int i4 = this.f$0.mTaskId;
                                            ShellTaskOrganizer shellTaskOrganizer = desktopTasksController.shellTaskOrganizer;
                                            ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer.getRunningTaskInfo(i4);
                                            if (runningTaskInfo != null) {
                                                KtProtoLog.Companion companion = KtProtoLog.Companion;
                                                ShellProtoLogGroup shellProtoLogGroup = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                                Object[] objArr = {Integer.valueOf(runningTaskInfo.taskId)};
                                                companion.getClass();
                                                KtProtoLog.Companion.v(shellProtoLogGroup, "DesktopTasksController: moveToDesktop taskId=%d", objArr);
                                                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                                desktopTasksController.bringDesktopAppsToFront(windowContainerTransaction, runningTaskInfo.displayId);
                                                DesktopTasksController.addMoveToDesktopChanges(runningTaskInfo.token, windowContainerTransaction);
                                                if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                    desktopTasksController.transitions.startTransition(6, windowContainerTransaction, null);
                                                    return;
                                                } else {
                                                    shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                                                    return;
                                                }
                                            }
                                            return;
                                        case 1:
                                            DesktopTasksController desktopTasksController2 = (DesktopTasksController) obj;
                                            int i5 = this.f$0.mTaskId;
                                            ShellTaskOrganizer shellTaskOrganizer2 = desktopTasksController2.shellTaskOrganizer;
                                            ActivityManager.RunningTaskInfo runningTaskInfo2 = shellTaskOrganizer2.getRunningTaskInfo(i5);
                                            if (runningTaskInfo2 != null) {
                                                KtProtoLog.Companion companion2 = KtProtoLog.Companion;
                                                ShellProtoLogGroup shellProtoLogGroup2 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                                Object[] objArr2 = {Integer.valueOf(runningTaskInfo2.taskId)};
                                                companion2.getClass();
                                                KtProtoLog.Companion.v(shellProtoLogGroup2, "DesktopTasksController: moveToFullscreen taskId=%d", objArr2);
                                                WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                                                desktopTasksController2.addMoveToFullscreenChanges(runningTaskInfo2.token, windowContainerTransaction2);
                                                if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                    desktopTasksController2.transitions.startTransition(6, windowContainerTransaction2, null);
                                                    return;
                                                } else {
                                                    shellTaskOrganizer2.applyTransaction(windowContainerTransaction2);
                                                    return;
                                                }
                                            }
                                            return;
                                        default:
                                            DesktopTasksController desktopTasksController3 = (DesktopTasksController) obj;
                                            int i6 = this.f$0.mTaskId;
                                            ShellTaskOrganizer shellTaskOrganizer3 = desktopTasksController3.shellTaskOrganizer;
                                            ActivityManager.RunningTaskInfo runningTaskInfo3 = shellTaskOrganizer3.getRunningTaskInfo(i6);
                                            if (runningTaskInfo3 == null) {
                                                KtProtoLog.Companion companion3 = KtProtoLog.Companion;
                                                ShellProtoLogGroup shellProtoLogGroup3 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                                Object[] objArr3 = {Integer.valueOf(i6)};
                                                companion3.getClass();
                                                KtProtoLog.Companion.w(shellProtoLogGroup3, "moveToNextDisplay: taskId=%d not found", objArr3);
                                                return;
                                            }
                                            KtProtoLog.Companion companion4 = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup4 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr4 = {Integer.valueOf(i6), Integer.valueOf(runningTaskInfo3.displayId)};
                                            companion4.getClass();
                                            KtProtoLog.Companion.v(shellProtoLogGroup4, "moveToNextDisplay: taskId=%d taskDisplayId=%d", objArr4);
                                            RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer = desktopTasksController3.rootTaskDisplayAreaOrganizer;
                                            int size = rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.size();
                                            int[] iArr = new int[size];
                                            for (int i7 = 0; i7 < rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.size(); i7++) {
                                                iArr[i7] = rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.keyAt(i7);
                                            }
                                            Integer[] numArr = new Integer[size];
                                            for (int i8 = 0; i8 < size; i8++) {
                                                numArr[i8] = Integer.valueOf(iArr[i8]);
                                            }
                                            Integer[] numArr2 = numArr;
                                            if (numArr2.length > 1) {
                                                Arrays.sort(numArr2);
                                            }
                                            List asList = Arrays.asList(numArr);
                                            Iterator it = asList.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    obj2 = it.next();
                                                    if (((Number) obj2).intValue() > runningTaskInfo3.displayId) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    if (z2) {
                                                    }
                                                } else {
                                                    obj2 = null;
                                                }
                                            }
                                            Integer num2 = (Integer) obj2;
                                            if (num2 == null) {
                                                Iterator it2 = asList.iterator();
                                                while (true) {
                                                    if (it2.hasNext()) {
                                                        num = it2.next();
                                                        if (((Number) num).intValue() < runningTaskInfo3.displayId) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                        if (z) {
                                                        }
                                                    } else {
                                                        num = 0;
                                                    }
                                                }
                                                num2 = num;
                                            }
                                            if (num2 == null) {
                                                KtProtoLog.Companion.getClass();
                                                KtProtoLog.Companion.w(ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE, "moveToNextDisplay: next display not found", new Object[0]);
                                                return;
                                            }
                                            int intValue = num2.intValue();
                                            KtProtoLog.Companion companion5 = KtProtoLog.Companion;
                                            ShellProtoLogGroup shellProtoLogGroup5 = ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE;
                                            Object[] objArr5 = {Integer.valueOf(runningTaskInfo3.taskId), Integer.valueOf(intValue)};
                                            companion5.getClass();
                                            KtProtoLog.Companion.v(shellProtoLogGroup5, "moveToDisplay: taskId=%d displayId=%d", objArr5);
                                            if (runningTaskInfo3.displayId == intValue) {
                                                KtProtoLog.Companion.d(shellProtoLogGroup5, "moveToDisplay: task already on display", new Object[0]);
                                                return;
                                            }
                                            DisplayAreaInfo displayAreaInfo = (DisplayAreaInfo) rootTaskDisplayAreaOrganizer.mDisplayAreasInfo.get(intValue);
                                            if (displayAreaInfo == null) {
                                                KtProtoLog.Companion.w(shellProtoLogGroup5, "moveToDisplay: display not found", new Object[0]);
                                                return;
                                            }
                                            WindowContainerTransaction windowContainerTransaction3 = new WindowContainerTransaction();
                                            windowContainerTransaction3.reparent(runningTaskInfo3.token, displayAreaInfo.token, true);
                                            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                desktopTasksController3.transitions.startTransition(6, windowContainerTransaction3, null);
                                                return;
                                            } else {
                                                shellTaskOrganizer3.applyTransaction(windowContainerTransaction3);
                                                return;
                                            }
                                    }
                                }
                            });
                            desktopModeWindowDecoration.closeHandleMenu();
                            return;
                        }
                        return;
                    }
                }
                if (!desktopModeWindowDecoration.isHandleMenuActive()) {
                    moveTaskToFront(DesktopModeWindowDecorViewModel.this.mTaskOrganizer.getRunningTaskInfo(this.mTaskId));
                    HandleMenu.Builder builder = new HandleMenu.Builder(desktopModeWindowDecoration);
                    Drawable drawable = desktopModeWindowDecoration.mAppIcon;
                    CharSequence charSequence = desktopModeWindowDecoration.mAppName;
                    View.OnClickListener onClickListener = desktopModeWindowDecoration.mOnCaptionButtonClickListener;
                    View.OnTouchListener onTouchListener = desktopModeWindowDecoration.mOnCaptionTouchListener;
                    WindowDecoration.RelayoutParams relayoutParams = desktopModeWindowDecoration.mRelayoutParams;
                    HandleMenu handleMenu = new HandleMenu(builder.mParent, relayoutParams.mLayoutResId, relayoutParams.mCaptionX, relayoutParams.mCaptionY, onClickListener, onTouchListener, drawable, charSequence, DesktopModeStatus.IS_PROTO2_ENABLED);
                    desktopModeWindowDecoration.mHandleMenu = handleMenu;
                    SurfaceSyncGroup surfaceSyncGroup = new SurfaceSyncGroup("HandleMenu");
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    PointF pointF = handleMenu.mAppInfoPillPosition;
                    handleMenu.mAppInfoPill = handleMenu.mParentDecor.addWindow(R.layout.desktop_mode_window_decor_handle_menu_app_info_pill, "Menu's app info pill", transaction, surfaceSyncGroup, (int) pointF.x, (int) pointF.y, handleMenu.mMenuWidth, handleMenu.mAppInfoPillHeight, handleMenu.mShadowRadius, handleMenu.mCornerRadius);
                    boolean z = handleMenu.mShouldShowWindowingPill;
                    if (z) {
                        PointF pointF2 = handleMenu.mWindowingPillPosition;
                        handleMenu.mWindowingPill = handleMenu.mParentDecor.addWindow(R.layout.desktop_mode_window_decor_handle_menu_windowing_pill, "Menu's windowing pill", transaction, surfaceSyncGroup, (int) pointF2.x, (int) pointF2.y, handleMenu.mMenuWidth, handleMenu.mWindowingPillHeight, handleMenu.mShadowRadius, handleMenu.mCornerRadius);
                    }
                    PointF pointF3 = handleMenu.mMoreActionsPillPosition;
                    handleMenu.mMoreActionsPill = handleMenu.mParentDecor.addWindow(R.layout.desktop_mode_window_decor_handle_menu_more_actions_pill, "Menu's more actions pill", transaction, surfaceSyncGroup, (int) pointF3.x, (int) pointF3.y, handleMenu.mMenuWidth, handleMenu.mMoreActionsPillHeight, handleMenu.mShadowRadius, handleMenu.mCornerRadius);
                    surfaceSyncGroup.addTransaction(transaction);
                    surfaceSyncGroup.markSyncReady();
                    View view2 = handleMenu.mAppInfoPill.mWindowViewHost.getView();
                    ImageButton imageButton = (ImageButton) view2.findViewById(R.id.collapse_menu_button);
                    ImageView imageView = (ImageView) view2.findViewById(R.id.application_icon);
                    TextView textView = (TextView) view2.findViewById(R.id.application_name);
                    View.OnClickListener onClickListener2 = handleMenu.mOnClickListener;
                    imageButton.setOnClickListener(onClickListener2);
                    view2.setOnTouchListener(handleMenu.mOnTouchListener);
                    imageView.setImageDrawable(handleMenu.mAppIcon);
                    textView.setText(handleMenu.mAppName);
                    if (z) {
                        View view3 = handleMenu.mWindowingPill.mWindowViewHost.getView();
                        ImageButton imageButton2 = (ImageButton) view3.findViewById(R.id.fullscreen_button);
                        ImageButton imageButton3 = (ImageButton) view3.findViewById(R.id.split_screen_button);
                        ImageButton imageButton4 = (ImageButton) view3.findViewById(R.id.floating_button);
                        ImageButton imageButton5 = (ImageButton) view3.findViewById(R.id.desktop_button);
                        imageButton2.setOnClickListener(onClickListener2);
                        imageButton3.setOnClickListener(onClickListener2);
                        imageButton4.setOnClickListener(onClickListener2);
                        imageButton5.setOnClickListener(onClickListener2);
                        Context context2 = handleMenu.mContext;
                        ColorStateList valueOf = ColorStateList.valueOf(context2.getColor(R.color.desktop_mode_caption_menu_buttons_color_active));
                        ColorStateList valueOf2 = ColorStateList.valueOf(context2.getColor(R.color.desktop_mode_caption_menu_buttons_color_inactive));
                        ActivityManager.RunningTaskInfo runningTaskInfo = handleMenu.mTaskInfo;
                        if (runningTaskInfo.getWindowingMode() == 1) {
                            colorStateList = valueOf;
                        } else {
                            colorStateList = valueOf2;
                        }
                        imageButton2.setImageTintList(colorStateList);
                        if (runningTaskInfo.getWindowingMode() == 6) {
                            colorStateList2 = valueOf;
                        } else {
                            colorStateList2 = valueOf2;
                        }
                        imageButton3.setImageTintList(colorStateList2);
                        if (runningTaskInfo.getWindowingMode() == 2) {
                            colorStateList3 = valueOf;
                        } else {
                            colorStateList3 = valueOf2;
                        }
                        imageButton4.setImageTintList(colorStateList3);
                        if (runningTaskInfo.getWindowingMode() != 5) {
                            valueOf = valueOf2;
                        }
                        imageButton5.setImageTintList(valueOf);
                    }
                    View view4 = handleMenu.mMoreActionsPill.mWindowViewHost.getView();
                    ((Button) view4.findViewById(R.id.close_button)).setOnClickListener(onClickListener2);
                    ((Button) view4.findViewById(R.id.select_button)).setOnClickListener(onClickListener2);
                    return;
                }
                desktopModeWindowDecoration.closeHandleMenu();
                return;
            }
            DesktopModeWindowDecorViewModel.this.mTaskOperations.closeTask(this.mTaskToken);
            if (DesktopModeWindowDecorViewModel.this.mSplitScreenController.isPresent() && ((SplitScreenController) DesktopModeWindowDecorViewModel.this.mSplitScreenController.get()).isSplitScreenVisible()) {
                if (this.mTaskId == ((SplitScreenController) DesktopModeWindowDecorViewModel.this.mSplitScreenController.get()).getTaskInfo(0).taskId) {
                    i = 1;
                }
                ((SplitScreenController) DesktopModeWindowDecorViewModel.this.mSplitScreenController.get()).moveTaskToFullscreen(((SplitScreenController) DesktopModeWindowDecorViewModel.this.mSplitScreenController.get()).getTaskInfo(i).taskId);
            }
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int id = view.getId();
            if (id != R.id.caption_handle && id != R.id.desktop_mode_caption && id != R.id.open_menu_button && id != R.id.close_window) {
                return false;
            }
            moveTaskToFront(DesktopModeWindowDecorViewModel.this.mTaskOrganizer.getRunningTaskInfo(this.mTaskId));
            return this.mDragDetector.onMotionEvent(motionEvent);
        }

        private DesktopModeTouchEventListener(ActivityManager.RunningTaskInfo runningTaskInfo, DragPositioningCallback dragPositioningCallback) {
            this.mDragPointerId = -1;
            this.mTaskId = runningTaskInfo.taskId;
            this.mTaskToken = runningTaskInfo.token;
            this.mDragPositioningCallback = dragPositioningCallback;
            this.mDragDetector = new DragDetector(this);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DragStartListenerImpl implements DragPositioningCallbackUtility.DragStartListener {
        public /* synthetic */ DragStartListenerImpl(DesktopModeWindowDecorViewModel desktopModeWindowDecorViewModel, int i) {
            this();
        }

        @Override // com.android.wm.shell.windowdecor.DragPositioningCallbackUtility.DragStartListener
        public final void onDragStart(int i) {
            ((DesktopModeWindowDecoration) DesktopModeWindowDecorViewModel.this.mWindowDecorByTaskId.get(i)).closeHandleMenu();
        }

        private DragStartListenerImpl() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class EventReceiver extends InputEventReceiver {
        public InputMonitor mInputMonitor;
        public int mTasksOnDisplay;

        public EventReceiver(InputMonitor inputMonitor, InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
            this.mInputMonitor = inputMonitor;
            this.mTasksOnDisplay = 1;
        }

        public final void dispose() {
            InputMonitor inputMonitor = this.mInputMonitor;
            if (inputMonitor != null) {
                inputMonitor.dispose();
                this.mInputMonitor = null;
            }
            super.dispose();
        }

        /* JADX WARN: Code restructure failed: missing block: B:79:0x03a5, code lost:
        
            if (r0 == false) goto L129;
         */
        /* JADX WARN: Removed duplicated region for block: B:102:0x02b9  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x030a  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0319 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x03b1  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x03b9  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0355  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x03aa A[ADDED_TO_REGION] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onInputEvent(android.view.InputEvent r20) {
            /*
                Method dump skipped, instructions count: 996
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.DesktopModeWindowDecorViewModel.EventReceiver.onInputEvent(android.view.InputEvent):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class InputMonitorFactory {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TaskCornersListenerImpl {
        public /* synthetic */ TaskCornersListenerImpl(DesktopModeWindowDecorViewModel desktopModeWindowDecorViewModel, int i) {
            this();
        }

        private TaskCornersListenerImpl() {
        }
    }

    public DesktopModeWindowDecorViewModel(Context context, Handler handler, Choreographer choreographer, ShellTaskOrganizer shellTaskOrganizer, DisplayController displayController, SyncTransactionQueue syncTransactionQueue, Transitions transitions, Optional<DesktopModeController> optional, Optional<DesktopTasksController> optional2, Optional<SplitScreenController> optional3) {
        this(context, handler, choreographer, shellTaskOrganizer, displayController, syncTransactionQueue, transitions, optional, optional2, optional3, new DesktopModeWindowDecoration.Factory(), new InputMonitorFactory(), new EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0());
    }

    public final Rect calculateFreeformBounds(float f, int i) {
        DisplayLayout displayLayout = this.mDisplayController.getDisplayLayout(i);
        float f2 = (1.0f - f) / 2.0f;
        float f3 = displayLayout.mWidth;
        int i2 = (int) (f3 * f2);
        float f4 = displayLayout.mHeight;
        int i3 = (int) (f4 * f2);
        float f5 = f2 + f;
        return new Rect(i2, i3, (int) (f3 * f5), (int) (f4 * f5));
    }

    public final void createWindowDecoration(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        DesktopModeWindowDecoration desktopModeWindowDecoration;
        DragPositioningCallback veiledResizeTaskPositioner;
        SparseArray sparseArray = this.mWindowDecorByTaskId;
        DesktopModeWindowDecoration desktopModeWindowDecoration2 = (DesktopModeWindowDecoration) sparseArray.get(runningTaskInfo.taskId);
        if (desktopModeWindowDecoration2 != null) {
            desktopModeWindowDecoration2.close();
        }
        Context context = this.mContext;
        DisplayController displayController = this.mDisplayController;
        ShellTaskOrganizer shellTaskOrganizer = this.mTaskOrganizer;
        Handler handler = this.mMainHandler;
        Choreographer choreographer = this.mMainChoreographer;
        SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
        this.mDesktopModeWindowDecorFactory.getClass();
        DesktopModeWindowDecoration desktopModeWindowDecoration3 = new DesktopModeWindowDecoration(context, displayController, shellTaskOrganizer, runningTaskInfo, surfaceControl, handler, choreographer, syncTransactionQueue);
        sparseArray.put(runningTaskInfo.taskId, desktopModeWindowDecoration3);
        int i = runningTaskInfo.displayId;
        DisplayController displayController2 = this.mDisplayController;
        int i2 = 0;
        Rect rect = new Rect(0, 0, displayController2.getDisplayLayout(i).mWidth, displayController2.getDisplayLayout(runningTaskInfo.displayId).stableInsets(false).top);
        if (!DesktopModeStatus.IS_VEILED_RESIZE_ENABLED) {
            desktopModeWindowDecoration = desktopModeWindowDecoration3;
            veiledResizeTaskPositioner = new FluidResizeTaskPositioner(this.mTaskOrganizer, desktopModeWindowDecoration3, this.mDisplayController, rect, this.mDragStartListener, this.mTransactionFactory);
        } else {
            desktopModeWindowDecoration = desktopModeWindowDecoration3;
            desktopModeWindowDecoration.mResizeVeil = new ResizeVeil(desktopModeWindowDecoration.mContext, desktopModeWindowDecoration.mAppIcon, desktopModeWindowDecoration.mTaskInfo, desktopModeWindowDecoration.mSurfaceControlBuilderSupplier, desktopModeWindowDecoration.mDisplay, desktopModeWindowDecoration.mSurfaceControlTransactionSupplier);
            veiledResizeTaskPositioner = new VeiledResizeTaskPositioner(this.mTaskOrganizer, desktopModeWindowDecoration, this.mDisplayController, rect, this.mDragStartListener, this.mTransitions);
        }
        DesktopModeTouchEventListener desktopModeTouchEventListener = new DesktopModeTouchEventListener(this, runningTaskInfo, veiledResizeTaskPositioner, i2);
        desktopModeWindowDecoration.mOnCaptionButtonClickListener = desktopModeTouchEventListener;
        desktopModeWindowDecoration.mOnCaptionTouchListener = desktopModeTouchEventListener;
        desktopModeWindowDecoration.mCornersListener = this.mCornersListener;
        desktopModeWindowDecoration.mDragPositioningCallback = veiledResizeTaskPositioner;
        DragDetector dragDetector = desktopModeTouchEventListener.mDragDetector;
        desktopModeWindowDecoration.mDragDetector = dragDetector;
        dragDetector.mTouchSlop = ViewConfiguration.get(desktopModeWindowDecoration.mContext).getScaledTouchSlop();
        desktopModeWindowDecoration.relayout(runningTaskInfo, transaction, transaction2, false);
        incrementEventReceiverTasks(runningTaskInfo.displayId);
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void destroyWindowDecoration(ActivityManager.RunningTaskInfo runningTaskInfo) {
        DesktopModeWindowDecoration desktopModeWindowDecoration = (DesktopModeWindowDecoration) this.mWindowDecorByTaskId.removeReturnOld(runningTaskInfo.taskId);
        if (desktopModeWindowDecoration == null) {
            return;
        }
        desktopModeWindowDecoration.close();
        int i = runningTaskInfo.displayId;
        if (this.mEventReceiversByDisplay.contains(i)) {
            removeTaskFromEventReceiver(i);
        }
    }

    public final void incrementEventReceiverTasks(int i) {
        SparseArray sparseArray = this.mEventReceiversByDisplay;
        if (sparseArray.contains(i)) {
            ((EventReceiver) sparseArray.get(i)).mTasksOnDisplay++;
            return;
        }
        Context context = this.mContext;
        InputManager inputManager = (InputManager) context.getSystemService(InputManager.class);
        this.mInputMonitorFactory.getClass();
        InputMonitor monitorGestureInput = inputManager.monitorGestureInput("caption-touch", context.getDisplayId());
        sparseArray.put(i, new EventReceiver(monitorGestureInput, monitorGestureInput.getInputChannel(), Looper.myLooper()));
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskChanging(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        DesktopModeWindowDecoration desktopModeWindowDecoration = (DesktopModeWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (!shouldShowWindowDecor(runningTaskInfo)) {
            if (desktopModeWindowDecoration != null) {
                destroyWindowDecoration(runningTaskInfo);
            }
        } else if (desktopModeWindowDecoration == null) {
            createWindowDecoration(runningTaskInfo, surfaceControl, transaction, transaction2);
        } else {
            desktopModeWindowDecoration.relayout(runningTaskInfo, transaction, transaction2, false);
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskClosing(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        DesktopModeWindowDecoration desktopModeWindowDecoration = (DesktopModeWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (desktopModeWindowDecoration == null) {
            return;
        }
        desktopModeWindowDecoration.relayout(runningTaskInfo, transaction, transaction2, false);
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        DesktopModeWindowDecoration desktopModeWindowDecoration = (DesktopModeWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (desktopModeWindowDecoration == null) {
            return;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo2 = desktopModeWindowDecoration.mTaskInfo;
        int i = runningTaskInfo.displayId;
        int i2 = runningTaskInfo2.displayId;
        if (i != i2) {
            removeTaskFromEventReceiver(i2);
            incrementEventReceiverTasks(runningTaskInfo.displayId);
        }
        desktopModeWindowDecoration.relayout(runningTaskInfo);
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final boolean onTaskOpening(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        if (!shouldShowWindowDecor(runningTaskInfo)) {
            return false;
        }
        createWindowDecoration(runningTaskInfo, surfaceControl, transaction, transaction2);
        return true;
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTransitionFinished(IBinder iBinder) {
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.mWindowDecorByTaskId;
            if (i < sparseArray.size()) {
                if (((HashSet) ((DesktopModeWindowDecoration) sparseArray.valueAt(i)).mTransitionsPausingRelayout).remove(iBinder)) {
                    r1.mRelayoutBlock--;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTransitionMerged(IBinder iBinder, IBinder iBinder2) {
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.mWindowDecorByTaskId;
            if (i < sparseArray.size()) {
                DesktopModeWindowDecoration desktopModeWindowDecoration = (DesktopModeWindowDecoration) sparseArray.valueAt(i);
                if (((HashSet) desktopModeWindowDecoration.mTransitionsPausingRelayout).remove(iBinder)) {
                    ((HashSet) desktopModeWindowDecoration.mTransitionsPausingRelayout).add(iBinder2);
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTransitionReady(IBinder iBinder, TransitionInfo transitionInfo, TransitionInfo.Change change) {
        if (change.getMode() == 6 && transitionInfo.getType() == 1011) {
            ((HashSet) ((DesktopModeWindowDecoration) this.mWindowDecorByTaskId.get(change.getTaskInfo().taskId)).mTransitionsPausingRelayout).add(iBinder);
        }
    }

    public final void removeTaskFromEventReceiver(int i) {
        EventReceiver eventReceiver;
        EventReceiver eventReceiver2;
        SparseArray sparseArray = this.mEventReceiversByDisplay;
        if (!sparseArray.contains(i) || (eventReceiver = (EventReceiver) sparseArray.get(i)) == null) {
            return;
        }
        int i2 = eventReceiver.mTasksOnDisplay - 1;
        eventReceiver.mTasksOnDisplay = i2;
        if (i2 == 0 && (eventReceiver2 = (EventReceiver) sparseArray.removeReturnOld(i)) != null) {
            eventReceiver2.dispose();
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void setFreeformTaskTransitionStarter(FreeformTaskTransitionHandler freeformTaskTransitionHandler) {
        this.mTaskOperations = new TaskOperations(freeformTaskTransitionHandler, this.mContext, this.mSyncQueue, this.mSplitScreenController);
    }

    public final boolean shouldShowWindowDecor(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo.getWindowingMode() == 5) {
            return true;
        }
        Optional optional = this.mSplitScreenController;
        if (optional.isPresent() && ((SplitScreenController) optional.get()).isTaskRootOrStageRoot(runningTaskInfo.taskId)) {
            return false;
        }
        if (DesktopModeStatus.IS_PROTO2_ENABLED && runningTaskInfo.getActivityType() == 1 && this.mDisplayController.getDisplayContext(runningTaskInfo.displayId).getResources().getConfiguration().smallestScreenWidthDp >= 600) {
            return true;
        }
        return false;
    }

    public DesktopModeWindowDecorViewModel(Context context, Handler handler, Choreographer choreographer, ShellTaskOrganizer shellTaskOrganizer, DisplayController displayController, SyncTransactionQueue syncTransactionQueue, Transitions transitions, Optional<DesktopModeController> optional, Optional<DesktopTasksController> optional2, Optional<SplitScreenController> optional3, DesktopModeWindowDecoration.Factory factory, InputMonitorFactory inputMonitorFactory, Supplier<SurfaceControl.Transaction> supplier) {
        this.mEventReceiversByDisplay = new SparseArray();
        int i = 0;
        this.mCornersListener = new TaskCornersListenerImpl(this, i);
        this.mWindowDecorByTaskId = new SparseArray();
        this.mDragStartListener = new DragStartListenerImpl(this, i);
        this.mDragToDesktopAnimationStartBounds = new Rect();
        this.mContext = context;
        this.mMainHandler = handler;
        this.mMainChoreographer = choreographer;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mDisplayController = displayController;
        this.mSplitScreenController = optional3;
        this.mSyncQueue = syncTransactionQueue;
        this.mTransitions = transitions;
        this.mDesktopModeController = optional;
        this.mDesktopTasksController = optional2;
        this.mDesktopModeWindowDecorFactory = factory;
        this.mInputMonitorFactory = inputMonitorFactory;
        this.mTransactionFactory = supplier;
    }
}
