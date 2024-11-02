package com.android.wm.shell.compatui;

import android.app.TaskInfo;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.wm.shell.common.DisplayLayout;
import com.samsung.android.rune.CoreRune;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BoundsCompatUILayout extends FrameLayout {
    public static boolean DEBUG_BOUNDS_COMPAT_UI_LAYOUT = false;
    public final HashMap mAnimationListenerWrappers;
    public final HashMap mButtons;
    public BoundsCompatUIController mController;
    public final AnonymousClass1 mFrameCommitCallback;
    public final Handler mHandler;
    public ImageButton mLastVisibleTarget;
    public final BoundsCompatUILayout$$ExternalSyntheticLambda1 mLayoutListener;
    public int mNaviButtonSize;
    public FrameLayout mSwitchableButtonContainer;
    public final Region mTouchableRegion;
    public final BoundsCompatUILayout$$ExternalSyntheticLambda0 mTouchableRegionCalculator;
    public int mVerticalMarginFromActivityBounds;
    public BoundsCompatUIWindowManager mWindowManager;

    public static void $r8$lambda$lQJCE7mBRYizXYR0vHIcwkYGP80(BoundsCompatUILayout boundsCompatUILayout) {
        TextView textView;
        boundsCompatUILayout.configureTouchableRegion(boundsCompatUILayout.mTouchableRegionCalculator);
        boundsCompatUILayout.getRootView().getViewTreeObserver().removeOnGlobalLayoutListener(boundsCompatUILayout.mLayoutListener);
        if (DEBUG_BOUNDS_COMPAT_UI_LAYOUT && (textView = (TextView) boundsCompatUILayout.findViewById(R.id.bounds_compat_ui_main)) != null) {
            textView.setText(boundsCompatUILayout.mController.toString());
            textView.setVisibility(0);
        }
    }

    /* renamed from: $r8$lambda$ygWdvB14MBSMuhSbblX-9ZSXxys, reason: not valid java name */
    public static /* synthetic */ void m2455$r8$lambda$ygWdvB14MBSMuhSbblX9ZSXxys(BoundsCompatUILayout boundsCompatUILayout, View view) {
        boundsCompatUILayout.getClass();
        Rect rect = new Rect();
        view.getBoundsOnScreen(rect);
        boundsCompatUILayout.mTouchableRegion.union(rect);
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [com.android.wm.shell.compatui.BoundsCompatUILayout$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.android.wm.shell.compatui.BoundsCompatUILayout$1] */
    public BoundsCompatUILayout(Context context) {
        super(context);
        this.mButtons = new HashMap();
        this.mAnimationListenerWrappers = new HashMap();
        this.mVerticalMarginFromActivityBounds = 0;
        this.mLastVisibleTarget = null;
        this.mTouchableRegion = new Region();
        final int i = 1;
        this.mTouchableRegionCalculator = new BoundsCompatUILayout$$ExternalSyntheticLambda0(this, 1);
        this.mLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout$$ExternalSyntheticLambda1
            public final /* synthetic */ BoundsCompatUILayout f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                switch (i) {
                    case 0:
                    case 1:
                    default:
                        BoundsCompatUILayout.$r8$lambda$lQJCE7mBRYizXYR0vHIcwkYGP80(this.f$0);
                        return;
                }
            }
        };
        this.mFrameCommitCallback = new Runnable() { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout.1
            @Override // java.lang.Runnable
            public final void run() {
                BoundsCompatUILayout.this.requestDismiss();
                BoundsCompatUILayout.this.getRootView().getViewTreeObserver().unregisterFrameCommitCallback(BoundsCompatUILayout.this.mFrameCommitCallback);
            }
        };
        this.mHandler = new Handler(Looper.myLooper());
    }

    public static void setFrameLayoutGravity(FrameLayout frameLayout, int i) {
        if (frameLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.gravity = i;
        frameLayout.setLayoutParams(layoutParams);
    }

    public final void configureTouchableRegion(BoundsCompatUILayout$$ExternalSyntheticLambda0 boundsCompatUILayout$$ExternalSyntheticLambda0) {
        if (!getRootView().isAttachedToWindow()) {
            return;
        }
        this.mTouchableRegion.setEmpty();
        Iterator it = this.mButtons.entrySet().iterator();
        while (it.hasNext()) {
            ImageButton imageButton = (ImageButton) ((Map.Entry) it.next()).getValue();
            if (imageButton.getVisibility() == 0) {
                int i = boundsCompatUILayout$$ExternalSyntheticLambda0.$r8$classId;
                m2455$r8$lambda$ygWdvB14MBSMuhSbblX9ZSXxys(boundsCompatUILayout$$ExternalSyntheticLambda0.f$0, imageButton);
            }
        }
        BoundsCompatUIController boundsCompatUIController = this.mController;
        boundsCompatUIController.mBoundsCompatUIWindowManager.setTouchRegion(this.mTouchableRegion);
    }

    public final void refreshButtonVisibility(boolean z) {
        int i;
        int i2;
        getRootView().getViewTreeObserver().removeOnGlobalLayoutListener(this.mLayoutListener);
        getRootView().getViewTreeObserver().addOnGlobalLayoutListener(this.mLayoutListener);
        ImageButton imageButton = this.mLastVisibleTarget;
        if (imageButton != null && imageButton.getVisibility() == 0) {
            this.mLastVisibleTarget.setVisibility(4);
        }
        TaskInfo taskInfo = this.mController.mTaskInfo;
        if (taskInfo.topActivityInDisplayCompat) {
            this.mLastVisibleTarget = (ImageButton) this.mButtons.get(Integer.valueOf(R.id.bounds_compat_restart_button));
        } else if (taskInfo.topActivityInFixedAspectRatio) {
            this.mLastVisibleTarget = (ImageButton) this.mButtons.get(Integer.valueOf(R.id.bounds_compat_fixed_aspect_ratio_shortcut_button));
        }
        ImageButton imageButton2 = this.mLastVisibleTarget;
        if (imageButton2 != null && imageButton2.getVisibility() == 4) {
            this.mLastVisibleTarget.setVisibility(0);
        }
        if (CoreRune.FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT) {
            if (BoundsCompatUIController.isAlignedVertically(this.mController.mTaskInfo)) {
                if (this.mVerticalMarginFromActivityBounds >= 0) {
                    Rect taskBounds = this.mWindowManager.getTaskBounds();
                    Rect activityBounds = this.mController.getActivityBounds();
                    DisplayLayout displayLayout = this.mWindowManager.mDisplayLayout;
                    int i3 = taskBounds.bottom - displayLayout.mNavBarFrameHeight;
                    int i4 = activityBounds.bottom;
                    if (i3 != i4 && (i2 = i3 - this.mNaviButtonSize) < i4) {
                        i = i4 - i2;
                    } else {
                        i = 0;
                    }
                    float f = 1.0f;
                    if (i > 0) {
                        f = 1.0f - Math.min(0.2f, i / this.mNaviButtonSize);
                    }
                    View view = (View) this.mButtons.get(Integer.valueOf(R.id.bounds_compat_align_top_button));
                    if (view != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                        if (i > 0) {
                            int i5 = (int) (this.mNaviButtonSize * f);
                            layoutParams.width = i5;
                            layoutParams.height = i5;
                        }
                        layoutParams.topMargin = displayLayout.mNavBarFrameHeight + this.mVerticalMarginFromActivityBounds;
                        view.setLayoutParams(layoutParams);
                    }
                    View view2 = (View) this.mButtons.get(Integer.valueOf(R.id.bounds_compat_align_bottom_button));
                    if (view2 != null) {
                        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view2.getLayoutParams();
                        if (i > 0) {
                            int i6 = (int) (this.mNaviButtonSize * f);
                            layoutParams2.width = i6;
                            layoutParams2.height = i6;
                        }
                        layoutParams2.bottomMargin = displayLayout.mNavBarFrameHeight + this.mVerticalMarginFromActivityBounds;
                        view2.setLayoutParams(layoutParams2);
                    }
                }
                int i7 = this.mController.mAlignment & 112;
                if (i7 != 16) {
                    if (i7 != 48) {
                        if (i7 == 80) {
                            setButtonVisibility(R.id.bounds_compat_align_top_button, 0, z);
                            setButtonVisibility(R.id.bounds_compat_align_bottom_button, 8, z);
                            setFrameLayoutGravity(this.mSwitchableButtonContainer, 53);
                        }
                    } else {
                        setButtonVisibility(R.id.bounds_compat_align_top_button, 8, z);
                        setButtonVisibility(R.id.bounds_compat_align_bottom_button, 0, z);
                        setFrameLayoutGravity(this.mSwitchableButtonContainer, 85);
                    }
                } else {
                    setButtonVisibility(R.id.bounds_compat_align_top_button, 0, z);
                    setButtonVisibility(R.id.bounds_compat_align_bottom_button, 0, z);
                    setFrameLayoutGravity(this.mSwitchableButtonContainer, 85);
                }
            } else {
                int i8 = this.mController.mAlignment & 7;
                if (i8 != 1) {
                    if (i8 != 3) {
                        if (i8 == 5) {
                            setButtonVisibility(R.id.bounds_compat_align_left_button, 0, z);
                            setButtonVisibility(R.id.bounds_compat_align_right_button, 8, z);
                            setFrameLayoutGravity(this.mSwitchableButtonContainer, 83);
                        }
                    } else {
                        setButtonVisibility(R.id.bounds_compat_align_left_button, 8, z);
                        setButtonVisibility(R.id.bounds_compat_align_right_button, 0, z);
                        setFrameLayoutGravity(this.mSwitchableButtonContainer, 85);
                    }
                } else {
                    setButtonVisibility(R.id.bounds_compat_align_left_button, 0, z);
                    setButtonVisibility(R.id.bounds_compat_align_right_button, 0, z);
                    setFrameLayoutGravity(this.mSwitchableButtonContainer, 85);
                }
            }
        }
        configureTouchableRegion(this.mTouchableRegionCalculator);
        requestDismiss();
    }

    public final void requestDismiss() {
        if (!CoreRune.ONE_UI_5_1_1 && this.mController.mTaskInfo.topActivityInDisplayCompat) {
            this.mHandler.removeCallbacksAndMessages(this);
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    BoundsCompatUILayout boundsCompatUILayout = BoundsCompatUILayout.this;
                    Iterator it = boundsCompatUILayout.mButtons.entrySet().iterator();
                    while (it.hasNext()) {
                        ImageButton imageButton = (ImageButton) ((Map.Entry) it.next()).getValue();
                        if (!imageButton.equals(boundsCompatUILayout.mLastVisibleTarget) && imageButton.getVisibility() == 0) {
                            imageButton.setVisibility(8);
                        }
                    }
                    boundsCompatUILayout.configureTouchableRegion(boundsCompatUILayout.mTouchableRegionCalculator);
                }
            }, this, 5000L);
        } else {
            final BoundsCompatUIController boundsCompatUIController = this.mController;
            Handler handler = boundsCompatUIController.mHandler;
            handler.removeCallbacksAndMessages(boundsCompatUIController);
            handler.postDelayed(new Runnable() { // from class: com.android.wm.shell.compatui.BoundsCompatUIController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BoundsCompatUIController boundsCompatUIController2 = BoundsCompatUIController.this;
                    int i = boundsCompatUIController2.mTaskInfo.taskId;
                    boundsCompatUIController2.mCallback.getClass();
                    boundsCompatUIController2.mController.removeLayouts(i);
                }
            }, boundsCompatUIController, 5000L);
        }
    }

    public final void setButtonVisibility(int i, int i2, boolean z) {
        int i3;
        View view = (View) this.mButtons.get(Integer.valueOf(i));
        AnimationListenerWrapper animationListenerWrapper = (AnimationListenerWrapper) this.mAnimationListenerWrappers.remove(Integer.valueOf(i));
        if (animationListenerWrapper != null) {
            animationListenerWrapper.mCancel = true;
            animationListenerWrapper.mAnimation.cancel();
        }
        if (view != null && view.getVisibility() != i2) {
            if (z) {
                Context context = ((FrameLayout) this).mContext;
                if (i2 == 0) {
                    i3 = R.anim.bounds_compat_ui_btn_release_n_appear;
                } else {
                    i3 = R.anim.bounds_compat_ui_btn_release_n_disappear;
                }
                Animation loadAnimation = AnimationUtils.loadAnimation(context, i3);
                this.mAnimationListenerWrappers.put(Integer.valueOf(i), new AnimationListenerWrapper(loadAnimation, view, i2));
                view.startAnimation(loadAnimation);
                return;
            }
            view.setVisibility(i2);
        }
    }

    @Override // android.view.View
    public final String toString() {
        return "BoundsCompatUILayout{mController=" + this.mController + ", mLastVisibleTarget=" + this.mLastVisibleTarget + "}";
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.android.wm.shell.compatui.BoundsCompatUILayout$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.android.wm.shell.compatui.BoundsCompatUILayout$1] */
    public BoundsCompatUILayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mButtons = new HashMap();
        this.mAnimationListenerWrappers = new HashMap();
        this.mVerticalMarginFromActivityBounds = 0;
        this.mLastVisibleTarget = null;
        this.mTouchableRegion = new Region();
        final int i = 2;
        this.mTouchableRegionCalculator = new BoundsCompatUILayout$$ExternalSyntheticLambda0(this, 2);
        this.mLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout$$ExternalSyntheticLambda1
            public final /* synthetic */ BoundsCompatUILayout f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                switch (i) {
                    case 0:
                    case 1:
                    default:
                        BoundsCompatUILayout.$r8$lambda$lQJCE7mBRYizXYR0vHIcwkYGP80(this.f$0);
                        return;
                }
            }
        };
        this.mFrameCommitCallback = new Runnable() { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout.1
            @Override // java.lang.Runnable
            public final void run() {
                BoundsCompatUILayout.this.requestDismiss();
                BoundsCompatUILayout.this.getRootView().getViewTreeObserver().unregisterFrameCommitCallback(BoundsCompatUILayout.this.mFrameCommitCallback);
            }
        };
        this.mHandler = new Handler(Looper.myLooper());
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.wm.shell.compatui.BoundsCompatUILayout$1] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.wm.shell.compatui.BoundsCompatUILayout$$ExternalSyntheticLambda1] */
    public BoundsCompatUILayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mButtons = new HashMap();
        this.mAnimationListenerWrappers = new HashMap();
        final int i2 = 0;
        this.mVerticalMarginFromActivityBounds = 0;
        this.mLastVisibleTarget = null;
        this.mTouchableRegion = new Region();
        this.mTouchableRegionCalculator = new BoundsCompatUILayout$$ExternalSyntheticLambda0(this, 0);
        this.mLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout$$ExternalSyntheticLambda1
            public final /* synthetic */ BoundsCompatUILayout f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                switch (i2) {
                    case 0:
                    case 1:
                    default:
                        BoundsCompatUILayout.$r8$lambda$lQJCE7mBRYizXYR0vHIcwkYGP80(this.f$0);
                        return;
                }
            }
        };
        this.mFrameCommitCallback = new Runnable() { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout.1
            @Override // java.lang.Runnable
            public final void run() {
                BoundsCompatUILayout.this.requestDismiss();
                BoundsCompatUILayout.this.getRootView().getViewTreeObserver().unregisterFrameCommitCallback(BoundsCompatUILayout.this.mFrameCommitCallback);
            }
        };
        this.mHandler = new Handler(Looper.myLooper());
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AnimationListenerWrapper implements Animation.AnimationListener {
        public final Animation mAnimation;
        public boolean mCancel;
        public final View mView;
        public final int mVisibility;

        public AnimationListenerWrapper(Animation animation, View view, int i) {
            animation.setAnimationListener(this);
            this.mAnimation = animation;
            this.mView = view;
            this.mVisibility = i;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            if (this.mCancel) {
                return;
            }
            this.mView.setVisibility(this.mVisibility);
            BoundsCompatUILayout.this.mHandler.post(new Runnable() { // from class: com.android.wm.shell.compatui.BoundsCompatUILayout.AnimationListenerWrapper.1
                @Override // java.lang.Runnable
                public final void run() {
                    BoundsCompatUILayout boundsCompatUILayout = BoundsCompatUILayout.this;
                    boundsCompatUILayout.configureTouchableRegion(boundsCompatUILayout.mTouchableRegionCalculator);
                }
            });
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    }
}
