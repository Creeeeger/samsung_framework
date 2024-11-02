package com.android.wm.shell.pip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.app.TaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Debug;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.util.RotationUtils;
import android.util.Size;
import android.view.Choreographer;
import android.view.SurfaceControl;
import android.window.TaskAppearedInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.animation.Interpolators;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ScreenshotUtils;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.pip.PipAnimationController;
import com.android.wm.shell.pip.PipContentOverlay;
import com.android.wm.shell.pip.PipParamsChangedForwarder;
import com.android.wm.shell.pip.PipSurfaceTransactionHelper;
import com.android.wm.shell.pip.PipTaskOrganizer;
import com.android.wm.shell.pip.PipTransitionController;
import com.android.wm.shell.pip.PipUiEventLogger;
import com.android.wm.shell.pip.phone.PipMotionHelper$$ExternalSyntheticLambda0;
import com.android.wm.shell.pip.phone.PipResizeGestureHandler$$ExternalSyntheticLambda0;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;
import com.android.wm.shell.pip.tv.TvPipTaskOrganizer;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class PipTaskOrganizer implements ShellTaskOrganizer.TaskListener, DisplayController.OnDisplaysChangedListener, ShellTaskOrganizer.FocusListener {
    public final Context mContext;
    public final int mCrossFadeAnimationDuration;
    public int mCurrentRotation;
    public SurfaceControl.Transaction mDeferredAnimEndTransaction;
    public ActivityManager.RunningTaskInfo mDeferredTaskInfo;
    public final int mEnterAnimationDuration;
    public final int mExitAnimationDuration;
    public boolean mHasFadeOut;
    public boolean mIsInSecureFolder;
    public SurfaceControl mLeash;
    public final ShellExecutor mMainExecutor;
    public int mNextRotation;
    public IntConsumer mOnDisplayIdChangeCallback;
    public PictureInPictureParams mPictureInPictureParams;
    public final PipAnimationController mPipAnimationController;
    public final PipBoundsAlgorithm mPipBoundsAlgorithm;
    public final PipBoundsState mPipBoundsState;
    public final PipDisplayLayoutState mPipDisplayLayoutState;
    public Runnable mPipFinishResizeWCTRunnable;
    public final PipMenuController mPipMenuController;
    public final PipParamsChangedForwarder mPipParamsChangedForwarder;
    public final AnonymousClass3 mPipTransactionHandler;
    final PipTransitionController.PipTransitionCallback mPipTransitionCallback;
    public final PipTransitionController mPipTransitionController;
    public final PipTransitionState mPipTransitionState;
    public final PipUiEventLogger mPipUiEventLoggerLogger;
    public final Optional mSplitScreenOptional;
    public PipContentOverlay.PipColorOverlay mStashDimOverlay;
    public PipSurfaceTransactionHelper.SurfaceControlTransactionFactory mSurfaceControlTransactionFactory;
    public final PipSurfaceTransactionHelper mSurfaceTransactionHelper;
    public SurfaceControl mSwipePipToHomeOverlay;
    public final PipTaskOrganizer$$ExternalSyntheticLambda0 mSwipingPipTimeout;
    public final SyncTransactionQueue mSyncTransactionQueue;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public final ShellTaskOrganizer mTaskOrganizer;
    public Consumer mTaskVanishedCallback;
    public WindowContainerToken mToken;
    public boolean mWaitForFixedRotation;
    public final float[] mTmpFloat9 = new float[9];
    public final LinkedList mPipLogHistory = new LinkedList();
    public final SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public boolean mNeedToCheckRotation = false;
    public int mSwipingPipTaskId = -1;
    public final AnonymousClass1 mPipAnimationCallback = new AnonymousClass1();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.pip.PipTaskOrganizer$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends PipAnimationController.PipAnimationCallback {
        public boolean mIsCancelled;

        public AnonymousClass1() {
        }

        @Override // com.android.wm.shell.pip.PipAnimationController.PipAnimationCallback
        public final void onPipAnimationCancel(TaskInfo taskInfo, PipAnimationController.PipTransitionAnimator pipTransitionAnimator) {
            int transitionDirection = pipTransitionAnimator.getTransitionDirection();
            this.mIsCancelled = true;
            Log.d("PipTaskOrganizer", "onPipAnimationCancel direction=" + transitionDirection);
            boolean isInPipDirection = PipAnimationController.isInPipDirection(transitionDirection);
            PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
            if (isInPipDirection && pipTransitionAnimator.getContentOverlayLeash() != null) {
                pipTaskOrganizer.fadeOutAndRemoveOverlay(pipTransitionAnimator.getContentOverlayLeash(), new PipTaskOrganizer$$ExternalSyntheticLambda9(pipTransitionAnimator, 1), true, -1);
            }
            pipTaskOrganizer.mPipTransitionController.sendOnPipTransitionCancelled(transitionDirection);
        }

        @Override // com.android.wm.shell.pip.PipAnimationController.PipAnimationCallback
        public final void onPipAnimationEnd(TaskInfo taskInfo, final SurfaceControl.Transaction transaction, PipAnimationController.PipTransitionAnimator pipTransitionAnimator) {
            boolean z;
            final int transitionDirection = pipTransitionAnimator.getTransitionDirection();
            boolean z2 = this.mIsCancelled;
            final PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
            if (z2) {
                pipTaskOrganizer.sendOnPipTransitionFinished(transitionDirection);
                Runnable runnable = pipTaskOrganizer.mPipFinishResizeWCTRunnable;
                if (runnable != null) {
                    runnable.run();
                    pipTaskOrganizer.mPipFinishResizeWCTRunnable = null;
                    return;
                }
                return;
            }
            final int animationType = pipTransitionAnimator.getAnimationType();
            final Rect rect = pipTransitionAnimator.mDestinationBounds;
            StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("onPipAnimationEnd direction=", transitionDirection, " type", animationType, " mState=");
            m.append(pipTaskOrganizer.mPipTransitionState.mState);
            Log.d("PipTaskOrganizer", m.toString());
            boolean z3 = true;
            if (PipAnimationController.isInPipDirection(transitionDirection) && pipTransitionAnimator.getContentOverlayLeash() != null) {
                pipTaskOrganizer.fadeOutAndRemoveOverlay(pipTransitionAnimator.getContentOverlayLeash(), new PipTaskOrganizer$$ExternalSyntheticLambda9(pipTransitionAnimator, 2), true, -1);
            }
            if (pipTaskOrganizer.mWaitForFixedRotation && animationType == 0 && transitionDirection == 2) {
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                windowContainerTransaction.scheduleFinishEnterPip(pipTaskOrganizer.mToken, rect);
                pipTaskOrganizer.mTaskOrganizer.applyTransaction(windowContainerTransaction);
                pipTaskOrganizer.mSurfaceTransactionHelper.round(pipTaskOrganizer.mLeash, pipTaskOrganizer.isInPip(), transaction);
                pipTaskOrganizer.mDeferredAnimEndTransaction = transaction;
                return;
            }
            if (!PipAnimationController.isOutPipDirection(transitionDirection)) {
                if (transitionDirection == 5) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    z3 = false;
                }
            }
            if (pipTaskOrganizer.mPipTransitionState.mState != 5 || z3) {
                transaction.addTransactionCommittedListener(pipTaskOrganizer.mMainExecutor, new SurfaceControl.TransactionCommittedListener() { // from class: com.android.wm.shell.pip.PipTaskOrganizer$1$$ExternalSyntheticLambda0
                    @Override // android.view.SurfaceControl.TransactionCommittedListener
                    public final void onTransactionCommitted() {
                        PipTaskOrganizer pipTaskOrganizer2 = PipTaskOrganizer.this;
                        Runnable runnable2 = pipTaskOrganizer2.mPipFinishResizeWCTRunnable;
                        if (runnable2 != null) {
                            runnable2.run();
                            pipTaskOrganizer2.mPipFinishResizeWCTRunnable = null;
                        }
                    }
                });
                Runnable runnable2 = new Runnable() { // from class: com.android.wm.shell.pip.PipTaskOrganizer$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PipTaskOrganizer.AnonymousClass1 anonymousClass1 = PipTaskOrganizer.AnonymousClass1.this;
                        SurfaceControl.Transaction transaction2 = transaction;
                        Rect rect2 = rect;
                        int i = transitionDirection;
                        int i2 = animationType;
                        PipTaskOrganizer pipTaskOrganizer2 = PipTaskOrganizer.this;
                        pipTaskOrganizer2.finishResize(i, i2, rect2, transaction2);
                        pipTaskOrganizer2.sendOnPipTransitionFinished(i);
                    }
                };
                if (!pipTaskOrganizer.shouldSyncPipTransactionWithMenu()) {
                    runnable2.run();
                } else {
                    Choreographer.getInstance().postCallback(4, new PipTaskOrganizer$$ExternalSyntheticLambda8(pipTaskOrganizer, runnable2, 0), null);
                }
            }
        }

        @Override // com.android.wm.shell.pip.PipAnimationController.PipAnimationCallback
        public final void onPipAnimationStart(PipAnimationController.PipTransitionAnimator pipTransitionAnimator) {
            int transitionDirection = pipTransitionAnimator.getTransitionDirection();
            this.mIsCancelled = false;
            ListPopupWindow$$ExternalSyntheticOutline0.m("onPipAnimationStart direction=", transitionDirection, "PipTaskOrganizer");
            PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
            if (transitionDirection == 2) {
                pipTaskOrganizer.mPipTransitionState.setTransitionState(3);
            }
            pipTaskOrganizer.mPipTransitionController.sendOnPipTransitionStarted(transitionDirection);
        }
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r7v2, types: [com.android.wm.shell.pip.PipTaskOrganizer$3] */
    public PipTaskOrganizer(Context context, SyncTransactionQueue syncTransactionQueue, PipTransitionState pipTransitionState, PipBoundsState pipBoundsState, PipDisplayLayoutState pipDisplayLayoutState, PipBoundsAlgorithm pipBoundsAlgorithm, PipMenuController pipMenuController, PipAnimationController pipAnimationController, PipSurfaceTransactionHelper pipSurfaceTransactionHelper, PipTransitionController pipTransitionController, PipParamsChangedForwarder pipParamsChangedForwarder, Optional<SplitScreenController> optional, DisplayController displayController, PipUiEventLogger pipUiEventLogger, ShellTaskOrganizer shellTaskOrganizer, ShellExecutor shellExecutor) {
        final int i = 0;
        this.mSwipingPipTimeout = new Runnable(this) { // from class: com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda0
            public final /* synthetic */ PipTaskOrganizer f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                TaskAppearedInfo taskAppearedInfo;
                switch (i) {
                    case 0:
                        PipTaskOrganizer pipTaskOrganizer = this.f$0;
                        ShellTaskOrganizer shellTaskOrganizer2 = pipTaskOrganizer.mTaskOrganizer;
                        int i2 = pipTaskOrganizer.mSwipingPipTaskId;
                        synchronized (shellTaskOrganizer2.mLock) {
                            taskAppearedInfo = (TaskAppearedInfo) shellTaskOrganizer2.mTasks.get(i2);
                        }
                        if (taskAppearedInfo == null) {
                            Log.w("PipTaskOrganizer", "onSwipingPipTaskTimeout: failed, cannot find info, " + pipTaskOrganizer.mSwipingPipTaskId);
                            return;
                        }
                        if (taskAppearedInfo.getTaskInfo().isVisible()) {
                            Log.w("PipTaskOrganizer", "onSwipingPipTaskTimeout: failed, task is visible, " + pipTaskOrganizer.mSwipingPipTaskId);
                            return;
                        }
                        if (pipTaskOrganizer.mPipTransitionState.mState != 3) {
                            Log.w("PipTaskOrganizer", "onSwipingPipTaskTimeout: failed, wrong state, " + pipTaskOrganizer.mSwipingPipTaskId);
                            return;
                        }
                        pipTaskOrganizer.setSwipingPipTaskId(-1, "timeout");
                        SurfaceControl leash = taskAppearedInfo.getLeash();
                        SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) pipTaskOrganizer.mSurfaceControlTransactionFactory).getTransaction();
                        Log.d("PipTaskOrganizer", "onSwipingPipTaskTimeout: reset " + leash + ", " + pipTaskOrganizer.getDebuggingString());
                        transaction.setShadowRadius(leash, 0.0f);
                        transaction.apply();
                        pipTaskOrganizer.onExitPipFinished(taskAppearedInfo.getTaskInfo());
                        return;
                    default:
                        PipTaskOrganizer pipTaskOrganizer2 = this.f$0;
                        pipTaskOrganizer2.mTaskOrganizer.addListenerForType(pipTaskOrganizer2, -4);
                        return;
                }
            }
        };
        PipTransitionController.PipTransitionCallback pipTransitionCallback = new PipTransitionController.PipTransitionCallback() { // from class: com.android.wm.shell.pip.PipTaskOrganizer.2
            @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
            public final void onPipTransitionCanceled(int i2) {
                PipTaskOrganizer pipTaskOrganizer;
                ActivityManager.RunningTaskInfo runningTaskInfo;
                if (i2 == 2 && (runningTaskInfo = (pipTaskOrganizer = PipTaskOrganizer.this).mDeferredTaskInfo) != null) {
                    pipTaskOrganizer.onTaskInfoChanged(runningTaskInfo);
                    pipTaskOrganizer.mDeferredTaskInfo = null;
                    Log.d("PipTaskOrganizer", "onPipTransitionCanceled: clear deferredTaskInfo");
                }
            }

            @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
            public final void onPipTransitionFinished(int i2) {
                PipTaskOrganizer pipTaskOrganizer;
                ActivityManager.RunningTaskInfo runningTaskInfo;
                if (i2 == 2 && (runningTaskInfo = (pipTaskOrganizer = PipTaskOrganizer.this).mDeferredTaskInfo) != null) {
                    pipTaskOrganizer.onTaskInfoChanged(runningTaskInfo);
                    pipTaskOrganizer.mDeferredTaskInfo = null;
                }
            }

            @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
            public final void onPipTransitionStarted(int i2, Rect rect) {
            }
        };
        this.mPipTransitionCallback = pipTransitionCallback;
        this.mPipTransactionHandler = new PipAnimationController.PipTransactionHandler() { // from class: com.android.wm.shell.pip.PipTaskOrganizer.3
            @Override // com.android.wm.shell.pip.PipAnimationController.PipTransactionHandler
            public final boolean handlePipTransaction(SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, Rect rect, float f) {
                PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
                if (pipTaskOrganizer.shouldSyncPipTransactionWithMenu()) {
                    pipTaskOrganizer.mPipMenuController.movePipMenu(surfaceControl, transaction, rect, f);
                    return true;
                }
                return false;
            }
        };
        this.mContext = context;
        this.mSyncTransactionQueue = syncTransactionQueue;
        this.mPipTransitionState = pipTransitionState;
        this.mPipBoundsState = pipBoundsState;
        this.mPipDisplayLayoutState = pipDisplayLayoutState;
        this.mPipBoundsAlgorithm = pipBoundsAlgorithm;
        this.mPipMenuController = pipMenuController;
        this.mPipTransitionController = pipTransitionController;
        this.mPipParamsChangedForwarder = pipParamsChangedForwarder;
        this.mEnterAnimationDuration = context.getResources().getInteger(R.integer.config_pipEnterAnimationDuration);
        this.mExitAnimationDuration = context.getResources().getInteger(R.integer.config_pipExitAnimationDuration);
        this.mCrossFadeAnimationDuration = context.getResources().getInteger(R.integer.config_pipCrossfadeAnimationDuration);
        this.mSurfaceTransactionHelper = pipSurfaceTransactionHelper;
        this.mPipAnimationController = pipAnimationController;
        this.mPipUiEventLoggerLogger = pipUiEventLogger;
        this.mSurfaceControlTransactionFactory = new PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory();
        this.mSplitScreenOptional = optional;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mMainExecutor = shellExecutor;
        final int i2 = 1;
        ((HandlerExecutor) shellExecutor).execute(new Runnable(this) { // from class: com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda0
            public final /* synthetic */ PipTaskOrganizer f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                TaskAppearedInfo taskAppearedInfo;
                switch (i2) {
                    case 0:
                        PipTaskOrganizer pipTaskOrganizer = this.f$0;
                        ShellTaskOrganizer shellTaskOrganizer2 = pipTaskOrganizer.mTaskOrganizer;
                        int i22 = pipTaskOrganizer.mSwipingPipTaskId;
                        synchronized (shellTaskOrganizer2.mLock) {
                            taskAppearedInfo = (TaskAppearedInfo) shellTaskOrganizer2.mTasks.get(i22);
                        }
                        if (taskAppearedInfo == null) {
                            Log.w("PipTaskOrganizer", "onSwipingPipTaskTimeout: failed, cannot find info, " + pipTaskOrganizer.mSwipingPipTaskId);
                            return;
                        }
                        if (taskAppearedInfo.getTaskInfo().isVisible()) {
                            Log.w("PipTaskOrganizer", "onSwipingPipTaskTimeout: failed, task is visible, " + pipTaskOrganizer.mSwipingPipTaskId);
                            return;
                        }
                        if (pipTaskOrganizer.mPipTransitionState.mState != 3) {
                            Log.w("PipTaskOrganizer", "onSwipingPipTaskTimeout: failed, wrong state, " + pipTaskOrganizer.mSwipingPipTaskId);
                            return;
                        }
                        pipTaskOrganizer.setSwipingPipTaskId(-1, "timeout");
                        SurfaceControl leash = taskAppearedInfo.getLeash();
                        SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) pipTaskOrganizer.mSurfaceControlTransactionFactory).getTransaction();
                        Log.d("PipTaskOrganizer", "onSwipingPipTaskTimeout: reset " + leash + ", " + pipTaskOrganizer.getDebuggingString());
                        transaction.setShadowRadius(leash, 0.0f);
                        transaction.apply();
                        pipTaskOrganizer.onExitPipFinished(taskAppearedInfo.getTaskInfo());
                        return;
                    default:
                        PipTaskOrganizer pipTaskOrganizer2 = this.f$0;
                        pipTaskOrganizer2.mTaskOrganizer.addListenerForType(pipTaskOrganizer2, -4);
                        return;
                }
            }
        });
        synchronized (shellTaskOrganizer.mLock) {
            shellTaskOrganizer.mFocusListeners.add(this);
            ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer.mLastFocusedTaskInfo;
            if (runningTaskInfo != null) {
                onFocusTaskChanged(runningTaskInfo);
            }
        }
        pipTransitionController.mPipOrganizer = this;
        displayController.addDisplayWindowListener(this);
        ((ArrayList) pipTransitionController.mPipTransitionCallbacks).add(pipTransitionCallback);
        ShellTaskOrganizer.MultiWindowCoreStateChangeListener multiWindowCoreStateChangeListener = new ShellTaskOrganizer.MultiWindowCoreStateChangeListener() { // from class: com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda1
            @Override // com.android.wm.shell.ShellTaskOrganizer.MultiWindowCoreStateChangeListener
            public final boolean onMultiWindowCoreStateChanged(int i3) {
                PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
                if (pipTaskOrganizer.isInPip() && (i3 & 1) != 0 && !MultiWindowCoreState.MW_ENABLED) {
                    pipTaskOrganizer.mPipMenuController.dismissPip();
                    return true;
                }
                return false;
            }
        };
        shellTaskOrganizer.mMultiWindowCoreStateChangeListeners.remove(multiWindowCoreStateChangeListener);
        shellTaskOrganizer.mMultiWindowCoreStateChangeListeners.add(multiWindowCoreStateChangeListener);
        pipBoundsState.mPipTransitionState = pipTransitionState;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.wm.shell.pip.PipAnimationController.PipTransitionAnimator animateResizePip(android.graphics.Rect r22, android.graphics.Rect r23, android.graphics.Rect r24, int r25, int r26, float r27) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipTaskOrganizer.animateResizePip(android.graphics.Rect, android.graphics.Rect, android.graphics.Rect, int, int, float):com.android.wm.shell.pip.PipAnimationController$PipTransitionAnimator");
    }

    public final void applyEnterPipSyncTransaction(Rect rect, Runnable runnable, SurfaceControl.Transaction transaction) {
        if (!(this instanceof TvPipTaskOrganizer)) {
            this.mPipMenuController.attach(this.mLeash);
        }
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        windowContainerTransaction.setActivityWindowingMode(this.mToken, 0);
        windowContainerTransaction.setBounds(this.mToken, rect);
        if (transaction != null) {
            windowContainerTransaction.setBoundsChangeTransaction(this.mToken, transaction);
        }
        SyncTransactionQueue syncTransactionQueue = this.mSyncTransactionQueue;
        syncTransactionQueue.queue(windowContainerTransaction);
        syncTransactionQueue.runInSync(new PipTaskOrganizer$$ExternalSyntheticLambda4(runnable, 0));
    }

    public final void applyFinishBoundsResize(int i, final WindowContainerTransaction windowContainerTransaction, final boolean z) {
        if (i == 4) {
            this.mSplitScreenOptional.ifPresent(new Consumer() { // from class: com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
                    boolean z2 = z;
                    WindowContainerTransaction windowContainerTransaction2 = windowContainerTransaction;
                    SplitScreenController splitScreenController = (SplitScreenController) obj;
                    int i2 = pipTaskOrganizer.mTaskInfo.taskId;
                    splitScreenController.getClass();
                    splitScreenController.moveToStage(i2, !z2 ? 1 : 0, windowContainerTransaction2);
                }
            });
        } else {
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        }
    }

    public void applyNewPictureInPictureParams(PictureInPictureParams pictureInPictureParams) {
        boolean z;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mDeferredTaskInfo;
        boolean z2 = false;
        PipParamsChangedForwarder pipParamsChangedForwarder = this.mPipParamsChangedForwarder;
        if (runningTaskInfo != null || PipUtils.aspectRatioChanged(pictureInPictureParams.getAspectRatioFloat(), this.mPictureInPictureParams.getAspectRatioFloat())) {
            float aspectRatioFloat = pictureInPictureParams.getAspectRatioFloat();
            PipBoundsAlgorithm pipBoundsAlgorithm = this.mPipBoundsAlgorithm;
            if (Float.compare(pipBoundsAlgorithm.mMinAspectRatio, aspectRatioFloat) <= 0 && Float.compare(aspectRatioFloat, pipBoundsAlgorithm.mMaxAspectRatio) <= 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                float aspectRatioFloat2 = pictureInPictureParams.getAspectRatioFloat();
                Iterator it = ((ArrayList) pipParamsChangedForwarder.mPipParamsChangedListeners).iterator();
                while (it.hasNext()) {
                    ((PipParamsChangedForwarder.PipParamsChangedCallback) it.next()).onAspectRatioChanged(aspectRatioFloat2);
                }
            } else if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1213005747, 44, "%s: New aspect ratio is not valid. hasAspectRatio=%b aspectRatio=%f", "PipTaskOrganizer", Boolean.valueOf(pictureInPictureParams.hasSetAspectRatio()), Double.valueOf(pictureInPictureParams.getAspectRatioFloat()));
            }
        }
        if (this.mDeferredTaskInfo == null) {
            List<RemoteAction> actions = pictureInPictureParams.getActions();
            List<RemoteAction> actions2 = this.mPictureInPictureParams.getActions();
            if (actions != null || actions2 != null) {
                if (actions != null && actions2 != null && actions.size() == actions2.size()) {
                    for (int i = 0; i < actions.size(); i++) {
                        if (PipUtils.remoteActionsMatch(actions.get(i), actions2.get(i))) {
                        }
                    }
                }
                z2 = true;
                break;
            }
            if (!z2 && PipUtils.remoteActionsMatch(pictureInPictureParams.getCloseAction(), this.mPictureInPictureParams.getCloseAction())) {
                return;
            }
        }
        List<RemoteAction> actions3 = pictureInPictureParams.getActions();
        RemoteAction closeAction = pictureInPictureParams.getCloseAction();
        Iterator it2 = ((ArrayList) pipParamsChangedForwarder.mPipParamsChangedListeners).iterator();
        while (it2.hasNext()) {
            ((PipParamsChangedForwarder.PipParamsChangedCallback) it2.next()).onActionsChanged(actions3, closeAction);
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void attachChildSurfaceToTask(int i, SurfaceControl.Builder builder) {
        builder.setParent(findTaskSurface(i));
    }

    public final void cancelCurrentAnimator() {
        PipAnimationController pipAnimationController = this.mPipAnimationController;
        PipAnimationController.PipTransitionAnimator pipTransitionAnimator = pipAnimationController.mCurrentAnimator;
        if (pipTransitionAnimator != null) {
            if (pipTransitionAnimator.mBackgroundColorApplied && this.mLeash != null) {
                Log.d("PipTaskOrganizer", "cancelCurrentAnimator unsetColor, mBackgroundColorApplied");
                pipTransitionAnimator.mBackgroundColorApplied = false;
                ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction().unsetColor(this.mLeash).apply();
            }
            if (pipTransitionAnimator.getContentOverlayLeash() != null) {
                removeContentOverlay(pipTransitionAnimator.getContentOverlayLeash(), new PipTaskOrganizer$$ExternalSyntheticLambda9(pipTransitionAnimator, 0));
            }
            PipAnimationController.quietCancel(pipTransitionAnimator);
            pipAnimationController.mCurrentAnimator = null;
        }
    }

    public final void clearStashDimOverlay() {
        PipContentOverlay.PipColorOverlay pipColorOverlay = this.mStashDimOverlay;
        if (pipColorOverlay != null) {
            pipColorOverlay.detach(((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction());
            this.mStashDimOverlay = null;
        }
    }

    public final SurfaceControl.Transaction createFinishResizeSurfaceTransaction(Rect rect) {
        SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
        SurfaceControl surfaceControl = this.mLeash;
        PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
        pipSurfaceTransactionHelper.crop(rect, transaction, surfaceControl);
        pipSurfaceTransactionHelper.resetScale(rect, transaction, this.mLeash);
        pipSurfaceTransactionHelper.round(this.mLeash, this.mPipTransitionState.isInPip(), transaction);
        StringBuilder sb = new StringBuilder("createFinishResizeSurfaceTransaction: destination=");
        sb.append(rect);
        sb.append(", ");
        sb.append(getDebuggingString());
        sb.append(", Callers=");
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(10, sb, "PipTaskOrganizer");
        return transaction;
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void dump(PrintWriter printWriter, String str) {
        IBinder iBinder;
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        printWriter.println(str + "PipTaskOrganizer");
        printWriter.println(m + "mTaskInfo=" + this.mTaskInfo);
        StringBuilder sb = new StringBuilder();
        sb.append(m);
        sb.append("mToken=");
        sb.append(this.mToken);
        sb.append(" binder=");
        WindowContainerToken windowContainerToken = this.mToken;
        if (windowContainerToken != null) {
            iBinder = windowContainerToken.asBinder();
        } else {
            iBinder = null;
        }
        sb.append(iBinder);
        printWriter.println(sb.toString());
        printWriter.println(m + "mLeash=" + this.mLeash);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m);
        sb2.append("mState=");
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        sb2.append(pipTransitionState.mState);
        printWriter.println(sb2.toString());
        printWriter.println(m + "mPictureInPictureParams=" + this.mPictureInPictureParams);
        this.mPipTransitionController.dump(printWriter, m);
        long j = pipTransitionState.mTaskAppearedTime;
        if (j > 0) {
            StringBuilder m2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(m, "mTaskAppearedTime=");
            m2.append(System.currentTimeMillis() - j);
            m2.append("ms");
            printWriter.println(m2.toString());
        }
        StringBuilder m3 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(m, "mPipLogHistory=");
        m3.append(this.mPipLogHistory);
        printWriter.println(m3.toString());
    }

    public void enterPipWithAlphaAnimation(final Rect rect, final long j) {
        SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
        transaction.setAlpha(this.mLeash, 0.0f);
        transaction.apply();
        SurfaceControl.Transaction transaction2 = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
        SurfaceControl surfaceControl = this.mLeash;
        PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
        pipSurfaceTransactionHelper.crop(rect, transaction2, surfaceControl);
        pipSurfaceTransactionHelper.round(this.mLeash, true, transaction2);
        this.mPipTransitionState.setTransitionState(2);
        applyEnterPipSyncTransaction(rect, new Runnable() { // from class: com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
                Rect rect2 = rect;
                long j2 = j;
                PipAnimationController.PipTransitionAnimator pipAnimationCallback = pipTaskOrganizer.mPipAnimationController.getAnimator(pipTaskOrganizer.mTaskInfo, pipTaskOrganizer.mLeash, rect2, 0.0f, 1.0f).setTransitionDirection(2).setPipAnimationCallback(pipTaskOrganizer.mPipAnimationCallback);
                pipAnimationCallback.mPipTransactionHandler = pipTaskOrganizer.mPipTransactionHandler;
                pipAnimationCallback.setDuration(j2).start();
                pipTaskOrganizer.mPipTransitionState.setTransitionState(3);
            }
        }, transaction2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0262  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void exitPip(final int r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 815
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.PipTaskOrganizer.exitPip(int, boolean):void");
    }

    public final void fadeExistingPip(boolean z) {
        float f;
        float f2;
        int i;
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl != null && surfaceControl.isValid()) {
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
            PipAnimationController.PipTransitionAnimator transitionDirection = this.mPipAnimationController.getAnimator(this.mTaskInfo, this.mLeash, this.mPipBoundsState.getBounds(), f, f2).setTransitionDirection(1);
            transitionDirection.mPipTransactionHandler = this.mPipTransactionHandler;
            if (z) {
                i = this.mEnterAnimationDuration;
            } else {
                i = this.mExitAnimationDuration;
            }
            transitionDirection.setDuration(i).start();
            this.mHasFadeOut = !z;
            return;
        }
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -695061991, 0, "%s: Invalid leash on fadeExistingPip: %s", "PipTaskOrganizer", String.valueOf(this.mLeash));
        }
    }

    public final void fadeOutAndRemoveOverlay(final SurfaceControl surfaceControl, final Runnable runnable, boolean z, int i) {
        long j;
        if (surfaceControl != null && surfaceControl.isValid()) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            ofFloat.setDuration(this.mCrossFadeAnimationDuration);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda10
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
                    SurfaceControl surfaceControl2 = surfaceControl;
                    Runnable runnable2 = runnable;
                    PipTransitionState pipTransitionState = pipTaskOrganizer.mPipTransitionState;
                    if (pipTransitionState.mState == 0) {
                        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1931730986, 0, "%s: Task vanished, skip fadeOutAndRemoveOverlay", "PipTaskOrganizer");
                        }
                        PipAnimationController.quietCancel(valueAnimator);
                        Log.w("PipTaskOrganizer", "forceRemoveContentOverlay mState=" + pipTransitionState.mState + " caller=" + Debug.getCallers(5));
                        if (surfaceControl2 != null && surfaceControl2.isValid()) {
                            SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) pipTaskOrganizer.mSurfaceControlTransactionFactory).getTransaction();
                            transaction.remove(surfaceControl2);
                            transaction.apply();
                            if (runnable2 != null) {
                                runnable2.run();
                                return;
                            }
                            return;
                        }
                        Log.w("PipTaskOrganizer", "trying to remove invalid content overlay");
                        return;
                    }
                    if (surfaceControl2.isValid()) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        SurfaceControl.Transaction transaction2 = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) pipTaskOrganizer.mSurfaceControlTransactionFactory).getTransaction();
                        transaction2.setAlpha(surfaceControl2, floatValue);
                        transaction2.apply();
                    }
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.pip.PipTaskOrganizer.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    PipTaskOrganizer.this.removeContentOverlay(surfaceControl, runnable);
                }
            });
            if (CoreRune.MW_PIP_SHELL_TRANSITION && z && i != -1) {
                ofFloat.setStartDelay(i);
            } else {
                if (z) {
                    j = 500;
                } else {
                    j = 0;
                }
                ofFloat.setStartDelay(j);
            }
            ofFloat.start();
        }
    }

    public final SurfaceControl findTaskSurface(int i) {
        SurfaceControl surfaceControl;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
        if (runningTaskInfo != null && (surfaceControl = this.mLeash) != null && runningTaskInfo.taskId == i) {
            return surfaceControl;
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("There is no surface for taskId=", i));
    }

    public final void finishResize(int i, int i2, Rect rect, SurfaceControl.Transaction transaction) {
        boolean z;
        boolean z2;
        PictureInPictureParams pictureInPictureParams;
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        final Rect rect2 = new Rect(pipBoundsState.getBounds());
        pipBoundsState.setBounds(rect);
        StringBuilder sb = new StringBuilder("finishResize destinationBounds=");
        sb.append(rect);
        sb.append(" direction=");
        AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(sb, i, " type=", i2, " Callers=");
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(10, sb, "PipTaskOrganizer");
        if (i == 5) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 653686066, 0, "removePipImmediately: %s, state=%s", String.valueOf(this.mTaskInfo.topActivity), String.valueOf(this.mPipTransitionState));
            }
            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                windowContainerTransaction.setBounds(this.mToken, (Rect) null);
                windowContainerTransaction.setWindowingMode(this.mToken, getOutPipWindowingMode());
                windowContainerTransaction.reorder(this.mToken, false);
                this.mPipTransitionController.startExitTransition(1003, windowContainerTransaction, null);
                return;
            }
            try {
                WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                windowContainerTransaction2.setBounds(this.mToken, (Rect) null);
                this.mTaskOrganizer.applyTransaction(windowContainerTransaction2);
                ActivityTaskManager.getService().removeRootTasksInWindowingModes(new int[]{2});
                return;
            } catch (RemoteException e) {
                if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                    ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 370058243, 0, "%s: Failed to remove PiP, %s", "PipTaskOrganizer", String.valueOf(e));
                    return;
                }
                return;
            }
        }
        if (PipAnimationController.isInPipDirection(i) && i2 == 1) {
            finishResizeForMenu(rect);
            return;
        }
        WindowContainerTransaction windowContainerTransaction3 = new WindowContainerTransaction();
        prepareFinishResizeTransaction(rect, i, transaction, windowContainerTransaction3);
        if (i != 7 && i != 6 && i != 8) {
            z = false;
        } else {
            z = true;
        }
        if (z && (pictureInPictureParams = this.mPictureInPictureParams) != null && !pictureInPictureParams.isSeamlessResizeEnabled()) {
            z2 = true;
        } else {
            z2 = false;
        }
        SyncTransactionQueue syncTransactionQueue = this.mSyncTransactionQueue;
        if (z2) {
            rect2.offsetTo(0, 0);
            final Rect rect3 = new Rect(0, 0, rect.width(), rect.height());
            SurfaceControl.Transaction transaction2 = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            SurfaceControl surfaceControl = this.mLeash;
            final SurfaceControl takeScreenshot = ScreenshotUtils.takeScreenshot(transaction2, surfaceControl, surfaceControl, rect2, 2147483645);
            if (takeScreenshot != null) {
                syncTransactionQueue.queue(windowContainerTransaction3);
                syncTransactionQueue.runInSync(new SyncTransactionQueue.TransactionRunnable() { // from class: com.android.wm.shell.pip.PipTaskOrganizer$$ExternalSyntheticLambda7
                    @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
                    public final void runWithTransaction(SurfaceControl.Transaction transaction3) {
                        PipTaskOrganizer pipTaskOrganizer = PipTaskOrganizer.this;
                        Runnable runnable = pipTaskOrganizer.mPipFinishResizeWCTRunnable;
                        if (runnable != null) {
                            runnable.run();
                            pipTaskOrganizer.mPipFinishResizeWCTRunnable = null;
                        }
                        PipSurfaceTransactionHelper pipSurfaceTransactionHelper = pipTaskOrganizer.mSurfaceTransactionHelper;
                        Rect rect4 = rect2;
                        Rect rect5 = rect3;
                        SurfaceControl surfaceControl2 = takeScreenshot;
                        pipSurfaceTransactionHelper.scale(0.0f, rect4, rect5, transaction3, surfaceControl2);
                        pipTaskOrganizer.fadeOutAndRemoveOverlay(surfaceControl2, null, false, -1);
                    }
                });
            } else {
                applyFinishBoundsResize(i, windowContainerTransaction3, false);
            }
        } else {
            applyFinishBoundsResize(i, windowContainerTransaction3, isPipToTopLeft());
            if (i == 4) {
                syncTransactionQueue.runInSync(new PipTaskOrganizer$$ExternalSyntheticLambda4(transaction, 1));
            }
        }
        finishResizeForMenu(rect);
    }

    public final void finishResizeForMenu(Rect rect) {
        if (!isInPip()) {
            return;
        }
        PipMenuController pipMenuController = this.mPipMenuController;
        pipMenuController.movePipMenu(null, null, rect, -1.0f);
        pipMenuController.updateMenuBounds(rect);
    }

    public final String getDebuggingString() {
        String str;
        String m;
        StringBuilder sb = new StringBuilder("PipTaskOrganizer{mState=");
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        sb.append(pipTransitionState.mState);
        sb.append(", mTaskInfo=");
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
        if (runningTaskInfo == null) {
            m = "null";
        } else if (CoreRune.SAFE_DEBUG) {
            m = runningTaskInfo.toString();
        } else {
            StringBuilder sb2 = new StringBuilder("TaskInfo(taskId=");
            sb2.append(this.mTaskInfo.taskId);
            sb2.append(", isVisible=");
            sb2.append(this.mTaskInfo.isVisible);
            if (this.mTaskInfo.realActivity != null) {
                str = ", " + this.mTaskInfo.realActivity.getPackageName();
            } else {
                str = "";
            }
            m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb2, str, ")");
        }
        sb.append(m);
        sb.append(", mLeash=");
        sb.append(this.mLeash);
        sb.append(", mWaitForFixedRotation=");
        sb.append(this.mWaitForFixedRotation);
        sb.append(", inSwipePipToHome=");
        sb.append(pipTransitionState.mInSwipePipToHomeTransition);
        sb.append(", mPictureInPictureParams=");
        sb.append(this.mPictureInPictureParams);
        sb.append("}");
        return sb.toString();
    }

    public final int getOutPipWindowingMode() {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (CoreRune.MT_NEW_DEX_PIP && (runningTaskInfo = this.mTaskInfo) != null && runningTaskInfo.getConfiguration().isNewDexMode()) {
            return 1;
        }
        return 0;
    }

    public final boolean isInPip() {
        return this.mPipTransitionState.isInPip();
    }

    public final boolean isPipToTopLeft() {
        Optional optional = this.mSplitScreenOptional;
        if (!optional.isPresent() || ((SplitScreenController) optional.get()).getActivateSplitPosition(this.mTaskInfo) != 0) {
            return false;
        }
        return true;
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayConfigurationChanged(int i, Configuration configuration) {
        this.mCurrentRotation = configuration.windowConfiguration.getRotation();
    }

    public final void onEndOfSwipePipToHomeTransition() {
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            this.mPipTransitionController.setEnterAnimationType(0);
            return;
        }
        Rect bounds = this.mPipBoundsState.getBounds();
        SurfaceControl surfaceControl = this.mSwipePipToHomeOverlay;
        SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
        SurfaceControl surfaceControl2 = this.mLeash;
        PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
        pipSurfaceTransactionHelper.resetScale(bounds, transaction, surfaceControl2);
        pipSurfaceTransactionHelper.crop(bounds, transaction, this.mLeash);
        pipSurfaceTransactionHelper.round(this.mLeash, isInPip(), transaction);
        applyEnterPipSyncTransaction(bounds, new PipTaskOrganizer$$ExternalSyntheticLambda3(this, bounds, surfaceControl), transaction);
        this.mPipTransitionState.mInSwipePipToHomeTransition = false;
        this.mSwipePipToHomeOverlay = null;
    }

    public final void onExitPipFinished(TaskInfo taskInfo) {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1958388187, 0, "onExitPipFinished: %s, state=%s leash=%s", String.valueOf(taskInfo.topActivity), String.valueOf(this.mPipTransitionState), String.valueOf(this.mLeash));
        }
        onExitPipFinished(taskInfo, false);
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onFixedRotationFinished(int i) {
        boolean z = ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled;
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        if (z) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1361800426, 0, "onFixedRotationFinished: %s, state=%s", String.valueOf(this.mTaskInfo), String.valueOf(pipTransitionState));
        }
        Log.d("PipTaskOrganizer", "onFixedRotationFinished: " + getDebuggingString());
        if (!this.mWaitForFixedRotation) {
            return;
        }
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            if (this.mNextRotation != this.mCurrentRotation) {
                this.mNeedToCheckRotation = true;
            }
            this.mPipTransitionController.onFixedRotationFinished();
            this.mWaitForFixedRotation = false;
            this.mDeferredAnimEndTransaction = null;
            return;
        }
        int i2 = pipTransitionState.mState;
        if (i2 == 1) {
            if (pipTransitionState.mInSwipePipToHomeTransition) {
                onEndOfSwipePipToHomeTransition();
            } else {
                enterPipWithAlphaAnimation(this.mPipBoundsAlgorithm.getEntryDestinationBounds(), this.mEnterAnimationDuration);
            }
        } else if (i2 == 4 && this.mHasFadeOut) {
            fadeExistingPip(true);
        } else if (i2 == 3 && this.mDeferredAnimEndTransaction != null) {
            Rect rect = this.mPipAnimationController.mCurrentAnimator.mDestinationBounds;
            this.mPipBoundsState.setBounds(rect);
            applyEnterPipSyncTransaction(rect, new PipTaskOrganizer$$ExternalSyntheticLambda8(this, rect, 1), this.mDeferredAnimEndTransaction);
        }
        this.mWaitForFixedRotation = false;
        this.mDeferredAnimEndTransaction = null;
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onFixedRotationStarted(int i, int i2) {
        boolean z = ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled;
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        if (z) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -96389579, 0, "onFixedRotationStarted: %s, state=%s", String.valueOf(this.mTaskInfo), String.valueOf(pipTransitionState));
        }
        this.mNextRotation = i2;
        this.mWaitForFixedRotation = true;
        this.mNeedToCheckRotation = false;
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onFixedRotationStarted: rot=", i2, ", ");
        m.append(getDebuggingString());
        Log.d("PipTaskOrganizer", m.toString());
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            this.mPipTransitionController.onFixedRotationStarted();
        } else if (pipTransitionState.isInPip()) {
            fadeExistingPip(false);
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.FocusListener
    public final void onFocusTaskChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        this.mPipMenuController.onFocusTaskChanged(runningTaskInfo);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        boolean z;
        PipUiEventLogger.PipUiEventEnum pipUiEventEnum;
        int i;
        IntConsumer intConsumer;
        Objects.requireNonNull(runningTaskInfo, "Requires RunningTaskInfo");
        this.mTaskInfo = runningTaskInfo;
        this.mToken = runningTaskInfo.token;
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        pipTransitionState.setTransitionState(1);
        this.mLeash = surfaceControl;
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mTaskInfo;
        PictureInPictureParams pictureInPictureParams = runningTaskInfo2.pictureInPictureParams;
        this.mPictureInPictureParams = pictureInPictureParams;
        ComponentName componentName = runningTaskInfo2.topActivity;
        ActivityInfo activityInfo = runningTaskInfo2.topActivityInfo;
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        PipBoundsAlgorithm pipBoundsAlgorithm = this.mPipBoundsAlgorithm;
        pipBoundsState.setBoundsStateForEntry(componentName, activityInfo, pictureInPictureParams, pipBoundsAlgorithm);
        PictureInPictureParams pictureInPictureParams2 = this.mPictureInPictureParams;
        if (pictureInPictureParams2 != null) {
            List<RemoteAction> actions = pictureInPictureParams2.getActions();
            RemoteAction closeAction = this.mPictureInPictureParams.getCloseAction();
            PipParamsChangedForwarder pipParamsChangedForwarder = this.mPipParamsChangedForwarder;
            Iterator it = ((ArrayList) pipParamsChangedForwarder.mPipParamsChangedListeners).iterator();
            while (it.hasNext()) {
                ((PipParamsChangedForwarder.PipParamsChangedCallback) it.next()).onActionsChanged(actions, closeAction);
            }
            pipParamsChangedForwarder.notifyTitleChanged(this.mPictureInPictureParams.getTitle());
            pipParamsChangedForwarder.notifySubtitleChanged(this.mPictureInPictureParams.getSubtitle());
        }
        ActivityManager.RunningTaskInfo runningTaskInfo3 = this.mTaskInfo;
        PipUiEventLogger pipUiEventLogger = this.mPipUiEventLoggerLogger;
        pipUiEventLogger.setTaskInfo(runningTaskInfo3);
        int i2 = runningTaskInfo.displayId;
        if (i2 != this.mPipDisplayLayoutState.mDisplayId && (intConsumer = this.mOnDisplayIdChangeCallback) != null) {
            intConsumer.accept(i2);
        }
        PictureInPictureParams pictureInPictureParams3 = this.mPictureInPictureParams;
        if (pictureInPictureParams3 != null && pictureInPictureParams3.isLaunchIntoPip()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            pipUiEventEnum = PipUiEventLogger.PipUiEventEnum.PICTURE_IN_PICTURE_ENTER_CONTENT_PIP;
        } else if (pipTransitionState.mInSwipePipToHomeTransition) {
            pipUiEventEnum = PipUiEventLogger.PipUiEventEnum.PICTURE_IN_PICTURE_AUTO_ENTER;
        } else {
            pipUiEventEnum = PipUiEventLogger.PipUiEventEnum.PICTURE_IN_PICTURE_ENTER;
        }
        pipUiEventLogger.log(pipUiEventEnum);
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 324150079, 0, "onTaskAppeared: %s, state=%s", String.valueOf(this.mTaskInfo.topActivity), String.valueOf(pipTransitionState));
        }
        String str = "onTaskAppeared: " + getDebuggingString();
        Log.d("PipTaskOrganizer", str);
        LinkedList linkedList = this.mPipLogHistory;
        if (linkedList.size() == 20) {
            linkedList.removeFirst();
        }
        linkedList.add("\n\n(" + this.mSimpleDateFormat.format(Long.valueOf(System.currentTimeMillis())) + ") " + str);
        pipBoundsState.setStashed(0, false);
        this.mIsInSecureFolder = SemPersonaManager.isSecureFolderId(runningTaskInfo.userId);
        if (CoreRune.MW_PIP_SHELL_TRANSITION) {
            setSwipingPipTaskId(-1, "appeared");
        }
        if (pipTransitionState.mInSwipePipToHomeTransition) {
            if (!this.mWaitForFixedRotation) {
                onEndOfSwipePipToHomeTransition();
                return;
            }
            Log.d("PipTaskOrganizer", "Defer onTaskAppeared-SwipePipToHome until end of fixed rotation.");
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -969715907, 0, "%s: Defer onTaskAppeared-SwipePipToHome until end of fixed rotation.", "PipTaskOrganizer");
                return;
            }
            return;
        }
        boolean z2 = this instanceof TvPipTaskOrganizer;
        if (z2) {
            i = 1;
        } else {
            PipAnimationController pipAnimationController = this.mPipAnimationController;
            i = pipAnimationController.mOneShotAnimationType;
            if (i == 1) {
                pipAnimationController.mOneShotAnimationType = 0;
                if (SystemClock.uptimeMillis() - pipAnimationController.mLastOneShotAlphaAnimationTime > 800) {
                    if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                        ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 838524130, 0, "Alpha animation is expired. Use bounds animation.", null);
                    }
                    i = 0;
                }
            }
        }
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            this.mPipTransitionController.setEnterAnimationType(i);
            return;
        }
        if (this.mWaitForFixedRotation) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -989402035, 16, "onTaskAppearedWithFixedRotation: %s, state=%s animationType=%d", String.valueOf(this.mTaskInfo.topActivity), String.valueOf(pipTransitionState), Long.valueOf(i));
            }
            if (i == 1) {
                if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 765927729, 0, "%s: Defer entering PiP alpha animation, fixed rotation is ongoing", "PipTaskOrganizer");
                }
                SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
                transaction.setAlpha(this.mLeash, 0.0f);
                transaction.show(this.mLeash);
                transaction.apply();
                return;
            }
            Rect bounds = this.mTaskInfo.configuration.windowConfiguration.getBounds();
            animateResizePip(bounds, pipBoundsAlgorithm.getEntryDestinationBounds(), PipBoundsAlgorithm.getValidSourceHintRect(this.mPictureInPictureParams, bounds), 2, this.mEnterAnimationDuration, 0.0f);
            pipTransitionState.setTransitionState(3);
            return;
        }
        PipMenuController pipMenuController = this.mPipMenuController;
        if (z2) {
            pipMenuController.attach(this.mLeash);
        }
        Rect entryDestinationBounds = pipBoundsAlgorithm.getEntryDestinationBounds();
        Objects.requireNonNull(entryDestinationBounds, "Missing destination bounds");
        Rect bounds2 = this.mTaskInfo.configuration.windowConfiguration.getBounds();
        if (i == 0) {
            if (!z2) {
                pipMenuController.attach(this.mLeash);
            }
            scheduleAnimateResizePip(bounds2, entryDestinationBounds, 0.0f, PipBoundsAlgorithm.getValidSourceHintRect(runningTaskInfo.pictureInPictureParams, bounds2), 2, this.mEnterAnimationDuration, null);
            pipTransitionState.setTransitionState(3);
            return;
        }
        if (i == 1) {
            enterPipWithAlphaAnimation(entryDestinationBounds, this.mEnterAnimationDuration);
            return;
        }
        throw new RuntimeException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unrecognized animation type: ", i));
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        int i;
        int i2;
        Runnable runnable;
        Objects.requireNonNull(this.mToken, "onTaskInfoChanged requires valid existing mToken");
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        int i3 = pipTransitionState.mState;
        boolean z = true;
        if (i3 != 4 && i3 != 5) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1896444641, 4, "%s: Defer onTaskInfoChange in current state: %d", "PipTaskOrganizer", Long.valueOf(i3));
            }
            this.mDeferredTaskInfo = runningTaskInfo;
            if (CoreRune.MW_PIP_SHELL_TRANSITION && !runningTaskInfo.isVisible) {
                if (pipTransitionState.mTaskAppearedTime <= 0 || System.currentTimeMillis() - pipTransitionState.mTaskAppearedTime <= 60000) {
                    z = false;
                }
                if (z) {
                    try {
                        Log.e("PipTaskOrganizer", "onEnteringPipTimeout: " + getDebuggingString());
                        ActivityTaskManager.getService().removeRootTasksInWindowingModes(new int[]{2});
                        return;
                    } catch (RemoteException e) {
                        Log.e("PipTaskOrganizer", "onEnteringPipTimeout:" + e);
                        return;
                    }
                }
                return;
            }
            return;
        }
        ComponentName componentName = runningTaskInfo.topActivity;
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        pipBoundsState.setLastPipComponentName(componentName);
        Size minimalSize = this.mPipBoundsAlgorithm.getMinimalSize(runningTaskInfo.topActivityInfo);
        PipSizeSpecHandler pipSizeSpecHandler = pipBoundsState.mPipSizeSpecHandler;
        boolean equals = true ^ Objects.equals(minimalSize, pipSizeSpecHandler.getOverrideMinSize());
        pipSizeSpecHandler.mOverrideMinSize = minimalSize;
        if (equals && (runnable = pipBoundsState.mOnMinimalSizeChangeCallback) != null) {
            runnable.run();
        }
        PictureInPictureParams pictureInPictureParams = runningTaskInfo.pictureInPictureParams;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1750352198, 0, "onTaskInfoChanged: %s, state=%s oldParams=%s newParams=%s", String.valueOf(this.mTaskInfo.topActivity), String.valueOf(pipTransitionState), String.valueOf(this.mPictureInPictureParams), String.valueOf(pictureInPictureParams));
        }
        if (pictureInPictureParams != null && this.mPictureInPictureParams != null) {
            if (this.mDeferredTaskInfo == runningTaskInfo) {
                this.mDeferredTaskInfo = null;
                KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(3, new StringBuilder("onTaskInfoChanged: clear deferredTaskInfo, Callers="), "PipTaskOrganizer");
            }
            if (CoreRune.MT_NEW_DEX_PIP && (i = this.mTaskInfo.getConfiguration().dexMode) != (i2 = runningTaskInfo.getConfiguration().dexMode)) {
                this.mTaskInfo.getConfiguration().dexMode = i2;
                StringBuilder sb = new StringBuilder("onTaskInfoChanged: tid=");
                AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(sb, runningTaskInfo.taskId, ", dexMode(", i, "->");
                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(sb, i2, ")", "PipTaskOrganizer");
            }
            if (!pictureInPictureParams.equals(this.mPictureInPictureParams)) {
                Log.d("PipTaskOrganizer", "onTaskInfoChanged: tid=" + runningTaskInfo.taskId + ", oldParams=" + this.mPictureInPictureParams + ", newParams=" + pictureInPictureParams);
            }
            applyNewPictureInPictureParams(pictureInPictureParams);
            this.mPictureInPictureParams = pictureInPictureParams;
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        PipTaskOrganizer$$ExternalSyntheticLambda3 pipTaskOrganizer$$ExternalSyntheticLambda3;
        SurfaceControl surfaceControl;
        Consumer consumer;
        boolean z = ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled;
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        if (z) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1507062747, 0, "onTaskVanished: %s, state=%s", String.valueOf(this.mTaskInfo.topActivity), String.valueOf(pipTransitionState));
        }
        if (CoreRune.MW_NATURAL_SWITCHING_PIP && (consumer = this.mTaskVanishedCallback) != null) {
            consumer.accept(runningTaskInfo);
        }
        int i = pipTransitionState.mState;
        if (i == 0) {
            return;
        }
        boolean z2 = Transitions.ENABLE_SHELL_TRANSITIONS;
        if (z2 && i == 5) {
            return;
        }
        WindowContainerToken windowContainerToken = runningTaskInfo.token;
        Objects.requireNonNull(windowContainerToken, "Requires valid WindowContainerToken");
        if (windowContainerToken.asBinder() != this.mToken.asBinder()) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.wtf(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1322145249, 0, "%s: Unrecognized token: %s", "PipTaskOrganizer", String.valueOf(windowContainerToken));
                return;
            }
            return;
        }
        PipTaskOrganizer$$ExternalSyntheticLambda3 pipTaskOrganizer$$ExternalSyntheticLambda32 = null;
        if (CoreRune.MW_PIP_SHELL_TRANSITION && (surfaceControl = this.mLeash) != null && surfaceControl.isValid() && runningTaskInfo.numActivities == 0 && pipTransitionState.mState == 3 && this.mTaskOrganizer.getRunningTaskInfo(runningTaskInfo.taskId) == null) {
            pipTaskOrganizer$$ExternalSyntheticLambda3 = new PipTaskOrganizer$$ExternalSyntheticLambda3(this, this.mLeash, runningTaskInfo);
        } else {
            pipTaskOrganizer$$ExternalSyntheticLambda3 = null;
        }
        cancelCurrentAnimator();
        onExitPipFinished(runningTaskInfo, true);
        if (z2) {
            if (CoreRune.MW_PIP_SHELL_TRANSITION) {
                pipTaskOrganizer$$ExternalSyntheticLambda32 = pipTaskOrganizer$$ExternalSyntheticLambda3;
            }
            this.mPipTransitionController.forceFinishTransition(pipTaskOrganizer$$ExternalSyntheticLambda32);
        }
    }

    public final void prepareFinishResizeTransaction(Rect rect, int i, SurfaceControl.Transaction transaction, WindowContainerTransaction windowContainerTransaction) {
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl != null && surfaceControl.isValid()) {
            if (PipAnimationController.isInPipDirection(i)) {
                windowContainerTransaction.setActivityWindowingMode(this.mToken, 0);
            } else if (PipAnimationController.isOutPipDirection(i)) {
                windowContainerTransaction.setWindowingMode(this.mToken, getOutPipWindowingMode());
                windowContainerTransaction.setActivityWindowingMode(this.mToken, 0);
                rect = null;
            }
            this.mSurfaceTransactionHelper.round(this.mLeash, isInPip(), transaction);
            windowContainerTransaction.setBounds(this.mToken, rect);
            if (i != 4) {
                windowContainerTransaction.setBoundsChangeTransaction(this.mToken, transaction);
                return;
            }
            return;
        }
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 74753421, 0, "%s: Invalid leash on prepareFinishResizeTransaction: %s", "PipTaskOrganizer", String.valueOf(this.mLeash));
        }
    }

    public final void removeContentOverlay(SurfaceControl surfaceControl, Runnable runnable) {
        StringBuilder sb = new StringBuilder("removeContentOverlay mState=");
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        sb.append(pipTransitionState.mState);
        sb.append(" caller=");
        sb.append(Debug.getCallers(5));
        Log.d("PipTaskOrganizer", sb.toString());
        if (pipTransitionState.mState == 0) {
            return;
        }
        if (surfaceControl != null && surfaceControl.isValid()) {
            SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            transaction.remove(surfaceControl);
            transaction.apply();
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        Log.d("PipTaskOrganizer", "trying to remove invalid content overlay");
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1399822979, 0, "%s: trying to remove invalid content overlay (%s)", "PipTaskOrganizer", String.valueOf(surfaceControl));
        }
    }

    public final void removePip() {
        SurfaceControl surfaceControl;
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        if (pipTransitionState.isInPip() && this.mToken != null && (surfaceControl = this.mLeash) != null) {
            PipAnimationController.PipTransitionAnimator transitionDirection = this.mPipAnimationController.getAnimator(this.mTaskInfo, surfaceControl, this.mPipBoundsState.getBounds(), 1.0f, 0.0f).setTransitionDirection(5);
            transitionDirection.mPipTransactionHandler = this.mPipTransactionHandler;
            PipAnimationController.PipTransitionAnimator pipAnimationCallback = transitionDirection.setPipAnimationCallback(this.mPipAnimationCallback);
            pipAnimationCallback.setDuration(this.mExitAnimationDuration);
            pipAnimationCallback.setInterpolator(Interpolators.ALPHA_OUT);
            pipAnimationCallback.start();
            pipTransitionState.setTransitionState(5);
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1372777276, 0, "removePip: %s, state=%s", String.valueOf(this.mTaskInfo.topActivity), String.valueOf(pipTransitionState));
                return;
            }
            return;
        }
        Log.wtf("PipTaskOrganizer", "Not allowed to removePip in current state mState=" + pipTransitionState.mState + " mToken=" + this.mToken);
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.wtf(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 601418867, 4, "%s: Not allowed to removePip in current state mState=%d mToken=%s mLeash=%s", "PipTaskOrganizer", Long.valueOf(pipTransitionState.mState), String.valueOf(this.mToken), String.valueOf(this.mLeash));
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void reparentChildSurfaceToTask(int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.reparent(surfaceControl, findTaskSurface(i));
    }

    public final void scheduleAnimateResizePip(Rect rect, int i, int i2) {
        if (this.mWaitForFixedRotation) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -260134071, 0, "%s: skip scheduleAnimateResizePip, entering pip deferred", "PipTaskOrganizer");
                return;
            }
            return;
        }
        scheduleAnimateResizePip(this.mPipBoundsState.getBounds(), rect, 0.0f, null, i2, i, null);
    }

    public final void scheduleFinishResizePip(Rect rect, Consumer consumer) {
        boolean z;
        SurfaceControl surfaceControl = this.mLeash;
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        if (surfaceControl == null) {
            Log.w("PipTaskOrganizer", "scheduleFinishResizePip: failed, leash is null, state=" + pipTransitionState.mState);
            return;
        }
        int i = pipTransitionState.mState;
        if (i >= 3 && i != 5) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            if (surfaceControl != null && surfaceControl.isValid()) {
                finishResize(0, -1, rect, createFinishResizeSurfaceTransaction(rect));
                if (consumer != null) {
                    consumer.accept(rect);
                    return;
                }
                return;
            }
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1774992763, 4, "%s: scheduleFinishResizePip with null leash! mState=%d", "PipTaskOrganizer", Long.valueOf(pipTransitionState.mState));
            }
        }
    }

    public final void scheduleUserResizePip(Rect rect, Rect rect2, float f, PipMotionHelper$$ExternalSyntheticLambda0 pipMotionHelper$$ExternalSyntheticLambda0) {
        if (this.mToken != null && this.mLeash != null) {
            if (!rect.isEmpty() && !rect2.isEmpty()) {
                SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
                PipSurfaceTransactionHelper pipSurfaceTransactionHelper = this.mSurfaceTransactionHelper;
                pipSurfaceTransactionHelper.scale(f, rect, rect2, transaction, this.mLeash);
                pipSurfaceTransactionHelper.round(rect, rect2, transaction, this.mLeash);
                if (shouldSyncPipTransactionWithMenu()) {
                    this.mPipMenuController.movePipMenu(this.mLeash, transaction, rect2, -1.0f);
                } else {
                    transaction.apply();
                }
                if (pipMotionHelper$$ExternalSyntheticLambda0 != null) {
                    pipMotionHelper$$ExternalSyntheticLambda0.accept(rect2);
                    return;
                }
                return;
            }
            Log.w("PipTaskOrganizer", "Attempted to user resize PIP to or from empty bounds, aborting.");
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -411281677, 0, "%s: Attempted to user resize PIP to or from empty bounds, aborting.", "PipTaskOrganizer");
                return;
            }
            return;
        }
        Log.w("PipTaskOrganizer", "Abort animation, invalid leash");
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1332460476, 0, "%s: Abort animation, invalid leash", "PipTaskOrganizer");
        }
    }

    public void sendOnPipTransitionFinished(int i) {
        if (i == 2) {
            this.mPipTransitionState.setTransitionState(4);
        }
        this.mPipTransitionController.sendOnPipTransitionFinished(i);
    }

    public final void setPipVisibility(boolean z) {
        float f;
        ComponentName componentName;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
            if (runningTaskInfo != null) {
                componentName = runningTaskInfo.topActivity;
            } else {
                componentName = null;
            }
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 217559295, 0, "setPipVisibility: %s, state=%s visible=%s", String.valueOf(componentName), String.valueOf(this.mPipTransitionState), String.valueOf(z));
        }
        if (!isInPip()) {
            return;
        }
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl != null && surfaceControl.isValid()) {
            SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            SurfaceControl surfaceControl2 = this.mLeash;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            this.mSurfaceTransactionHelper.getClass();
            transaction.setAlpha(surfaceControl2, f);
            transaction.apply();
            return;
        }
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1174051562, 0, "%s: Invalid leash on setPipVisibility: %s", "PipTaskOrganizer", String.valueOf(this.mLeash));
        }
    }

    public final void setStashDimOverlayAlpha(float f) {
        if (this.mStashDimOverlay == null && this.mLeash != null) {
            clearStashDimOverlay();
            Context context = this.mContext;
            this.mStashDimOverlay = new PipContentOverlay.PipColorOverlay(context);
            Color valueOf = Color.valueOf(context.getColor(R.color.pip_stash_dim_overlay));
            PipContentOverlay.PipColorOverlay pipColorOverlay = this.mStashDimOverlay;
            SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            SurfaceControl surfaceControl = this.mLeash;
            pipColorOverlay.getClass();
            Log.d("PipTaskOrganizer", "attachDimOverlay");
            transaction.show(pipColorOverlay.mLeash);
            transaction.setLayer(pipColorOverlay.mLeash, Integer.MAX_VALUE);
            transaction.setColor(pipColorOverlay.mLeash, valueOf.getComponents());
            transaction.setAlpha(pipColorOverlay.mLeash, valueOf.alpha());
            transaction.reparent(pipColorOverlay.mLeash, surfaceControl);
            transaction.apply();
        }
        if (this.mLeash != null) {
            PipContentOverlay.PipColorOverlay pipColorOverlay2 = this.mStashDimOverlay;
            SurfaceControl.Transaction transaction2 = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            transaction2.setAlpha(pipColorOverlay2.mLeash, f);
            transaction2.apply();
        }
    }

    public void setSurfaceControlTransactionFactory(PipSurfaceTransactionHelper.SurfaceControlTransactionFactory surfaceControlTransactionFactory) {
        this.mSurfaceControlTransactionFactory = surfaceControlTransactionFactory;
    }

    public final void setSwipingPipTaskId(int i, String str) {
        if (this.mSwipingPipTaskId != i) {
            this.mSwipingPipTaskId = i;
            Log.d("PipTaskOrganizer", "setSwipingPipTaskId: " + i + ", reason=" + str);
            HandlerExecutor handlerExecutor = (HandlerExecutor) this.mMainExecutor;
            PipTaskOrganizer$$ExternalSyntheticLambda0 pipTaskOrganizer$$ExternalSyntheticLambda0 = this.mSwipingPipTimeout;
            handlerExecutor.removeCallbacks(pipTaskOrganizer$$ExternalSyntheticLambda0);
            if (i != -1) {
                handlerExecutor.executeDelayed(5000L, pipTaskOrganizer$$ExternalSyntheticLambda0);
            }
        }
    }

    public final boolean shouldShowSplitMenu() {
        Size sizeForAspectRatio;
        boolean z;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ActivityManager.RunningTaskInfo runningTaskInfo2;
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.pip_min_width);
        float f = this.mPipBoundsState.mAspectRatio;
        PipBoundsAlgorithm pipBoundsAlgorithm = this.mPipBoundsAlgorithm;
        Size defaultSize = pipBoundsAlgorithm.mPipSizeSpecHandler.mSizeSpecSourceImpl.getDefaultSize(f);
        PipSizeSpecHandler pipSizeSpecHandler = pipBoundsAlgorithm.mPipSizeSpecHandler;
        if (defaultSize.equals(pipSizeSpecHandler.mOverrideMinSize)) {
            sizeForAspectRatio = pipSizeSpecHandler.adjustOverrideMinSizeToAspectRatio(f);
        } else {
            sizeForAspectRatio = pipSizeSpecHandler.mSizeSpecSourceImpl.getSizeForAspectRatio(defaultSize, f);
        }
        if (sizeForAspectRatio.getWidth() >= dimensionPixelSize) {
            z = true;
        } else {
            Log.d("PipTaskOrganizer", "PIP split menu does not show. estimatedSize w=" + sizeForAspectRatio.getWidth() + " h=" + sizeForAspectRatio.getHeight());
            z = false;
        }
        if (!z || (runningTaskInfo = this.mTaskInfo) == null || runningTaskInfo.launchIntoPipHostTaskId != -1) {
            return false;
        }
        int i = runningTaskInfo.lastParentTaskIdBeforePip;
        if (i != -1 && (runningTaskInfo2 = this.mTaskOrganizer.getRunningTaskInfo(i)) != null && (runningTaskInfo2.isVisible || (runningTaskInfo2.isFreeform() && !runningTaskInfo2.isVisible))) {
            return false;
        }
        return !this.mTaskInfo.supportsPipOnly;
    }

    public boolean shouldSyncPipTransactionWithMenu() {
        return this.mPipMenuController.isMenuVisible();
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final boolean supportCompatUI() {
        return false;
    }

    public final String toString() {
        return "PipTaskOrganizer:" + ShellTaskOrganizer.taskListenerTypeToString(-4);
    }

    public final void updateAnimatorBounds(Rect rect) {
        PipAnimationController.PipTransitionAnimator pipTransitionAnimator = this.mPipAnimationController.mCurrentAnimator;
        if (pipTransitionAnimator != null && pipTransitionAnimator.isRunning()) {
            if (pipTransitionAnimator.getAnimationType() == 0) {
                if (this.mWaitForFixedRotation) {
                    Rect displayBounds = this.mPipBoundsState.getDisplayBounds();
                    Rect rect2 = new Rect(rect);
                    RotationUtils.rotateBounds(rect2, displayBounds, this.mNextRotation, this.mCurrentRotation);
                    pipTransitionAnimator.updateEndValue(rect2);
                } else {
                    pipTransitionAnimator.updateEndValue(rect);
                }
            }
            pipTransitionAnimator.setDestinationBounds(rect);
        }
    }

    public final void onExitPipFinished(TaskInfo taskInfo, boolean z) {
        SurfaceControl surfaceControl;
        IntConsumer intConsumer;
        IntConsumer intConsumer2;
        SurfaceControl surfaceControl2;
        SurfaceControl surfaceControl3 = this.mLeash;
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        if (surfaceControl3 == null) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 508288000, 0, "Warning, onExitPipFinished() called multiple times in the same session", null);
            }
            if (pipTransitionState.mState != 3) {
                return;
            } else {
                Log.d("PipTaskOrganizer", "onExitPipFinished: Re-set the PIP state");
            }
        }
        this.mWaitForFixedRotation = false;
        this.mDeferredAnimEndTransaction = null;
        SurfaceControl surfaceControl4 = this.mSwipePipToHomeOverlay;
        if (surfaceControl4 != null) {
            removeContentOverlay(surfaceControl4, null);
            this.mSwipePipToHomeOverlay = null;
        }
        if (pipTransitionState.mState != 0 && (surfaceControl2 = this.mLeash) != null && surfaceControl2.isValid()) {
            SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            transaction.setShadowRadius(this.mLeash, 0.0f);
            transaction.apply();
        }
        pipTransitionState.mInSwipePipToHomeTransition = false;
        this.mPictureInPictureParams = null;
        pipTransitionState.setTransitionState(0);
        Rect rect = new Rect();
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        pipBoundsState.setBounds(rect);
        this.mPipUiEventLoggerLogger.setTaskInfo(null);
        this.mPipMenuController.detach();
        Log.d("PipTaskOrganizer", "onExitPipFinished:" + getDebuggingString());
        if (this.mStashDimOverlay != null) {
            clearStashDimOverlay();
            pipBoundsState.setStashed(0, z);
        }
        this.mIsInSecureFolder = false;
        if (this.mLeash == null) {
            return;
        }
        if ((!taskInfo.isVisible || taskInfo.configuration.windowConfiguration.getWindowingMode() != 2 || taskInfo.displayId != 0) && (surfaceControl = this.mLeash) != null && surfaceControl.isValid() && !taskInfo.configuration.isDesktopModeEnabled()) {
            Log.d("PipTaskOrganizer", "onExitPipFinished: reset surface state with WCT");
            SurfaceControl.Transaction transaction2 = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) this.mSurfaceControlTransactionFactory).getTransaction();
            transaction2.setCornerRadius(this.mLeash, 0.0f);
            transaction2.setCrop(this.mLeash, null);
            transaction2.setMatrix(this.mLeash, Matrix.IDENTITY_MATRIX, this.mTmpFloat9);
            transaction2.mDebugName = "ResetPip";
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setBounds(this.mToken, (Rect) null);
            windowContainerTransaction.setBoundsChangeTransaction(this.mToken, transaction2);
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        }
        this.mLeash = null;
        if (taskInfo.displayId != 0 && (intConsumer2 = this.mOnDisplayIdChangeCallback) != null) {
            intConsumer2.accept(0);
        } else {
            if (this.mPipDisplayLayoutState.mDisplayId == 0 || (intConsumer = this.mOnDisplayIdChangeCallback) == null) {
                return;
            }
            intConsumer.accept(0);
        }
    }

    public final void scheduleAnimateResizePip(Rect rect, Rect rect2, float f, Rect rect3, int i, int i2, PipResizeGestureHandler$$ExternalSyntheticLambda0 pipResizeGestureHandler$$ExternalSyntheticLambda0) {
        if (this.mPipTransitionState.isInPip()) {
            animateResizePip(rect, rect2, rect3, i, i2, f);
            if (pipResizeGestureHandler$$ExternalSyntheticLambda0 != null) {
                pipResizeGestureHandler$$ExternalSyntheticLambda0.accept(rect2);
            }
        }
    }
}
