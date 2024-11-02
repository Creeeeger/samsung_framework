package com.android.wm.shell.naturalswitching;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.StatusBarManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemProperties;
import android.util.Log;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DismissButtonManager;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NaturalSwitchingLayout {
    public static final boolean DEBUG_DEV = SystemProperties.getBoolean("persist.debug.ns.dev", false);
    public static final boolean DEBUG_PIP = SystemProperties.getBoolean("persist.debug.ns.pip", false);
    public DismissButtonManager mCancelButtonManager;
    public final Context mContext;
    public DragTargetView mDragTargetView;
    public boolean mHasDropped;
    public boolean mHideRequested;
    public boolean mIsMwHandlerType;
    public boolean mIsPipNaturalSwitching;
    public NonDragTargetView mNonDragTargetView;
    public int mNsWindowingMode;
    public boolean mPassedInitialSlop;
    public boolean mReadyToStart;
    public final ShellTaskOrganizer mShellTaskOrganizer;
    public final SplitScreenController mSplitScreenController;
    public final StatusBarManager mStatusBarManager;
    public final SyncTransactionQueue mSyncQueue;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public final TaskVisibility mTaskVisibility;
    public int mTouchSlop;
    public int mNaturalSwitchingMode = 0;
    public boolean mNaturalSwitchingStartReported = false;
    public final Handler mHandler = new Handler(Looper.myLooper());
    public final NaturalSwitchingLayout$$ExternalSyntheticLambda0 mHideRunnable = new NaturalSwitchingLayout$$ExternalSyntheticLambda0(this, 1);
    public final Binder mBinder = new Binder();
    public final Point mDownPoint = new Point();
    public final Point mMovePoint = new Point();
    public final Point mTouchGap = new Point();
    public final ArrayList mHideTasks = new ArrayList();
    public NaturalSwitchingChanger mLastChanger = null;
    public final NaturalSwitchingAlgorithm mNaturalSwitchingAlgorithm = new NaturalSwitchingAlgorithm();

    public NaturalSwitchingLayout(Context context, SplitScreenController splitScreenController, Transitions transitions, ShellTaskOrganizer shellTaskOrganizer, SyncTransactionQueue syncTransactionQueue) {
        this.mContext = context;
        this.mSplitScreenController = splitScreenController;
        this.mShellTaskOrganizer = shellTaskOrganizer;
        this.mSyncQueue = syncTransactionQueue;
        this.mStatusBarManager = (StatusBarManager) context.getSystemService("statusbar");
        this.mTaskVisibility = new TaskVisibility(context);
        transitions.mObservers.add(new Transitions.TransitionObserver() { // from class: com.android.wm.shell.naturalswitching.NaturalSwitchingLayout.1
            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionStarting() {
                NaturalSwitchingLayout naturalSwitchingLayout = NaturalSwitchingLayout.this;
                NaturalSwitchingChanger naturalSwitchingChanger = naturalSwitchingLayout.mLastChanger;
                if (naturalSwitchingChanger != null) {
                    NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0 naturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0 = naturalSwitchingChanger.mRunAfterTransitionStarted;
                    if (naturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0 != null) {
                        naturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0.run();
                        naturalSwitchingChanger.mRunAfterTransitionStarted = null;
                    }
                    naturalSwitchingLayout.mLastChanger = null;
                }
            }

            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionFinished(IBinder iBinder) {
            }

            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionMerged(IBinder iBinder, IBinder iBinder2) {
            }

            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionReady(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
            }
        });
    }

    public static int getNaturalSwitchingWindowingMode(int i, int i2) {
        int i3 = 1;
        if (i != 1) {
            i3 = 2;
            if (i != 2) {
                if (i == 5) {
                    return 5;
                }
                if (i != 6) {
                    return 0;
                }
                if ((i2 & 1) != 0) {
                    return 3;
                }
                if ((i2 & 2) != 0) {
                    return 4;
                }
                if ((i2 & 4) != 0) {
                    return 12;
                }
            }
        }
        return i3;
    }

    public static boolean isFloating(int i) {
        if ((CoreRune.MW_NATURAL_SWITCHING_PIP && i == 2) || i == 5) {
            return true;
        }
        return false;
    }

    public final void hide(boolean z) {
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(2, new StringBuilder("hide: callers="), "NaturalSwitchingLayout");
        Handler handler = this.mHandler;
        NaturalSwitchingLayout$$ExternalSyntheticLambda0 naturalSwitchingLayout$$ExternalSyntheticLambda0 = this.mHideRunnable;
        handler.removeCallbacks(naturalSwitchingLayout$$ExternalSyntheticLambda0);
        if (this.mHideRequested) {
            return;
        }
        ArrayList arrayList = this.mHideTasks;
        if (!arrayList.isEmpty()) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            arrayList.forEach(new NaturalSwitchingLayout$$ExternalSyntheticLambda3(transaction, 0));
            arrayList.clear();
            transaction.apply();
        }
        if (z) {
            handler.postDelayed(naturalSwitchingLayout$$ExternalSyntheticLambda0, 5000L);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.naturalswitching.NaturalSwitchingLayout$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    NaturalSwitchingLayout naturalSwitchingLayout = NaturalSwitchingLayout.this;
                    naturalSwitchingLayout.getClass();
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    naturalSwitchingLayout.mDragTargetView.mDragTarget.setAlpha(floatValue);
                    naturalSwitchingLayout.mNonDragTargetView.mMainView.setAlpha(floatValue);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.naturalswitching.NaturalSwitchingLayout.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    NaturalSwitchingLayout.this.hide(false);
                }
            });
            ofFloat.start();
            return;
        }
        this.mHideRequested = true;
        NonDragTargetView nonDragTargetView = this.mNonDragTargetView;
        nonDragTargetView.mWm.removeView(nonDragTargetView);
        DragTargetView dragTargetView = this.mDragTargetView;
        dragTargetView.mIsDragEndCalled = true;
        dragTargetView.mWm.removeView(dragTargetView);
        this.mStatusBarManager.disable(0);
        if (this.mNaturalSwitchingStartReported) {
            Log.d("NaturalSwitchingLayout", "finishNaturalSwitchingIfNeeded");
            this.mNaturalSwitchingStartReported = false;
            if (this.mNaturalSwitchingMode == 1 && !this.mTaskVisibility.isTaskVisible(1)) {
                this.mSplitScreenController.setDividerVisibilityFromNS(true);
            }
            MultiWindowManager.getInstance().finishNaturalSwitching();
        }
        DismissButtonManager dismissButtonManager = this.mCancelButtonManager;
        if (dismissButtonManager != null) {
            dismissButtonManager.hide(new NaturalSwitchingLayout$$ExternalSyntheticLambda0(dismissButtonManager, 3));
        }
        this.mDragTargetView = null;
        NonDragTargetView nonDragTargetView2 = this.mNonDragTargetView;
        nonDragTargetView2.getRootView().getViewTreeObserver().removeOnDrawListener(nonDragTargetView2.mOnDrawListener);
        this.mNonDragTargetView = null;
    }

    public final String toString() {
        IBinder iBinder;
        StringBuilder sb = new StringBuilder("{WindowingMode=");
        sb.append(this.mNsWindowingMode);
        sb.append(", NsMode=");
        sb.append(this.mNaturalSwitchingMode);
        sb.append(", dragToken=");
        DragTargetView dragTargetView = this.mDragTargetView;
        if (dragTargetView != null) {
            iBinder = dragTargetView.getWindowToken();
        } else {
            iBinder = null;
        }
        sb.append(iBinder);
        sb.append("}");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:241:0x0289, code lost:
    
        if (r13 != 0) goto L164;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x030d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void update(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 1096
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.naturalswitching.NaturalSwitchingLayout.update(android.view.MotionEvent):void");
    }
}
