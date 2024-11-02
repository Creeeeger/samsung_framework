package com.android.systemui.keyguard.animator;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ViewAnimationController {
    public final KeyguardTouchAnimator keyguardTouchAnimator;
    public final Interpolator SINE_OUT_33 = new PathInterpolator(0.17f, 0.17f, 0.67f, 1.0f);
    public final Interpolator SINE_IN_33 = new PathInterpolator(0.33f, 0.0f, 0.83f, 0.83f);
    public final PathInterpolator scalePathInterpolator = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
    public final PathInterpolator alphaPathInterpolator = new PathInterpolator(0.33f, 1.0f, 0.68f, 1.0f);

    public ViewAnimationController(KeyguardTouchAnimator keyguardTouchAnimator) {
        this.keyguardTouchAnimator = keyguardTouchAnimator;
    }

    public static void setViewAnimation(AnimatorSet animatorSet, View view, float f, float f2) {
        boolean z;
        boolean z2;
        if (view == null) {
            return;
        }
        if (f == -1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, view.getScaleX(), f));
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, view.getScaleY(), f));
        }
        if (f2 == -1.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), f2));
        }
    }

    public final View getParentView() {
        return (View) this.keyguardTouchAnimator.parentView$delegate.getValue();
    }

    public final View getView(int i) {
        return (View) this.keyguardTouchAnimator.views.get(i);
    }

    public final boolean hasView(int i) {
        return this.keyguardTouchAnimator.hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i);
    }

    public final boolean isKeyguardState() {
        if (this.keyguardTouchAnimator.sbStateController.getState() == 1) {
            return true;
        }
        return false;
    }

    public final void setViewAlphaAnimation(AnimatorSet animatorSet, View view, float f, long j, long j2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, f);
        ofFloat.setInterpolator(this.alphaPathInterpolator);
        ofFloat.setDuration(j);
        ofFloat.setStartDelay(j2);
        Unit unit = Unit.INSTANCE;
        animatorSet.playTogether(ofFloat);
    }

    public final void setViewScaleAnimation(AnimatorSet animatorSet, View view, float f, long j, long j2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, f);
        PathInterpolator pathInterpolator = this.scalePathInterpolator;
        ofFloat.setInterpolator(pathInterpolator);
        ofFloat.setDuration(j);
        ofFloat.setStartDelay(j2);
        Unit unit = Unit.INSTANCE;
        animatorSet.playTogether(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, f);
        ofFloat2.setInterpolator(pathInterpolator);
        ofFloat2.setDuration(j);
        ofFloat2.setStartDelay(j2);
        animatorSet.playTogether(ofFloat2);
    }
}
