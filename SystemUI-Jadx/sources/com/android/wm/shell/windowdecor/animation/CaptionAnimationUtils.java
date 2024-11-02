package com.android.wm.shell.windowdecor.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.Property;
import android.view.SurfaceControl;
import android.view.View;
import android.view.animation.PathInterpolator;
import com.android.systemui.R;
import com.samsung.android.util.InterpolatorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CaptionAnimationUtils {
    public static AnimatorSet createMenuPopupAnimatorSet(Context context, final View view, final boolean z, int i, int i2, int i3) {
        float f;
        float f2;
        ObjectAnimator ofFloat;
        long j;
        PathInterpolator pathInterpolator;
        float f3;
        float f4 = 1.0f;
        float f5 = 0.0f;
        if (z) {
            f = 0.0f;
        } else {
            f = 1.0f;
        }
        if (!z) {
            f4 = 0.0f;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, f, f4);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, f, f4);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, f, f4);
        view.resetPivot();
        if (i == 5) {
            if (z) {
                f3 = i3 * 0.1f;
            } else {
                f3 = 0.0f;
            }
            if (!z) {
                f5 = i3 * 0.1f;
            }
            if (i2 == 1) {
                ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, -f3, -f5);
            } else if (i2 == 2) {
                ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, f3, f5);
            } else {
                ofFloat = null;
            }
        } else {
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.sec_decor_button_size);
            if (z) {
                f2 = dimensionPixelSize * 0.4f;
            } else {
                f2 = 0.0f;
            }
            if (!z) {
                f5 = dimensionPixelSize * 0.4f;
            }
            if (z) {
                ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, -f2, f5);
            } else {
                ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, f2, -f5);
            }
        }
        final AnimatorSet animatorSet = new AnimatorSet();
        if (ofFloat != null) {
            animatorSet.playTogether(ofFloat2, ofFloat3, ofFloat4, ofFloat);
        } else {
            animatorSet.playTogether(ofFloat2, ofFloat3, ofFloat4);
        }
        if (z) {
            j = 250;
        } else {
            j = 350;
        }
        ofFloat3.setDuration(j);
        ofFloat4.setDuration(j);
        ofFloat2.setDuration(100L);
        if (ofFloat != null) {
            ofFloat.setDuration(j);
        }
        if (z) {
            pathInterpolator = InterpolatorUtils.ONE_EASING;
        } else {
            pathInterpolator = InterpolatorUtils.SINE_OUT_60;
        }
        animatorSet.setInterpolator(pathInterpolator);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils.1
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator, boolean z2) {
                if (!z) {
                    view.setVisibility(8);
                    animatorSet.end();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator, boolean z2) {
                if (z) {
                    view.setVisibility(0);
                }
            }
        });
        return animatorSet;
    }

    public static Animator createSurfaceAlphaAnimator(final SurfaceControl surfaceControl, final boolean z, long j, TimeInterpolator timeInterpolator) {
        final SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        float[] fArr = {1.0f, 0.0f};
        if (z) {
            // fill-array-data instruction
            fArr[0] = 0.0f;
            fArr[1] = 1.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SurfaceControl surfaceControl2 = surfaceControl;
                SurfaceControl.Transaction transaction2 = transaction;
                if (surfaceControl2 != null && surfaceControl2.isValid()) {
                    transaction2.setAlpha(surfaceControl2, ((Float) valueAnimator.getAnimatedValue()).floatValue()).apply();
                }
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                SurfaceControl surfaceControl2 = surfaceControl;
                if (surfaceControl2 != null && surfaceControl2.isValid()) {
                    if (z) {
                        transaction.setAlpha(surfaceControl, 1.0f);
                    } else {
                        transaction.hide(surfaceControl).apply();
                    }
                }
                transaction.close();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                SurfaceControl surfaceControl2 = surfaceControl;
                if (surfaceControl2 != null && surfaceControl2.isValid()) {
                    if (z) {
                        transaction.setAlpha(surfaceControl, 0.0f).show(surfaceControl).apply();
                    } else {
                        transaction.setAlpha(surfaceControl, 1.0f).show(surfaceControl).apply();
                    }
                }
            }
        });
        return ofFloat;
    }

    public static Animator createViewAlphaAnimator(final View view, final boolean z, long j, TimeInterpolator timeInterpolator) {
        ObjectAnimator ofFloat;
        if (z) {
            ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
        }
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (z) {
                    view.setAlpha(1.0f);
                } else {
                    view.setVisibility(8);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (z) {
                    view.setAlpha(0.0f);
                    view.setVisibility(0);
                } else {
                    view.setAlpha(1.0f);
                    view.setVisibility(0);
                }
            }
        });
        return ofFloat;
    }
}
