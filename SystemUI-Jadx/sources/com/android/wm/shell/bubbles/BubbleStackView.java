package com.android.wm.shell.bubbles;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.hardware.input.InputManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.view.Choreographer;
import android.view.InputMonitor;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.internal.policy.ScreenDecorationsUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.systemui.R;
import com.android.systemui.keyguard.animator.ActionUpOrCancelHandler$$ExternalSyntheticOutline0;
import com.android.systemui.wmshell.BubblesManager$$ExternalSyntheticLambda1;
import com.android.wm.shell.animation.Interpolators;
import com.android.wm.shell.animation.PhysicsAnimator;
import com.android.wm.shell.bubbles.BadgedImageView;
import com.android.wm.shell.bubbles.Bubble;
import com.android.wm.shell.bubbles.BubbleLogger;
import com.android.wm.shell.bubbles.BubbleStackView;
import com.android.wm.shell.bubbles.Bubbles;
import com.android.wm.shell.bubbles.BubblesNavBarMotionEventHandler;
import com.android.wm.shell.bubbles.animation.AnimatableScaleMatrix;
import com.android.wm.shell.bubbles.animation.ExpandedAnimationController;
import com.android.wm.shell.bubbles.animation.ExpandedAnimationController$$ExternalSyntheticLambda0;
import com.android.wm.shell.bubbles.animation.ExpandedViewAnimationControllerImpl;
import com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout;
import com.android.wm.shell.bubbles.animation.StackAnimationController;
import com.android.wm.shell.common.FloatingContentCoordinator;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.magnetictarget.MagnetizedObject;
import com.android.wm.shell.common.magnetictarget.MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;
import com.android.wm.shell.taskview.TaskView;
import com.android.wm.shell.taskview.TaskViewTaskController;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.IntSupplier;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubbleStackView extends FrameLayout implements ViewTreeObserver.OnComputeInternalInsetsListener {
    public static final AnonymousClass1 DEFAULT_SURFACE_SYNCHRONIZER;
    static final int FLYOUT_HIDE_AFTER = 5000;
    public static final PhysicsAnimator.SpringConfig FLYOUT_IME_ANIMATION_SPRING_CONFIG;
    public BubbleStackView$$ExternalSyntheticLambda1 mAfterFlyoutHidden;
    public final BubbleStackView$$ExternalSyntheticLambda6 mAfterFlyoutTransitionSpring;
    public BubbleStackView$$ExternalSyntheticLambda3 mAnimateInFlyout;
    public final BubbleStackView$$ExternalSyntheticLambda3 mAnimateTemporarilyInvisibleImmediate;
    public final ValueAnimator mAnimatingOutSurfaceAlphaAnimator;
    public final FrameLayout mAnimatingOutSurfaceContainer;
    public final SurfaceView mAnimatingOutSurfaceView;
    public final AnonymousClass6 mBubbleClickListener;
    public final PhysicsAnimationLayout mBubbleContainer;
    public final BubbleController mBubbleController;
    public final BubbleData mBubbleData;
    public final int mBubbleElevation;
    public final BubbleOverflow mBubbleOverflow;
    public final BubblesManager$$ExternalSyntheticLambda1 mBubbleSALogger;
    public int mBubbleSize;
    public final int mBubbleStackOff;
    public BubbleViewProvider mBubbleToExpandAfterFlyoutCollapse;
    public final AnonymousClass7 mBubbleTouchListener;
    public final int mBubbleTouchPadding;
    public BubblesNavBarGestureTracker mBubblesNavBarGestureTracker;
    public final AnonymousClass8 mContainerSwipeListener;
    public BubbleStackView$$ExternalSyntheticLambda16 mDelayedAnimation;
    public final ValueAnimator mDismissBubbleAnimator;
    public DismissView mDismissView;
    public Bubbles.BubbleExpandListener mExpandListener;
    public final ExpandedAnimationController mExpandedAnimationController;
    public BubbleViewProvider mExpandedBubble;
    public final ValueAnimator mExpandedViewAlphaAnimator;
    public final ExpandedViewAnimationControllerImpl mExpandedViewAnimationController;
    public final FrameLayout mExpandedViewContainer;
    public final AnimatableScaleMatrix mExpandedViewContainerMatrix;
    public final int mExpandedViewPadding;
    public boolean mExpandedViewTemporarilyHidden;
    public BubbleFlyoutView mFlyout;
    public final AnonymousClass10 mFlyoutClickListener;
    public final AnonymousClass3 mFlyoutCollapseProperty;
    public float mFlyoutDragDeltaX;
    public final AnonymousClass11 mFlyoutTouchListener;
    public final SpringAnimation mFlyoutTransitionSpring;
    public final BubbleStackView$$ExternalSyntheticLambda3 mHideFlyout;
    public final AnonymousClass4 mIndividualBubbleMagnetListener;
    public boolean mIsBubbleSwitchAnimating;
    public boolean mIsDraggingStack;
    public boolean mIsExpanded;
    public boolean mIsExpansionAnimating;
    public boolean mIsGestureInProgress;
    public MagnetizedObject.MagneticTarget mMagneticTarget;
    public MagnetizedObject mMagnetizedObject;
    public final ShellExecutor mMainExecutor;
    public ManageEducationView mManageEduView;
    public final View mManageMenuScrim;
    public final BubbleStackView$$ExternalSyntheticLambda9 mOrientationChangedListener;
    public int mPointerIndexDown;
    public final BubblePositioner mPositioner;
    public RelativeStackPosition mRelativeStackPositionBeforeRotation;
    public final PhysicsAnimator.SpringConfig mScaleInSpringConfig;
    public final PhysicsAnimator.SpringConfig mScaleOutSpringConfig;
    public final View mScrim;
    public boolean mScrimAnimating;
    public boolean mShowedUserEducationInTouchListenerActive;
    public final StackAnimationController mStackAnimationController;
    public StackEducationView mStackEduView;
    public final AnonymousClass5 mStackMagnetListener;
    public boolean mStackOnLeftOrWillBe;
    public final StackViewState mStackViewState;
    public final SurfaceSynchronizer mSurfaceSynchronizer;
    public final AnonymousClass9 mSwipeUpListener;
    public final BubbleStackView$$ExternalSyntheticLambda5 mSystemGestureExcludeUpdater;
    public final List mSystemGestureExclusionRects;
    public final Rect mTempRect;
    public boolean mTemporarilyInvisible;
    public View mViewBeingDismissed;
    public boolean mViewUpdatedRequested;
    public final AnonymousClass2 mViewUpdater;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.bubbles.BubbleStackView$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 {
        public AnonymousClass4() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.bubbles.BubbleStackView$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass5 {
        public AnonymousClass5() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.bubbles.BubbleStackView$6, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass6 implements View.OnClickListener {
        public AnonymousClass6() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            final Bubble bubbleWithView;
            BubbleStackView bubbleStackView = BubbleStackView.this;
            bubbleStackView.mIsDraggingStack = false;
            if (bubbleStackView.mIsExpansionAnimating || bubbleStackView.mIsBubbleSwitchAnimating || (bubbleWithView = bubbleStackView.mBubbleData.getBubbleWithView(view)) == null) {
                return;
            }
            boolean equals = bubbleWithView.mKey.equals(BubbleStackView.this.mExpandedBubble.getKey());
            BubbleStackView bubbleStackView2 = BubbleStackView.this;
            if (bubbleStackView2.mIsExpanded) {
                ExpandedAnimationController expandedAnimationController = bubbleStackView2.mExpandedAnimationController;
                expandedAnimationController.mBubbleDraggedOutEnough = false;
                expandedAnimationController.mMagnetizedBubbleDraggingOut = null;
                expandedAnimationController.updateBubblePositions();
            }
            BubbleStackView bubbleStackView3 = BubbleStackView.this;
            if (bubbleStackView3.mIsExpanded && !equals) {
                BubbleData bubbleData = bubbleStackView3.mBubbleData;
                if (bubbleWithView != bubbleData.mSelectedBubble) {
                    bubbleData.setSelectedBubble(bubbleWithView);
                } else {
                    bubbleStackView3.setSelectedBubble(bubbleWithView);
                }
            } else {
                if (!bubbleStackView3.mShowedUserEducationInTouchListenerActive) {
                    bubbleStackView3.mBubbleData.setExpanded(!r0.mExpanded);
                }
                BubbleStackView.this.mShowedUserEducationInTouchListenerActive = false;
            }
            Optional.ofNullable(bubbleWithView).ifPresent(new Consumer() { // from class: com.android.wm.shell.bubbles.BubbleStackView$6$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BubbleStackView.this.mBubbleSALogger.sendEventCDLog("QPNE0100", "app", bubbleWithView.mPackageName);
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.bubbles.BubbleStackView$9, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass9 implements BubblesNavBarMotionEventHandler.MotionEventListener {
        public AnonymousClass9() {
        }

        public final void onMove(float f) {
            int i;
            int height;
            int i2;
            BubbleStackView bubbleStackView = BubbleStackView.this;
            if (!bubbleStackView.isManageEduVisible() && !bubbleStackView.isStackEduVisible()) {
                float f2 = -Math.min(f, 0.0f);
                bubbleStackView.mExpandedViewAnimationController.getClass();
                if (!bubbleStackView.mScrimAnimating) {
                    View view = bubbleStackView.mScrim;
                    BubbleViewProvider bubbleViewProvider = bubbleStackView.mExpandedBubble;
                    float f3 = 0.6f;
                    if (bubbleViewProvider != null && bubbleViewProvider.getExpandedView() != null) {
                        BubbleExpandedView expandedView = bubbleStackView.mExpandedBubble.getExpandedView();
                        if (expandedView.mIsOverflow) {
                            height = expandedView.mOverflowView.getHeight() - expandedView.mTopClip;
                            i2 = expandedView.mBottomClip;
                        } else {
                            TaskView taskView = expandedView.mTaskView;
                            if (taskView != null) {
                                height = taskView.getHeight() - expandedView.mTopClip;
                                i2 = expandedView.mBottomClip;
                            } else {
                                i = 0;
                                f3 = Math.max(0.6f - ((f2 / i) * 0.40000004f), 0.2f);
                            }
                        }
                        i = height - i2;
                        f3 = Math.max(0.6f - ((f2 / i) * 0.40000004f), 0.2f);
                    }
                    view.setAlpha(f3);
                }
            }
        }

        public final void onUp(float f) {
            boolean z;
            BubbleStackView bubbleStackView = BubbleStackView.this;
            ExpandedViewAnimationControllerImpl expandedViewAnimationControllerImpl = bubbleStackView.mExpandedViewAnimationController;
            if (f < 0.0f) {
                expandedViewAnimationControllerImpl.getClass();
                expandedViewAnimationControllerImpl.mSwipeUpVelocity = Math.abs(f);
                expandedViewAnimationControllerImpl.mSwipeDownVelocity = 0.0f;
            } else {
                expandedViewAnimationControllerImpl.mSwipeUpVelocity = 0.0f;
                expandedViewAnimationControllerImpl.mSwipeDownVelocity = f;
            }
            ExpandedViewAnimationControllerImpl expandedViewAnimationControllerImpl2 = bubbleStackView.mExpandedViewAnimationController;
            float f2 = expandedViewAnimationControllerImpl2.mSwipeDownVelocity;
            float f3 = expandedViewAnimationControllerImpl2.mMinFlingVelocity;
            if (f2 <= f3 && expandedViewAnimationControllerImpl2.mSwipeUpVelocity > f3) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                bubbleStackView.mBubbleData.setExpanded(false);
                return;
            }
            expandedViewAnimationControllerImpl2.getClass();
            if (!bubbleStackView.mScrimAnimating) {
                bubbleStackView.showScrim(true);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class StackViewState {
        public int numberOfBubbles;
        public boolean onLeft;
        public int selectedIndex;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SurfaceSynchronizer {
    }

    public static void $r8$lambda$Cn_cFsmoCiAxFL8cmUmWnqiwXJk(BubbleStackView bubbleStackView) {
        BubbleData bubbleData = bubbleStackView.mBubbleData;
        BubbleViewProvider bubbleViewProvider = bubbleData.mSelectedBubble;
        if (bubbleViewProvider != null && bubbleData.hasBubbleInStackWithKey(bubbleViewProvider.getKey())) {
            Bubble bubble = (Bubble) bubbleViewProvider;
            Context context = ((FrameLayout) bubbleStackView).mContext;
            Intent intent = new Intent("android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS");
            String str = bubble.mChannelId;
            if (str != null && !str.equals("miscellaneous")) {
                intent.setAction("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
                intent.putExtra("android.provider.extra.CHANNEL_ID", bubble.mChannelId);
            } else {
                intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            }
            intent.putExtra("android.provider.extra.APP_PACKAGE", bubble.mPackageName);
            int i = bubble.mAppUid;
            if (i == -1) {
                PackageManager packageManagerForUser = BubbleController.getPackageManagerForUser(bubble.mUser.getIdentifier(), context);
                if (packageManagerForUser != null) {
                    try {
                        i = packageManagerForUser.getApplicationInfo(bubble.mShortcutInfo.getPackage(), 0).uid;
                    } catch (PackageManager.NameNotFoundException e) {
                        Log.e("Bubble", "cannot find uid", e);
                    }
                }
                i = -1;
            }
            if (i != -1) {
                intent.putExtra("app_uid", i);
            }
            intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
            intent.addFlags(QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT);
            bubbleStackView.mBubbleData.setExpanded(false);
            ((FrameLayout) bubbleStackView).mContext.startActivityAsUser(intent, bubble.mUser);
            bubbleStackView.logBubbleEvent(bubbleViewProvider, 9);
            bubbleStackView.mBubbleSALogger.sendEventCDLog("QPNE0102", "app", bubble.mPackageName);
        }
    }

    /* renamed from: -$$Nest$mdismissMagnetizedObject, reason: not valid java name */
    public static void m2449$$Nest$mdismissMagnetizedObject(BubbleStackView bubbleStackView) {
        if (bubbleStackView.mIsExpanded) {
            Bubble bubbleWithView = bubbleStackView.mBubbleData.getBubbleWithView((View) bubbleStackView.mMagnetizedObject.underlyingObject);
            if (bubbleWithView != null && bubbleStackView.mBubbleData.hasBubbleInStackWithKey(bubbleWithView.getKey())) {
                if (bubbleStackView.mIsExpanded && bubbleStackView.mBubbleData.getBubbles().size() > 1 && bubbleWithView.equals(bubbleStackView.mExpandedBubble)) {
                    bubbleStackView.mIsBubbleSwitchAnimating = true;
                }
                bubbleStackView.mBubbleData.dismissBubbleWithKey(1, bubbleWithView.getKey());
            }
            bubbleStackView.mBubbleSALogger.sendEventCDLog("QPNE0101", "type", "single");
            return;
        }
        bubbleStackView.mBubbleData.dismissAll(1);
        bubbleStackView.mBubbleSALogger.sendEventCDLog("QPNE0101", "type", "group");
    }

    /* renamed from: -$$Nest$mshowExpandedViewIfNeeded, reason: not valid java name */
    public static void m2450$$Nest$mshowExpandedViewIfNeeded(BubbleStackView bubbleStackView) {
        if (bubbleStackView.mExpandedViewTemporarilyHidden) {
            bubbleStackView.mExpandedViewTemporarilyHidden = false;
            PhysicsAnimator physicsAnimator = PhysicsAnimator.getInstance(bubbleStackView.mExpandedViewContainerMatrix);
            physicsAnimator.spring(AnimatableScaleMatrix.SCALE_X, 499.99997f, 0.0f, bubbleStackView.mScaleOutSpringConfig);
            physicsAnimator.spring(AnimatableScaleMatrix.SCALE_Y, 499.99997f, 0.0f, bubbleStackView.mScaleOutSpringConfig);
            physicsAnimator.updateListeners.add(new BubbleStackView$$ExternalSyntheticLambda11(bubbleStackView, 1));
            physicsAnimator.start();
            bubbleStackView.mExpandedViewAlphaAnimator.start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.wm.shell.bubbles.BubbleStackView$1] */
    static {
        SystemProperties.getBoolean("persist.wm.debug.fling_to_dismiss_bubble", true);
        FLYOUT_IME_ANIMATION_SPRING_CONFIG = new PhysicsAnimator.SpringConfig(200.0f, 0.9f);
        DEFAULT_SURFACE_SYNCHRONIZER = new SurfaceSynchronizer() { // from class: com.android.wm.shell.bubbles.BubbleStackView.1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.wm.shell.bubbles.BubbleStackView$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2.dex */
            public final class ChoreographerFrameCallbackC01521 implements Choreographer.FrameCallback {
                public int mFrameWait = 2;
                public final /* synthetic */ Runnable val$callback;

                public ChoreographerFrameCallbackC01521(AnonymousClass1 anonymousClass1, Runnable runnable) {
                    this.val$callback = runnable;
                }

                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    int i = this.mFrameWait - 1;
                    this.mFrameWait = i;
                    if (i > 0) {
                        Choreographer.getInstance().postFrameCallback(this);
                    } else {
                        this.val$callback.run();
                    }
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3, types: [com.android.wm.shell.bubbles.BubbleStackView$2] */
    /* JADX WARN: Type inference failed for: r10v4, types: [com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda5] */
    /* JADX WARN: Type inference failed for: r10v5, types: [com.android.wm.shell.bubbles.BubbleStackView$3, androidx.dynamicanimation.animation.FloatPropertyCompat] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda6, androidx.dynamicanimation.animation.DynamicAnimation$OnAnimationEndListener] */
    /* JADX WARN: Type inference failed for: r13v3, types: [com.android.wm.shell.bubbles.BubbleStackView$7] */
    /* JADX WARN: Type inference failed for: r13v4, types: [com.android.wm.shell.bubbles.BubbleStackView$8] */
    /* JADX WARN: Type inference failed for: r13v6, types: [com.android.wm.shell.bubbles.BubbleStackView$10] */
    /* JADX WARN: Type inference failed for: r13v7, types: [com.android.wm.shell.bubbles.BubbleStackView$11] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda9] */
    public BubbleStackView(Context context, BubbleController bubbleController, BubbleData bubbleData, SurfaceSynchronizer surfaceSynchronizer, FloatingContentCoordinator floatingContentCoordinator, ShellExecutor shellExecutor) {
        super(context);
        SurfaceSynchronizer surfaceSynchronizer2;
        float f;
        this.mScaleInSpringConfig = new PhysicsAnimator.SpringConfig(300.0f, 0.9f);
        this.mScaleOutSpringConfig = new PhysicsAnimator.SpringConfig(900.0f, 1.0f);
        new PhysicsAnimator.SpringConfig(50.0f, 1.0f);
        this.mStackViewState = new StackViewState();
        this.mExpandedViewContainerMatrix = new AnimatableScaleMatrix();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mAnimatingOutSurfaceAlphaAnimator = ofFloat;
        this.mHideFlyout = new BubbleStackView$$ExternalSyntheticLambda3(this, 0);
        this.mBubbleToExpandAfterFlyoutCollapse = null;
        this.mStackOnLeftOrWillBe = true;
        this.mIsGestureInProgress = false;
        this.mTemporarilyInvisible = false;
        this.mIsDraggingStack = false;
        this.mExpandedViewTemporarilyHidden = false;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mExpandedViewAlphaAnimator = ofFloat2;
        this.mPointerIndexDown = -1;
        this.mViewUpdatedRequested = false;
        this.mIsExpansionAnimating = false;
        this.mIsBubbleSwitchAnimating = false;
        this.mTempRect = new Rect();
        this.mSystemGestureExclusionRects = Collections.singletonList(new Rect());
        this.mViewUpdater = new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                boolean z;
                float f2;
                BubbleStackView.this.getViewTreeObserver().removeOnPreDrawListener(BubbleStackView.this.mViewUpdater);
                BubbleViewProvider bubbleViewProvider = BubbleStackView.this.mExpandedBubble;
                if (bubbleViewProvider != null && bubbleViewProvider.getKey().equals("Overflow")) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    BubbleStackView.this.updateExpandedView();
                } else {
                    BubbleStackView bubbleStackView = BubbleStackView.this;
                    int[] expandedViewContainerPadding = bubbleStackView.mPositioner.getExpandedViewContainerPadding(bubbleStackView.mStackAnimationController.isStackOnLeftSide());
                    bubbleStackView.mExpandedViewContainer.setPadding(expandedViewContainerPadding[0], expandedViewContainerPadding[1], expandedViewContainerPadding[2], expandedViewContainerPadding[3]);
                    BubbleViewProvider bubbleViewProvider2 = bubbleStackView.mExpandedBubble;
                    if (bubbleViewProvider2 != null && bubbleViewProvider2.getExpandedView() != null) {
                        PointF expandedBubbleXY = bubbleStackView.mPositioner.getExpandedBubbleXY(bubbleStackView.getBubbleIndex(bubbleStackView.mExpandedBubble), bubbleStackView.getState());
                        FrameLayout frameLayout = bubbleStackView.mExpandedViewContainer;
                        BubblePositioner bubblePositioner = bubbleStackView.mPositioner;
                        BubbleViewProvider bubbleViewProvider3 = bubbleStackView.mExpandedBubble;
                        if (bubblePositioner.showBubblesVertically()) {
                            f2 = expandedBubbleXY.y;
                        } else {
                            f2 = expandedBubbleXY.x;
                        }
                        frameLayout.setTranslationY(bubblePositioner.getExpandedViewY(bubbleViewProvider3, f2));
                        bubbleStackView.mExpandedViewContainer.setTranslationX(bubbleStackView.getInitialTranslationX());
                        bubbleStackView.mExpandedBubble.getExpandedView().updateView(bubbleStackView.mExpandedViewContainer.getLocationOnScreen());
                        bubbleStackView.updatePointerPosition();
                    }
                    bubbleStackView.mStackOnLeftOrWillBe = bubbleStackView.mStackAnimationController.isStackOnLeftSide();
                }
                BubbleStackView.this.mViewUpdatedRequested = false;
                return true;
            }
        };
        this.mSystemGestureExcludeUpdater = new ViewTreeObserver.OnDrawListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda5
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                Rect rect = (Rect) bubbleStackView.mSystemGestureExclusionRects.get(0);
                if (bubbleStackView.getBubbleCount() > 0) {
                    View childAt = bubbleStackView.mBubbleContainer.getChildAt(0);
                    rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                    rect.offset((int) (childAt.getTranslationX() + 0.5f), (int) (childAt.getTranslationY() + 0.5f));
                    bubbleStackView.mBubbleContainer.setSystemGestureExclusionRects(bubbleStackView.mSystemGestureExclusionRects);
                    return;
                }
                rect.setEmpty();
                bubbleStackView.mBubbleContainer.setSystemGestureExclusionRects(Collections.emptyList());
            }
        };
        ?? r10 = new FloatPropertyCompat("FlyoutCollapseSpring") { // from class: com.android.wm.shell.bubbles.BubbleStackView.3
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public final float getValue(Object obj) {
                return BubbleStackView.this.mFlyoutDragDeltaX;
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public final void setValue(Object obj, float f2) {
                BubbleStackView.this.setFlyoutStateForDragLength(f2);
            }
        };
        this.mFlyoutCollapseProperty = r10;
        SpringAnimation springAnimation = new SpringAnimation(this, (FloatPropertyCompat) r10);
        this.mFlyoutTransitionSpring = springAnimation;
        this.mFlyoutDragDeltaX = 0.0f;
        ?? r12 = new DynamicAnimation.OnAnimationEndListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda6
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                if (bubbleStackView.mFlyoutDragDeltaX == 0.0f) {
                    bubbleStackView.mFlyout.postDelayed(bubbleStackView.mHideFlyout, 5000L);
                    return;
                }
                BubbleFlyoutView bubbleFlyoutView = bubbleStackView.mFlyout;
                Runnable runnable = bubbleFlyoutView.mOnHide;
                if (runnable != null) {
                    runnable.run();
                    bubbleFlyoutView.mOnHide = null;
                }
                bubbleFlyoutView.setVisibility(8);
            }
        };
        this.mAfterFlyoutTransitionSpring = r12;
        this.mIndividualBubbleMagnetListener = new AnonymousClass4();
        this.mStackMagnetListener = new AnonymousClass5();
        this.mBubbleClickListener = new AnonymousClass6();
        this.mBubbleTouchListener = new RelativeTouchListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView.7
            /* JADX WARN: Type inference failed for: r7v1, types: [com.android.wm.shell.bubbles.animation.ExpandedAnimationController$1] */
            /* JADX WARN: Type inference failed for: r9v0, types: [com.android.wm.shell.bubbles.animation.StackAnimationController$2] */
            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onDown(final View view, MotionEvent motionEvent) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                if (bubbleStackView.mIsExpansionAnimating) {
                    return;
                }
                int i = 0;
                bubbleStackView.mShowedUserEducationInTouchListenerActive = false;
                if (bubbleStackView.isStackEduVisible()) {
                    BubbleStackView.this.mStackEduView.hide(false);
                }
                BubbleStackView.this.getClass();
                BubbleStackView bubbleStackView2 = BubbleStackView.this;
                if (bubbleStackView2.mBubbleData.mExpanded) {
                    ManageEducationView manageEducationView = bubbleStackView2.mManageEduView;
                    if (manageEducationView != null) {
                        manageEducationView.hide();
                    }
                    final ExpandedAnimationController expandedAnimationController = BubbleStackView.this.mExpandedAnimationController;
                    expandedAnimationController.mLayout.cancelAnimationsOnView(view);
                    view.setTranslationZ(32767.0f);
                    final Context context2 = expandedAnimationController.mLayout.getContext();
                    final DynamicAnimation.AnonymousClass1 anonymousClass1 = DynamicAnimation.TRANSLATION_X;
                    final DynamicAnimation.AnonymousClass2 anonymousClass2 = DynamicAnimation.TRANSLATION_Y;
                    expandedAnimationController.mMagnetizedBubbleDraggingOut = new MagnetizedObject(context2, view, anonymousClass1, anonymousClass2) { // from class: com.android.wm.shell.bubbles.animation.ExpandedAnimationController.1
                        @Override // com.android.wm.shell.common.magnetictarget.MagnetizedObject
                        public final float getHeight(Object obj) {
                            return ExpandedAnimationController.this.mBubbleSizePx;
                        }

                        @Override // com.android.wm.shell.common.magnetictarget.MagnetizedObject
                        public final void getLocationOnScreen(Object obj, int[] iArr) {
                            View view2 = view;
                            iArr[0] = (int) view2.getTranslationX();
                            iArr[1] = (int) view2.getTranslationY();
                        }

                        @Override // com.android.wm.shell.common.magnetictarget.MagnetizedObject
                        public final float getWidth(Object obj) {
                            return ExpandedAnimationController.this.mBubbleSizePx;
                        }
                    };
                    BubbleStackView.this.hideCurrentInputMethod();
                    BubbleStackView bubbleStackView3 = BubbleStackView.this;
                    bubbleStackView3.mMagnetizedObject = bubbleStackView3.mExpandedAnimationController.mMagnetizedBubbleDraggingOut;
                } else {
                    StackAnimationController stackAnimationController = bubbleStackView2.mStackAnimationController;
                    stackAnimationController.getClass();
                    DynamicAnimation.AnonymousClass1 anonymousClass12 = DynamicAnimation.TRANSLATION_X;
                    stackAnimationController.cancelStackPositionAnimation(anonymousClass12);
                    DynamicAnimation.AnonymousClass2 anonymousClass22 = DynamicAnimation.TRANSLATION_Y;
                    stackAnimationController.cancelStackPositionAnimation(anonymousClass22);
                    stackAnimationController.mLayout.mEndActionForProperty.remove(anonymousClass12);
                    stackAnimationController.mLayout.mEndActionForProperty.remove(anonymousClass22);
                    BubbleStackView bubbleStackView4 = BubbleStackView.this;
                    bubbleStackView4.mBubbleContainer.setActiveController(bubbleStackView4.mStackAnimationController);
                    BubbleStackView.this.hideFlyoutImmediate();
                    BubbleStackView bubbleStackView5 = BubbleStackView.this;
                    final StackAnimationController stackAnimationController2 = bubbleStackView5.mStackAnimationController;
                    if (stackAnimationController2.mMagnetizedStack == null) {
                        final Context context3 = stackAnimationController2.mLayout.getContext();
                        final StackAnimationController.StackPositionProperty stackPositionProperty = new StackAnimationController.StackPositionProperty(stackAnimationController2, anonymousClass12, i);
                        final StackAnimationController.StackPositionProperty stackPositionProperty2 = new StackAnimationController.StackPositionProperty(stackAnimationController2, anonymousClass22, i);
                        stackAnimationController2.mMagnetizedStack = new MagnetizedObject(context3, stackAnimationController2, stackPositionProperty, stackPositionProperty2) { // from class: com.android.wm.shell.bubbles.animation.StackAnimationController.2
                            public AnonymousClass2(final Context context32, final StackAnimationController stackAnimationController22, final FloatPropertyCompat stackPositionProperty3, final FloatPropertyCompat stackPositionProperty22) {
                                super(context32, stackAnimationController22, stackPositionProperty3, stackPositionProperty22);
                            }

                            @Override // com.android.wm.shell.common.magnetictarget.MagnetizedObject
                            public final float getHeight(Object obj) {
                                return StackAnimationController.this.mBubbleSize;
                            }

                            @Override // com.android.wm.shell.common.magnetictarget.MagnetizedObject
                            public final void getLocationOnScreen(Object obj, int[] iArr) {
                                PointF pointF = StackAnimationController.this.mStackPosition;
                                iArr[0] = (int) pointF.x;
                                iArr[1] = (int) pointF.y;
                            }

                            @Override // com.android.wm.shell.common.magnetictarget.MagnetizedObject
                            public final float getWidth(Object obj) {
                                return StackAnimationController.this.mBubbleSize;
                            }
                        };
                    }
                    ContentResolver contentResolver = stackAnimationController22.mLayout.getContext().getContentResolver();
                    float f2 = Settings.Secure.getFloat(contentResolver, "bubble_dismiss_fling_min_velocity", stackAnimationController22.mMagnetizedStack.flingToTargetMinVelocity);
                    float f3 = Settings.Secure.getFloat(contentResolver, "bubble_dismiss_stick_max_velocity", stackAnimationController22.mMagnetizedStack.stickToTargetMaxXVelocity);
                    float f4 = Settings.Secure.getFloat(contentResolver, "bubble_dismiss_target_width_percent", stackAnimationController22.mMagnetizedStack.flingToTargetWidthPercent);
                    StackAnimationController.AnonymousClass2 anonymousClass23 = stackAnimationController22.mMagnetizedStack;
                    anonymousClass23.flingToTargetMinVelocity = f2;
                    anonymousClass23.stickToTargetMaxXVelocity = f3;
                    anonymousClass23.flingToTargetWidthPercent = f4;
                    bubbleStackView5.mMagnetizedObject = anonymousClass23;
                    BubbleStackView.this.mMagnetizedObject.associatedTargets.clear();
                    BubbleStackView bubbleStackView6 = BubbleStackView.this;
                    MagnetizedObject magnetizedObject = bubbleStackView6.mMagnetizedObject;
                    MagnetizedObject.MagneticTarget magneticTarget = bubbleStackView6.mMagneticTarget;
                    magnetizedObject.associatedTargets.add(magneticTarget);
                    magneticTarget.getClass();
                    magneticTarget.targetView.post(new MagnetizedObject$MagneticTarget$updateLocationOnScreen$1(magneticTarget));
                    BubbleStackView bubbleStackView7 = BubbleStackView.this;
                    bubbleStackView7.mIsDraggingStack = true;
                    bubbleStackView7.updateTemporarilyInvisibleAnimation(false);
                }
                BubbleStackView.this.getClass();
            }

            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onMove(View view, MotionEvent motionEvent, float f2, float f3, float f4, float f5) {
                boolean z;
                boolean z2;
                boolean z3;
                BubbleViewProvider bubbleViewProvider;
                BubbleStackView bubbleStackView = BubbleStackView.this;
                if (!bubbleStackView.mIsExpansionAnimating && !bubbleStackView.mShowedUserEducationInTouchListenerActive) {
                    final DismissView dismissView = bubbleStackView.mDismissView;
                    boolean z4 = true;
                    int i = 0;
                    if (!dismissView.isShowing) {
                        dismissView.isShowing = true;
                        dismissView.setVisibility(0);
                        dismissView.resetCircle();
                        GradientDrawable gradientDrawable = dismissView.gradientDrawable;
                        ObjectAnimator ofInt = ObjectAnimator.ofInt(gradientDrawable, dismissView.GRADIENT_ALPHA, gradientDrawable.getAlpha(), 255);
                        ofInt.setDuration(dismissView.DISMISS_SCRIM_FADE_MS);
                        ofInt.start();
                        dismissView.animator.cancel();
                        PhysicsAnimator physicsAnimator = dismissView.animator;
                        physicsAnimator.endActions.addAll(ArraysKt___ArraysKt.filterNotNull(new Function0[]{new Function0() { // from class: com.android.wm.shell.bubbles.DismissView$show$1
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                DismissView dismissView2 = DismissView.this;
                                dismissView2.circle.getGlobalVisibleRect(dismissView2.dismissArea);
                                return Unit.INSTANCE;
                            }
                        }}));
                        physicsAnimator.spring(DynamicAnimation.TRANSLATION_Y, 0.0f, 0.0f, dismissView.spring);
                        physicsAnimator.start();
                    }
                    BubbleStackView bubbleStackView2 = BubbleStackView.this;
                    if (bubbleStackView2.mIsExpanded && (bubbleViewProvider = bubbleStackView2.mExpandedBubble) != null && !bubbleStackView2.mExpandedViewTemporarilyHidden && bubbleViewProvider.getExpandedView() != null) {
                        bubbleStackView2.mExpandedViewTemporarilyHidden = true;
                        PhysicsAnimator physicsAnimator2 = PhysicsAnimator.getInstance(bubbleStackView2.mExpandedViewContainerMatrix);
                        physicsAnimator2.spring(AnimatableScaleMatrix.SCALE_X, 449.99997f, 0.0f, bubbleStackView2.mScaleOutSpringConfig);
                        physicsAnimator2.spring(AnimatableScaleMatrix.SCALE_Y, 449.99997f, 0.0f, bubbleStackView2.mScaleOutSpringConfig);
                        physicsAnimator2.updateListeners.add(new BubbleStackView$$ExternalSyntheticLambda11(bubbleStackView2, i));
                        physicsAnimator2.start();
                        bubbleStackView2.mExpandedViewAlphaAnimator.reverse();
                    }
                    BubbleStackView bubbleStackView3 = BubbleStackView.this;
                    float rawX = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    DismissView dismissView2 = bubbleStackView3.mDismissView;
                    Rect rect = dismissView2.dismissArea;
                    if (rect.left < rawX && rect.right > rawX && rect.top < rawY && rect.bottom > rawY) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (dismissView2.isBeingEntered != z) {
                        dismissView2.isBeingEntered = z;
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        bubbleStackView3.animateDismissBubble(view, dismissView2.isBeingEntered);
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        return;
                    }
                    BubbleStackView.this.getClass();
                    BubbleStackView.this.updateBubbleShadows(true);
                    BubbleStackView bubbleStackView4 = BubbleStackView.this;
                    if (bubbleStackView4.mBubbleData.mExpanded) {
                        ExpandedAnimationController expandedAnimationController = bubbleStackView4.mExpandedAnimationController;
                        float f6 = f2 + f4;
                        float f7 = f3 + f5;
                        if (expandedAnimationController.mMagnetizedBubbleDraggingOut != null) {
                            if (expandedAnimationController.mSpringingBubbleToTouch) {
                                PhysicsAnimationLayout physicsAnimationLayout = expandedAnimationController.mLayout;
                                DynamicAnimation.AnonymousClass1 anonymousClass1 = DynamicAnimation.TRANSLATION_X;
                                DynamicAnimation.ViewProperty[] viewPropertyArr = {anonymousClass1, DynamicAnimation.TRANSLATION_Y};
                                physicsAnimationLayout.getClass();
                                if (PhysicsAnimationLayout.arePropertiesAnimatingOnView(view, viewPropertyArr)) {
                                    PhysicsAnimationLayout.PhysicsPropertyAnimator animationForChild = expandedAnimationController.animationForChild((View) expandedAnimationController.mMagnetizedBubbleDraggingOut.underlyingObject);
                                    animationForChild.mPathAnimator = null;
                                    animationForChild.property(anonymousClass1, f6, new Runnable[0]);
                                    animationForChild.translationY(f7, new Runnable[0]);
                                    animationForChild.mStiffness = 10000.0f;
                                    animationForChild.start(new Runnable[0]);
                                } else {
                                    expandedAnimationController.mSpringingBubbleToTouch = false;
                                }
                            }
                            if (!expandedAnimationController.mSpringingBubbleToTouch) {
                                expandedAnimationController.mMagnetizedBubbleDraggingOut.getClass();
                                view.setTranslationX(f6);
                                view.setTranslationY(f7);
                            }
                            float expandedViewYTopAligned = expandedAnimationController.mPositioner.getExpandedViewYTopAligned();
                            float f8 = expandedAnimationController.mBubbleSizePx;
                            if (f7 <= expandedViewYTopAligned + f8 && f7 >= expandedViewYTopAligned - f8) {
                                z4 = false;
                            }
                            if (z4 != expandedAnimationController.mBubbleDraggedOutEnough) {
                                expandedAnimationController.updateBubblePositions();
                                expandedAnimationController.mBubbleDraggedOutEnough = z4;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (bubbleStackView4.isStackEduVisible()) {
                        BubbleStackView.this.mStackEduView.hide(false);
                    }
                    StackAnimationController stackAnimationController = BubbleStackView.this.mStackAnimationController;
                    float f9 = f2 + f4;
                    float f10 = f3 + f5;
                    stackAnimationController.getClass();
                    if (stackAnimationController.mFirstBubbleSpringingToTouch) {
                        HashMap hashMap = stackAnimationController.mStackPositionAnimations;
                        SpringAnimation springAnimation2 = (SpringAnimation) hashMap.get(DynamicAnimation.TRANSLATION_X);
                        SpringAnimation springAnimation3 = (SpringAnimation) hashMap.get(DynamicAnimation.TRANSLATION_Y);
                        if (!springAnimation2.mRunning && !springAnimation3.mRunning) {
                            stackAnimationController.mFirstBubbleSpringingToTouch = false;
                        } else {
                            springAnimation2.animateToFinalPosition(f9);
                            springAnimation3.animateToFinalPosition(f10);
                        }
                    }
                    if (!stackAnimationController.mFirstBubbleSpringingToTouch) {
                        stackAnimationController.mAnimatingToBounds.setEmpty();
                        stackAnimationController.mPreImeY = -1.4E-45f;
                        stackAnimationController.moveFirstBubbleWithStackFollowing(DynamicAnimation.TRANSLATION_X, f9);
                        stackAnimationController.moveFirstBubbleWithStackFollowing(DynamicAnimation.TRANSLATION_Y, f10);
                        stackAnimationController.mIsMovingFromFlinging = false;
                    }
                }
            }

            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onUp(View view, float f2, float f3, float f4, float f5) {
                boolean z;
                boolean z2;
                boolean z3;
                float f6;
                boolean z4;
                boolean z5;
                float max;
                View view2;
                View view3;
                BubbleStackView bubbleStackView = BubbleStackView.this;
                if (bubbleStackView.mIsExpansionAnimating) {
                    return;
                }
                if (bubbleStackView.mShowedUserEducationInTouchListenerActive) {
                    bubbleStackView.mShowedUserEducationInTouchListenerActive = false;
                    return;
                }
                bubbleStackView.animateDismissBubble(view, false);
                if (bubbleStackView.mDismissView.isBeingEntered) {
                    BubbleViewProvider bubbleViewProvider = bubbleStackView.mExpandedBubble;
                    bubbleStackView.mExpandedBubble = bubbleStackView.mBubbleData.getBubbleWithView(view);
                    if (bubbleStackView.mIsExpanded) {
                        BubbleStackView bubbleStackView2 = BubbleStackView.this;
                        ExpandedAnimationController expandedAnimationController = bubbleStackView2.mExpandedAnimationController;
                        ExpandedAnimationController.AnonymousClass1 anonymousClass1 = expandedAnimationController.mMagnetizedBubbleDraggingOut;
                        if (anonymousClass1 == null) {
                            view2 = null;
                        } else {
                            view2 = (View) anonymousClass1.underlyingObject;
                        }
                        if (view2 != null) {
                            if (anonymousClass1 == null) {
                                view3 = null;
                            } else {
                                view3 = (View) anonymousClass1.underlyingObject;
                            }
                            float height = bubbleStackView2.mDismissView.getHeight();
                            BubbleStackView$$ExternalSyntheticLambda3 bubbleStackView$$ExternalSyntheticLambda3 = new BubbleStackView$$ExternalSyntheticLambda3(bubbleStackView2, 15);
                            if (view3 != null) {
                                PhysicsAnimationLayout.PhysicsPropertyAnimator animationForChild = expandedAnimationController.animationForChild(view3);
                                animationForChild.mStiffness = 10000.0f;
                                animationForChild.property(DynamicAnimation.SCALE_X, 0.0f, new Runnable[0]);
                                animationForChild.property(DynamicAnimation.SCALE_Y, 0.0f, new Runnable[0]);
                                animationForChild.translationY(view3.getTranslationY() + height, new Runnable[0]);
                                animationForChild.property(DynamicAnimation.ALPHA, 0.0f, bubbleStackView$$ExternalSyntheticLambda3);
                                animationForChild.start(new Runnable[0]);
                                expandedAnimationController.updateBubblePositions();
                            }
                            bubbleStackView2.mDismissView.hide();
                        }
                        bubbleStackView.setSelectedBubble(bubbleViewProvider);
                    } else {
                        AnonymousClass5 anonymousClass5 = bubbleStackView.mStackMagnetListener;
                        BubbleStackView bubbleStackView3 = BubbleStackView.this;
                        final StackAnimationController stackAnimationController = bubbleStackView3.mStackAnimationController;
                        final float height2 = bubbleStackView3.mDismissView.getHeight();
                        BubbleStackView$$ExternalSyntheticLambda3 bubbleStackView$$ExternalSyntheticLambda32 = new BubbleStackView$$ExternalSyntheticLambda3(anonymousClass5, 16);
                        stackAnimationController.getClass();
                        stackAnimationController.animationsForChildrenFromIndex(new PhysicsAnimationLayout.PhysicsAnimationController.ChildAnimationConfigurator() { // from class: com.android.wm.shell.bubbles.animation.StackAnimationController$$ExternalSyntheticLambda3
                            @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController.ChildAnimationConfigurator
                            public final void configureAnimationForChildAtIndex(int i, PhysicsAnimationLayout.PhysicsPropertyAnimator physicsPropertyAnimator) {
                                StackAnimationController stackAnimationController2 = StackAnimationController.this;
                                stackAnimationController2.getClass();
                                physicsPropertyAnimator.property(DynamicAnimation.SCALE_X, 0.0f, new Runnable[0]);
                                physicsPropertyAnimator.property(DynamicAnimation.SCALE_Y, 0.0f, new Runnable[0]);
                                physicsPropertyAnimator.property(DynamicAnimation.ALPHA, 0.0f, new Runnable[0]);
                                physicsPropertyAnimator.translationY(stackAnimationController2.mLayout.getChildAt(i).getTranslationY() + height2, new Runnable[0]);
                                physicsPropertyAnimator.mStiffness = 10000.0f;
                            }
                        }).startAll(new Runnable[]{bubbleStackView$$ExternalSyntheticLambda32});
                        bubbleStackView3.mDismissView.hide();
                    }
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
                BubbleStackView.m2450$$Nest$mshowExpandedViewIfNeeded(BubbleStackView.this);
                BubbleStackView.this.getClass();
                BubbleStackView bubbleStackView4 = BubbleStackView.this;
                if (bubbleStackView4.mBubbleData.mExpanded) {
                    ExpandedAnimationController expandedAnimationController2 = bubbleStackView4.mExpandedAnimationController;
                    PhysicsAnimationLayout physicsAnimationLayout = expandedAnimationController2.mLayout;
                    if (physicsAnimationLayout != null) {
                        int indexOfChild = physicsAnimationLayout.indexOfChild(view);
                        PointF expandedBubbleXY = expandedAnimationController2.mPositioner.getExpandedBubbleXY(indexOfChild, expandedAnimationController2.mBubbleStackView.getState());
                        PhysicsAnimationLayout.PhysicsPropertyAnimator animationForChild2 = expandedAnimationController2.animationForChild(expandedAnimationController2.mLayout.getChildAt(indexOfChild));
                        float f7 = expandedBubbleXY.x;
                        float f8 = expandedBubbleXY.y;
                        animationForChild2.mPositionEndActions = new Runnable[0];
                        animationForChild2.mPathAnimator = null;
                        DynamicAnimation.AnonymousClass1 anonymousClass12 = DynamicAnimation.TRANSLATION_X;
                        animationForChild2.property(anonymousClass12, f7, new Runnable[0]);
                        animationForChild2.translationY(f8, new Runnable[0]);
                        HashMap hashMap = (HashMap) animationForChild2.mPositionStartVelocities;
                        hashMap.put(anonymousClass12, Float.valueOf(f4));
                        hashMap.put(DynamicAnimation.TRANSLATION_Y, Float.valueOf(f5));
                        animationForChild2.start(new ExpandedAnimationController$$ExternalSyntheticLambda0(view, 3));
                        expandedAnimationController2.mMagnetizedBubbleDraggingOut = null;
                        expandedAnimationController2.updateBubblePositions();
                    }
                    BubbleStackView.m2450$$Nest$mshowExpandedViewIfNeeded(BubbleStackView.this);
                } else {
                    boolean z6 = bubbleStackView4.mStackOnLeftOrWillBe;
                    StackAnimationController stackAnimationController2 = bubbleStackView4.mStackAnimationController;
                    float f9 = f2 + f3;
                    if (f9 - (stackAnimationController2.mBubbleSize / 2) < stackAnimationController2.mLayout.getWidth() / 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2 ? f4 < -750.0f : f4 < 750.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    RectF allowableStackPositionRegion = stackAnimationController2.mPositioner.getAllowableStackPositionRegion(stackAnimationController2.getBubbleCount());
                    if (z3) {
                        f6 = allowableStackPositionRegion.left;
                    } else {
                        f6 = allowableStackPositionRegion.right;
                    }
                    float f10 = f6;
                    PhysicsAnimationLayout physicsAnimationLayout2 = stackAnimationController2.mLayout;
                    if (physicsAnimationLayout2 != null && physicsAnimationLayout2.getChildCount() != 0) {
                        ContentResolver contentResolver = stackAnimationController2.mLayout.getContext().getContentResolver();
                        float f11 = Settings.Secure.getFloat(contentResolver, "bubble_stiffness", 700.0f);
                        float f12 = Settings.Secure.getFloat(contentResolver, "bubble_damping", 0.85f);
                        float f13 = Settings.Secure.getFloat(contentResolver, "bubble_friction", 1.9f);
                        float f14 = 4.2f * f13 * (f10 - f9);
                        stackAnimationController2.notifyFloatingCoordinatorStackAnimatingTo(f10, PhysicsAnimator.estimateFlingEndValue(stackAnimationController2.mStackPosition.y, f5, new PhysicsAnimator.FlingConfig(f13, allowableStackPositionRegion.top, allowableStackPositionRegion.bottom)));
                        if (z3) {
                            max = Math.min(f14, f4);
                        } else {
                            max = Math.max(f14, f4);
                        }
                        stackAnimationController2.flingThenSpringFirstBubbleWithStackFollowing(DynamicAnimation.TRANSLATION_X, max, f13, ActionUpOrCancelHandler$$ExternalSyntheticOutline0.m(f11, f12), Float.valueOf(f10));
                        stackAnimationController2.flingThenSpringFirstBubbleWithStackFollowing(DynamicAnimation.TRANSLATION_Y, f5, f13, ActionUpOrCancelHandler$$ExternalSyntheticOutline0.m(f11, f12), null);
                        stackAnimationController2.mFirstBubbleSpringingToTouch = false;
                        z4 = true;
                        stackAnimationController2.mIsMovingFromFlinging = true;
                    } else {
                        z4 = true;
                    }
                    if (f10 <= BubbleStackView.this.getWidth() / 2) {
                        z5 = z4;
                    } else {
                        z5 = false;
                    }
                    bubbleStackView4.mStackOnLeftOrWillBe = z5;
                    BubbleStackView bubbleStackView5 = BubbleStackView.this;
                    if (z6 == bubbleStackView5.mStackOnLeftOrWillBe) {
                        z4 = false;
                    }
                    bubbleStackView5.updateBadges(z4);
                    BubbleStackView.this.logBubbleEvent(null, 7);
                }
                BubbleStackView.this.mDismissView.hide();
                BubbleStackView bubbleStackView6 = BubbleStackView.this;
                bubbleStackView6.mIsDraggingStack = false;
                bubbleStackView6.updateTemporarilyInvisibleAnimation(false);
            }
        };
        this.mContainerSwipeListener = new RelativeTouchListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView.8
            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onDown(View view, MotionEvent motionEvent) {
                AnonymousClass9 anonymousClass9 = BubbleStackView.this.mSwipeUpListener;
                motionEvent.getX();
                motionEvent.getY();
                anonymousClass9.getClass();
            }

            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onMove(View view, MotionEvent motionEvent, float f2, float f3, float f4, float f5) {
                BubbleStackView.this.mSwipeUpListener.onMove(f5);
            }

            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onUp(View view, float f2, float f3, float f4, float f5) {
                BubbleStackView.this.mSwipeUpListener.onUp(f5);
            }
        };
        this.mSwipeUpListener = new AnonymousClass9();
        this.mFlyoutClickListener = new View.OnClickListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView.10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                PhysicsAnimator.SpringConfig springConfig = BubbleStackView.FLYOUT_IME_ANIMATION_SPRING_CONFIG;
                bubbleStackView.getClass();
                BubbleStackView bubbleStackView2 = BubbleStackView.this;
                bubbleStackView2.mBubbleToExpandAfterFlyoutCollapse = bubbleStackView2.mBubbleData.mSelectedBubble;
                bubbleStackView2.mFlyout.removeCallbacks(bubbleStackView2.mHideFlyout);
                BubbleStackView.this.mHideFlyout.run();
            }
        };
        this.mFlyoutTouchListener = new RelativeTouchListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView.11
            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onDown(View view, MotionEvent motionEvent) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                bubbleStackView.mFlyout.removeCallbacks(bubbleStackView.mHideFlyout);
            }

            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onMove(View view, MotionEvent motionEvent, float f2, float f3, float f4, float f5) {
                BubbleStackView.this.setFlyoutStateForDragLength(f4);
            }

            @Override // com.android.wm.shell.bubbles.RelativeTouchListener
            public final void onUp(View view, float f2, float f3, float f4, float f5) {
                boolean z;
                boolean z2;
                boolean z3;
                boolean isStackOnLeftSide = BubbleStackView.this.mStackAnimationController.isStackOnLeftSide();
                boolean z4 = true;
                if (!isStackOnLeftSide ? f4 > 2000.0f : f4 < -2000.0f) {
                    z = true;
                } else {
                    z = false;
                }
                if (!isStackOnLeftSide ? f3 > BubbleStackView.this.mFlyout.getWidth() * 0.25f : f3 < (-BubbleStackView.this.mFlyout.getWidth()) * 0.25f) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!isStackOnLeftSide ? f4 < 0.0f : f4 > 0.0f) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!z && (!z2 || z3)) {
                    z4 = false;
                }
                BubbleStackView bubbleStackView = BubbleStackView.this;
                bubbleStackView.mFlyout.removeCallbacks(bubbleStackView.mHideFlyout);
                BubbleStackView.this.animateFlyoutCollapsed(f4, z4);
                BubbleStackView.this.getClass();
            }
        };
        this.mShowedUserEducationInTouchListenerActive = false;
        new PhysicsAnimator.SpringConfig(1500.0f, 0.75f);
        this.mAnimateTemporarilyInvisibleImmediate = new BubbleStackView$$ExternalSyntheticLambda3(this, 1);
        this.mMainExecutor = shellExecutor;
        this.mBubbleController = bubbleController;
        this.mBubbleData = bubbleData;
        Resources resources = getResources();
        this.mBubbleSize = resources.getDimensionPixelSize(R.dimen.bubble_size);
        this.mBubbleElevation = resources.getDimensionPixelSize(R.dimen.bubble_elevation);
        this.mBubbleTouchPadding = resources.getDimensionPixelSize(R.dimen.bubble_touch_padding);
        this.mExpandedViewPadding = resources.getDimensionPixelSize(R.dimen.bubble_expanded_view_padding);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.bubble_elevation);
        BubblePositioner positioner = bubbleController.getPositioner();
        this.mPositioner = positioner;
        TypedArray obtainStyledAttributes = ((FrameLayout) this).mContext.obtainStyledAttributes(new int[]{android.R.attr.dialogCornerRadius});
        int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.sec_noti_bubble_expand_view_radius);
        this.mBubbleStackOff = resources.getDimensionPixelSize(R.dimen.bubble_stack_offset);
        obtainStyledAttributes.recycle();
        BubbleStackView$$ExternalSyntheticLambda3 bubbleStackView$$ExternalSyntheticLambda3 = new BubbleStackView$$ExternalSyntheticLambda3(this, 2);
        StackAnimationController stackAnimationController = new StackAnimationController(floatingContentCoordinator, new IntSupplier() { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda7
            @Override // java.util.function.IntSupplier
            public final int getAsInt() {
                return BubbleStackView.this.getBubbleCount();
            }
        }, bubbleStackView$$ExternalSyntheticLambda3, new BubbleStackView$$ExternalSyntheticLambda3(this, 3), positioner);
        this.mStackAnimationController = stackAnimationController;
        this.mExpandedAnimationController = new ExpandedAnimationController(positioner, bubbleStackView$$ExternalSyntheticLambda3, this);
        this.mExpandedViewAnimationController = new ExpandedViewAnimationControllerImpl(context, positioner);
        if (surfaceSynchronizer != null) {
            surfaceSynchronizer2 = surfaceSynchronizer;
        } else {
            surfaceSynchronizer2 = DEFAULT_SURFACE_SYNCHRONIZER;
        }
        this.mSurfaceSynchronizer = surfaceSynchronizer2;
        setLayoutDirection(0);
        PhysicsAnimationLayout physicsAnimationLayout = new PhysicsAnimationLayout(context);
        this.mBubbleContainer = physicsAnimationLayout;
        physicsAnimationLayout.setActiveController(stackAnimationController);
        float f2 = dimensionPixelSize;
        physicsAnimationLayout.setElevation(f2);
        physicsAnimationLayout.setClipChildren(false);
        addView(physicsAnimationLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(context);
        this.mExpandedViewContainer = frameLayout;
        frameLayout.setElevation(f2);
        frameLayout.setClipChildren(false);
        addView(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.mAnimatingOutSurfaceContainer = frameLayout2;
        frameLayout2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        addView(frameLayout2);
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.mAnimatingOutSurfaceView = surfaceView;
        surfaceView.setZOrderOnTop(true);
        if (ScreenDecorationsUtils.supportsRoundedCornersOnWindows(((FrameLayout) this).mContext.getResources())) {
            f = dimensionPixelSize2;
        } else {
            f = 0.0f;
        }
        surfaceView.setCornerRadius(f);
        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        surfaceView.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.android.wm.shell.bubbles.BubbleStackView.12
            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                PhysicsAnimator.SpringConfig springConfig = BubbleStackView.FLYOUT_IME_ANIMATION_SPRING_CONFIG;
                bubbleStackView.getClass();
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                PhysicsAnimator.SpringConfig springConfig = BubbleStackView.FLYOUT_IME_ANIMATION_SPRING_CONFIG;
                bubbleStackView.getClass();
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            }
        });
        frameLayout2.addView(surfaceView);
        frameLayout2.setPadding(frameLayout.getPaddingLeft(), frameLayout.getPaddingTop(), frameLayout.getPaddingRight(), frameLayout.getPaddingBottom());
        setUpFlyout();
        SpringForce springForce = new SpringForce();
        springForce.setStiffness(200.0f);
        springForce.setDampingRatio(0.75f);
        springAnimation.mSpring = springForce;
        springAnimation.addEndListener(r12);
        setUpDismissView();
        setClipChildren(false);
        setFocusable(true);
        physicsAnimationLayout.bringToFront();
        BubbleOverflow bubbleOverflow = bubbleData.mOverflow;
        this.mBubbleOverflow = bubbleOverflow;
        BadgedImageView iconView$1 = bubbleOverflow.getIconView$1();
        int childCount = physicsAnimationLayout.getChildCount();
        int i = positioner.mBubbleSize;
        physicsAnimationLayout.addViewInternal(iconView$1, childCount, new FrameLayout.LayoutParams(i, i), false);
        updateOverflow();
        bubbleOverflow.getIconView$1().setOnClickListener(new BubbleStackView$$ExternalSyntheticLambda8(this, 0));
        View view = new View(getContext());
        this.mScrim = view;
        view.setImportantForAccessibility(2);
        view.setBackgroundDrawable(new ColorDrawable(getResources().getColor(android.R.color.Teal_800)));
        addView(view);
        view.setAlpha(0.0f);
        View view2 = new View(getContext());
        this.mManageMenuScrim = view2;
        view2.setImportantForAccessibility(2);
        view2.setBackgroundDrawable(new ColorDrawable(getResources().getColor(android.R.color.Teal_800)));
        addView(view2, new FrameLayout.LayoutParams(-1, -1));
        view2.setAlpha(0.0f);
        view2.setVisibility(4);
        this.mOrientationChangedListener = new View.OnLayoutChangeListener() { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda9
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                float f3;
                BubbleStackView.RelativeStackPosition relativeStackPosition;
                float f4;
                BubbleStackView bubbleStackView = BubbleStackView.this;
                bubbleStackView.mPositioner.update();
                bubbleStackView.mExpandedAnimationController.updateResources();
                StackAnimationController stackAnimationController2 = bubbleStackView.mStackAnimationController;
                PhysicsAnimationLayout physicsAnimationLayout2 = stackAnimationController2.mLayout;
                if (physicsAnimationLayout2 != null) {
                    stackAnimationController2.mBubblePaddingTop = physicsAnimationLayout2.getContext().getResources().getDimensionPixelSize(R.dimen.bubble_padding_top);
                }
                bubbleStackView.mBubbleOverflow.updateResources();
                if (bubbleStackView.mTemporarilyInvisible) {
                    bubbleStackView.updateTemporarilyInvisibleAnimation(true);
                }
                ShellExecutor shellExecutor2 = null;
                if (!bubbleStackView.isStackEduVisible() && (relativeStackPosition = bubbleStackView.mRelativeStackPositionBeforeRotation) != null) {
                    StackAnimationController stackAnimationController3 = bubbleStackView.mStackAnimationController;
                    RectF allowableStackPositionRegion = stackAnimationController3.mPositioner.getAllowableStackPositionRegion(stackAnimationController3.getBubbleCount());
                    if (relativeStackPosition.mOnLeft) {
                        f4 = allowableStackPositionRegion.left;
                    } else {
                        f4 = allowableStackPositionRegion.right;
                    }
                    stackAnimationController3.setStackPosition(new PointF(f4, (allowableStackPositionRegion.height() * relativeStackPosition.mVerticalOffsetPercent) + allowableStackPositionRegion.top));
                    bubbleStackView.mRelativeStackPositionBeforeRotation = null;
                }
                if (bubbleStackView.mIsExpanded) {
                    BubbleViewProvider bubbleViewProvider = bubbleStackView.mExpandedBubble;
                    if (bubbleViewProvider != null && bubbleViewProvider.getExpandedView() != null && bubbleStackView.mExpandedBubble.getExpandedView().mTaskView != null) {
                        TaskViewTaskController taskViewTaskController = bubbleStackView.mExpandedBubble.getExpandedView().mTaskViewTaskController;
                        Executor executor = taskViewTaskController.mShellExecutor;
                        if (executor instanceof ShellExecutor) {
                            shellExecutor2 = (ShellExecutor) executor;
                        }
                        if (shellExecutor2 == null) {
                            Log.w("TaskViewTaskController", "startRecreateSurface: failed, cannot find shellExecutor");
                        } else if (!taskViewTaskController.mWaitingForSurfaceCreated) {
                            taskViewTaskController.mWaitingForSurfaceCreated = true;
                            ((HandlerExecutor) shellExecutor2).executeDelayed(2000L, taskViewTaskController.mRecreateSurfaceTimeoutRunnable);
                            Log.d("TaskViewTaskController", "startRecreateSurface: " + taskViewTaskController);
                        }
                    }
                    bubbleStackView.updateOverflowVisibility();
                    bubbleStackView.updatePointerPosition();
                    bubbleStackView.mExpandedAnimationController.expandFromStack(new BubbleStackView$$ExternalSyntheticLambda3(bubbleStackView, 5));
                    PointF expandedBubbleXY = bubbleStackView.mPositioner.getExpandedBubbleXY(bubbleStackView.getBubbleIndex(bubbleStackView.mExpandedBubble), bubbleStackView.getState());
                    BubblePositioner bubblePositioner = bubbleStackView.mPositioner;
                    BubbleViewProvider bubbleViewProvider2 = bubbleStackView.mExpandedBubble;
                    if (bubblePositioner.showBubblesVertically()) {
                        f3 = expandedBubbleXY.y;
                    } else {
                        f3 = expandedBubbleXY.x;
                    }
                    float expandedViewY = bubblePositioner.getExpandedViewY(bubbleViewProvider2, f3);
                    bubbleStackView.mExpandedViewContainer.setTranslationX(bubbleStackView.getInitialTranslationX());
                    bubbleStackView.mExpandedViewContainer.setTranslationY(expandedViewY);
                    bubbleStackView.mExpandedViewContainer.setAlpha(1.0f);
                }
                bubbleStackView.removeOnLayoutChangeListener(bubbleStackView.mOrientationChangedListener);
                bubbleStackView.onDisplaySizeChanged();
            }
        };
        final float dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.dismiss_circle_small) / getResources().getDimensionPixelSize(R.dimen.dismiss_circle_size);
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.mDismissBubbleAnimator = ofFloat3;
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(dimensionPixelSize3) { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                bubbleStackView.getClass();
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                DismissView dismissView = bubbleStackView.mDismissView;
                if (dismissView != null) {
                    dismissView.circle.setScaleX(1.15f);
                    bubbleStackView.mDismissView.circle.setScaleY(1.15f);
                    bubbleStackView.mDismissView.circle.setBackgroundResource(R.drawable.bubble_delete_ic_drop);
                }
                View view3 = bubbleStackView.mViewBeingDismissed;
                if (view3 != null) {
                    view3.setAlpha(Math.max(floatValue, 0.7f));
                }
            }
        });
        setOnClickListener(new BubbleStackView$$ExternalSyntheticLambda8(this, 1));
        ViewPropertyAnimator animate = animate();
        TimeInterpolator timeInterpolator = Interpolators.PANEL_CLOSE_ACCELERATED;
        animate.setInterpolator(timeInterpolator).setDuration(320L);
        ofFloat2.setDuration(150L);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.bubbles.BubbleStackView.13
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BubbleViewProvider bubbleViewProvider = BubbleStackView.this.mExpandedBubble;
                if (bubbleViewProvider != null && bubbleViewProvider.getExpandedView() != null) {
                    BubbleStackView bubbleStackView = BubbleStackView.this;
                    if (!bubbleStackView.mExpandedViewTemporarilyHidden) {
                        TaskView taskView = bubbleStackView.mExpandedBubble.getExpandedView().mTaskView;
                        if (taskView != null) {
                            taskView.setZOrderedOnTop(true, true);
                        }
                        BubbleExpandedView expandedView = BubbleStackView.this.mExpandedBubble.getExpandedView();
                        expandedView.mIsAnimating = false;
                        expandedView.setContentVisibility(expandedView.mIsContentVisible);
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BubbleViewProvider bubbleViewProvider = BubbleStackView.this.mExpandedBubble;
                if (bubbleViewProvider != null && bubbleViewProvider.getExpandedView() != null) {
                    TaskView taskView = BubbleStackView.this.mExpandedBubble.getExpandedView().mTaskView;
                    if (taskView != null) {
                        taskView.setZOrderedOnTop(true, true);
                    }
                    BubbleStackView.this.mExpandedBubble.getExpandedView().mIsAnimating = true;
                }
            }
        });
        final int i2 = 0;
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda4
            public final /* synthetic */ BubbleStackView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i2) {
                    case 0:
                        BubbleStackView bubbleStackView = this.f$0;
                        BubbleViewProvider bubbleViewProvider = bubbleStackView.mExpandedBubble;
                        if (bubbleViewProvider != null && bubbleViewProvider.getExpandedView() != null) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            bubbleStackView.mExpandedBubble.getExpandedView().setContentAlpha(floatValue);
                            BubbleExpandedView expandedView = bubbleStackView.mExpandedBubble.getExpandedView();
                            expandedView.mPointerView.setAlpha(floatValue);
                            expandedView.setAlpha(floatValue);
                            return;
                        }
                        return;
                    default:
                        BubbleStackView bubbleStackView2 = this.f$0;
                        if (!bubbleStackView2.mExpandedViewTemporarilyHidden) {
                            bubbleStackView2.mAnimatingOutSurfaceView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat.setDuration(150L);
        ofFloat.setInterpolator(timeInterpolator);
        final int i3 = 1;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda4
            public final /* synthetic */ BubbleStackView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i3) {
                    case 0:
                        BubbleStackView bubbleStackView = this.f$0;
                        BubbleViewProvider bubbleViewProvider = bubbleStackView.mExpandedBubble;
                        if (bubbleViewProvider != null && bubbleViewProvider.getExpandedView() != null) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            bubbleStackView.mExpandedBubble.getExpandedView().setContentAlpha(floatValue);
                            BubbleExpandedView expandedView = bubbleStackView.mExpandedBubble.getExpandedView();
                            expandedView.mPointerView.setAlpha(floatValue);
                            expandedView.setAlpha(floatValue);
                            return;
                        }
                        return;
                    default:
                        BubbleStackView bubbleStackView2 = this.f$0;
                        if (!bubbleStackView2.mExpandedViewTemporarilyHidden) {
                            bubbleStackView2.mAnimatingOutSurfaceView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.bubbles.BubbleStackView.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BubbleStackView bubbleStackView = BubbleStackView.this;
                PhysicsAnimator.SpringConfig springConfig = BubbleStackView.FLYOUT_IME_ANIMATION_SPRING_CONFIG;
                bubbleStackView.getClass();
            }
        });
        this.mBubbleSALogger = bubbleController.mBubbleSALogger;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
    
        if (r3 != false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addBubble(com.android.wm.shell.bubbles.Bubble r8) {
        /*
            r7 = this;
            int r0 = r7.getBubbleCount()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto La
            r0 = r1
            goto Lb
        La:
            r0 = r2
        Lb:
            if (r0 == 0) goto L5c
            com.android.wm.shell.bubbles.BubbleData r3 = r7.mBubbleData
            com.android.wm.shell.bubbles.BubbleViewProvider r3 = r3.mSelectedBubble
            boolean r4 = r3 instanceof com.android.wm.shell.bubbles.Bubble
            if (r4 == 0) goto L22
            com.android.wm.shell.bubbles.Bubble r3 = (com.android.wm.shell.bubbles.Bubble) r3
            android.content.pm.ShortcutInfo r3 = r3.mShortcutInfo
            if (r3 == 0) goto L1d
            r3 = r1
            goto L1e
        L1d:
            r3 = r2
        L1e:
            if (r3 == 0) goto L22
            r3 = r1
            goto L23
        L22:
            r3 = r2
        L23:
            if (r3 != 0) goto L26
            goto L4c
        L26:
            android.content.Context r3 = r7.mContext
            java.lang.String r4 = r3.getPackageName()
            android.content.SharedPreferences r3 = r3.getSharedPreferences(r4, r2)
            java.lang.String r4 = "HasSeenBubblesOnboarding"
            boolean r3 = r3.getBoolean(r4, r2)
            if (r3 == 0) goto L4e
            android.content.Context r3 = r7.mContext
            android.content.ContentResolver r3 = r3.getContentResolver()
            java.lang.String r4 = "force_show_bubbles_user_education"
            int r3 = android.provider.Settings.Secure.getInt(r3, r4, r2)
            if (r3 == 0) goto L48
            r3 = r1
            goto L49
        L48:
            r3 = r2
        L49:
            if (r3 == 0) goto L4c
            goto L4e
        L4c:
            r3 = r2
            goto L4f
        L4e:
            r3 = r1
        L4f:
            if (r3 == 0) goto L5c
            com.android.wm.shell.bubbles.animation.StackAnimationController r3 = r7.mStackAnimationController
            com.android.wm.shell.bubbles.BubblePositioner r4 = r7.mPositioner
            android.graphics.PointF r4 = r4.getRestingPosition()
            r3.setStackPosition(r4)
        L5c:
            com.android.wm.shell.bubbles.BadgedImageView r3 = r8.mIconView
            if (r3 != 0) goto L61
            return
        L61:
            com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout r4 = r7.mBubbleContainer
            android.widget.FrameLayout$LayoutParams r5 = new android.widget.FrameLayout$LayoutParams
            com.android.wm.shell.bubbles.BubblePositioner r6 = r7.mPositioner
            int r6 = r6.mBubbleSize
            r5.<init>(r6, r6)
            r4.addViewInternal(r3, r2, r5, r2)
            if (r0 == 0) goto L79
            com.android.wm.shell.bubbles.animation.StackAnimationController r0 = r7.mStackAnimationController
            boolean r0 = r0.isStackOnLeftSide()
            r7.mStackOnLeftOrWillBe = r0
        L79:
            com.android.wm.shell.bubbles.BadgedImageView r0 = r8.mIconView
            boolean r3 = r7.mStackOnLeftOrWillBe
            r3 = r3 ^ r1
            r0.mOnLeft = r3
            r0.invalidate()
            com.android.wm.shell.bubbles.BadgedImageView r0 = r8.mIconView
            com.android.wm.shell.bubbles.BubbleStackView$6 r3 = r7.mBubbleClickListener
            r0.setOnClickListener(r3)
            com.android.wm.shell.bubbles.BadgedImageView r0 = r8.mIconView
            com.android.wm.shell.bubbles.BubbleStackView$7 r3 = r7.mBubbleTouchListener
            r0.setOnTouchListener(r3)
            r7.updateBubbleShadows(r2)
            r7.animateInFlyoutForBubble(r8)
            r7.requestUpdate()
            r7.logBubbleEvent(r8, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.bubbles.BubbleStackView.addBubble(com.android.wm.shell.bubbles.Bubble):void");
    }

    public final void animateDismissBubble(View view, boolean z) {
        this.mViewBeingDismissed = view;
        if (view == null) {
            return;
        }
        if (z) {
            this.mDismissBubbleAnimator.removeAllListeners();
            this.mDismissBubbleAnimator.start();
        } else {
            this.mDismissBubbleAnimator.removeAllListeners();
            this.mDismissBubbleAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.bubbles.BubbleStackView.19
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    BubbleStackView bubbleStackView = BubbleStackView.this;
                    PhysicsAnimator.SpringConfig springConfig = BubbleStackView.FLYOUT_IME_ANIMATION_SPRING_CONFIG;
                    bubbleStackView.resetDismissAnimator();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    BubbleStackView bubbleStackView = BubbleStackView.this;
                    PhysicsAnimator.SpringConfig springConfig = BubbleStackView.FLYOUT_IME_ANIMATION_SPRING_CONFIG;
                    bubbleStackView.resetDismissAnimator();
                }
            });
            this.mDismissBubbleAnimator.end();
        }
    }

    public final void animateFlyoutCollapsed(float f, boolean z) {
        float f2;
        float f3;
        boolean isStackOnLeftSide = this.mStackAnimationController.isStackOnLeftSide();
        SpringForce springForce = this.mFlyoutTransitionSpring.mSpring;
        if (this.mBubbleToExpandAfterFlyoutCollapse != null) {
            f2 = 1500.0f;
        } else {
            f2 = 200.0f;
        }
        springForce.setStiffness(f2);
        SpringAnimation springAnimation = this.mFlyoutTransitionSpring;
        springAnimation.mValue = this.mFlyoutDragDeltaX;
        springAnimation.mStartValueIsSet = true;
        springAnimation.mVelocity = f;
        if (z) {
            int width = this.mFlyout.getWidth();
            if (isStackOnLeftSide) {
                width = -width;
            }
            f3 = width;
        } else {
            f3 = 0.0f;
        }
        springAnimation.animateToFinalPosition(f3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void animateInFlyoutForBubble(Bubble bubble) {
        byte b;
        Bubble.FlyoutMessage flyoutMessage = bubble.mFlyoutMessage;
        BadgedImageView badgedImageView = bubble.mIconView;
        int i = 1;
        boolean z = false;
        byte b2 = 0;
        if (flyoutMessage != null && flyoutMessage.message != null && bubble.showFlyout() && !isStackEduVisible() && !this.mIsExpanded && !this.mIsExpansionAnimating && !this.mIsGestureInProgress && this.mBubbleToExpandAfterFlyoutCollapse == null && badgedImageView != null) {
            b = true;
        } else {
            if (badgedImageView != null && this.mFlyout.getVisibility() != 0) {
                badgedImageView.removeDotSuppressionFlag(BadgedImageView.SuppressionFlag.FLYOUT_VISIBLE);
            }
            b = false;
        }
        if (b == false) {
            return;
        }
        this.mFlyoutDragDeltaX = 0.0f;
        this.mFlyout.removeCallbacks(this.mAnimateInFlyout);
        BubbleStackView$$ExternalSyntheticLambda1 bubbleStackView$$ExternalSyntheticLambda1 = this.mAfterFlyoutHidden;
        if (bubbleStackView$$ExternalSyntheticLambda1 != null) {
            bubbleStackView$$ExternalSyntheticLambda1.run();
            this.mAfterFlyoutHidden = null;
        }
        this.mAfterFlyoutHidden = new BubbleStackView$$ExternalSyntheticLambda1(this, bubble, b2 == true ? 1 : 0);
        BadgedImageView badgedImageView2 = bubble.mIconView;
        BadgedImageView.SuppressionFlag suppressionFlag = BadgedImageView.SuppressionFlag.FLYOUT_VISIBLE;
        if (badgedImageView2.mDotSuppressionFlags.add(suppressionFlag)) {
            if (suppressionFlag == BadgedImageView.SuppressionFlag.BEHIND_STACK) {
                z = true;
            }
            badgedImageView2.updateDotVisibility(z);
        }
        post(new BubbleStackView$$ExternalSyntheticLambda1(this, bubble, i));
        this.mFlyout.removeCallbacks(this.mHideFlyout);
        this.mFlyout.postDelayed(this.mHideFlyout, 5000L);
        logBubbleEvent(bubble, 16);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (motionEvent.getAction() != 0 && motionEvent.getActionIndex() != this.mPointerIndexDown) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.mPointerIndexDown = motionEvent.getActionIndex();
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.mPointerIndexDown = -1;
        }
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (!dispatchTouchEvent && !this.mIsExpanded && this.mIsGestureInProgress) {
            onTouch(this, motionEvent);
            dispatchTouchEvent = true;
        }
        if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
            z = true;
        }
        this.mIsGestureInProgress = z;
        return dispatchTouchEvent;
    }

    public final int getBubbleCount() {
        return this.mBubbleContainer.getChildCount() - 1;
    }

    public final int getBubbleIndex(BubbleViewProvider bubbleViewProvider) {
        if (bubbleViewProvider == null) {
            return 0;
        }
        return this.mBubbleContainer.indexOfChild(bubbleViewProvider.getIconView$1());
    }

    public BubbleViewProvider getExpandedBubble() {
        return this.mExpandedBubble;
    }

    public final float getInitialTranslationX() {
        float f;
        if (this.mPositioner.showBubblesVertically()) {
            float f2 = this.mBubbleStackOff;
            if (this.mStackAnimationController.isStackOnLeftSide()) {
                f = 1.0f;
            } else {
                f = -1.0f;
            }
            return f2 * f;
        }
        return 0.0f;
    }

    public final StackViewState getState() {
        this.mStackViewState.numberOfBubbles = this.mBubbleContainer.getChildCount();
        this.mStackViewState.selectedIndex = getBubbleIndex(this.mExpandedBubble);
        StackViewState stackViewState = this.mStackViewState;
        stackViewState.onLeft = this.mStackOnLeftOrWillBe;
        return stackViewState;
    }

    public final void hideCurrentInputMethod() {
        BubblePositioner bubblePositioner = this.mPositioner;
        bubblePositioner.mImeVisible = false;
        bubblePositioner.mImeHeight = 0;
        BubbleController bubbleController = this.mBubbleController;
        bubbleController.getClass();
        try {
            bubbleController.mBarService.hideCurrentInputMethodForBubbles();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public final void hideFlyoutImmediate() {
        this.mFlyout.removeCallbacks(this.mAnimateInFlyout);
        BubbleStackView$$ExternalSyntheticLambda1 bubbleStackView$$ExternalSyntheticLambda1 = this.mAfterFlyoutHidden;
        if (bubbleStackView$$ExternalSyntheticLambda1 != null) {
            bubbleStackView$$ExternalSyntheticLambda1.run();
            this.mAfterFlyoutHidden = null;
        }
        this.mFlyout.removeCallbacks(this.mAnimateInFlyout);
        this.mFlyout.removeCallbacks(this.mHideFlyout);
        BubbleFlyoutView bubbleFlyoutView = this.mFlyout;
        Runnable runnable = bubbleFlyoutView.mOnHide;
        if (runnable != null) {
            runnable.run();
            bubbleFlyoutView.mOnHide = null;
        }
        bubbleFlyoutView.setVisibility(8);
    }

    public boolean isManageEduVisible() {
        ManageEducationView manageEducationView = this.mManageEduView;
        if (manageEducationView != null && manageEducationView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public boolean isManageMenuDontBubbleVisible() {
        return false;
    }

    public boolean isManageMenuSettingsVisible() {
        return false;
    }

    public boolean isStackEduVisible() {
        StackEducationView stackEducationView = this.mStackEduView;
        if (stackEducationView != null && stackEducationView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final void logBubbleEvent(BubbleViewProvider bubbleViewProvider, int i) {
        String str;
        float f;
        if (bubbleViewProvider != null && (bubbleViewProvider instanceof Bubble)) {
            str = ((Bubble) bubbleViewProvider).mPackageName;
        } else {
            str = "null";
        }
        String str2 = str;
        BubbleData bubbleData = this.mBubbleData;
        int bubbleCount = getBubbleCount();
        int bubbleIndex = getBubbleIndex(bubbleViewProvider);
        int width = this.mPositioner.mPositionRect.width();
        float f2 = 0.0f;
        if (width > 0) {
            f = this.mStackAnimationController.mStackPosition.x / width;
        } else {
            f = 0.0f;
        }
        BigDecimal bigDecimal = new BigDecimal(f);
        RoundingMode roundingMode = RoundingMode.CEILING;
        float floatValue = bigDecimal.setScale(4, RoundingMode.HALF_UP).floatValue();
        int height = this.mPositioner.mPositionRect.height();
        if (height > 0) {
            f2 = this.mStackAnimationController.mStackPosition.y / height;
        }
        BigDecimal bigDecimal2 = new BigDecimal(f2);
        RoundingMode roundingMode2 = RoundingMode.CEILING;
        float floatValue2 = bigDecimal2.setScale(4, RoundingMode.HALF_UP).floatValue();
        BubbleLogger bubbleLogger = bubbleData.mLogger;
        if (bubbleViewProvider == null) {
            bubbleLogger.getClass();
            FrameworkStatsLog.write(149, str2, (String) null, 0, 0, bubbleCount, i, floatValue, floatValue2, false, false, false);
        } else {
            if (bubbleViewProvider.getKey().equals("Overflow")) {
                if (i == 3) {
                    bubbleLogger.mUiEventLogger.log(BubbleLogger.Event.BUBBLE_OVERFLOW_SELECTED, bubbleData.mCurrentUserId, str2);
                    return;
                }
                return;
            }
            Bubble bubble = (Bubble) bubbleViewProvider;
            bubbleLogger.getClass();
            FrameworkStatsLog.write(149, str2, bubble.mChannelId, bubble.mNotificationId, bubbleIndex, bubbleCount, i, floatValue, floatValue2, bubble.showInShade(), false, false);
        }
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        addOnLayoutChangeListener(this.mOrientationChangedListener);
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mPositioner.update();
        getViewTreeObserver().addOnComputeInternalInsetsListener(this);
        getViewTreeObserver().addOnDrawListener(this.mSystemGestureExcludeUpdater);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        if (r1 != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onComputeInternalInsets(android.view.ViewTreeObserver.InternalInsetsInfo r6) {
        /*
            r5 = this;
            r0 = 3
            r6.setTouchableInsets(r0)
            android.graphics.Rect r0 = r5.mTempRect
            r0.setEmpty()
            android.graphics.Rect r0 = r5.mTempRect
            boolean r1 = r5.isStackEduVisible()
            r2 = 0
            if (r1 == 0) goto L1e
            int r1 = r5.getWidth()
            int r3 = r5.getHeight()
            r0.set(r2, r2, r1, r3)
            goto L7e
        L1e:
            boolean r1 = r5.mIsExpanded
            if (r1 != 0) goto L57
            int r1 = r5.getBubbleCount()
            if (r1 > 0) goto L37
            com.android.wm.shell.bubbles.BubbleData r1 = r5.mBubbleData
            boolean r3 = r1.mShowingOverflow
            if (r3 == 0) goto L34
            boolean r1 = r1.mExpanded
            if (r1 == 0) goto L34
            r1 = 1
            goto L35
        L34:
            r1 = r2
        L35:
            if (r1 == 0) goto L69
        L37:
            com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout r1 = r5.mBubbleContainer
            android.view.View r1 = r1.getChildAt(r2)
            r1.getBoundsOnScreen(r0)
            int r1 = r0.top
            int r2 = r5.mBubbleTouchPadding
            int r1 = r1 - r2
            r0.top = r1
            int r1 = r0.left
            int r1 = r1 - r2
            r0.left = r1
            int r1 = r0.right
            int r1 = r1 + r2
            r0.right = r1
            int r1 = r0.bottom
            int r1 = r1 + r2
            r0.bottom = r1
            goto L69
        L57:
            com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout r1 = r5.mBubbleContainer
            r1.getBoundsOnScreen(r0)
            int r1 = r0.bottom
            com.android.wm.shell.bubbles.BubblePositioner r3 = r5.mPositioner
            boolean r4 = r3.mImeVisible
            if (r4 == 0) goto L66
            int r2 = r3.mImeHeight
        L66:
            int r1 = r1 - r2
            r0.bottom = r1
        L69:
            com.android.wm.shell.bubbles.BubbleFlyoutView r1 = r5.mFlyout
            int r1 = r1.getVisibility()
            if (r1 != 0) goto L7e
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            com.android.wm.shell.bubbles.BubbleFlyoutView r2 = r5.mFlyout
            r2.getBoundsOnScreen(r1)
            r0.union(r1)
        L7e:
            android.graphics.Region r6 = r6.touchableRegion
            android.graphics.Rect r5 = r5.mTempRect
            r6.set(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.bubbles.BubbleStackView.onComputeInternalInsets(android.view.ViewTreeObserver$InternalInsetsInfo):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnPreDrawListener(this.mViewUpdater);
        getViewTreeObserver().removeOnDrawListener(this.mSystemGestureExcludeUpdater);
        getViewTreeObserver().removeOnComputeInternalInsetsListener(this);
        BubbleOverflow bubbleOverflow = this.mBubbleOverflow;
        if (bubbleOverflow != null) {
            BubbleExpandedView bubbleExpandedView = bubbleOverflow.expandedView;
            if (bubbleExpandedView != null) {
                bubbleExpandedView.cleanUpExpandedState();
            }
            bubbleOverflow.expandedView = null;
        }
        removeOnLayoutChangeListener(this.mOrientationChangedListener);
    }

    public final void onDisplaySizeChanged() {
        float f;
        updateOverflow();
        setUpFlyout();
        setUpDismissView();
        updateUserEdu();
        this.mBubbleSize = this.mPositioner.mBubbleSize;
        for (Bubble bubble : this.mBubbleData.getBubbles()) {
            BadgedImageView badgedImageView = bubble.mIconView;
            if (badgedImageView == null) {
                Log.d("Bubbles", "Display size changed. Icon null: " + bubble);
            } else {
                int i = this.mBubbleSize;
                badgedImageView.setLayoutParams(new FrameLayout.LayoutParams(i, i));
            }
        }
        BadgedImageView iconView$1 = this.mBubbleOverflow.getIconView$1();
        int i2 = this.mBubbleSize;
        iconView$1.setLayoutParams(new FrameLayout.LayoutParams(i2, i2));
        this.mExpandedAnimationController.updateResources();
        StackAnimationController stackAnimationController = this.mStackAnimationController;
        PhysicsAnimationLayout physicsAnimationLayout = stackAnimationController.mLayout;
        if (physicsAnimationLayout != null) {
            stackAnimationController.mBubblePaddingTop = physicsAnimationLayout.getContext().getResources().getDimensionPixelSize(R.dimen.bubble_padding_top);
        }
        this.mDismissView.getClass();
        this.mMagneticTarget.getClass();
        if (!isStackEduVisible()) {
            StackAnimationController stackAnimationController2 = this.mStackAnimationController;
            RelativeStackPosition relativeStackPosition = new RelativeStackPosition(this.mPositioner.getRestingPosition(), this.mPositioner.getAllowableStackPositionRegion(getBubbleCount()));
            RectF allowableStackPositionRegion = stackAnimationController2.mPositioner.getAllowableStackPositionRegion(stackAnimationController2.getBubbleCount());
            if (relativeStackPosition.mOnLeft) {
                f = allowableStackPositionRegion.left;
            } else {
                f = allowableStackPositionRegion.right;
            }
            stackAnimationController2.setStackPosition(new PointF(f, (allowableStackPositionRegion.height() * relativeStackPosition.mVerticalOffsetPercent) + allowableStackPositionRegion.top));
        }
        if (this.mIsExpanded) {
            updateExpandedView();
        }
    }

    public final void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        setupLocalMenu(accessibilityNodeInfo);
    }

    public final void onOrientationChanged() {
        this.mRelativeStackPositionBeforeRotation = new RelativeStackPosition(this.mPositioner.getRestingPosition(), this.mPositioner.getAllowableStackPositionRegion(getBubbleCount()));
        addOnLayoutChangeListener(this.mOrientationChangedListener);
        hideFlyoutImmediate();
    }

    public final boolean performAccessibilityActionInternal(int i, Bundle bundle) {
        if (super.performAccessibilityActionInternal(i, bundle)) {
            return true;
        }
        RectF allowableStackPositionRegion = this.mPositioner.getAllowableStackPositionRegion(getBubbleCount());
        if (i == 1048576) {
            this.mBubbleData.dismissAll(6);
            announceForAccessibility(getResources().getString(R.string.accessibility_bubble_dismissed));
            return true;
        }
        if (i == 524288) {
            this.mBubbleData.setExpanded(false);
            return true;
        }
        if (i == 262144) {
            this.mBubbleData.setExpanded(true);
            return true;
        }
        if (i == R.id.action_move_top_left) {
            this.mStackAnimationController.springStack(allowableStackPositionRegion.left, allowableStackPositionRegion.top, 700.0f);
            return true;
        }
        if (i == R.id.action_move_top_right) {
            this.mStackAnimationController.springStack(allowableStackPositionRegion.right, allowableStackPositionRegion.top, 700.0f);
            return true;
        }
        if (i == R.id.action_move_bottom_left) {
            this.mStackAnimationController.springStack(allowableStackPositionRegion.left, allowableStackPositionRegion.bottom, 700.0f);
            return true;
        }
        if (i != R.id.action_move_bottom_right) {
            return false;
        }
        this.mStackAnimationController.springStack(allowableStackPositionRegion.right, allowableStackPositionRegion.bottom, 700.0f);
        return true;
    }

    public final void requestUpdate() {
        if (!this.mViewUpdatedRequested && !this.mIsExpansionAnimating) {
            this.mViewUpdatedRequested = true;
            getViewTreeObserver().addOnPreDrawListener(this.mViewUpdater);
            invalidate();
        }
    }

    public final void resetDismissAnimator() {
        this.mDismissBubbleAnimator.removeAllListeners();
        this.mDismissBubbleAnimator.cancel();
        View view = this.mViewBeingDismissed;
        if (view != null) {
            view.setAlpha(1.0f);
            this.mViewBeingDismissed = null;
        }
        DismissView dismissView = this.mDismissView;
        if (dismissView != null) {
            dismissView.circle.setScaleX(1.0f);
            this.mDismissView.circle.setScaleY(1.0f);
            this.mDismissView.resetCircle();
        }
    }

    public final void setBubbleSuppressed(Bubble bubble, boolean z) {
        if (z) {
            this.mBubbleContainer.removeViewAt(getBubbleIndex(bubble));
            updateExpandedView();
            return;
        }
        BadgedImageView badgedImageView = bubble.mIconView;
        if (badgedImageView == null) {
            return;
        }
        if (badgedImageView.getParent() != null) {
            Log.e("Bubbles", "Bubble is already added to parent. Can't unsuppress: " + bubble);
            return;
        }
        int indexOf = this.mBubbleData.getBubbles().indexOf(bubble);
        PhysicsAnimationLayout physicsAnimationLayout = this.mBubbleContainer;
        BadgedImageView badgedImageView2 = bubble.mIconView;
        int i = this.mPositioner.mBubbleSize;
        physicsAnimationLayout.addViewInternal(badgedImageView2, indexOf, new FrameLayout.LayoutParams(i, i), false);
        updateBubbleShadows(false);
        requestUpdate();
    }

    public final void setFlyoutStateForDragLength(float f) {
        boolean z;
        float f2;
        int i;
        if (this.mFlyout.getWidth() <= 0) {
            return;
        }
        boolean isStackOnLeftSide = this.mStackAnimationController.isStackOnLeftSide();
        this.mFlyoutDragDeltaX = f;
        if (isStackOnLeftSide) {
            f = -f;
        }
        float width = f / this.mFlyout.getWidth();
        float f3 = 0.0f;
        this.mFlyout.setCollapsePercent(Math.min(1.0f, Math.max(0.0f, width)));
        if (width < 0.0f || width > 1.0f) {
            boolean z2 = false;
            int i2 = 1;
            if (width > 1.0f) {
                z = true;
            } else {
                z = false;
            }
            if ((isStackOnLeftSide && width > 1.0f) || (!isStackOnLeftSide && width < 0.0f)) {
                z2 = true;
            }
            if (z) {
                f2 = width - 1.0f;
            } else {
                f2 = width * (-1.0f);
            }
            if (z2) {
                i = -1;
            } else {
                i = 1;
            }
            float f4 = f2 * i;
            float width2 = this.mFlyout.getWidth();
            if (z) {
                i2 = 2;
            }
            f3 = (width2 / (8.0f / i2)) * f4;
        }
        BubbleFlyoutView bubbleFlyoutView = this.mFlyout;
        bubbleFlyoutView.setTranslationX(bubbleFlyoutView.mRestingTranslationX + f3);
    }

    public final void setSelectedBubble(final BubbleViewProvider bubbleViewProvider) {
        if (bubbleViewProvider == null) {
            this.mBubbleData.mShowingOverflow = false;
            return;
        }
        if (this.mExpandedBubble == bubbleViewProvider) {
            return;
        }
        if (bubbleViewProvider.getKey().equals("Overflow")) {
            this.mBubbleData.mShowingOverflow = true;
        } else {
            this.mBubbleData.mShowingOverflow = false;
        }
        if (this.mIsExpanded && this.mIsExpansionAnimating) {
            ((HandlerExecutor) this.mMainExecutor).removeCallbacks(this.mDelayedAnimation);
            this.mIsExpansionAnimating = false;
            this.mIsBubbleSwitchAnimating = false;
            PhysicsAnimator.getInstance(this.mAnimatingOutSurfaceView).cancel();
            PhysicsAnimator.getInstance(this.mExpandedViewContainerMatrix).cancel();
            this.mExpandedViewContainer.setAnimationMatrix(null);
        }
        showManageMenu(false);
        final BubbleViewProvider bubbleViewProvider2 = this.mExpandedBubble;
        this.mExpandedBubble = bubbleViewProvider;
        if (this.mIsExpanded) {
            hideCurrentInputMethod();
            this.mExpandedViewContainer.setAlpha(0.0f);
            SurfaceSynchronizer surfaceSynchronizer = this.mSurfaceSynchronizer;
            Runnable runnable = new Runnable() { // from class: com.android.wm.shell.bubbles.BubbleStackView$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    BubbleStackView bubbleStackView = BubbleStackView.this;
                    BubbleViewProvider bubbleViewProvider3 = bubbleViewProvider2;
                    BubbleViewProvider bubbleViewProvider4 = bubbleViewProvider;
                    if (bubbleViewProvider3 != null) {
                        bubbleStackView.getClass();
                        bubbleViewProvider3.setTaskViewVisibility();
                    }
                    bubbleStackView.updateExpandedBubble();
                    bubbleStackView.requestUpdate();
                    bubbleStackView.logBubbleEvent(bubbleViewProvider3, 4);
                    bubbleStackView.logBubbleEvent(bubbleViewProvider4, 3);
                    Bubbles.BubbleExpandListener bubbleExpandListener = bubbleStackView.mExpandListener;
                    if (bubbleExpandListener != null && bubbleViewProvider3 != null) {
                        bubbleExpandListener.onBubbleExpandChanged(bubbleViewProvider3.getKey(), false);
                    }
                    Bubbles.BubbleExpandListener bubbleExpandListener2 = bubbleStackView.mExpandListener;
                    if (bubbleExpandListener2 != null && bubbleViewProvider4 != null) {
                        bubbleExpandListener2.onBubbleExpandChanged(bubbleViewProvider4.getKey(), true);
                    }
                }
            };
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) surfaceSynchronizer;
            anonymousClass1.getClass();
            Choreographer.getInstance().postFrameCallback(new AnonymousClass1.ChoreographerFrameCallbackC01521(anonymousClass1, runnable));
        }
    }

    public final void setUpDismissView() {
        DismissView dismissView = this.mDismissView;
        if (dismissView != null) {
            removeView(dismissView);
        }
        this.mDismissView = new DismissView(getContext());
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bubble_elevation);
        addView(this.mDismissView);
        this.mDismissView.setElevation(dimensionPixelSize);
        this.mMagneticTarget = new MagnetizedObject.MagneticTarget(this.mDismissView.circle, Settings.Secure.getInt(getContext().getContentResolver(), "bubble_dismiss_radius", this.mBubbleSize * 2));
        this.mBubbleContainer.bringToFront();
    }

    public final void setUpFlyout() {
        BubbleFlyoutView bubbleFlyoutView = this.mFlyout;
        if (bubbleFlyoutView != null) {
            removeView(bubbleFlyoutView);
        }
        BubbleFlyoutView bubbleFlyoutView2 = new BubbleFlyoutView(getContext(), this.mPositioner);
        this.mFlyout = bubbleFlyoutView2;
        bubbleFlyoutView2.setVisibility(8);
        this.mFlyout.setOnClickListener(this.mFlyoutClickListener);
        this.mFlyout.setOnTouchListener(this.mFlyoutTouchListener);
        addView(this.mFlyout, new FrameLayout.LayoutParams(-2, -2));
    }

    public final void setupLocalMenu(AccessibilityNodeInfo accessibilityNodeInfo) {
        Resources resources = ((FrameLayout) this).mContext.getResources();
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_top_left, resources.getString(R.string.bubble_accessibility_action_move_top_left)));
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_top_right, resources.getString(R.string.bubble_accessibility_action_move_top_right)));
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_bottom_left, resources.getString(R.string.bubble_accessibility_action_move_bottom_left)));
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_bottom_right, resources.getString(R.string.bubble_accessibility_action_move_bottom_right)));
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_DISMISS);
        if (this.mIsExpanded) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_COLLAPSE);
        } else {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_EXPAND);
        }
    }

    public final void showScrim(boolean z) {
        final Runnable runnable = null;
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.android.wm.shell.bubbles.BubbleStackView.18
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BubbleStackView.this.mScrimAnimating = false;
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BubbleStackView.this.mScrimAnimating = true;
            }
        };
        if (z) {
            this.mScrim.animate().setInterpolator(Interpolators.ALPHA_IN).alpha(0.6f).setListener(animatorListenerAdapter).start();
        } else {
            this.mScrim.animate().alpha(0.0f).setInterpolator(Interpolators.ALPHA_OUT).setListener(animatorListenerAdapter).start();
        }
    }

    public final void startMonitoringSwipeUpGesture() {
        boolean z;
        stopMonitoringSwipeUpGestureInternal();
        if (((FrameLayout) this).mContext.getResources().getInteger(android.R.integer.kg_security_flipper_weight) == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            final BubblesNavBarGestureTracker bubblesNavBarGestureTracker = new BubblesNavBarGestureTracker(((FrameLayout) this).mContext, this.mPositioner);
            this.mBubblesNavBarGestureTracker = bubblesNavBarGestureTracker;
            AnonymousClass9 anonymousClass9 = this.mSwipeUpListener;
            BubblesNavBarInputEventReceiver bubblesNavBarInputEventReceiver = bubblesNavBarGestureTracker.mInputEventReceiver;
            if (bubblesNavBarInputEventReceiver != null) {
                bubblesNavBarInputEventReceiver.dispose();
                bubblesNavBarGestureTracker.mInputEventReceiver = null;
            }
            InputMonitor inputMonitor = bubblesNavBarGestureTracker.mInputMonitor;
            if (inputMonitor != null) {
                inputMonitor.dispose();
                bubblesNavBarGestureTracker.mInputMonitor = null;
            }
            Context context = bubblesNavBarGestureTracker.mContext;
            InputMonitor monitorGestureInput = ((InputManager) context.getSystemService(InputManager.class)).monitorGestureInput("bubbles-gesture", context.getDisplayId());
            bubblesNavBarGestureTracker.mInputMonitor = monitorGestureInput;
            bubblesNavBarGestureTracker.mInputEventReceiver = new BubblesNavBarInputEventReceiver(monitorGestureInput.getInputChannel(), Choreographer.getInstance(), new BubblesNavBarMotionEventHandler(context, bubblesNavBarGestureTracker.mPositioner, new Runnable() { // from class: com.android.wm.shell.bubbles.BubblesNavBarGestureTracker$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    InputMonitor inputMonitor2 = BubblesNavBarGestureTracker.this.mInputMonitor;
                    if (inputMonitor2 != null) {
                        inputMonitor2.pilferPointers();
                    }
                }
            }, anonymousClass9));
            setOnTouchListener(this.mContainerSwipeListener);
        }
    }

    public final void stopMonitoringSwipeUpGestureInternal() {
        BubblesNavBarGestureTracker bubblesNavBarGestureTracker = this.mBubblesNavBarGestureTracker;
        if (bubblesNavBarGestureTracker != null) {
            BubblesNavBarInputEventReceiver bubblesNavBarInputEventReceiver = bubblesNavBarGestureTracker.mInputEventReceiver;
            if (bubblesNavBarInputEventReceiver != null) {
                bubblesNavBarInputEventReceiver.dispose();
                bubblesNavBarGestureTracker.mInputEventReceiver = null;
            }
            InputMonitor inputMonitor = bubblesNavBarGestureTracker.mInputMonitor;
            if (inputMonitor != null) {
                inputMonitor.dispose();
                bubblesNavBarGestureTracker.mInputMonitor = null;
            }
            this.mBubblesNavBarGestureTracker = null;
            setOnTouchListener(null);
        }
    }

    public final void updateBadges(boolean z) {
        int bubbleCount = getBubbleCount();
        for (int i = 0; i < bubbleCount; i++) {
            BadgedImageView badgedImageView = (BadgedImageView) this.mBubbleContainer.getChildAt(i);
            boolean z2 = true;
            if (this.mIsExpanded) {
                if (!this.mPositioner.showBubblesVertically() || this.mStackOnLeftOrWillBe) {
                    z2 = false;
                }
                badgedImageView.showDotAndBadge(z2);
            } else if (z) {
                if (i == 0) {
                    badgedImageView.showDotAndBadge(!this.mStackOnLeftOrWillBe);
                } else {
                    badgedImageView.hideDotAndBadge(!this.mStackOnLeftOrWillBe);
                }
            }
        }
    }

    public final void updateBubbleShadows(boolean z) {
        boolean z2;
        int bubbleCount = getBubbleCount();
        for (int i = 0; i < bubbleCount; i++) {
            float f = (this.mPositioner.mMaxBubbles * this.mBubbleElevation) - i;
            BadgedImageView badgedImageView = (BadgedImageView) this.mBubbleContainer.getChildAt(i);
            MagnetizedObject magnetizedObject = this.mMagnetizedObject;
            if (magnetizedObject != null && magnetizedObject.underlyingObject.equals(badgedImageView)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z && !z2) {
                if (i >= 2) {
                    f = 0.0f;
                }
                badgedImageView.setZ(f);
            } else {
                badgedImageView.setZ(f);
            }
        }
    }

    public final void updateBubblesAcessibillityStates() {
        final BadgedImageView badgedImageView;
        final BadgedImageView badgedImageView2;
        Bubble bubble;
        int i = 0;
        while (true) {
            badgedImageView = null;
            int i2 = 1;
            if (i >= this.mBubbleData.getBubbles().size()) {
                break;
            }
            if (i > 0) {
                bubble = this.mBubbleData.getBubbles().get(i - 1);
            } else {
                bubble = null;
            }
            BadgedImageView badgedImageView3 = this.mBubbleData.getBubbles().get(i).mIconView;
            if (badgedImageView3 != null) {
                if (this.mIsExpanded) {
                    badgedImageView3.setImportantForAccessibility(1);
                    if (bubble != null) {
                        badgedImageView = bubble.mIconView;
                    }
                    if (badgedImageView != null) {
                        badgedImageView3.setAccessibilityDelegate(new View.AccessibilityDelegate(this) { // from class: com.android.wm.shell.bubbles.BubbleStackView.16
                            @Override // android.view.View.AccessibilityDelegate
                            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                                accessibilityNodeInfo.setTraversalAfter(badgedImageView);
                            }
                        });
                    }
                } else {
                    if (i != 0) {
                        i2 = 2;
                    }
                    badgedImageView3.setImportantForAccessibility(i2);
                }
            }
            i++;
        }
        if (this.mIsExpanded) {
            BubbleOverflow bubbleOverflow = this.mBubbleOverflow;
            if (bubbleOverflow != null) {
                badgedImageView = bubbleOverflow.getIconView$1();
            }
            if (badgedImageView != null && !this.mBubbleData.getBubbles().isEmpty() && (badgedImageView2 = this.mBubbleData.getBubbles().get(this.mBubbleData.getBubbles().size() - 1).mIconView) != null) {
                badgedImageView.setAccessibilityDelegate(new View.AccessibilityDelegate(this) { // from class: com.android.wm.shell.bubbles.BubbleStackView.17
                    @Override // android.view.View.AccessibilityDelegate
                    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                        accessibilityNodeInfo.setTraversalAfter(badgedImageView2);
                    }
                });
            }
        }
    }

    public final void updateContentDescription() {
        if (this.mBubbleData.getBubbles().isEmpty()) {
            return;
        }
        for (int i = 0; i < this.mBubbleData.getBubbles().size(); i++) {
            Bubble bubble = this.mBubbleData.getBubbles().get(i);
            String str = bubble.mAppName;
            String str2 = bubble.mTitle;
            if (str2 == null) {
                str2 = getResources().getString(R.string.notification_bubble_title);
            }
            BadgedImageView badgedImageView = bubble.mIconView;
            if (badgedImageView != null) {
                if (!this.mIsExpanded && i <= 0) {
                    bubble.mIconView.setContentDescription(getResources().getString(R.string.bubble_content_description_stack, str2, str, Integer.valueOf(this.mBubbleContainer.getChildCount() - 1)));
                } else {
                    badgedImageView.setContentDescription(getResources().getString(R.string.bubble_content_description_single, str2, str));
                }
            }
        }
    }

    public final void updateExpandedBubble() {
        BubbleViewProvider bubbleViewProvider;
        this.mExpandedViewContainer.removeAllViews();
        if (this.mIsExpanded && (bubbleViewProvider = this.mExpandedBubble) != null && bubbleViewProvider.getExpandedView() != null) {
            BubbleExpandedView expandedView = this.mExpandedBubble.getExpandedView();
            expandedView.setContentVisibility(false);
            boolean z = !this.mIsExpansionAnimating;
            expandedView.mIsAnimating = z;
            if (!z) {
                expandedView.setContentVisibility(expandedView.mIsContentVisible);
            }
            this.mExpandedViewContainerMatrix.setScaleX(0.0f);
            this.mExpandedViewContainerMatrix.setScaleY(0.0f);
            this.mExpandedViewContainerMatrix.setTranslate(0.0f, 0.0f);
            this.mExpandedViewContainer.setVisibility(4);
            this.mExpandedViewContainer.setAlpha(0.0f);
            this.mExpandedViewContainer.addView(expandedView);
            BubbleStackView$$ExternalSyntheticLambda8 bubbleStackView$$ExternalSyntheticLambda8 = new BubbleStackView$$ExternalSyntheticLambda8(this, 2);
            expandedView.mManageClickListener = bubbleStackView$$ExternalSyntheticLambda8;
            expandedView.mManageButton.setOnClickListener(bubbleStackView$$ExternalSyntheticLambda8);
            if (!this.mIsExpansionAnimating) {
                this.mIsBubbleSwitchAnimating = true;
                SurfaceSynchronizer surfaceSynchronizer = this.mSurfaceSynchronizer;
                BubbleStackView$$ExternalSyntheticLambda3 bubbleStackView$$ExternalSyntheticLambda3 = new BubbleStackView$$ExternalSyntheticLambda3(this, 7);
                AnonymousClass1 anonymousClass1 = (AnonymousClass1) surfaceSynchronizer;
                anonymousClass1.getClass();
                Choreographer.getInstance().postFrameCallback(new AnonymousClass1.ChoreographerFrameCallbackC01521(anonymousClass1, bubbleStackView$$ExternalSyntheticLambda3));
            }
        }
    }

    public final void updateExpandedView() {
        float f;
        BubbleViewProvider bubbleViewProvider = this.mExpandedBubble;
        if (bubbleViewProvider != null) {
            "Overflow".equals(bubbleViewProvider.getKey());
        }
        int[] expandedViewContainerPadding = this.mPositioner.getExpandedViewContainerPadding(this.mStackAnimationController.isStackOnLeftSide());
        int i = 0;
        this.mExpandedViewContainer.setPadding(expandedViewContainerPadding[0], expandedViewContainerPadding[1], expandedViewContainerPadding[2], expandedViewContainerPadding[3]);
        if (this.mIsExpansionAnimating) {
            FrameLayout frameLayout = this.mExpandedViewContainer;
            if (!this.mIsExpanded) {
                i = 8;
            }
            frameLayout.setVisibility(i);
        }
        BubbleViewProvider bubbleViewProvider2 = this.mExpandedBubble;
        if (bubbleViewProvider2 != null && bubbleViewProvider2.getExpandedView() != null) {
            PointF expandedBubbleXY = this.mPositioner.getExpandedBubbleXY(getBubbleIndex(this.mExpandedBubble), getState());
            FrameLayout frameLayout2 = this.mExpandedViewContainer;
            BubblePositioner bubblePositioner = this.mPositioner;
            BubbleViewProvider bubbleViewProvider3 = this.mExpandedBubble;
            if (bubblePositioner.showBubblesVertically()) {
                f = expandedBubbleXY.y;
            } else {
                f = expandedBubbleXY.x;
            }
            frameLayout2.setTranslationY(bubblePositioner.getExpandedViewY(bubbleViewProvider3, f));
            this.mExpandedViewContainer.setTranslationX(getInitialTranslationX());
            this.mExpandedBubble.getExpandedView().updateView(this.mExpandedViewContainer.getLocationOnScreen());
            updatePointerPosition();
        }
        this.mStackOnLeftOrWillBe = this.mStackAnimationController.isStackOnLeftSide();
    }

    public final void updateOverflow() {
        BubbleOverflow bubbleOverflow = this.mBubbleOverflow;
        bubbleOverflow.updateResources();
        BubbleExpandedView bubbleExpandedView = bubbleOverflow.expandedView;
        if (bubbleExpandedView != null) {
            bubbleExpandedView.applyThemeAttrs();
        }
        BadgedImageView iconView$1 = bubbleOverflow.getIconView$1();
        if (iconView$1 != null) {
            iconView$1.mBubbleIcon.setImageResource(R.drawable.sec_bubble_tw_ic_fad_add_mtrl);
        }
        bubbleOverflow.updateBtnTheme();
        this.mBubbleContainer.reorderView(this.mBubbleOverflow.getIconView$1(), this.mBubbleContainer.getChildCount() - 1);
        updateOverflowVisibility();
    }

    public final void updateOverflowVisibility() {
        boolean z;
        BubbleOverflow bubbleOverflow = this.mBubbleOverflow;
        int i = 0;
        if (!this.mIsExpanded) {
            BubbleData bubbleData = this.mBubbleData;
            if (bubbleData.mShowingOverflow && bubbleData.mExpanded) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                i = 8;
            }
        }
        BadgedImageView badgedImageView = bubbleOverflow.overflowBtn;
        if (badgedImageView != null) {
            badgedImageView.setVisibility(i);
        }
    }

    public final void updatePointerPosition() {
        int bubbleIndex;
        float f;
        BubbleViewProvider bubbleViewProvider = this.mExpandedBubble;
        if (bubbleViewProvider == null || bubbleViewProvider.getExpandedView() == null || (bubbleIndex = getBubbleIndex(this.mExpandedBubble)) == -1) {
            return;
        }
        PointF expandedBubbleXY = this.mPositioner.getExpandedBubbleXY(bubbleIndex, getState());
        if (this.mPositioner.showBubblesVertically()) {
            f = expandedBubbleXY.y;
        } else {
            f = expandedBubbleXY.x;
        }
        this.mExpandedBubble.getExpandedView().setPointerPosition(f, this.mStackOnLeftOrWillBe);
    }

    public final void updateTemporarilyInvisibleAnimation(boolean z) {
        boolean z2;
        long j;
        removeCallbacks(this.mAnimateTemporarilyInvisibleImmediate);
        if (this.mIsDraggingStack) {
            return;
        }
        if (this.mTemporarilyInvisible && this.mFlyout.getVisibility() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        BubbleStackView$$ExternalSyntheticLambda3 bubbleStackView$$ExternalSyntheticLambda3 = this.mAnimateTemporarilyInvisibleImmediate;
        if (z2 && !z) {
            j = 1000;
        } else {
            j = 0;
        }
        postDelayed(bubbleStackView$$ExternalSyntheticLambda3, j);
    }

    public final void updateUserEdu() {
        int i;
        if (isStackEduVisible()) {
            StackEducationView stackEducationView = this.mStackEduView;
            if (!stackEducationView.isHiding) {
                removeView(stackEducationView);
                StackEducationView stackEducationView2 = new StackEducationView(((FrameLayout) this).mContext, this.mPositioner, this.mBubbleController);
                this.mStackEduView = stackEducationView2;
                addView(stackEducationView2);
                this.mBubbleContainer.bringToFront();
                this.mStackAnimationController.setStackPosition(this.mPositioner.getDefaultStartPosition());
                final StackEducationView stackEducationView3 = this.mStackEduView;
                final PointF defaultStartPosition = this.mPositioner.getDefaultStartPosition();
                stackEducationView3.isHiding = false;
                if (stackEducationView3.getVisibility() != 0) {
                    stackEducationView3.controller.updateWindowFlagsForBackpress(true);
                    ViewGroup.LayoutParams layoutParams = stackEducationView3.getLayoutParams();
                    stackEducationView3.positioner.getClass();
                    if (stackEducationView3.positioner.isLandscape()) {
                        i = stackEducationView3.getContext().getResources().getDimensionPixelSize(R.dimen.bubbles_user_education_width);
                    } else {
                        i = -1;
                    }
                    layoutParams.width = i;
                    final int dimensionPixelSize = stackEducationView3.getContext().getResources().getDimensionPixelSize(R.dimen.bubble_user_education_stack_padding);
                    stackEducationView3.setAlpha(0.0f);
                    stackEducationView3.setVisibility(0);
                    stackEducationView3.post(new Runnable() { // from class: com.android.wm.shell.bubbles.StackEducationView$show$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            StackEducationView.this.requestFocus();
                            View view = (View) StackEducationView.this.view$delegate.getValue();
                            StackEducationView stackEducationView4 = StackEducationView.this;
                            int i2 = dimensionPixelSize;
                            PointF pointF = defaultStartPosition;
                            if (view.getResources().getConfiguration().getLayoutDirection() == 0) {
                                view.setPadding(stackEducationView4.positioner.mBubbleSize + i2, view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
                            } else {
                                view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), stackEducationView4.positioner.mBubbleSize + i2, view.getPaddingBottom());
                                stackEducationView4.positioner.getClass();
                                if (stackEducationView4.positioner.isLandscape()) {
                                    view.setTranslationX((stackEducationView4.positioner.mScreenRect.right - view.getWidth()) - i2);
                                } else {
                                    view.setTranslationX(0.0f);
                                }
                            }
                            view.setTranslationY((pointF.y + (stackEducationView4.positioner.mBubbleSize / 2)) - (view.getHeight() / 2));
                            StackEducationView.this.animate().setDuration(StackEducationView.this.ANIMATE_DURATION).setInterpolator(Interpolators.FAST_OUT_SLOW_IN).alpha(1.0f);
                        }
                    });
                    stackEducationView3.getContext().getSharedPreferences(stackEducationView3.getContext().getPackageName(), 0).edit().putBoolean("HasSeenBubblesOnboarding", true).apply();
                }
            }
        }
        if (isManageEduVisible()) {
            removeView(this.mManageEduView);
            ManageEducationView manageEducationView = new ManageEducationView(((FrameLayout) this).mContext, this.mPositioner);
            this.mManageEduView = manageEducationView;
            addView(manageEducationView);
            this.mManageEduView.show(this.mExpandedBubble.getExpandedView());
        }
    }

    public final void updateZOrder() {
        float f;
        int bubbleCount = getBubbleCount();
        for (int i = 0; i < bubbleCount; i++) {
            BadgedImageView badgedImageView = (BadgedImageView) this.mBubbleContainer.getChildAt(i);
            if (i < 2) {
                f = (this.mPositioner.mMaxBubbles * this.mBubbleElevation) - i;
            } else {
                f = 0.0f;
            }
            badgedImageView.setZ(f);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RelativeStackPosition {
        public final boolean mOnLeft;
        public final float mVerticalOffsetPercent;

        public RelativeStackPosition(boolean z, float f) {
            this.mOnLeft = z;
            this.mVerticalOffsetPercent = Math.max(0.0f, Math.min(1.0f, f));
        }

        public RelativeStackPosition(PointF pointF, RectF rectF) {
            this.mOnLeft = pointF.x < rectF.width() / 2.0f;
            this.mVerticalOffsetPercent = Math.max(0.0f, Math.min(1.0f, (pointF.y - rectF.top) / rectF.height()));
        }
    }

    public void showManageMenu(boolean z) {
    }
}
