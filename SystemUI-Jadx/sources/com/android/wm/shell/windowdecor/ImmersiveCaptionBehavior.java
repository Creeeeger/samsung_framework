package com.android.wm.shell.windowdecor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.ActivityManager;
import android.os.Handler;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.samsung.android.util.InterpolatorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImmersiveCaptionBehavior {
    public final View mCaption;
    public final int mCaptionHeight;
    public long mDownTime;
    public float mDownY;
    public final Handler mHandler;
    public final Animator mHide;
    public final ImmersiveCaptionBehavior$$ExternalSyntheticLambda0 mHideRunnable;
    public int mPositionToShow;
    public final Animator mShow;
    public final ImmersiveCaptionBehavior$$ExternalSyntheticLambda0 mShowRunnable;
    public final ActivityManager.RunningTaskInfo mTaskInfo;
    public boolean mIsShowing = true;
    public boolean mShownByTouch = false;
    public boolean mIsPaused = false;

    /* renamed from: -$$Nest$msetButtonDisable, reason: not valid java name */
    public static void m2473$$Nest$msetButtonDisable(ImmersiveCaptionBehavior immersiveCaptionBehavior, boolean z) {
        int i;
        View view = immersiveCaptionBehavior.mCaption;
        if ((view.getLayoutParams() instanceof WindowManager.LayoutParams) && view.getViewRootImpl() != null) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
            if (z) {
                layoutParams.inputFeatures |= 4;
            } else {
                layoutParams.inputFeatures &= -5;
            }
            view.getViewRootImpl().setLayoutParams(layoutParams, false);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (z) {
                i = 8;
            } else {
                i = 0;
            }
            childAt.setVisibility(i);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.windowdecor.ImmersiveCaptionBehavior$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.wm.shell.windowdecor.ImmersiveCaptionBehavior$$ExternalSyntheticLambda0] */
    public ImmersiveCaptionBehavior(ActivityManager.RunningTaskInfo runningTaskInfo, Handler handler, View view, int i) {
        final int i2 = 0;
        this.mShowRunnable = new Runnable(this) { // from class: com.android.wm.shell.windowdecor.ImmersiveCaptionBehavior$$ExternalSyntheticLambda0
            public final /* synthetic */ ImmersiveCaptionBehavior f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        this.f$0.show();
                        return;
                    default:
                        this.f$0.hide();
                        return;
                }
            }
        };
        final int i3 = 1;
        this.mHideRunnable = new Runnable(this) { // from class: com.android.wm.shell.windowdecor.ImmersiveCaptionBehavior$$ExternalSyntheticLambda0
            public final /* synthetic */ ImmersiveCaptionBehavior f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                        this.f$0.show();
                        return;
                    default:
                        this.f$0.hide();
                        return;
                }
            }
        };
        this.mTaskInfo = runningTaskInfo;
        this.mHandler = handler;
        this.mCaption = view;
        this.mCaptionHeight = i;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, -view.getHeight(), 0.0f);
        this.mShow = ofFloat;
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(InterpolatorUtils.SINE_IN_OUT_80);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.ImmersiveCaptionBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ImmersiveCaptionBehavior.this.setShownState(true);
                ImmersiveCaptionBehavior immersiveCaptionBehavior = ImmersiveCaptionBehavior.this;
                if (immersiveCaptionBehavior.mShownByTouch || !immersiveCaptionBehavior.mIsPaused) {
                    immersiveCaptionBehavior.mHandler.postDelayed(immersiveCaptionBehavior.mHideRunnable, 1000L);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (ImmersiveCaptionBehavior.this.mTaskInfo.configuration.isDexMode()) {
                    ImmersiveCaptionBehavior.m2473$$Nest$msetButtonDisable(ImmersiveCaptionBehavior.this, false);
                } else if (ImmersiveCaptionBehavior.this.mTaskInfo.configuration.isNewDexMode()) {
                    ImmersiveCaptionBehavior.this.mCaption.setVisibility(0);
                }
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, -view.getHeight());
        this.mHide = ofFloat2;
        ofFloat2.setDuration(300L);
        ofFloat2.setInterpolator(InterpolatorUtils.SINE_IN_OUT_80);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.ImmersiveCaptionBehavior.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ImmersiveCaptionBehavior.this.setShownState(false);
                if (ImmersiveCaptionBehavior.this.mTaskInfo.configuration.isDexMode()) {
                    ImmersiveCaptionBehavior.m2473$$Nest$msetButtonDisable(ImmersiveCaptionBehavior.this, true);
                } else if (ImmersiveCaptionBehavior.this.mTaskInfo.configuration.isNewDexMode()) {
                    ImmersiveCaptionBehavior.this.mCaption.setVisibility(8);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
    }

    public final void hide() {
        if (this.mIsShowing) {
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(5, new StringBuilder("ImmersiveCaptionBehavior_hide: callers="), "MultitaskingWindowDecoration");
            Animator animator = this.mHide;
            if (!animator.isRunning()) {
                animator.start();
            }
        }
    }

    public final void pause() {
        Handler handler = this.mHandler;
        ImmersiveCaptionBehavior$$ExternalSyntheticLambda0 immersiveCaptionBehavior$$ExternalSyntheticLambda0 = this.mHideRunnable;
        if (handler.hasCallbacks(immersiveCaptionBehavior$$ExternalSyntheticLambda0)) {
            handler.removeCallbacks(immersiveCaptionBehavior$$ExternalSyntheticLambda0);
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(5, new StringBuilder("ImmersiveCaptionBehavior_pause: Remove hide runnable, callers="), "MultitaskingWindowDecoration");
        }
        this.mIsPaused = true;
        this.mShownByTouch = false;
        show();
    }

    public final void setShownState(boolean z) {
        if (this.mIsShowing != z) {
            this.mIsShowing = z;
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(3, RowView$$ExternalSyntheticOutline0.m("ImmersiveCaptionBehavior_setShownState=", z, ", callers="), "MultitaskingWindowDecoration");
        }
    }

    public final void show() {
        Animator animator = this.mHide;
        if (animator.isRunning()) {
            animator.cancel();
            Log.d("MultitaskingWindowDecoration", "ImmersiveCaptionBehavior_show: cancel hide anim");
        }
        if (!this.mIsShowing) {
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(5, new StringBuilder("ImmersiveCaptionBehavior_show: callers="), "MultitaskingWindowDecoration");
            Animator animator2 = this.mShow;
            if (!animator2.isRunning()) {
                animator2.start();
            }
        }
    }
}
