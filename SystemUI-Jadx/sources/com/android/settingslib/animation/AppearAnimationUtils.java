package com.android.settingslib.animation;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.RenderNodeAnimator;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.android.keyguard.KeyguardInputView;
import com.android.keyguard.KeyguardPatternView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AppearAnimationUtils {
    public boolean mAppearing;
    public final float mDelayScale;
    public final long mDuration;
    public final Interpolator mInterpolator;
    public final AppearAnimationProperties mProperties;
    public RowTranslationScaler mRowTranslationScaler;
    public final float mStartTranslation;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AppearAnimationProperties {
        public long[][] delays;
        public int maxDelayColIndex;
        public int maxDelayRowIndex;

        public AppearAnimationProperties(AppearAnimationUtils appearAnimationUtils) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface RowTranslationScaler {
    }

    public AppearAnimationUtils(Context context) {
        this(context, 220L, 1.0f, 1.0f, AnimationUtils.loadInterpolator(context, R.interpolator.linear_out_slow_in));
    }

    public static void startTranslationYAnimation(final View view, long j, long j2, final float f, Interpolator interpolator, KeyguardInputView.AnonymousClass1 anonymousClass1) {
        RenderNodeAnimator ofFloat;
        if (view.isHardwareAccelerated()) {
            ofFloat = new RenderNodeAnimator(1, f);
            ofFloat.setTarget(view);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, view.getTranslationY(), f);
        }
        ofFloat.setInterpolator(interpolator);
        ofFloat.setDuration(j2);
        ofFloat.setStartDelay(j);
        if (anonymousClass1 != null) {
            ofFloat.addListener(anonymousClass1);
        }
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.settingslib.animation.AppearAnimationUtils.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                view.setTranslationY(f);
            }
        });
        ofFloat.start();
    }

    public long calculateDelay(int i, int i2) {
        return (long) ((((Math.pow(i, 0.4d) + 0.4d) * i2 * 20.0d) + (i * 40)) * this.mDelayScale);
    }

    public final void startAnimation2d(Object[][] objArr, Runnable runnable, KeyguardPatternView keyguardPatternView) {
        float f;
        Runnable runnable2;
        float f2;
        AppearAnimationProperties appearAnimationProperties = this.mProperties;
        appearAnimationProperties.maxDelayColIndex = -1;
        appearAnimationProperties.maxDelayRowIndex = -1;
        appearAnimationProperties.delays = new long[objArr.length];
        long j = -1;
        for (int i = 0; i < objArr.length; i++) {
            Object[] objArr2 = objArr[i];
            appearAnimationProperties.delays[i] = new long[objArr2.length];
            for (int i2 = 0; i2 < objArr2.length; i2++) {
                long calculateDelay = calculateDelay(i, i2);
                appearAnimationProperties.delays[i][i2] = calculateDelay;
                if (objArr[i][i2] != null && calculateDelay > j) {
                    appearAnimationProperties.maxDelayColIndex = i2;
                    appearAnimationProperties.maxDelayRowIndex = i;
                    j = calculateDelay;
                }
            }
        }
        if (appearAnimationProperties.maxDelayRowIndex != -1 && appearAnimationProperties.maxDelayColIndex != -1) {
            int i3 = 0;
            while (true) {
                long[][] jArr = appearAnimationProperties.delays;
                if (i3 < jArr.length) {
                    long[] jArr2 = jArr[i3];
                    if (this.mRowTranslationScaler != null) {
                        f = (float) (Math.pow(r5 - i3, 2.0d) / jArr.length);
                    } else {
                        f = 1.0f;
                    }
                    float f3 = f * this.mStartTranslation;
                    for (int i4 = 0; i4 < jArr2.length; i4++) {
                        long j2 = jArr2[i4];
                        if (appearAnimationProperties.maxDelayRowIndex == i3 && appearAnimationProperties.maxDelayColIndex == i4) {
                            runnable2 = runnable;
                        } else {
                            runnable2 = null;
                        }
                        Object obj = objArr[i3][i4];
                        long j3 = this.mDuration;
                        boolean z = this.mAppearing;
                        if (z) {
                            f2 = f3;
                        } else {
                            f2 = -f3;
                        }
                        keyguardPatternView.createAnimation(obj, j2, j3, f2, z, this.mInterpolator, runnable2);
                    }
                    i3++;
                } else {
                    return;
                }
            }
        } else {
            runnable.run();
        }
    }

    public final void createAnimation(View view, long j, long j2, float f, boolean z, Interpolator interpolator, Runnable runnable) {
        createAnimation(view, j, j2, f, z, interpolator, runnable, null);
    }

    public AppearAnimationUtils(Context context, long j, float f, float f2, Interpolator interpolator) {
        this.mProperties = new AppearAnimationProperties(this);
        this.mInterpolator = interpolator;
        this.mStartTranslation = context.getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.appear_y_translation_start) * f;
        this.mDelayScale = f2;
        this.mDuration = j;
        this.mAppearing = true;
    }

    public final void createAnimation(final View view, long j, long j2, float f, boolean z, Interpolator interpolator, final Runnable runnable, KeyguardInputView.AnonymousClass1 anonymousClass1) {
        RenderNodeAnimator ofFloat;
        if (view != null) {
            final float f2 = z ? 1.0f : 0.0f;
            float f3 = z ? 0.0f : f;
            view.setAlpha(1.0f - f2);
            view.setTranslationY(f - f3);
            if (view.isHardwareAccelerated()) {
                ofFloat = new RenderNodeAnimator(11, f2);
                ofFloat.setTarget(view);
            } else {
                ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), f2);
            }
            ofFloat.setInterpolator(interpolator);
            ofFloat.setDuration(j2);
            ofFloat.setStartDelay(j);
            if (view.hasOverlappingRendering()) {
                view.setLayerType(2, null);
                ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.settingslib.animation.AppearAnimationUtils.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        view.setLayerType(0, null);
                    }
                });
            }
            ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.settingslib.animation.AppearAnimationUtils.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    view.setAlpha(f2);
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
            ofFloat.start();
            startTranslationYAnimation(view, j, j2, f3, interpolator, anonymousClass1);
        }
    }
}
