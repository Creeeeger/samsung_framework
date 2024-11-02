package com.android.systemui.volume.view;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.systemui.volume.store.StoreInteractor;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelMotion {
    public static final PathInterpolator HIDE_INTERPOLATOR;
    public static final PathInterpolator SETTING_BUTTON_ROTATION_INTERPOLATOR;
    public static final PathInterpolator TITLE_TRANSLATION_INTERPOLATOR;
    public Context context;
    public SpringAnimation singleShowSpringAnimation;
    public final StoreInteractor storeInteractor = new StoreInteractor(null, null, 3, null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        HIDE_INTERPOLATOR = new PathInterpolator(0.7f, 0.0f, 0.83f, 0.83f);
        SETTING_BUTTON_ROTATION_INTERPOLATOR = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
        TITLE_TRANSLATION_INTERPOLATOR = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
    }

    public static SpringAnimation getSeekBarKeyDownAnimation(final View view) {
        SpringAnimation springAnimation = new SpringAnimation(view, DynamicAnimation.SCALE_X);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.VolumePanelMotion$getSeekBarKeyDownAnimation$1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(float f, float f2) {
                view.setScaleY(f);
            }
        });
        SpringForce springForce = new SpringForce();
        springForce.setStiffness(500.0f);
        springForce.setDampingRatio(1.0f);
        springAnimation.mSpring = springForce;
        return springAnimation;
    }

    public static SpringAnimation getSeekBarKeyUpAnimation(final View view) {
        SpringAnimation springAnimation = new SpringAnimation(view, DynamicAnimation.SCALE_X);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.VolumePanelMotion$getSeekBarKeyUpAnimation$1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(float f, float f2) {
                view.setScaleY(f);
            }
        });
        SpringForce springForce = new SpringForce();
        springForce.setStiffness(450.0f);
        springForce.setDampingRatio(1.0f);
        springAnimation.mSpring = springForce;
        return springAnimation;
    }

    public static SpringAnimation getSeekBarTouchDownAnimation(final View view) {
        SpringAnimation springAnimation = new SpringAnimation(view, DynamicAnimation.SCALE_X);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.VolumePanelMotion$getSeekBarTouchDownAnimation$1$1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(float f, float f2) {
                view.setScaleY(f);
            }
        });
        SpringForce springForce = new SpringForce();
        springForce.setStiffness(300.0f);
        springForce.setDampingRatio(1.0f);
        springAnimation.mSpring = springForce;
        return springAnimation;
    }

    public static SpringAnimation getSeekBarTouchUpAnimation(final View view) {
        SpringAnimation springAnimation = new SpringAnimation(view, DynamicAnimation.SCALE_X);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.VolumePanelMotion$getSeekBarTouchUpAnimation$1$1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(float f, float f2) {
                view.setScaleY(f);
            }
        });
        SpringForce springForce = new SpringForce();
        springForce.setStiffness(200.0f);
        springForce.setDampingRatio(1.0f);
        springAnimation.mSpring = springForce;
        return springAnimation;
    }

    public static AnimatorSet getSettingButtonRotateAnimation(View view, boolean z) {
        float f;
        float[] fArr = new float[2];
        int i = 0;
        fArr[0] = view.getRotation();
        float f2 = 0.0f;
        if (z) {
            f = 0.0f;
        } else {
            f = -90.0f;
        }
        fArr[1] = f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotation", fArr);
        ofFloat.setDuration(400L);
        ofFloat.setInterpolator(SETTING_BUTTON_ROTATION_INTERPOLATOR);
        float[] fArr2 = new float[2];
        fArr2[0] = view.getAlpha();
        if (z) {
            f2 = 1.0f;
        }
        fArr2[1] = f2;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "alpha", fArr2);
        ofFloat2.setDuration(100L);
        ofFloat2.setInterpolator(new LinearInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat);
        animatorSet.playTogether(ofFloat2);
        if (z) {
            i = 50;
        }
        animatorSet.setStartDelay(i);
        return animatorSet;
    }

    public static void startSeekBarKeyDownAnimation(SpringAnimation springAnimation, SpringAnimation springAnimation2) {
        boolean z;
        if (springAnimation2 != null) {
            if (springAnimation2.mRunning && springAnimation2.canSkipToEnd()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                springAnimation2 = null;
            }
            if (springAnimation2 != null) {
                springAnimation2.skipToEnd();
            }
        }
        springAnimation.animateToFinalPosition(0.95f);
    }

    public static void startSeekBarKeyUpAnimation(SpringAnimation springAnimation, SpringAnimation springAnimation2) {
        boolean z;
        if (springAnimation2 != null) {
            if (springAnimation2.mRunning && springAnimation2.canSkipToEnd()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                springAnimation2 = null;
            }
            if (springAnimation2 != null) {
                springAnimation2.skipToEnd();
            }
        }
        springAnimation.animateToFinalPosition(1.0f);
    }

    public static void startSeekBarTouchUpAnimation(SpringAnimation springAnimation, SpringAnimation springAnimation2) {
        if (springAnimation2 != null && springAnimation2.mRunning && springAnimation2.canSkipToEnd()) {
            springAnimation2.skipToEnd();
        }
        springAnimation.animateToFinalPosition(1.0f);
    }
}
