package com.android.systemui.statusbar.phone;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import com.android.systemui.BasicRune;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PhoneStatusBarTransitions extends BarTransitions {
    public final View mBattery;
    public Animator mCurrentAnimation;
    public final float mIconAlphaWhenOpaque;
    public final View mNetspeedView;
    public final View mStartSide;
    public final View mStatusIcons;

    public PhoneStatusBarTransitions(PhoneStatusBarView phoneStatusBarView, View view) {
        super(view, R.drawable.status_background);
        this.mIconAlphaWhenOpaque = phoneStatusBarView.getContext().getResources().getFraction(R.dimen.status_bar_icon_drawing_alpha, 1, 1);
        this.mStartSide = phoneStatusBarView.findViewById(R.id.status_bar_start_side_except_heads_up);
        this.mStatusIcons = phoneStatusBarView.findViewById(R.id.statusIcons);
        this.mBattery = phoneStatusBarView.findViewById(R.id.battery);
        if (BasicRune.STATUS_REAL_TIME_NETWORK_SPEED) {
            this.mNetspeedView = phoneStatusBarView.findViewById(R.id.networkSpeed);
        }
        applyModeBackground(this.mMode, false);
        applyMode(this.mMode, false);
    }

    public static ObjectAnimator animateTransitionTo(View view, float f) {
        return ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), f);
    }

    public final void applyMode(int i, boolean z) {
        boolean z2;
        float nonBatteryClockAlphaFor;
        View view = this.mStartSide;
        if (view == null) {
            return;
        }
        float nonBatteryClockAlphaFor2 = getNonBatteryClockAlphaFor(i);
        boolean z3 = false;
        if (i != 3 && i != 6) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z2) {
            nonBatteryClockAlphaFor = 0.5f;
        } else {
            nonBatteryClockAlphaFor = getNonBatteryClockAlphaFor(i);
        }
        Animator animator = this.mCurrentAnimation;
        if (animator != null) {
            animator.cancel();
        }
        View view2 = this.mNetspeedView;
        View view3 = this.mBattery;
        View view4 = this.mStatusIcons;
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(animateTransitionTo(view, nonBatteryClockAlphaFor2), animateTransitionTo(view4, nonBatteryClockAlphaFor2), animateTransitionTo(view3, nonBatteryClockAlphaFor));
            if (BasicRune.STATUS_REAL_TIME_NETWORK_SPEED && view2 != null) {
                animatorSet.playTogether(animateTransitionTo(view2, nonBatteryClockAlphaFor));
            }
            if (i == 3 || i == 6) {
                z3 = true;
            }
            if (z3) {
                animatorSet.setDuration(1500L);
            }
            animatorSet.start();
            this.mCurrentAnimation = animatorSet;
            return;
        }
        view.setAlpha(nonBatteryClockAlphaFor2);
        view4.setAlpha(nonBatteryClockAlphaFor2);
        view3.setAlpha(nonBatteryClockAlphaFor);
        if (BasicRune.STATUS_REAL_TIME_NETWORK_SPEED && view2 != null) {
            view2.setAlpha(nonBatteryClockAlphaFor);
        }
    }

    public final float getNonBatteryClockAlphaFor(int i) {
        boolean z;
        boolean z2 = false;
        if (i != 3 && i != 6) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            return 0.0f;
        }
        if (i != 1 && i != 2 && i != 0 && i != 6) {
            z2 = true;
        }
        if (!z2) {
            return 1.0f;
        }
        return this.mIconAlphaWhenOpaque;
    }

    @Override // com.android.systemui.statusbar.phone.BarTransitions
    public final void onTransition(int i, int i2, boolean z) {
        applyModeBackground(i2, z);
        applyMode(i2, z);
    }
}
