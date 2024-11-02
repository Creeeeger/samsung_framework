package com.android.wm.shell.common.split;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.hardware.input.InputManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.InsetsController;
import android.view.InsetsSource;
import android.view.InsetsState;
import android.view.MotionEvent;
import android.view.SurfaceControlViewHost;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import com.android.internal.policy.DividerSnapAlgorithm;
import com.android.systemui.R;
import com.android.wm.shell.animation.Interpolators;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.splitscreen.StageTaskListener;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecoration;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.util.InterpolatorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class DividerView extends FrameLayout implements View.OnTouchListener {
    public static final AnonymousClass1 DIVIDER_HEIGHT_PROPERTY = new AnonymousClass1(Integer.class, "height");
    public static final AnonymousClass3 DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY;
    public static final AnonymousClass2 DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY;
    public final AnonymousClass4 mAnimatorListener;
    public View mBackground;
    public FrameLayout mDividerBar;
    public final Rect mDividerBounds;
    public DividerPanel mDividerPanel;
    public DividerResizeController mDividerResizeController;
    public DividerRoundedCorner mDividerRoundedCorner;
    public GestureDetector mGestureDetector;
    public final Handler mH;
    public DividerHandleView mHandle;
    public final AnonymousClass5 mHandleDelegate;
    public final DividerView$$ExternalSyntheticLambda0 mHandleHoverListener;
    public final InputManager mInputManager;
    public boolean mInteractive;
    public final boolean mIsCellDivider;
    public final AnonymousClass11 mMouseOut;
    public final AnonymousClass9 mMouseOutAnimatorListener;
    public final AnimatorSet mMouseOutAnimatorSet;
    public final ValueAnimator mMouseOutRoundedCornerAnimator;
    public final AnonymousClass10 mMouseOver;
    public final AnonymousClass8 mMouseOverAnimatorListener;
    public final AnimatorSet mMouseOverAnimatorSet;
    public int mMouseOverBgScaleSize;
    public final ValueAnimator mMouseOverRoundedCornerAnimator;
    public boolean mMoving;
    public final AnonymousClass12 mMultiSplitHandleDelegate;
    public boolean mNeedUpdateCursorWhenMoving;
    public final AnonymousClass7 mRoundedCornerUpdateListener;
    public boolean mSetTouchRegion;
    public SplitLayout mSplitLayout;
    public SplitWindowManager mSplitWindowManager;
    public int mStartPos;
    public final Rect mTempRect;
    public int mTouchElevation;
    public final int mTouchSlop;
    public boolean mTouching;
    public VelocityTracker mVelocityTracker;
    public SurfaceControlViewHost mViewHost;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.common.split.DividerView$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends Property {
        public AnonymousClass1(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public final Object get(Object obj) {
            return Integer.valueOf(((DividerView) obj).mDividerBar.getLayoutParams().height);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            DividerView dividerView = (DividerView) obj;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) dividerView.mDividerBar.getLayoutParams();
            marginLayoutParams.height = ((Integer) obj2).intValue();
            dividerView.mDividerBar.setLayoutParams(marginLayoutParams);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DoubleTapListener extends GestureDetector.SimpleOnGestureListener {
        public /* synthetic */ DoubleTapListener(DividerView dividerView, int i) {
            this();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            SplitLayout splitLayout = DividerView.this.mSplitLayout;
            if (splitLayout != null) {
                ((StageCoordinator) splitLayout.mSplitLayoutHandler).onDoubleTappedDivider();
                return true;
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return true;
        }

        private DoubleTapListener() {
        }
    }

    public static /* synthetic */ void $r8$lambda$xjbJZubBp3a6wlufPhmpfDd1Ohw(DividerView dividerView, MotionEvent motionEvent) {
        dividerView.getClass();
        if (motionEvent.getToolType(0) == 3) {
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 9) {
                    if (action == 10) {
                        dividerView.mNeedUpdateCursorWhenMoving = true;
                        dividerView.mH.removeCallbacks(dividerView.mMouseOver);
                        dividerView.mH.removeCallbacks(dividerView.mMouseOut);
                        dividerView.mH.post(dividerView.mMouseOut);
                        return;
                    }
                    return;
                }
                dividerView.mH.removeCallbacks(dividerView.mMouseOver);
                dividerView.mH.removeCallbacks(dividerView.mMouseOut);
                dividerView.mH.postDelayed(dividerView.mMouseOver, 100L);
                return;
            }
            if (dividerView.mNeedUpdateCursorWhenMoving) {
                dividerView.updateCursorType();
                dividerView.mNeedUpdateCursorWhenMoving = false;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.wm.shell.common.split.DividerView$2] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.wm.shell.common.split.DividerView$3] */
    static {
        Class<Integer> cls = Integer.class;
        DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY = new Property(cls, "width") { // from class: com.android.wm.shell.common.split.DividerView.2
            @Override // android.util.Property
            public final Object get(Object obj) {
                View view = ((DividerView) obj).mBackground;
                if (view != null) {
                    return Integer.valueOf(view.getLayoutParams().width);
                }
                return 0;
            }

            @Override // android.util.Property
            public final void set(Object obj, Object obj2) {
                DividerView dividerView = (DividerView) obj;
                Integer num = (Integer) obj2;
                View view = dividerView.mBackground;
                if (view != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    marginLayoutParams.width = num.intValue();
                    dividerView.mBackground.setLayoutParams(marginLayoutParams);
                }
            }
        };
        DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY = new Property(cls, "height") { // from class: com.android.wm.shell.common.split.DividerView.3
            @Override // android.util.Property
            public final Object get(Object obj) {
                View view = ((DividerView) obj).mBackground;
                if (view != null) {
                    return Integer.valueOf(view.getLayoutParams().height);
                }
                return 0;
            }

            @Override // android.util.Property
            public final void set(Object obj, Object obj2) {
                DividerView dividerView = (DividerView) obj;
                Integer num = (Integer) obj2;
                View view = dividerView.mBackground;
                if (view != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    marginLayoutParams.height = num.intValue();
                    dividerView.mBackground.setLayoutParams(marginLayoutParams);
                }
            }
        };
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [com.android.wm.shell.common.split.DividerView$8] */
    /* JADX WARN: Type inference failed for: r2v11, types: [com.android.wm.shell.common.split.DividerView$9] */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.android.wm.shell.common.split.DividerView$10] */
    /* JADX WARN: Type inference failed for: r2v13, types: [com.android.wm.shell.common.split.DividerView$11] */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.android.wm.shell.common.split.DividerView$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r2v15, types: [com.android.wm.shell.common.split.DividerView$12] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.android.wm.shell.common.split.DividerView$4] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.android.wm.shell.common.split.DividerView$5] */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.android.wm.shell.common.split.DividerView$7] */
    public DividerView(Context context) {
        super(context);
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mSetTouchRegion = true;
        this.mMouseOverAnimatorSet = new AnimatorSet();
        this.mMouseOutAnimatorSet = new AnimatorSet();
        this.mMouseOverRoundedCornerAnimator = new ValueAnimator();
        this.mMouseOutRoundedCornerAnimator = new ValueAnimator();
        this.mH = new Handler();
        final int i = 0;
        this.mTouching = false;
        this.mNeedUpdateCursorWhenMoving = true;
        this.mDividerBounds = new Rect();
        this.mTempRect = new Rect();
        this.mAnimatorListener = new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.DividerView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                DividerView.this.mSetTouchRegion = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                DividerView.this.mSetTouchRegion = true;
            }
        };
        this.mHandleDelegate = new View.AccessibilityDelegate() { // from class: com.android.wm.shell.common.split.DividerView.5
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                DividerSnapAlgorithm dividerSnapAlgorithm = DividerView.this.mSplitLayout.mDividerSnapAlgorithm;
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                if (DividerView.this.isLandscape()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_full)));
                    if (dividerSnapAlgorithm.isFirstSplitTargetAvailable()) {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_70, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_70)));
                    }
                    if (dividerSnapAlgorithm.showMiddleSplitTargetForAccessibility()) {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_50, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_50)));
                    }
                    if (dividerSnapAlgorithm.isLastSplitTargetAvailable()) {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_30, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_30)));
                    }
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_rb_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_right_full)));
                    return;
                }
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_full)));
                if (dividerSnapAlgorithm.isFirstSplitTargetAvailable()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_70, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_70)));
                }
                if (dividerSnapAlgorithm.showMiddleSplitTargetForAccessibility()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_50, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_50)));
                }
                if (dividerSnapAlgorithm.isLastSplitTargetAvailable()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_30, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_30)));
                }
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_rb_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_bottom_full)));
            }

            /* JADX WARN: Removed duplicated region for block: B:6:0x0043  */
            /* JADX WARN: Removed duplicated region for block: B:9:0x0058  */
            @Override // android.view.View.AccessibilityDelegate
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean performAccessibilityAction(android.view.View r4, int r5, android.os.Bundle r6) {
                /*
                    r3 = this;
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r1 = r0.mSplitLayout
                    com.android.internal.policy.DividerSnapAlgorithm r1 = r1.mDividerSnapAlgorithm
                    r2 = 16
                    if (r5 != r2) goto Le
                    r0.openDividerPanelIfNeeded()
                    goto L40
                Le:
                    r0 = 2131361919(0x7f0a007f, float:1.8343604E38)
                    if (r5 != r0) goto L18
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getDismissEndTarget()
                    goto L41
                L18:
                    r0 = 2131361918(0x7f0a007e, float:1.8343602E38)
                    if (r5 != r0) goto L22
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getLastSplitTarget()
                    goto L41
                L22:
                    r0 = 2131361916(0x7f0a007c, float:1.8343598E38)
                    if (r5 != r0) goto L2c
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getMiddleTarget()
                    goto L41
                L2c:
                    r0 = 2131361914(0x7f0a007a, float:1.8343594E38)
                    if (r5 != r0) goto L36
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getFirstSplitTarget()
                    goto L41
                L36:
                    r0 = 2131361913(0x7f0a0079, float:1.8343592E38)
                    if (r5 != r0) goto L40
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getDismissStartTarget()
                    goto L41
                L40:
                    r0 = 0
                L41:
                    if (r0 == 0) goto L58
                    com.android.wm.shell.common.split.DividerView r4 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r4 = r4.mSplitLayout
                    int r5 = r4.mDividePosition
                    r6 = 0
                    r4.snapToTarget(r5, r0, r6)
                    com.android.wm.shell.common.split.DividerView r3 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r3 = r3.mSplitLayout
                    int r4 = r3.mDividePosition
                    r3.updateDivideBounds(r4)
                    r3 = 1
                    return r3
                L58:
                    boolean r3 = super.performAccessibilityAction(r4, r5, r6)
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerView.AnonymousClass5.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
            }
        };
        this.mRoundedCornerUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.common.split.DividerView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DividerView.this.mDividerRoundedCorner.mDividerWidth = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                DividerView.this.mDividerRoundedCorner.invalidate();
            }
        };
        this.mMouseOverAnimatorListener = new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.DividerView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                DividerView dividerView = DividerView.this;
                AnonymousClass1 anonymousClass1 = DividerView.DIVIDER_HEIGHT_PROPERTY;
                dividerView.updateBackgroundColor(true);
                DividerRoundedCorner dividerRoundedCorner = DividerView.this.mDividerRoundedCorner;
                dividerRoundedCorner.mDividerBarBackground.setColor(dividerRoundedCorner.getResources().getColor(17171493, null));
            }
        };
        this.mMouseOutAnimatorListener = new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.DividerView.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                DividerView dividerView = DividerView.this;
                if (dividerView.mTouching) {
                    dividerView.updateCursorType();
                } else {
                    InputManager inputManager = dividerView.mInputManager;
                    if (inputManager != null) {
                        inputManager.setPointerIconType(10121);
                    }
                }
                DividerView.this.updateBackgroundColor(false);
                DividerRoundedCorner dividerRoundedCorner = DividerView.this.mDividerRoundedCorner;
                dividerRoundedCorner.mDividerBarBackground.setColor(dividerRoundedCorner.getResources().getColor(17171493, null));
            }
        };
        this.mMouseOver = new Runnable() { // from class: com.android.wm.shell.common.split.DividerView.10
            @Override // java.lang.Runnable
            public final void run() {
                int i2;
                Property property;
                DividerRoundedCorner dividerRoundedCorner = DividerView.this.mDividerRoundedCorner;
                Resources resources = dividerRoundedCorner.getResources();
                if (CoreRune.MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD) {
                    i2 = R.dimen.split_divider_bar_width_fold;
                } else {
                    i2 = R.dimen.split_divider_bar_width;
                }
                dividerRoundedCorner.mDividerWidth = resources.getDimensionPixelSize(i2);
                if (DividerView.this.isVerticalDivision()) {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY;
                } else {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY;
                }
                DividerView dividerView = DividerView.this;
                int i3 = dividerView.mSplitLayout.mDividerSize;
                ObjectAnimator ofInt = ObjectAnimator.ofInt(dividerView, (Property<DividerView, Integer>) property, i3, dividerView.mMouseOverBgScaleSize + i3);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleX", 1.0f, 1.3f);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleY", 1.0f, 1.3f);
                DividerView dividerView2 = DividerView.this;
                ValueAnimator valueAnimator = dividerView2.mMouseOverRoundedCornerAnimator;
                int i4 = dividerView2.mDividerRoundedCorner.mDividerWidth;
                valueAnimator.setIntValues(i4, dividerView2.mMouseOverBgScaleSize + i4);
                DividerView dividerView3 = DividerView.this;
                dividerView3.mMouseOverRoundedCornerAnimator.addUpdateListener(dividerView3.mRoundedCornerUpdateListener);
                DividerView dividerView4 = DividerView.this;
                dividerView4.mMouseOverAnimatorSet.playTogether(ofInt, ofFloat, ofFloat2, dividerView4.mMouseOverRoundedCornerAnimator);
                DividerView.this.mMouseOverAnimatorSet.setDuration(200L);
                DividerView.this.mMouseOverAnimatorSet.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                DividerView dividerView5 = DividerView.this;
                dividerView5.mMouseOverAnimatorSet.addListener(dividerView5.mMouseOverAnimatorListener);
                DividerView.this.mMouseOverAnimatorSet.start();
                DividerView.this.updateCursorType();
            }
        };
        this.mMouseOut = new Runnable() { // from class: com.android.wm.shell.common.split.DividerView.11
            @Override // java.lang.Runnable
            public final void run() {
                Property property;
                int i2;
                if (DividerView.this.isVerticalDivision()) {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY;
                } else {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY;
                }
                DividerView dividerView = DividerView.this;
                int i3 = dividerView.mSplitLayout.mDividerSize;
                ObjectAnimator ofInt = ObjectAnimator.ofInt(dividerView, (Property<DividerView, Integer>) property, dividerView.mMouseOverBgScaleSize + i3, i3);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleX", 1.3f, 1.0f);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleY", 1.3f, 1.0f);
                DividerView dividerView2 = DividerView.this;
                ValueAnimator valueAnimator = dividerView2.mMouseOutRoundedCornerAnimator;
                DividerRoundedCorner dividerRoundedCorner = dividerView2.mDividerRoundedCorner;
                int i4 = dividerRoundedCorner.mDividerWidth;
                Resources resources = dividerRoundedCorner.getResources();
                if (CoreRune.MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD) {
                    i2 = R.dimen.split_divider_bar_width_fold;
                } else {
                    i2 = R.dimen.split_divider_bar_width;
                }
                valueAnimator.setIntValues(i4, resources.getDimensionPixelSize(i2));
                DividerView dividerView3 = DividerView.this;
                dividerView3.mMouseOutRoundedCornerAnimator.addUpdateListener(dividerView3.mRoundedCornerUpdateListener);
                DividerView dividerView4 = DividerView.this;
                dividerView4.mMouseOutAnimatorSet.playTogether(ofInt, ofFloat, ofFloat2, dividerView4.mMouseOutRoundedCornerAnimator);
                DividerView.this.mMouseOutAnimatorSet.setDuration(200L);
                DividerView.this.mMouseOutAnimatorSet.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                DividerView dividerView5 = DividerView.this;
                dividerView5.mMouseOutAnimatorSet.addListener(dividerView5.mMouseOutAnimatorListener);
                DividerView.this.mMouseOutAnimatorSet.start();
            }
        };
        this.mHandleHoverListener = new View.OnHoverListener(this) { // from class: com.android.wm.shell.common.split.DividerView$$ExternalSyntheticLambda0
            public final /* synthetic */ DividerView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnHoverListener
            public final boolean onHover(View view, MotionEvent motionEvent) {
                switch (i) {
                    case 0:
                    default:
                        DividerView.$r8$lambda$xjbJZubBp3a6wlufPhmpfDd1Ohw(this.f$0, motionEvent);
                        return false;
                }
            }
        };
        this.mMultiSplitHandleDelegate = new View.AccessibilityDelegate() { // from class: com.android.wm.shell.common.split.DividerView.12
            /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x0049  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x002b  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
            @Override // android.view.View.AccessibilityDelegate
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onInitializeAccessibilityNodeInfo(android.view.View r7, android.view.accessibility.AccessibilityNodeInfo r8) {
                /*
                    Method dump skipped, instructions count: 315
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerView.AnonymousClass12.onInitializeAccessibilityNodeInfo(android.view.View, android.view.accessibility.AccessibilityNodeInfo):void");
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0063  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00ad  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0022  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
            @Override // android.view.View.AccessibilityDelegate
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean performAccessibilityAction(android.view.View r5, int r6, android.os.Bundle r7) {
                /*
                    r4 = this;
                    boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_SNAP_ALGORITHM
                    if (r0 == 0) goto L11
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    boolean r1 = r0.mIsCellDivider
                    if (r1 == 0) goto L11
                    com.android.wm.shell.common.split.SplitLayout r0 = r0.mSplitLayout
                    com.android.internal.policy.DividerSnapAlgorithm r0 = r0.getCellSnapAlgorithm()
                    goto L17
                L11:
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r0 = r0.mSplitLayout
                    com.android.internal.policy.DividerSnapAlgorithm r0 = r0.mDividerSnapAlgorithm
                L17:
                    r1 = 16
                    r2 = 0
                    if (r6 != r1) goto L22
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    r0.openDividerPanelIfNeeded()
                    goto L56
                L22:
                    r1 = 2131361919(0x7f0a007f, float:1.8343604E38)
                    if (r6 != r1) goto L2c
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getDismissEndTarget()
                    goto L61
                L2c:
                    r1 = 2131361918(0x7f0a007e, float:1.8343602E38)
                    if (r6 == r1) goto L5d
                    r1 = 2131361917(0x7f0a007d, float:1.83436E38)
                    if (r6 != r1) goto L37
                    goto L5d
                L37:
                    r1 = 2131361916(0x7f0a007c, float:1.8343598E38)
                    if (r6 != r1) goto L41
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getMiddleTarget()
                    goto L61
                L41:
                    r1 = 2131361914(0x7f0a007a, float:1.8343594E38)
                    if (r6 == r1) goto L58
                    r1 = 2131361915(0x7f0a007b, float:1.8343596E38)
                    if (r6 != r1) goto L4c
                    goto L58
                L4c:
                    r1 = 2131361913(0x7f0a0079, float:1.8343592E38)
                    if (r6 != r1) goto L56
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getDismissStartTarget()
                    goto L61
                L56:
                    r0 = r2
                    goto L61
                L58:
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getFirstSplitTarget()
                    goto L61
                L5d:
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getLastSplitTarget()
                L61:
                    if (r0 == 0) goto Lad
                    boolean r5 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_ACCESSIBILITY
                    r6 = 1
                    r7 = 0
                    if (r5 == 0) goto L9a
                    com.android.wm.shell.common.split.DividerView r5 = com.android.wm.shell.common.split.DividerView.this
                    boolean r1 = r5.mIsCellDivider
                    if (r1 == 0) goto L9a
                    com.android.wm.shell.common.split.DividerResizeController r1 = r5.mDividerResizeController
                    boolean r3 = r1.mResizingRequested
                    if (r3 == 0) goto L81
                    r1.mDividerView = r5
                    r1.mResizingRequested = r6
                    r1.mIsResizing = r6
                    boolean r1 = r1.mUseGuideViewByMultiStar
                    com.android.wm.shell.common.split.DividerResizeController.USE_GUIDE_VIEW_EFFECTS = r1
                    r1 = r6
                    goto L82
                L81:
                    r1 = r7
                L82:
                    if (r1 == 0) goto Lac
                    com.android.wm.shell.common.split.SplitLayout r5 = r5.mSplitLayout
                    int r1 = r5.mCellDividePosition
                    r5.snapToTarget(r1, r0, r6)
                    com.android.wm.shell.common.split.DividerView r4 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.DividerResizeController r4 = r4.mDividerResizeController
                    boolean r5 = r4.mIsResizing
                    if (r5 == 0) goto Lac
                    r4.mDividerView = r2
                    r4.mResizingRequested = r7
                    r4.mIsResizing = r7
                    goto Lac
                L9a:
                    com.android.wm.shell.common.split.DividerView r5 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r5 = r5.mSplitLayout
                    int r1 = r0.position
                    r5.updateDivideBounds(r1)
                    com.android.wm.shell.common.split.DividerView r4 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r4 = r4.mSplitLayout
                    int r5 = r4.mDividePosition
                    r4.snapToTarget(r5, r0, r7)
                Lac:
                    return r6
                Lad:
                    boolean r4 = super.performAccessibilityAction(r5, r6, r7)
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerView.AnonymousClass12.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
            }
        };
    }

    public final int getCurrentPosition() {
        if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && this.mIsCellDivider) {
            return this.mSplitLayout.mCellDividePosition;
        }
        return this.mSplitLayout.mDividePosition;
    }

    public final boolean isLandscape() {
        if (getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public final boolean isVerticalDivision() {
        SplitLayout splitLayout;
        if (CoreRune.MW_MULTI_SPLIT_DIVIDER && (splitLayout = this.mSplitLayout) != null) {
            if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && this.mIsCellDivider) {
                return !splitLayout.isVerticalDivision();
            }
            return splitLayout.isVerticalDivision();
        }
        return isLandscape();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mDividerBar = (FrameLayout) findViewById(R.id.divider_bar);
        this.mHandle = (DividerHandleView) findViewById(R.id.docked_divider_handle);
        this.mBackground = findViewById(R.id.docked_divider_background);
        this.mDividerRoundedCorner = (DividerRoundedCorner) findViewById(R.id.divider_rounded_corner);
        updateBackgroundColor(false);
        this.mHandle.setOnTouchListener(this);
        this.mMouseOverBgScaleSize = getResources().getDimensionPixelSize(R.dimen.split_divider_handle_mouse_over_scale_size);
        this.mHandle.setOnHoverListener(this.mHandleHoverListener);
        this.mTouchElevation = getResources().getDimensionPixelSize(R.dimen.docked_stack_divider_lift_elevation);
        new GestureDetector(getContext(), new DoubleTapListener(this, 0));
        this.mInteractive = true;
        setOnTouchListener(this);
        if (CoreRune.MW_MULTI_SPLIT_ACCESSIBILITY) {
            this.mHandle.setAccessibilityDelegate(this.mMultiSplitHandleDelegate);
        } else {
            this.mHandle.setAccessibilityDelegate(this.mHandleDelegate);
        }
    }

    public final void onInsetsChanged(InsetsState insetsState, boolean z) {
        if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && this.mIsCellDivider) {
            Rect rect = this.mTempRect;
            SplitLayout splitLayout = this.mSplitLayout;
            splitLayout.getClass();
            rect.set(new Rect(splitLayout.mCellDividerBounds));
        } else {
            this.mTempRect.set(this.mSplitLayout.mDividerBounds);
        }
        if (!insetsState.isSourceOrDefaultVisible(InsetsSource.ID_IME, WindowInsets.Type.ime())) {
            for (int sourceSize = insetsState.sourceSize() - 1; sourceSize >= 0; sourceSize--) {
                InsetsSource sourceAt = insetsState.sourceAt(sourceSize);
                if (sourceAt.getType() == WindowInsets.Type.navigationBars() && sourceAt.insetsRoundedCornerFrame()) {
                    Rect rect2 = this.mTempRect;
                    rect2.inset(sourceAt.calculateVisibleInsets(rect2));
                }
            }
        }
        DividerResizeController dividerResizeController = this.mDividerResizeController;
        if (dividerResizeController != null && dividerResizeController.mIsResizing) {
            dividerResizeController.finishResizing(getCurrentPosition());
        }
        if (!this.mTempRect.equals(this.mDividerBounds)) {
            if (z) {
                ObjectAnimator ofInt = ObjectAnimator.ofInt(this, DIVIDER_HEIGHT_PROPERTY, this.mDividerBounds.height(), this.mTempRect.height());
                ofInt.setInterpolator(InsetsController.RESIZE_INTERPOLATOR);
                ofInt.setDuration(300L);
                ofInt.addListener(this.mAnimatorListener);
                ofInt.start();
            } else {
                DIVIDER_HEIGHT_PROPERTY.set(this, Integer.valueOf(this.mTempRect.height()));
                this.mSetTouchRegion = true;
            }
            this.mDividerBounds.set(this.mTempRect);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mSetTouchRegion) {
            this.mTempRect.set(this.mHandle.getLeft(), this.mHandle.getTop(), this.mHandle.getRight(), this.mHandle.getBottom());
            this.mSplitWindowManager.setTouchRegion(this.mTempRect);
            this.mSetTouchRegion = false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (CoreRune.MW_MULTI_SPLIT_DIVIDER) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mBackground.getLayoutParams();
            if (isVerticalDivision()) {
                layoutParams.width = this.mSplitLayout.mDividerSize;
                layoutParams.height = -1;
                layoutParams.gravity = 1;
            } else {
                layoutParams.width = -1;
                layoutParams.height = this.mSplitLayout.mDividerSize;
                layoutParams.gravity = 16;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x01e6, code lost:
    
        if (r2 != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        if (r14 != 3) goto L159;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c4  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouch(android.view.View r14, android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerView.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void openDividerPanelIfNeeded() {
        MultitaskingWindowDecoration multitaskingWindowDecoration;
        if (this.mDividerPanel.isSupportPanelOpenPolicy()) {
            if (!CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER || !this.mIsCellDivider) {
                StageCoordinator stageCoordinator = this.mSplitLayout.mStageCoordinator;
                StageTaskListener stageTaskListener = stageCoordinator.mMainStage;
                if (!stageTaskListener.isFocused()) {
                    stageTaskListener = stageCoordinator.mSideStage;
                }
                if (stageTaskListener.mWindowDecorViewModel.isPresent()) {
                    SparseArray sparseArray = ((MultitaskingWindowDecorViewModel) stageTaskListener.mWindowDecorViewModel.get()).mWindowDecorByTaskId;
                    int size = sparseArray.size();
                    while (true) {
                        size--;
                        if (size >= 0) {
                            multitaskingWindowDecoration = (MultitaskingWindowDecoration) sparseArray.valueAt(size);
                            if (multitaskingWindowDecoration != null && multitaskingWindowDecoration.mTaskInfo.isFocused) {
                                break;
                            }
                        } else {
                            multitaskingWindowDecoration = null;
                            break;
                        }
                    }
                    if (multitaskingWindowDecoration != null) {
                        multitaskingWindowDecoration.closeHandleMenu(false);
                    }
                }
                this.mDividerPanel.updateDividerPanel();
            }
        }
    }

    public final void releaseTouching() {
        setSlippery(true);
        this.mHandle.getClass();
        this.mHandle.animate().setInterpolator(Interpolators.FAST_OUT_SLOW_IN).setDuration(200L).translationZ(0.0f).start();
        this.mTouching = false;
    }

    public final void setSlippery(boolean z) {
        boolean z2;
        if (this.mViewHost == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) getLayoutParams();
        int i = layoutParams.flags;
        if ((i & QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 == z) {
            return;
        }
        if (z) {
            layoutParams.flags = i | QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT;
        } else {
            layoutParams.flags = (-536870913) & i;
        }
        this.mViewHost.relayout(layoutParams);
    }

    public final void updateBackgroundColor(boolean z) {
        if (CoreRune.MW_MULTI_SPLIT && !z) {
            this.mBackground.setBackgroundColor(0);
        } else {
            this.mBackground.setBackgroundColor(getContext().getResources().getColor(17171493, null));
        }
    }

    public final void updateCursorType() {
        int i;
        InputManager inputManager = this.mInputManager;
        if (inputManager != null) {
            if (isVerticalDivision()) {
                i = 10122;
            } else {
                i = 10123;
            }
            inputManager.setPointerIconType(i);
        }
    }

    public DividerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DividerView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.wm.shell.common.split.DividerView$4] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.wm.shell.common.split.DividerView$5] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.wm.shell.common.split.DividerView$7] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.wm.shell.common.split.DividerView$8] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.wm.shell.common.split.DividerView$9] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.wm.shell.common.split.DividerView$10] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.wm.shell.common.split.DividerView$11] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.wm.shell.common.split.DividerView$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.android.wm.shell.common.split.DividerView$12] */
    public DividerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        final int i3 = 1;
        this.mSetTouchRegion = true;
        this.mMouseOverAnimatorSet = new AnimatorSet();
        this.mMouseOutAnimatorSet = new AnimatorSet();
        this.mMouseOverRoundedCornerAnimator = new ValueAnimator();
        this.mMouseOutRoundedCornerAnimator = new ValueAnimator();
        this.mH = new Handler();
        this.mTouching = false;
        this.mNeedUpdateCursorWhenMoving = true;
        this.mDividerBounds = new Rect();
        this.mTempRect = new Rect();
        this.mAnimatorListener = new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.DividerView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                DividerView.this.mSetTouchRegion = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                DividerView.this.mSetTouchRegion = true;
            }
        };
        this.mHandleDelegate = new View.AccessibilityDelegate() { // from class: com.android.wm.shell.common.split.DividerView.5
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                DividerSnapAlgorithm dividerSnapAlgorithm = DividerView.this.mSplitLayout.mDividerSnapAlgorithm;
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                if (DividerView.this.isLandscape()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_full)));
                    if (dividerSnapAlgorithm.isFirstSplitTargetAvailable()) {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_70, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_70)));
                    }
                    if (dividerSnapAlgorithm.showMiddleSplitTargetForAccessibility()) {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_50, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_50)));
                    }
                    if (dividerSnapAlgorithm.isLastSplitTargetAvailable()) {
                        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_30, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_left_30)));
                    }
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_rb_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_right_full)));
                    return;
                }
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_full)));
                if (dividerSnapAlgorithm.isFirstSplitTargetAvailable()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_70, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_70)));
                }
                if (dividerSnapAlgorithm.showMiddleSplitTargetForAccessibility()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_50, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_50)));
                }
                if (dividerSnapAlgorithm.isLastSplitTargetAvailable()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_tl_30, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_top_30)));
                }
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_rb_full, ((FrameLayout) DividerView.this).mContext.getString(R.string.accessibility_action_divider_bottom_full)));
            }

            @Override // android.view.View.AccessibilityDelegate
            public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                    	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    this = this;
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r1 = r0.mSplitLayout
                    com.android.internal.policy.DividerSnapAlgorithm r1 = r1.mDividerSnapAlgorithm
                    r2 = 16
                    if (r5 != r2) goto Le
                    r0.openDividerPanelIfNeeded()
                    goto L40
                Le:
                    r0 = 2131361919(0x7f0a007f, float:1.8343604E38)
                    if (r5 != r0) goto L18
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getDismissEndTarget()
                    goto L41
                L18:
                    r0 = 2131361918(0x7f0a007e, float:1.8343602E38)
                    if (r5 != r0) goto L22
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getLastSplitTarget()
                    goto L41
                L22:
                    r0 = 2131361916(0x7f0a007c, float:1.8343598E38)
                    if (r5 != r0) goto L2c
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getMiddleTarget()
                    goto L41
                L2c:
                    r0 = 2131361914(0x7f0a007a, float:1.8343594E38)
                    if (r5 != r0) goto L36
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getFirstSplitTarget()
                    goto L41
                L36:
                    r0 = 2131361913(0x7f0a0079, float:1.8343592E38)
                    if (r5 != r0) goto L40
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r1.getDismissStartTarget()
                    goto L41
                L40:
                    r0 = 0
                L41:
                    if (r0 == 0) goto L58
                    com.android.wm.shell.common.split.DividerView r4 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r4 = r4.mSplitLayout
                    int r5 = r4.mDividePosition
                    r6 = 0
                    r4.snapToTarget(r5, r0, r6)
                    com.android.wm.shell.common.split.DividerView r3 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r3 = r3.mSplitLayout
                    int r4 = r3.mDividePosition
                    r3.updateDivideBounds(r4)
                    r3 = 1
                    return r3
                L58:
                    boolean r3 = super.performAccessibilityAction(r4, r5, r6)
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerView.AnonymousClass5.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
            }
        };
        this.mRoundedCornerUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.common.split.DividerView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DividerView.this.mDividerRoundedCorner.mDividerWidth = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                DividerView.this.mDividerRoundedCorner.invalidate();
            }
        };
        this.mMouseOverAnimatorListener = new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.DividerView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                DividerView dividerView = DividerView.this;
                AnonymousClass1 anonymousClass1 = DividerView.DIVIDER_HEIGHT_PROPERTY;
                dividerView.updateBackgroundColor(true);
                DividerRoundedCorner dividerRoundedCorner = DividerView.this.mDividerRoundedCorner;
                dividerRoundedCorner.mDividerBarBackground.setColor(dividerRoundedCorner.getResources().getColor(17171493, null));
            }
        };
        this.mMouseOutAnimatorListener = new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.DividerView.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                DividerView dividerView = DividerView.this;
                if (dividerView.mTouching) {
                    dividerView.updateCursorType();
                } else {
                    InputManager inputManager = dividerView.mInputManager;
                    if (inputManager != null) {
                        inputManager.setPointerIconType(10121);
                    }
                }
                DividerView.this.updateBackgroundColor(false);
                DividerRoundedCorner dividerRoundedCorner = DividerView.this.mDividerRoundedCorner;
                dividerRoundedCorner.mDividerBarBackground.setColor(dividerRoundedCorner.getResources().getColor(17171493, null));
            }
        };
        this.mMouseOver = new Runnable() { // from class: com.android.wm.shell.common.split.DividerView.10
            @Override // java.lang.Runnable
            public final void run() {
                int i22;
                Property property;
                DividerRoundedCorner dividerRoundedCorner = DividerView.this.mDividerRoundedCorner;
                Resources resources = dividerRoundedCorner.getResources();
                if (CoreRune.MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD) {
                    i22 = R.dimen.split_divider_bar_width_fold;
                } else {
                    i22 = R.dimen.split_divider_bar_width;
                }
                dividerRoundedCorner.mDividerWidth = resources.getDimensionPixelSize(i22);
                if (DividerView.this.isVerticalDivision()) {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY;
                } else {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY;
                }
                DividerView dividerView = DividerView.this;
                int i32 = dividerView.mSplitLayout.mDividerSize;
                ObjectAnimator ofInt = ObjectAnimator.ofInt(dividerView, (Property<DividerView, Integer>) property, i32, dividerView.mMouseOverBgScaleSize + i32);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleX", 1.0f, 1.3f);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleY", 1.0f, 1.3f);
                DividerView dividerView2 = DividerView.this;
                ValueAnimator valueAnimator = dividerView2.mMouseOverRoundedCornerAnimator;
                int i4 = dividerView2.mDividerRoundedCorner.mDividerWidth;
                valueAnimator.setIntValues(i4, dividerView2.mMouseOverBgScaleSize + i4);
                DividerView dividerView3 = DividerView.this;
                dividerView3.mMouseOverRoundedCornerAnimator.addUpdateListener(dividerView3.mRoundedCornerUpdateListener);
                DividerView dividerView4 = DividerView.this;
                dividerView4.mMouseOverAnimatorSet.playTogether(ofInt, ofFloat, ofFloat2, dividerView4.mMouseOverRoundedCornerAnimator);
                DividerView.this.mMouseOverAnimatorSet.setDuration(200L);
                DividerView.this.mMouseOverAnimatorSet.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                DividerView dividerView5 = DividerView.this;
                dividerView5.mMouseOverAnimatorSet.addListener(dividerView5.mMouseOverAnimatorListener);
                DividerView.this.mMouseOverAnimatorSet.start();
                DividerView.this.updateCursorType();
            }
        };
        this.mMouseOut = new Runnable() { // from class: com.android.wm.shell.common.split.DividerView.11
            @Override // java.lang.Runnable
            public final void run() {
                Property property;
                int i22;
                if (DividerView.this.isVerticalDivision()) {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY;
                } else {
                    property = DividerView.DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY;
                }
                DividerView dividerView = DividerView.this;
                int i32 = dividerView.mSplitLayout.mDividerSize;
                ObjectAnimator ofInt = ObjectAnimator.ofInt(dividerView, (Property<DividerView, Integer>) property, dividerView.mMouseOverBgScaleSize + i32, i32);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleX", 1.3f, 1.0f);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(DividerView.this.mHandle, "scaleY", 1.3f, 1.0f);
                DividerView dividerView2 = DividerView.this;
                ValueAnimator valueAnimator = dividerView2.mMouseOutRoundedCornerAnimator;
                DividerRoundedCorner dividerRoundedCorner = dividerView2.mDividerRoundedCorner;
                int i4 = dividerRoundedCorner.mDividerWidth;
                Resources resources = dividerRoundedCorner.getResources();
                if (CoreRune.MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD) {
                    i22 = R.dimen.split_divider_bar_width_fold;
                } else {
                    i22 = R.dimen.split_divider_bar_width;
                }
                valueAnimator.setIntValues(i4, resources.getDimensionPixelSize(i22));
                DividerView dividerView3 = DividerView.this;
                dividerView3.mMouseOutRoundedCornerAnimator.addUpdateListener(dividerView3.mRoundedCornerUpdateListener);
                DividerView dividerView4 = DividerView.this;
                dividerView4.mMouseOutAnimatorSet.playTogether(ofInt, ofFloat, ofFloat2, dividerView4.mMouseOutRoundedCornerAnimator);
                DividerView.this.mMouseOutAnimatorSet.setDuration(200L);
                DividerView.this.mMouseOutAnimatorSet.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                DividerView dividerView5 = DividerView.this;
                dividerView5.mMouseOutAnimatorSet.addListener(dividerView5.mMouseOutAnimatorListener);
                DividerView.this.mMouseOutAnimatorSet.start();
            }
        };
        this.mHandleHoverListener = new View.OnHoverListener(this) { // from class: com.android.wm.shell.common.split.DividerView$$ExternalSyntheticLambda0
            public final /* synthetic */ DividerView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnHoverListener
            public final boolean onHover(View view, MotionEvent motionEvent) {
                switch (i3) {
                    case 0:
                    default:
                        DividerView.$r8$lambda$xjbJZubBp3a6wlufPhmpfDd1Ohw(this.f$0, motionEvent);
                        return false;
                }
            }
        };
        this.mMultiSplitHandleDelegate = new View.AccessibilityDelegate() { // from class: com.android.wm.shell.common.split.DividerView.12
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                    	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    Method dump skipped, instructions count: 315
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerView.AnonymousClass12.onInitializeAccessibilityNodeInfo(android.view.View, android.view.accessibility.AccessibilityNodeInfo):void");
            }

            @Override // android.view.View.AccessibilityDelegate
            public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                    	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    this = this;
                    boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_SNAP_ALGORITHM
                    if (r0 == 0) goto L11
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    boolean r1 = r0.mIsCellDivider
                    if (r1 == 0) goto L11
                    com.android.wm.shell.common.split.SplitLayout r0 = r0.mSplitLayout
                    com.android.internal.policy.DividerSnapAlgorithm r0 = r0.getCellSnapAlgorithm()
                    goto L17
                L11:
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r0 = r0.mSplitLayout
                    com.android.internal.policy.DividerSnapAlgorithm r0 = r0.mDividerSnapAlgorithm
                L17:
                    r1 = 16
                    r2 = 0
                    if (r6 != r1) goto L22
                    com.android.wm.shell.common.split.DividerView r0 = com.android.wm.shell.common.split.DividerView.this
                    r0.openDividerPanelIfNeeded()
                    goto L56
                L22:
                    r1 = 2131361919(0x7f0a007f, float:1.8343604E38)
                    if (r6 != r1) goto L2c
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getDismissEndTarget()
                    goto L61
                L2c:
                    r1 = 2131361918(0x7f0a007e, float:1.8343602E38)
                    if (r6 == r1) goto L5d
                    r1 = 2131361917(0x7f0a007d, float:1.83436E38)
                    if (r6 != r1) goto L37
                    goto L5d
                L37:
                    r1 = 2131361916(0x7f0a007c, float:1.8343598E38)
                    if (r6 != r1) goto L41
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getMiddleTarget()
                    goto L61
                L41:
                    r1 = 2131361914(0x7f0a007a, float:1.8343594E38)
                    if (r6 == r1) goto L58
                    r1 = 2131361915(0x7f0a007b, float:1.8343596E38)
                    if (r6 != r1) goto L4c
                    goto L58
                L4c:
                    r1 = 2131361913(0x7f0a0079, float:1.8343592E38)
                    if (r6 != r1) goto L56
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getDismissStartTarget()
                    goto L61
                L56:
                    r0 = r2
                    goto L61
                L58:
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getFirstSplitTarget()
                    goto L61
                L5d:
                    com.android.internal.policy.DividerSnapAlgorithm$SnapTarget r0 = r0.getLastSplitTarget()
                L61:
                    if (r0 == 0) goto Lad
                    boolean r5 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_ACCESSIBILITY
                    r6 = 1
                    r7 = 0
                    if (r5 == 0) goto L9a
                    com.android.wm.shell.common.split.DividerView r5 = com.android.wm.shell.common.split.DividerView.this
                    boolean r1 = r5.mIsCellDivider
                    if (r1 == 0) goto L9a
                    com.android.wm.shell.common.split.DividerResizeController r1 = r5.mDividerResizeController
                    boolean r3 = r1.mResizingRequested
                    if (r3 == 0) goto L81
                    r1.mDividerView = r5
                    r1.mResizingRequested = r6
                    r1.mIsResizing = r6
                    boolean r1 = r1.mUseGuideViewByMultiStar
                    com.android.wm.shell.common.split.DividerResizeController.USE_GUIDE_VIEW_EFFECTS = r1
                    r1 = r6
                    goto L82
                L81:
                    r1 = r7
                L82:
                    if (r1 == 0) goto Lac
                    com.android.wm.shell.common.split.SplitLayout r5 = r5.mSplitLayout
                    int r1 = r5.mCellDividePosition
                    r5.snapToTarget(r1, r0, r6)
                    com.android.wm.shell.common.split.DividerView r4 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.DividerResizeController r4 = r4.mDividerResizeController
                    boolean r5 = r4.mIsResizing
                    if (r5 == 0) goto Lac
                    r4.mDividerView = r2
                    r4.mResizingRequested = r7
                    r4.mIsResizing = r7
                    goto Lac
                L9a:
                    com.android.wm.shell.common.split.DividerView r5 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r5 = r5.mSplitLayout
                    int r1 = r0.position
                    r5.updateDivideBounds(r1)
                    com.android.wm.shell.common.split.DividerView r4 = com.android.wm.shell.common.split.DividerView.this
                    com.android.wm.shell.common.split.SplitLayout r4 = r4.mSplitLayout
                    int r5 = r4.mDividePosition
                    r4.snapToTarget(r5, r0, r7)
                Lac:
                    return r6
                Lad:
                    boolean r4 = super.performAccessibilityAction(r5, r6, r7)
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerView.AnonymousClass12.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
            }
        };
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, com.android.wm.shell.R.styleable.DividerView, 0, 0);
        try {
            this.mIsCellDivider = obtainStyledAttributes.getBoolean(3, false);
            obtainStyledAttributes.recycle();
            this.mInputManager = (InputManager) context.getSystemService(InputManager.class);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
