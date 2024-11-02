package com.android.wm.shell.pip;

import android.app.ActivityManager;
import android.app.TaskInfo;
import android.content.Context;
import android.graphics.Rect;
import android.os.Debug;
import android.os.IBinder;
import android.util.Log;
import android.util.RotationUtils;
import android.util.Slog;
import android.view.SurfaceControl;
import android.view.WindowManager;
import android.window.TransitionInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.keyguard.KeyguardService$$ExternalSyntheticOutline0;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.pip.PipAnimationController;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class PipTransition extends PipTransitionController {
    public final Context mContext;
    public WindowContainerToken mCurrentPipTaskToken;
    public int mEndFixedRotation;
    public int mEnterAnimationType;
    public final int mEnterExitAnimationDuration;
    public final Rect mExitDestinationBounds;
    public IBinder mExitTransition;
    public int mExitTransitionType;
    public Transitions.TransitionFinishCallback mFinishCallback;
    public SurfaceControl.Transaction mFinishTransaction;
    public boolean mHasFadeOut;
    public boolean mInEnterPipFromSplit;
    public boolean mInFixedRotation;
    public IBinder mMoveToBackTransition;
    public final PipDisplayLayoutState mPipDisplayLayoutState;
    public final PipTransitionState mPipTransitionState;
    public WindowContainerToken mRequestedEnterTask;
    public IBinder mRequestedEnterTransition;
    public final Optional mSplitScreenOptional;
    public final PipSurfaceTransactionHelper mSurfaceTransactionHelper;
    public final AnonymousClass1 mTransactionConsumer;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.wm.shell.pip.PipTransition$1] */
    public PipTransition(Context context, ShellInit shellInit, ShellTaskOrganizer shellTaskOrganizer, Transitions transitions, PipBoundsState pipBoundsState, PipDisplayLayoutState pipDisplayLayoutState, PipTransitionState pipTransitionState, PipMenuController pipMenuController, PipBoundsAlgorithm pipBoundsAlgorithm, PipAnimationController pipAnimationController, PipSurfaceTransactionHelper pipSurfaceTransactionHelper, Optional<SplitScreenController> optional) {
        super(shellInit, shellTaskOrganizer, transitions, pipBoundsState, pipMenuController, pipBoundsAlgorithm, pipAnimationController);
        this.mEnterAnimationType = 0;
        this.mExitDestinationBounds = new Rect();
        this.mTransactionConsumer = new PipAnimationController.PipTransactionHandler(this) { // from class: com.android.wm.shell.pip.PipTransition.1
        };
        this.mContext = context;
        this.mPipTransitionState = pipTransitionState;
        this.mPipDisplayLayoutState = pipDisplayLayoutState;
        this.mEnterExitAnimationDuration = context.getResources().getInteger(R.integer.config_pipResizeAnimationDuration);
        this.mSurfaceTransactionHelper = pipSurfaceTransactionHelper;
        this.mSplitScreenOptional = optional;
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void augmentRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo, WindowContainerTransaction windowContainerTransaction) {
        boolean z;
        if (transitionRequestInfo.getType() == 10) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (this.mEnterAnimationType == 1) {
                this.mRequestedEnterTransition = iBinder;
                this.mRequestedEnterTask = transitionRequestInfo.getTriggerTask().token;
                windowContainerTransaction.setActivityWindowingMode(transitionRequestInfo.getTriggerTask().token, 0);
                windowContainerTransaction.setBounds(transitionRequestInfo.getTriggerTask().token, this.mPipBoundsAlgorithm.getEntryDestinationBounds());
                return;
            }
            return;
        }
        throw new IllegalStateException("Called PiP augmentRequest when request has no PiP");
    }

    public final void callFinishCallback(WindowContainerTransaction windowContainerTransaction) {
        boolean z;
        Transitions.TransitionFinishCallback transitionFinishCallback = this.mFinishCallback;
        this.mFinishCallback = null;
        if (CoreRune.MW_PIP_SHELL_TRANSITION && (z = this.mInEnterPipFromSplit)) {
            if (z) {
                this.mInEnterPipFromSplit = false;
                Log.d("PipTransition", "onFinishEnterPipFromSplit: " + windowContainerTransaction);
                this.mShellTaskOrganizer.applyTransaction(windowContainerTransaction);
            }
            windowContainerTransaction = null;
        }
        transitionFinishCallback.onTransitionFinished(windowContainerTransaction, null);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void dump(PrintWriter printWriter, String str) {
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        printWriter.println(str + "PipTransition");
        printWriter.println(m + "mCurrentPipTaskToken=" + this.mCurrentPipTaskToken);
        printWriter.println(m + "mFinishCallback=" + this.mFinishCallback);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void end() {
        PipAnimationController.PipTransitionAnimator pipTransitionAnimator = this.mPipAnimationController.mCurrentAnimator;
        if (pipTransitionAnimator != null && pipTransitionAnimator.isRunning()) {
            pipTransitionAnimator.end();
        }
    }

    public final void fadeEnteredPipIfNeed(boolean z) {
        boolean z2;
        boolean z3 = true;
        if (this.mPipTransitionState.mState == 4) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            return;
        }
        if (z && this.mHasFadeOut) {
            Runnable runnable = new Runnable() { // from class: com.android.wm.shell.pip.PipTransition$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z4;
                    PipTransition pipTransition = PipTransition.this;
                    if (pipTransition.mHasFadeOut) {
                        if (pipTransition.mPipTransitionState.mState == 4) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            pipTransition.fadeExistingPip(true);
                        }
                    }
                }
            };
            Transitions transitions = this.mTransitions;
            if (!transitions.mPendingTransitions.isEmpty() || transitions.isAnimating()) {
                z3 = false;
            }
            if (z3) {
                runnable.run();
                return;
            } else {
                transitions.mRunWhenIdleQueue.add(runnable);
                return;
            }
        }
        if (!z && !this.mHasFadeOut) {
            fadeExistingPip(false);
        }
    }

    public final void fadeExistingPip(final boolean z) {
        float f;
        float f2;
        PipTaskOrganizer pipTaskOrganizer = this.mPipOrganizer;
        SurfaceControl surfaceControl = pipTaskOrganizer.mLeash;
        ActivityManager.RunningTaskInfo runningTaskInfo = pipTaskOrganizer.mTaskInfo;
        if (surfaceControl != null && surfaceControl.isValid() && runningTaskInfo != null) {
            if (z) {
                f = 0.0f;
            } else {
                f = 1.0f;
            }
            if (z) {
                f2 = 1.0f;
            } else {
                f2 = 0.0f;
            }
            PipAnimationController.PipTransactionHandler pipTransactionHandler = new PipAnimationController.PipTransactionHandler() { // from class: com.android.wm.shell.pip.PipTransition.3
                @Override // com.android.wm.shell.pip.PipAnimationController.PipTransactionHandler
                public final boolean handlePipTransaction(SurfaceControl surfaceControl2, SurfaceControl.Transaction transaction, Rect rect, float f3) {
                    if (f3 == 0.0f) {
                        if (z) {
                            transaction.setPosition(surfaceControl2, rect.left, rect.top);
                            return false;
                        }
                        Rect displayBounds = PipTransition.this.mPipDisplayLayoutState.getDisplayBounds();
                        float max = Math.max(displayBounds.width(), displayBounds.height());
                        transaction.setPosition(surfaceControl2, max, max);
                        return false;
                    }
                    return false;
                }
            };
            PipAnimationController.PipTransitionAnimator transitionDirection = this.mPipAnimationController.getAnimator(runningTaskInfo, surfaceControl, this.mPipBoundsState.getBounds(), f, f2).setTransitionDirection(1);
            transitionDirection.mPipTransactionHandler = pipTransactionHandler;
            transitionDirection.setDuration(this.mEnterExitAnimationDuration).start();
            this.mHasFadeOut = !z;
            return;
        }
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1714592462, 0, "%s: Invalid leash on fadeExistingPip: %s", "PipTransition", String.valueOf(surfaceControl));
        }
    }

    public final TransitionInfo.Change findCurrentPipTaskChange(TransitionInfo transitionInfo) {
        TransitionInfo.Change change;
        if (this.mCurrentPipTaskToken == null) {
            return null;
        }
        int size = transitionInfo.getChanges().size();
        do {
            size--;
            if (size < 0) {
                return null;
            }
            change = (TransitionInfo.Change) transitionInfo.getChanges().get(size);
        } while (!this.mCurrentPipTaskToken.equals(change.getContainer()));
        return change;
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void forceFinishTransition(PipTaskOrganizer$$ExternalSyntheticLambda3 pipTaskOrganizer$$ExternalSyntheticLambda3) {
        this.mCurrentPipTaskToken = null;
        Transitions.TransitionFinishCallback transitionFinishCallback = this.mFinishCallback;
        if (transitionFinishCallback == null) {
            return;
        }
        transitionFinishCallback.onTransitionFinished(null, null);
        this.mFinishCallback = null;
        this.mFinishTransaction = null;
        if (CoreRune.MW_PIP_SHELL_TRANSITION && pipTaskOrganizer$$ExternalSyntheticLambda3 != null) {
            pipTaskOrganizer$$ExternalSyntheticLambda3.run();
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final WindowContainerTransaction handleRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo) {
        boolean z;
        if (transitionRequestInfo.getType() == 10) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1560132950, 0, "%s: handle PiP enter request", "PipTransition");
            }
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            augmentRequest(iBinder, transitionRequestInfo, windowContainerTransaction);
            return windowContainerTransaction;
        }
        if (transitionRequestInfo.getType() != 4 || transitionRequestInfo.getTriggerTask() == null || transitionRequestInfo.getTriggerTask().getWindowingMode() != 2) {
            return null;
        }
        if (CoreRune.MW_PIP_SHELL_TRANSITION && !transitionRequestInfo.getTriggerTask().isVisible) {
            Log.w("PipTransition", "[PipTaskOrganizer] abort handle TRANSIT_TO_BACK, triggerTask is not visible");
            return null;
        }
        this.mMoveToBackTransition = iBinder;
        this.mPipTransitionState.setTransitionState(5);
        return new WindowContainerTransaction();
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final boolean handleRotateDisplay(int i, int i2, WindowContainerTransaction windowContainerTransaction) {
        if (this.mRequestedEnterTransition != null && this.mEnterAnimationType == 1 && RotationUtils.deltaRotation(i, i2) != 0) {
            this.mPipDisplayLayoutState.rotateTo(i2);
            windowContainerTransaction.setBounds(this.mRequestedEnterTask, this.mPipBoundsAlgorithm.getEntryDestinationBounds());
            return true;
        }
        return false;
    }

    public final boolean isEnteringPip(TransitionInfo transitionInfo) {
        for (int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m >= 0; m--) {
            if (isEnteringPip(transitionInfo.getType(), (TransitionInfo.Change) transitionInfo.getChanges().get(m))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        if (CoreRune.MW_PIP_SHELL_TRANSITION && transitionInfo.getType() == 3 && this.mPipTransitionState.mState == 3 && this.mInFixedRotation) {
            this.mPipOrganizer.mNeedToCheckRotation = true;
            Log.d("PipTaskOrganizer", "mergeAnimation in fixed rotation");
        }
        end();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0035, code lost:
    
        if (r1 != false) goto L12;
     */
    @Override // com.android.wm.shell.pip.PipTransitionController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onFinishResize(android.app.TaskInfo r10, android.graphics.Rect r11, int r12, android.view.SurfaceControl.Transaction r13) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipTransition.onFinishResize(android.app.TaskInfo, android.graphics.Rect, int, android.view.SurfaceControl$Transaction):void");
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void onFixedRotationFinished() {
        fadeEnteredPipIfNeed(true);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void onFixedRotationStarted() {
        fadeEnteredPipIfNeed(false);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void onStartEnterPipFromSplit(TransitionInfo.Change change) {
        if (!this.mInEnterPipFromSplit) {
            this.mInEnterPipFromSplit = true;
            Log.d("PipTransition", "onStartEnterPipFromSplit: " + change);
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void onTransitionConsumed(IBinder iBinder, boolean z, SurfaceControl.Transaction transaction) {
        boolean z2;
        if (iBinder != this.mExitTransition) {
            return;
        }
        PipAnimationController pipAnimationController = this.mPipAnimationController;
        PipAnimationController.PipTransitionAnimator pipTransitionAnimator = pipAnimationController.mCurrentAnimator;
        if (pipTransitionAnimator != null) {
            pipTransitionAnimator.cancel();
            pipAnimationController.mCurrentAnimator = null;
            z2 = true;
        } else {
            z2 = false;
        }
        this.mExitTransition = null;
        if (!z2) {
            return;
        }
        PipTaskOrganizer pipTaskOrganizer = this.mPipOrganizer;
        ActivityManager.RunningTaskInfo runningTaskInfo = pipTaskOrganizer.mTaskInfo;
        Rect rect = this.mExitDestinationBounds;
        if (runningTaskInfo != null) {
            if (z) {
                sendOnPipTransitionFinished(3);
                this.mPipOrganizer.onExitPipFinished(runningTaskInfo);
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                PipTaskOrganizer pipTaskOrganizer2 = this.mPipOrganizer;
                windowContainerTransaction.setWindowingMode(pipTaskOrganizer2.mToken, pipTaskOrganizer2.getOutPipWindowingMode());
                windowContainerTransaction.setActivityWindowingMode(pipTaskOrganizer2.mToken, 0);
                windowContainerTransaction.setBounds(runningTaskInfo.token, (Rect) null);
                this.mPipOrganizer.applyFinishBoundsResize(3, windowContainerTransaction, false);
            } else if (CoreRune.MW_PIP_SHELL_TRANSITION && this.mExitTransitionType == 1003) {
                pipTaskOrganizer.onExitPipFinished(runningTaskInfo);
            } else {
                SurfaceControl surfaceControl = pipTaskOrganizer.mLeash;
                PipBoundsState pipBoundsState = this.mPipBoundsState;
                startExpandAnimation(runningTaskInfo, surfaceControl, pipBoundsState.getBounds(), pipBoundsState.getBounds(), new Rect(rect), 0, null);
            }
        }
        rect.setEmpty();
        this.mCurrentPipTaskToken = null;
        if (CoreRune.MW_PIP_SHELL_TRANSITION) {
            this.mExitTransitionType = 0;
        }
    }

    public final void removePipImmediately(TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Transitions.TransitionFinishCallback transitionFinishCallback, TaskInfo taskInfo) {
        transaction.apply();
        if (transitionInfo.getChanges().isEmpty()) {
            Log.e("PipTaskOrganizer", "info.getChanges is empty info=" + transitionInfo + " callers=" + Debug.getCallers(3));
        } else {
            transaction2.setWindowCrop(((TransitionInfo.Change) transitionInfo.getChanges().get(0)).getLeash(), this.mPipDisplayLayoutState.getDisplayBounds());
        }
        this.mPipOrganizer.onExitPipFinished(taskInfo);
        transitionFinishCallback.onTransitionFinished(null, null);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void setEnterAnimationType(int i) {
        this.mEnterAnimationType = i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x0162. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0287  */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startAnimation(android.os.IBinder r27, final android.window.TransitionInfo r28, android.view.SurfaceControl.Transaction r29, final android.view.SurfaceControl.Transaction r30, final com.android.wm.shell.transition.Transitions.TransitionFinishCallback r31) {
        /*
            Method dump skipped, instructions count: 1264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipTransition.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x025f  */
    @Override // com.android.wm.shell.pip.PipTransitionController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startEnterAnimation(android.window.TransitionInfo.Change r25, android.view.SurfaceControl.Transaction r26, android.view.SurfaceControl.Transaction r27, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r28) {
        /*
            Method dump skipped, instructions count: 791
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipTransition.startEnterAnimation(android.window.TransitionInfo$Change, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):void");
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void startExitTransition(int i, WindowContainerTransaction windowContainerTransaction, Rect rect) {
        if (rect != null) {
            this.mExitDestinationBounds.set(rect);
        }
        PipAnimationController.PipTransitionAnimator pipTransitionAnimator = this.mPipAnimationController.mCurrentAnimator;
        if (pipTransitionAnimator != null && pipTransitionAnimator.isRunning()) {
            pipTransitionAnimator.cancel();
        }
        this.mExitTransition = this.mTransitions.startTransition(i, windowContainerTransaction, this);
        if (CoreRune.MW_PIP_SHELL_TRANSITION) {
            this.mExitTransitionType = i;
        }
    }

    public final void startExpandAnimation(TaskInfo taskInfo, SurfaceControl surfaceControl, Rect rect, Rect rect2, Rect rect3, int i, SurfaceControl.Transaction transaction) {
        Rect validSourceHintRect = PipBoundsAlgorithm.getValidSourceHintRect(taskInfo.pictureInPictureParams, rect3);
        StringBuilder sb = new StringBuilder("[PipTransition] startExpandAnimation startBounds=");
        sb.append(rect2);
        sb.append(" endBounds=");
        sb.append(rect3);
        sb.append(" rotDelta=");
        RecyclerView$$ExternalSyntheticOutline0.m(sb, i, "PipTaskOrganizer");
        PipAnimationController.PipTransitionAnimator animator = this.mPipAnimationController.getAnimator(taskInfo, surfaceControl, rect, rect2, rect3, validSourceHintRect, 3, 0.0f, i);
        animator.setTransitionDirection(3).setDuration(this.mEnterExitAnimationDuration);
        if (transaction != null) {
            animator.mPipTransactionHandler = this.mTransactionConsumer;
            animator.applySurfaceControlTransaction(0.0f, transaction, surfaceControl);
            transaction.apply();
        }
        PipAnimationController.PipTransitionAnimator pipAnimationCallback = animator.setPipAnimationCallback(this.mPipAnimationCallback);
        pipAnimationCallback.mPipTransactionHandler = this.mPipOrganizer.mPipTransactionHandler;
        pipAnimationCallback.start();
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final void syncPipSurfaceState(TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        TransitionInfo.Change findCurrentPipTaskChange = findCurrentPipTaskChange(transitionInfo);
        if (findCurrentPipTaskChange == null) {
            return;
        }
        updatePipForUnhandledTransition(findCurrentPipTaskChange, transaction, transaction2);
    }

    public final void updatePipForUnhandledTransition(TransitionInfo.Change change, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        Rect bounds;
        SurfaceControl leash = change.getLeash();
        PipTaskOrganizer pipTaskOrganizer = this.mPipOrganizer;
        PipAnimationController.PipTransitionAnimator pipTransitionAnimator = pipTaskOrganizer.mPipAnimationController.mCurrentAnimator;
        if (pipTransitionAnimator != null && pipTransitionAnimator.isRunning()) {
            bounds = new Rect(pipTransitionAnimator.mDestinationBounds);
        } else {
            bounds = pipTaskOrganizer.mPipBoundsState.getBounds();
        }
        boolean isInPip = this.mPipTransitionState.isInPip();
        PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
        pipSurfaceTransactionHelper.crop(bounds, transaction, leash);
        pipSurfaceTransactionHelper.round(leash, isInPip, transaction);
        pipSurfaceTransactionHelper.shadow(leash, isInPip, transaction);
        pipSurfaceTransactionHelper.crop(bounds, transaction2, leash);
        pipSurfaceTransactionHelper.round(leash, isInPip, transaction2);
        pipSurfaceTransactionHelper.shadow(leash, isInPip, transaction2);
        if (isInPip && this.mHasFadeOut) {
            transaction.setAlpha(leash, 0.0f);
            transaction2.setAlpha(leash, 0.0f);
        }
    }

    @Override // com.android.wm.shell.pip.PipTransitionController
    public final boolean isEnteringPip(int i, TransitionInfo.Change change) {
        if (change.getTaskInfo() == null || change.getTaskInfo().getWindowingMode() != 2 || change.getContainer().equals(this.mCurrentPipTaskToken)) {
            return false;
        }
        boolean z = CoreRune.MW_PIP_SHELL_TRANSITION;
        if (z && this.mPipTransitionState.mState == 0) {
            return false;
        }
        if (i == 10 || i == 1 || i == 6) {
            return true;
        }
        if (z && change.isEnteringPinnedMode()) {
            return true;
        }
        Slog.e("PipTransition", "Found new PIP in transition with mis-matched type=" + WindowManager.transitTypeToString(i), new Throwable());
        return false;
    }
}
