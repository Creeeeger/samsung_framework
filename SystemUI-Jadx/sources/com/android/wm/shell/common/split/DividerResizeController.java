package com.android.wm.shell.common.split;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Debug;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.animation.AccelerateInterpolator;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.policy.DividerSnapAlgorithm;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.split.DividerResizeLayout;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DividerResizeController {
    public static boolean USE_GUIDE_VIEW_EFFECTS = false;
    public final Context mContext;
    public int mCurrentDividerPosition;
    public int mDefaultHandleMoveThreshold;
    public DividerResizeLayout mDividerResizeLayout;
    public int mDividerSize;
    public DividerView mDividerView;
    public boolean mIsHorizontalDivision;
    public final LayoutInflater mLayoutInflater;
    public final ShellExecutor mMainExecutor;
    public SplitLayout mSplitLayout;
    public StageCoordinator mStageCoordinator;
    public boolean mUseGuideViewByMultiStar = false;
    public final ResizeAlgorithm mResizeAlgorithm = new ResizeAlgorithm();
    public boolean mResizingRequested = false;
    public boolean mIsResizing = false;
    public boolean mIsFinishing = false;
    public int mSyncAppsId = -1;
    public boolean mWaitingForSyncAppsCallback = false;
    public final DividerResizeController$$ExternalSyntheticLambda0 mSyncAppsCallbackTimeoutRunnable = new DividerResizeController$$ExternalSyntheticLambda0(this, 0);
    public int mHalfSplitStageType = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ResizeAlgorithm {
        public int mDismissEndThreshold;
        public int mDismissStartThreshold;
        public int mDisplaySize;
        public DividerSnapAlgorithm mDividerSnapAlgorithm;
        public int mFirstFadeOutPosition;
        public int mFirstSplitTargetPosition;
        public int mLastFadeOutPosition;
        public int mLastSplitTargetPosition;
        public int mMiddleTargetPosition;
        public int mSplitDismissSide = 0;
        public int mTouchPosition;

        /* renamed from: -$$Nest$mupdate, reason: not valid java name */
        public static void m2452$$Nest$mupdate(ResizeAlgorithm resizeAlgorithm, int i) {
            boolean z;
            if (resizeAlgorithm.mTouchPosition != i) {
                resizeAlgorithm.mTouchPosition = i;
                int i2 = 1;
                if (i < resizeAlgorithm.mDismissStartThreshold) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    if (i <= resizeAlgorithm.mDismissEndThreshold) {
                        i2 = 0;
                    }
                    if (i2 != 0) {
                        i2 = 2;
                    } else {
                        i2 = 0;
                    }
                }
                if (resizeAlgorithm.mSplitDismissSide != i2) {
                    resizeAlgorithm.mSplitDismissSide = i2;
                }
            }
        }

        public ResizeAlgorithm() {
        }

        public final int getSnapTargetPosition() {
            boolean z;
            boolean z2;
            int i = this.mTouchPosition;
            int i2 = this.mFirstSplitTargetPosition;
            boolean z3 = true;
            if (i >= i2 && i <= this.mLastSplitTargetPosition) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return i;
            }
            if (i < this.mDismissStartThreshold) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                return Math.min(-DividerResizeController.this.mDividerSize, this.mDividerSnapAlgorithm.getDismissStartTarget().position);
            }
            if (i <= this.mDismissEndThreshold) {
                z3 = false;
            }
            if (z3) {
                return Math.max(this.mDisplaySize, this.mDividerSnapAlgorithm.getDismissEndTarget().position);
            }
            if (i < i2) {
                return i2;
            }
            int i3 = this.mLastSplitTargetPosition;
            if (i > i3) {
                return i3;
            }
            return this.mDividerSnapAlgorithm.calculateSnapTarget(i, 0.0f, false).position;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ResizeAlgorithm{ds=");
            sb.append(this.mDismissStartThreshold);
            sb.append(", ff=");
            sb.append(this.mFirstFadeOutPosition);
            sb.append(", f=");
            sb.append(this.mFirstSplitTargetPosition);
            sb.append(", m=");
            sb.append(this.mMiddleTargetPosition);
            sb.append(", l=");
            sb.append(this.mLastSplitTargetPosition);
            sb.append(", lf=");
            sb.append(this.mLastFadeOutPosition);
            sb.append(", de=");
            sb.append(this.mDismissEndThreshold);
            sb.append(", touch=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.mTouchPosition, "}");
        }
    }

    public DividerResizeController(Context context, ShellExecutor shellExecutor) {
        this.mContext = context;
        this.mMainExecutor = shellExecutor;
        this.mLayoutInflater = LayoutInflater.from(context);
    }

    public final void clear() {
        this.mResizingRequested = false;
        this.mWaitingForSyncAppsCallback = false;
        this.mIsResizing = false;
        this.mIsFinishing = false;
        this.mSplitLayout = null;
        this.mDividerView = null;
        this.mIsHorizontalDivision = false;
        DividerResizeLayout dividerResizeLayout = this.mDividerResizeLayout;
        dividerResizeLayout.getClass();
        Log.d("DividerResizeLayout", "remove");
        if (dividerResizeLayout.mHandler.hasCallbacks(dividerResizeLayout.mHeavyWorkRunnable)) {
            dividerResizeLayout.mHandler.removeCallbacks(dividerResizeLayout.mHeavyWorkRunnable);
        }
        dividerResizeLayout.mFinishRunnable = null;
        dividerResizeLayout.mHandler = null;
        dividerResizeLayout.mDividerView = null;
        dividerResizeLayout.mAttachedToWindow = false;
        dividerResizeLayout.mFirstLayoutCalled = false;
        if (!dividerResizeLayout.mWindowAdded) {
            Log.w("DividerResizeLayout", "removeWindow: failed, window isn't added, Callers=" + Debug.getCallers(5));
        } else {
            dividerResizeLayout.mWindowAdded = false;
            dividerResizeLayout.mWindowManager.removeViewImmediate(dividerResizeLayout);
        }
        this.mDividerResizeLayout = null;
        ResizeAlgorithm resizeAlgorithm = this.mResizeAlgorithm;
        resizeAlgorithm.mSplitDismissSide = 0;
        resizeAlgorithm.mDividerSnapAlgorithm = null;
        if (CoreRune.MW_MULTI_SPLIT_NATURAL_RESIZING) {
            this.mHalfSplitStageType = -1;
        }
    }

    public final void finishResizing(int i) {
        boolean z;
        boolean z2;
        final DividerSnapAlgorithm.SnapTarget calculateSnapTarget;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        if (!this.mResizingRequested) {
            Log.w("DividerResizeController", "finishResizing: failed, NOT resizing state!");
            return;
        }
        if (this.mIsFinishing) {
            Log.w("DividerResizeController", "finishResizing: failed, already finishing state!");
            return;
        }
        boolean z9 = true;
        this.mIsFinishing = true;
        if (!this.mIsResizing) {
            i = this.mCurrentDividerPosition;
        }
        ResizeAlgorithm resizeAlgorithm = this.mResizeAlgorithm;
        ResizeAlgorithm.m2452$$Nest$mupdate(resizeAlgorithm, i);
        int i2 = resizeAlgorithm.mTouchPosition;
        if (i2 < resizeAlgorithm.mDismissStartThreshold) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            calculateSnapTarget = resizeAlgorithm.mDividerSnapAlgorithm.getDismissStartTarget();
        } else {
            if (i2 > resizeAlgorithm.mDismissEndThreshold) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                calculateSnapTarget = resizeAlgorithm.mDividerSnapAlgorithm.getDismissEndTarget();
            } else if (i2 < resizeAlgorithm.mFirstSplitTargetPosition) {
                calculateSnapTarget = resizeAlgorithm.mDividerSnapAlgorithm.getFirstSplitTarget();
            } else if (i2 > resizeAlgorithm.mLastSplitTargetPosition) {
                calculateSnapTarget = resizeAlgorithm.mDividerSnapAlgorithm.getLastSplitTarget();
            } else {
                calculateSnapTarget = resizeAlgorithm.mDividerSnapAlgorithm.calculateSnapTarget(i2, 0.0f, false);
            }
        }
        int i3 = resizeAlgorithm.mSplitDismissSide;
        if (i3 != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        int i4 = calculateSnapTarget.position;
        if (i4 != this.mCurrentDividerPosition) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (this.mIsResizing) {
            DividerResizeLayout dividerResizeLayout = this.mDividerResizeLayout;
            dividerResizeLayout.setAlpha(1.0f);
            DividerResizeLayout$$ExternalSyntheticLambda2 dividerResizeLayout$$ExternalSyntheticLambda2 = new DividerResizeLayout$$ExternalSyntheticLambda2(dividerResizeLayout, i4, i3);
            if (dividerResizeLayout.mFirstLayoutCalled && dividerResizeLayout.mAttachedToWindow) {
                z8 = true;
            } else {
                z8 = false;
            }
            if (z8) {
                dividerResizeLayout$$ExternalSyntheticLambda2.run();
            } else {
                dividerResizeLayout.mActionDropRunnable = dividerResizeLayout$$ExternalSyntheticLambda2;
                Log.d("DividerResizeLayout", "onActionDrop: defer action drop, isn't ready to show yet");
            }
            if (z4) {
                if (this.mWaitingForSyncAppsCallback) {
                    Log.w("DividerResizeController", "startWaitingForSyncAppsCallback: failed, already waiting!");
                } else {
                    this.mSyncAppsId++;
                    this.mWaitingForSyncAppsCallback = true;
                    HandlerExecutor handlerExecutor = (HandlerExecutor) this.mMainExecutor;
                    DividerResizeController$$ExternalSyntheticLambda0 dividerResizeController$$ExternalSyntheticLambda0 = this.mSyncAppsCallbackTimeoutRunnable;
                    handlerExecutor.removeCallbacks(dividerResizeController$$ExternalSyntheticLambda0);
                    handlerExecutor.executeDelayed(3000L, dividerResizeController$$ExternalSyntheticLambda0);
                    RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("startWaitingForSyncAppsCallback: reason=resize_split, SyncId="), this.mSyncAppsId, "DividerResizeController");
                }
            } else {
                z3 = true;
            }
            z5 = this.mDividerResizeLayout.shouldDeferRemove(z3);
        } else {
            z5 = false;
        }
        StringBuilder sb = new StringBuilder("finishResizing: snapTargetPosition=");
        sb.append(calculateSnapTarget.position);
        sb.append(", positionChanged=");
        sb.append(z4);
        sb.append(", isInDismissZone=");
        int i5 = resizeAlgorithm.mTouchPosition;
        if (i5 < resizeAlgorithm.mDismissStartThreshold) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (!z6) {
            if (i5 > resizeAlgorithm.mDismissEndThreshold) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (!z7) {
                z9 = false;
            }
        }
        sb.append(z9);
        sb.append(", deferStopDragging=");
        sb.append(z5);
        Log.d("DividerResizeController", sb.toString());
        Runnable runnable = new Runnable() { // from class: com.android.wm.shell.common.split.DividerResizeController$$ExternalSyntheticLambda1
            /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x0097  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x007d  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void run() {
                /*
                    r9 = this;
                    com.android.wm.shell.common.split.DividerResizeController r0 = com.android.wm.shell.common.split.DividerResizeController.this
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r9 = r2
                    r0.getClass()
                    boolean r1 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_NATURAL_RESIZING
                    r2 = 0
                    r3 = 1
                    if (r1 == 0) goto L1c
                    com.android.wm.shell.common.split.DividerView r1 = r0.mDividerView
                    if (r1 == 0) goto L17
                    boolean r1 = r1.mIsCellDivider
                    if (r1 == 0) goto L17
                    r1 = r3
                    goto L18
                L17:
                    r1 = r2
                L18:
                    if (r1 == 0) goto L1c
                    r1 = r3
                    goto L1d
                L1c:
                    r1 = r2
                L1d:
                    int r4 = r9.flag
                    r5 = 4
                    if (r4 == r3) goto L7d
                    r6 = 2
                    if (r4 == r6) goto L75
                    android.window.WindowContainerTransaction r4 = new android.window.WindowContainerTransaction
                    r4.<init>()
                    boolean r5 = com.android.wm.shell.common.split.DividerResizeController.USE_GUIDE_VIEW_EFFECTS
                    if (r5 == 0) goto L5f
                    com.android.wm.shell.splitscreen.StageCoordinator r5 = r0.mStageCoordinator
                    com.android.wm.shell.splitscreen.MainStage r6 = r5.mMainStage
                    boolean r7 = r6.mIsActive
                    java.lang.String r8 = "GuideViewEffects"
                    if (r7 == 0) goto L4c
                    android.app.ActivityManager$RunningTaskInfo r6 = r6.mRootTaskInfo
                    if (r6 == 0) goto L41
                    android.window.WindowContainerToken r6 = r6.token
                    r4.setChangeTransitMode(r6, r3, r8)
                L41:
                    com.android.wm.shell.splitscreen.SideStage r6 = r5.mSideStage
                    android.app.ActivityManager$RunningTaskInfo r6 = r6.mRootTaskInfo
                    if (r6 == 0) goto L4c
                    android.window.WindowContainerToken r6 = r6.token
                    r4.setChangeTransitMode(r6, r3, r8)
                L4c:
                    boolean r6 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER
                    if (r6 == 0) goto L5f
                    com.android.wm.shell.splitscreen.CellStage r5 = r5.mCellStage
                    boolean r6 = r5.mIsActive
                    if (r6 == 0) goto L5f
                    android.app.ActivityManager$RunningTaskInfo r5 = r5.mRootTaskInfo
                    if (r5 == 0) goto L5f
                    android.window.WindowContainerToken r5 = r5.token
                    r4.setChangeTransitMode(r5, r3, r8)
                L5f:
                    boolean r5 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_NATURAL_RESIZING
                    if (r5 == 0) goto L6d
                    if (r1 == 0) goto L6d
                    com.android.wm.shell.common.split.SplitLayout r1 = r0.mSplitLayout
                    int r9 = r9.position
                    r1.setCellDividePosition(r9, r4, r3)
                    goto L84
                L6d:
                    com.android.wm.shell.common.split.SplitLayout r1 = r0.mSplitLayout
                    int r9 = r9.position
                    r1.setDividePosition(r9, r4, r3)
                    goto L84
                L75:
                    com.android.wm.shell.splitscreen.StageCoordinator r9 = r0.mStageCoordinator
                    boolean r1 = com.android.wm.shell.common.split.DividerResizeController.USE_GUIDE_VIEW_EFFECTS
                    r9.onSnappedToDismiss(r5, r3, r1)
                    goto L84
                L7d:
                    com.android.wm.shell.splitscreen.StageCoordinator r9 = r0.mStageCoordinator
                    boolean r1 = com.android.wm.shell.common.split.DividerResizeController.USE_GUIDE_VIEW_EFFECTS
                    r9.onSnappedToDismiss(r5, r2, r1)
                L84:
                    com.android.wm.shell.splitscreen.StageCoordinator r9 = r0.mStageCoordinator
                    com.android.wm.shell.common.split.SplitLayout r1 = r0.mSplitLayout
                    r9.onLayoutSizeChanging(r2, r2, r1)
                    boolean r9 = r0.mWaitingForSyncAppsCallback
                    if (r9 == 0) goto L97
                    java.lang.String r9 = "DividerResizeController"
                    java.lang.String r0 = "onStopDraggingFinished: WaitingForSyncAppsCallback"
                    android.util.Log.d(r9, r0)
                    goto L9a
                L97:
                    r0.clear()
                L9a:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerResizeController$$ExternalSyntheticLambda1.run():void");
            }
        };
        if (z5) {
            DividerResizeLayout dividerResizeLayout2 = this.mDividerResizeLayout;
            dividerResizeLayout2.mFinishRunnable = runnable;
            dividerResizeLayout2.mHandler.postDelayed(dividerResizeLayout2.mFinishTimeoutRunnable, 1000L);
            return;
        }
        runnable.run();
    }

    public final void stopWaitingForSyncAppsCallback(String str) {
        if (!this.mWaitingForSyncAppsCallback) {
            Log.w("DividerResizeController", "stopWaitingForSyncAppsCallback: failed, there is no waiting!");
            return;
        }
        int i = 0;
        this.mWaitingForSyncAppsCallback = false;
        ((HandlerExecutor) this.mMainExecutor).removeCallbacks(this.mSyncAppsCallbackTimeoutRunnable);
        StringBuilder sb = new StringBuilder("stopWaitingForSyncAppsCallback: reason=");
        sb.append(str);
        sb.append(", SyncId=");
        RecyclerView$$ExternalSyntheticOutline0.m(sb, this.mSyncAppsId, "DividerResizeController");
        final DividerResizeLayout dividerResizeLayout = this.mDividerResizeLayout;
        int size = dividerResizeLayout.mResizeTargets.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            DividerResizeLayout.DividerResizeTarget dividerResizeTarget = (DividerResizeLayout.DividerResizeTarget) dividerResizeLayout.mResizeTargets.valueAt(size);
            if (dividerResizeTarget != null && dividerResizeTarget.mSplitDismissSide == 0) {
                dividerResizeTarget.mView.setVisibility(4);
                dividerResizeTarget.startOutlineInsetsAnimation(false);
            }
        }
        ValueAnimator valueAnimator = dividerResizeLayout.mWindowAlphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.end();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        dividerResizeLayout.mWindowAlphaAnimator = ofFloat;
        ofFloat.addUpdateListener(new DividerResizeLayout$$ExternalSyntheticLambda3(dividerResizeLayout, i));
        dividerResizeLayout.mWindowAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.DividerResizeLayout.1
            public AnonymousClass1() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DividerResizeLayout dividerResizeLayout2 = DividerResizeLayout.this;
                dividerResizeLayout2.mWindowAlphaAnimator = null;
                DividerResizeLayout.m2453$$Nest$monAnimationFinished(dividerResizeLayout2, "alphaAnimator");
            }
        });
        dividerResizeLayout.mWindowAlphaAnimator.setInterpolator(new AccelerateInterpolator());
        dividerResizeLayout.mWindowAlphaAnimator.setDuration(DividerResizeLayout.WINDOW_ALPHA_ANIM_DURATION);
        dividerResizeLayout.mWindowAlphaAnimator.start();
        DividerResizeController$$ExternalSyntheticLambda0 dividerResizeController$$ExternalSyntheticLambda0 = new DividerResizeController$$ExternalSyntheticLambda0(this, 1);
        if (this.mDividerResizeLayout.shouldDeferRemove(true)) {
            DividerResizeLayout dividerResizeLayout2 = this.mDividerResizeLayout;
            dividerResizeLayout2.mFinishRunnable = dividerResizeController$$ExternalSyntheticLambda0;
            dividerResizeLayout2.mHandler.postDelayed(dividerResizeLayout2.mFinishTimeoutRunnable, 1000L);
            return;
        }
        dividerResizeController$$ExternalSyntheticLambda0.run();
    }
}
