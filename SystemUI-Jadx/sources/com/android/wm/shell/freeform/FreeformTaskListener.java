package com.android.wm.shell.freeform;

import android.app.ActivityManager;
import android.app.TaskInfo;
import android.content.Context;
import android.graphics.Rect;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.view.SurfaceControl;
import android.window.WindowContainerTransaction;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayImeController;
import com.android.wm.shell.desktopmode.DesktopModeStatus;
import com.android.wm.shell.desktopmode.DesktopModeTaskRepository;
import com.android.wm.shell.freeform.FreeformTaskListener;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.windowdecor.DexWindowDecorViewModel;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecoration;
import com.android.wm.shell.windowdecor.TaskOperations;
import com.android.wm.shell.windowdecor.WindowDecorViewModel;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformTaskListener implements ShellTaskOrganizer.TaskListener, ShellTaskOrganizer.FocusListener {
    public final AdjustImeStateController mAdjustImeStateController;
    public int mCaptionType;
    public final Context mContext;
    public final Optional mDesktopModeTaskRepository;
    public final DexWindowDecorViewModel mDexWindowDecorViewModel;
    public final DisplayImeController mDisplayImeController;
    public final ImePositionProcessor mImePositionProcessor;
    public ActivityManager.RunningTaskInfo mLastFocusedTaskInfo;
    public final int mNewDexCaptionType;
    public final ShellTaskOrganizer mShellTaskOrganizer;
    public ActivityManager.RunningTaskInfo mShowImeTaskInfo;
    public final WindowDecorViewModel mWindowDecorationViewModel;
    public final SparseArray mTasks = new SparseArray();
    public final Rect mTmpFrame = new Rect();
    public int mLastOrientation = 0;
    public int mLastDisplayRotation = -1;
    public int mLastDisplayDeviceType = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ImePositionProcessor implements DisplayImeController.ImePositionProcessor {
        public final MultitaskingWindowDecorViewModel mDecorViewModel;
        public final int mDisplayId;
        public int mEndImeTop;
        public boolean mImeShown;
        public int mLastYOffset;
        public final Rect mStartBounds;
        public int mStartImeTop;
        public int mTargetYOffset;
        public int mYOffsetForIme;

        public /* synthetic */ ImePositionProcessor(FreeformTaskListener freeformTaskListener, int i, WindowDecorViewModel windowDecorViewModel, int i2) {
            this(i, windowDecorViewModel);
        }

        public final boolean canImePositioning(int i) {
            ActivityManager.RunningTaskInfo runningTaskInfo;
            if (i == this.mDisplayId && (runningTaskInfo = FreeformTaskListener.this.mLastFocusedTaskInfo) != null && runningTaskInfo.displayId == i) {
                return true;
            }
            return false;
        }

        @Override // com.android.wm.shell.common.DisplayImeController.ImePositionProcessor
        public final void onImeControlTargetChanged(int i, boolean z) {
            if (!canImePositioning(i)) {
                return;
            }
            boolean z2 = this.mImeShown;
            this.mImeShown = false;
            if (z2 && z) {
                this.mTargetYOffset = 0;
                this.mLastYOffset = 0;
                this.mYOffsetForIme = 0;
            }
        }

        @Override // com.android.wm.shell.common.DisplayImeController.ImePositionProcessor
        public final void onImeEndPositioning(int i, boolean z) {
            FreeformTaskListener freeformTaskListener = FreeformTaskListener.this;
            if (!z && canImePositioning(i)) {
                RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onImeEndPositioning: tid #"), freeformTaskListener.mLastFocusedTaskInfo.taskId, "ImePositionProcessor");
                float f = this.mLastYOffset;
                this.mYOffsetForIme = (int) DependencyGraph$$ExternalSyntheticOutline0.m(this.mTargetYOffset, f, 1.0f, f);
                MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mDecorViewModel.mWindowDecorByTaskId.get(freeformTaskListener.mLastFocusedTaskInfo.taskId);
                if (multitaskingWindowDecoration != null) {
                    multitaskingWindowDecoration.mTaskPositioner.mImeAnimating = false;
                    multitaskingWindowDecoration.mAdjustState.mAnimating = false;
                }
                if (this.mLastYOffset == this.mTargetYOffset) {
                    return;
                }
                ActivityManager.RunningTaskInfo runningTaskInfo = freeformTaskListener.mLastFocusedTaskInfo;
                int i2 = this.mYOffsetForIme;
                AdjustImeStateController adjustImeStateController = freeformTaskListener.mAdjustImeStateController;
                adjustImeStateController.onLayoutPositionEnd(runningTaskInfo, i2);
                if (!this.mImeShown) {
                    adjustImeStateController.clearImeAdjustedTask();
                    return;
                }
                return;
            }
            freeformTaskListener.mAdjustImeStateController.clearImeAdjustedTask();
        }

        @Override // com.android.wm.shell.common.DisplayImeController.ImePositionProcessor
        public final void onImePositionChanged(int i, int i2) {
            float f;
            if (!canImePositioning(i)) {
                return;
            }
            float f2 = this.mLastYOffset;
            float f3 = this.mTargetYOffset;
            int i3 = this.mEndImeTop;
            int i4 = this.mStartImeTop;
            int i5 = i3 - i4;
            if (i5 == 0) {
                Log.w("ImePositionProcessor", "getProgress: can't divide by zero");
                f = 0.0f;
            } else {
                f = (i2 - i4) / i5;
            }
            int m = (int) DependencyGraph$$ExternalSyntheticOutline0.m(f3, f2, f, f2);
            this.mYOffsetForIme = m;
            if (this.mLastYOffset == this.mTargetYOffset) {
                return;
            }
            FreeformTaskListener freeformTaskListener = FreeformTaskListener.this;
            freeformTaskListener.mAdjustImeStateController.onImePositionChanged(freeformTaskListener.mLastFocusedTaskInfo, m);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00cb  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0168  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x01aa  */
        @Override // com.android.wm.shell.common.DisplayImeController.ImePositionProcessor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final int onImeStartPositioning(int r8, int r9, int r10, boolean r11, boolean r12) {
            /*
                Method dump skipped, instructions count: 471
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.freeform.FreeformTaskListener.ImePositionProcessor.onImeStartPositioning(int, int, int, boolean, boolean):int");
        }

        private ImePositionProcessor(int i, WindowDecorViewModel windowDecorViewModel) {
            this.mStartBounds = new Rect();
            this.mDisplayId = i;
            this.mDecorViewModel = (MultitaskingWindowDecorViewModel) windowDecorViewModel;
        }
    }

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

    public FreeformTaskListener(Context context, DisplayImeController displayImeController, ShellInit shellInit, ShellTaskOrganizer shellTaskOrganizer, Optional<DesktopModeTaskRepository> optional, WindowDecorViewModel windowDecorViewModel, DexWindowDecorViewModel dexWindowDecorViewModel) {
        int i = 0;
        this.mShellTaskOrganizer = shellTaskOrganizer;
        this.mWindowDecorationViewModel = windowDecorViewModel;
        this.mDexWindowDecorViewModel = dexWindowDecorViewModel;
        this.mDesktopModeTaskRepository = optional;
        if (shellInit != null) {
            shellInit.addInitCallback(new Runnable() { // from class: com.android.wm.shell.freeform.FreeformTaskListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FreeformTaskListener freeformTaskListener = FreeformTaskListener.this;
                    ShellTaskOrganizer shellTaskOrganizer2 = freeformTaskListener.mShellTaskOrganizer;
                    shellTaskOrganizer2.addListenerForType(freeformTaskListener, -5);
                    boolean z = DesktopModeStatus.IS_SUPPORTED;
                    synchronized (shellTaskOrganizer2.mLock) {
                        shellTaskOrganizer2.mFocusListeners.add(freeformTaskListener);
                        ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer2.mLastFocusedTaskInfo;
                        if (runningTaskInfo != null) {
                            freeformTaskListener.onFocusTaskChanged(runningTaskInfo);
                        }
                    }
                    if (CoreRune.MW_CAPTION_SHELL) {
                        freeformTaskListener.mWindowDecorationViewModel.onInit();
                    }
                }
            }, this);
        }
        this.mContext = context;
        this.mCaptionType = Settings.Global.getInt(context.getContentResolver(), "freeform_caption_type", 0);
        ShellTaskOrganizer.MultiWindowCoreStateChangeListener multiWindowCoreStateChangeListener = new ShellTaskOrganizer.MultiWindowCoreStateChangeListener() { // from class: com.android.wm.shell.freeform.FreeformTaskListener$$ExternalSyntheticLambda1
            @Override // com.android.wm.shell.ShellTaskOrganizer.MultiWindowCoreStateChangeListener
            public final boolean onMultiWindowCoreStateChanged(int i2) {
                FreeformTaskListener freeformTaskListener = FreeformTaskListener.this;
                SparseArray sparseArray = freeformTaskListener.mTasks;
                int size = sparseArray.size();
                if (size < 1 || (i2 & 1) == 0 || MultiWindowCoreState.MW_ENABLED) {
                    return false;
                }
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                boolean z = false;
                for (int i3 = size - 1; i3 >= 0; i3--) {
                    FreeformTaskListener.State state = (FreeformTaskListener.State) sparseArray.valueAt(i3);
                    if (state.mTaskInfo.configuration.windowConfiguration.getDisplayWindowingMode() != 5) {
                        windowContainerTransaction.setWindowingMode(state.mTaskInfo.token, 1);
                        windowContainerTransaction.setBounds(state.mTaskInfo.token, (Rect) null);
                    }
                    ActivityManager.RunningTaskInfo runningTaskInfo = state.mTaskInfo;
                    if (runningTaskInfo.isVisible) {
                        windowContainerTransaction.reorder(runningTaskInfo.token, false);
                        TaskOperations taskOperations = ((MultitaskingWindowDecorViewModel) freeformTaskListener.mWindowDecorationViewModel).mTaskOperations;
                        taskOperations.getClass();
                        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                            FreeformTaskTransitionHandler freeformTaskTransitionHandler = (FreeformTaskTransitionHandler) taskOperations.mTransitionStarter;
                            ((ArrayList) freeformTaskTransitionHandler.mPendingTransitionTokens).add(freeformTaskTransitionHandler.mTransitions.startTransition(4, windowContainerTransaction, freeformTaskTransitionHandler));
                        } else {
                            taskOperations.mSyncQueue.queue(windowContainerTransaction);
                        }
                        if (!z) {
                            z = true;
                        }
                    }
                }
                return z;
            }
        };
        shellTaskOrganizer.mMultiWindowCoreStateChangeListeners.remove(multiWindowCoreStateChangeListener);
        shellTaskOrganizer.mMultiWindowCoreStateChangeListeners.add(multiWindowCoreStateChangeListener);
        if (CoreRune.MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE) {
            this.mNewDexCaptionType = 1;
        }
        Optional empty = Optional.empty();
        if (CoreRune.MW_CAPTION_SHELL) {
            this.mDisplayImeController = displayImeController;
            empty = Optional.ofNullable(windowDecorViewModel.asAdjustImeStateController());
            ImePositionProcessor imePositionProcessor = new ImePositionProcessor(this, context.getDisplayId(), windowDecorViewModel, i);
            this.mImePositionProcessor = imePositionProcessor;
            displayImeController.addPositionProcessor(imePositionProcessor);
        }
        this.mAdjustImeStateController = (AdjustImeStateController) empty.orElse(AdjustImeStateController.EMPTY);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void attachChildSurfaceToTask(int i, SurfaceControl.Builder builder) {
        builder.setParent(findTaskSurface(i));
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void createRestartDialog(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        this.mDexWindowDecorViewModel.onTaskOpening(runningTaskInfo, surfaceControl, transaction, transaction);
        transaction.apply();
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void dump(PrintWriter printWriter, String str) {
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        printWriter.println(str + this);
        printWriter.println(m + this.mTasks.size() + " tasks");
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
    public final boolean hasChild() {
        if (this.mTasks.size() > 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final boolean isMultiWindow() {
        return true;
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.FocusListener
    public final void onFocusTaskChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, 261383510, 13, null, Long.valueOf(runningTaskInfo.taskId), Boolean.valueOf(runningTaskInfo.isFocused));
        }
        if (DesktopModeStatus.isAnyEnabled() && runningTaskInfo.isFocused) {
            this.mDesktopModeTaskRepository.ifPresent(new FreeformTaskListener$$ExternalSyntheticLambda2(runningTaskInfo, 3));
        }
        if (runningTaskInfo.isFocused) {
            if (runningTaskInfo.getConfiguration().windowConfiguration.getWindowingMode() == 5) {
                updateLastFocusedTaskInfo(runningTaskInfo);
            } else {
                updateLastFocusedTaskInfo(null);
            }
        }
    }

    public final void onImmersiveModeChanged(int i, boolean z) {
        int i2;
        if (CoreRune.MW_CAPTION_SHELL_IMMERSIVE_MODE) {
            MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel = (MultitaskingWindowDecorViewModel) this.mWindowDecorationViewModel;
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) multitaskingWindowDecorViewModel.mWindowDecorByTaskId.get(i);
            if (z) {
                i2 = i;
            } else {
                i2 = -1;
            }
            multitaskingWindowDecorViewModel.mLastImmersiveTaskId = i2;
            Slog.d("MultitaskingWindowDecorViewModel", "onImmersiveModeChanged: last=" + multitaskingWindowDecorViewModel.mLastImmersiveDecoration + ", new=" + multitaskingWindowDecoration + ", immersive=" + z + ", taskId=" + i);
            if (multitaskingWindowDecoration != null && z) {
                multitaskingWindowDecorViewModel.updateLastImmersiveDecoration(multitaskingWindowDecoration);
            } else {
                multitaskingWindowDecorViewModel.resetLastImmersiveDecoration();
            }
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        SparseArray sparseArray = this.mTasks;
        if (sparseArray.get(runningTaskInfo.taskId) == null) {
            if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -166960725, 1, null, Long.valueOf(runningTaskInfo.taskId));
            }
            State state = new State(0);
            state.mTaskInfo = runningTaskInfo;
            state.mLeash = surfaceControl;
            sparseArray.put(runningTaskInfo.taskId, state);
            if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                this.mWindowDecorationViewModel.onTaskOpening(runningTaskInfo, surfaceControl, transaction, transaction);
                transaction.apply();
            }
            if (DesktopModeStatus.isAnyEnabled()) {
                this.mDesktopModeTaskRepository.ifPresent(new FreeformTaskListener$$ExternalSyntheticLambda2(runningTaskInfo, 2));
            }
            if (runningTaskInfo.isFocused) {
                updateLastFocusedTaskInfo(runningTaskInfo);
                return;
            }
            return;
        }
        throw new IllegalStateException("Task appeared more than once: #" + runningTaskInfo.taskId);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        State state = (State) this.mTasks.get(runningTaskInfo.taskId);
        int i = 1;
        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -272049475, 1, null, Long.valueOf(runningTaskInfo.taskId));
        }
        this.mWindowDecorationViewModel.onTaskInfoChanged(runningTaskInfo);
        this.mDexWindowDecorViewModel.onTaskInfoChanged(runningTaskInfo);
        state.mTaskInfo = runningTaskInfo;
        if (DesktopModeStatus.isAnyEnabled()) {
            this.mDesktopModeTaskRepository.ifPresent(new FreeformTaskListener$$ExternalSyntheticLambda2(runningTaskInfo, i));
        }
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mLastFocusedTaskInfo;
        if (runningTaskInfo2 != null && runningTaskInfo2.taskId == runningTaskInfo.taskId) {
            updateLastFocusedTaskInfo(runningTaskInfo);
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, 1899149317, 1, null, Long.valueOf(runningTaskInfo.taskId));
        }
        this.mTasks.remove(runningTaskInfo.taskId);
        if (DesktopModeStatus.isAnyEnabled()) {
            this.mDesktopModeTaskRepository.ifPresent(new FreeformTaskListener$$ExternalSyntheticLambda2(runningTaskInfo, 0));
        }
        if (!Transitions.ENABLE_SHELL_TRANSITIONS || CoreRune.MW_CAPTION_SHELL_BUG_FIX) {
            this.mWindowDecorationViewModel.destroyWindowDecoration(runningTaskInfo);
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void reparentChildSurfaceToTask(int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.reparent(surfaceControl, findTaskSurface(i));
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void resetStashedFreeform(int i, boolean z) {
        if (this.mTasks.contains(i)) {
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) ((MultitaskingWindowDecorViewModel) this.mWindowDecorationViewModel).mWindowDecorByTaskId.get(i);
            if (multitaskingWindowDecoration != null) {
                multitaskingWindowDecoration.mTaskPositioner.resetStashedFreeform(z);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("resetStashedFreeform failed. There is no task for taskId=", i));
    }

    public final WindowContainerTransaction resizeTasksByFreeformCaptionType(int i) {
        int i2 = this.mCaptionType;
        if (i2 == i) {
            return null;
        }
        this.mCaptionType = i;
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        SparseArray sparseArray = this.mTasks;
        int size = sparseArray.size();
        while (true) {
            size--;
            if (size >= 0) {
                ActivityManager.RunningTaskInfo runningTaskInfo = ((State) sparseArray.valueAt(size)).mTaskInfo;
                MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel = (MultitaskingWindowDecorViewModel) this.mWindowDecorationViewModel;
                int i3 = this.mCaptionType;
                MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) multitaskingWindowDecorViewModel.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
                if (multitaskingWindowDecoration != null) {
                    if (multitaskingWindowDecoration.mCaptionType == i3) {
                        NestedScrollView$$ExternalSyntheticOutline0.m("setCaptionType: The caption type has already been set. type=", i3, "MultitaskingWindowDecoration");
                    }
                    multitaskingWindowDecoration.mCaptionType = i3;
                }
                windowContainerTransaction.setChangeTransitMode(runningTaskInfo.token, 3, MultiWindowManager.freeformCaptionTypeToString(i2));
            } else {
                Settings.Global.putInt(this.mContext.getContentResolver(), "freeform_caption_type", i);
                return windowContainerTransaction;
            }
        }
    }

    public final String toString() {
        return "FreeformTaskListener";
    }

    public final void updateLastFocusedTaskInfo(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ActivityManager.RunningTaskInfo runningTaskInfo2;
        if ((runningTaskInfo != null || this.mLastFocusedTaskInfo != null) && (runningTaskInfo == null || (runningTaskInfo2 = this.mLastFocusedTaskInfo) == null || runningTaskInfo.taskId != runningTaskInfo2.taskId)) {
            AdjustImeStateController adjustImeStateController = this.mAdjustImeStateController;
            adjustImeStateController.taskGainFocus(runningTaskInfo);
            adjustImeStateController.taskLostFocus(this.mLastFocusedTaskInfo);
            if (runningTaskInfo == null) {
                ImePositionProcessor imePositionProcessor = this.mImePositionProcessor;
                imePositionProcessor.mTargetYOffset = 0;
                imePositionProcessor.mLastYOffset = 0;
                imePositionProcessor.mYOffsetForIme = 0;
            }
        }
        this.mLastFocusedTaskInfo = runningTaskInfo;
    }
}
