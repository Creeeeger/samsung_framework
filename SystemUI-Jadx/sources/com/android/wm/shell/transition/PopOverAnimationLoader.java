package com.android.wm.shell.transition;

import android.graphics.Rect;
import android.view.DisplayInfo;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.view.animation.ScaleAnimation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PopOverAnimationLoader extends AnimationLoader {
    public static final Interpolator POP_OVER_LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final Interpolator POP_OVER_CUSTOM_INTERPOLATOR = new PathInterpolator(0.4f, 0.6f, 0.0f, 1.0f);
    public static final Interpolator POP_OVER_SINE_IN_OUT_33_INTERPOLATOR = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);

    public PopOverAnimationLoader(MultiTaskingTransitionState multiTaskingTransitionState) {
        super(multiTaskingTransitionState);
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final boolean isAvailable() {
        return this.mState.mIsPopOverAnimationNeeded;
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final void loadAnimationIfPossible() {
        AlphaAnimation alphaAnimation;
        DisplayInfo displayInfo = new DisplayInfo();
        MultiTaskingTransitionState multiTaskingTransitionState = this.mState;
        multiTaskingTransitionState.mDisplayController.getDisplayContext(multiTaskingTransitionState.mDisplayId).getDisplay().getDisplayInfo(displayInfo);
        boolean z = false;
        Rect rect = new Rect(0, 0, displayInfo.appWidth, displayInfo.appHeight);
        float width = (rect.width() / 2.0f) + rect.left;
        float height = (rect.height() / 2.0f) + rect.top;
        AnimationSet animationSet = new AnimationSet(false);
        int i = multiTaskingTransitionState.mTransitionType;
        if (i == 1 || i == 3) {
            z = true;
        }
        Interpolator interpolator = POP_OVER_LINEAR_INTERPOLATOR;
        if (z) {
            if (multiTaskingTransitionState.mIsEnter) {
                alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            } else {
                alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            }
            alphaAnimation.setInterpolator(interpolator);
            if (multiTaskingTransitionState.isActivityTypeHome() && !multiTaskingTransitionState.mIsEnter && multiTaskingTransitionState.mChange.getMode() == 2) {
                alphaAnimation.setDuration(80L);
            } else {
                long j = 150;
                alphaAnimation.setDuration(150L);
                if (multiTaskingTransitionState.mIsEnter) {
                    j = 0;
                }
                alphaAnimation.setStartOffset(j);
            }
            animationSet.addAnimation(alphaAnimation);
            if (multiTaskingTransitionState.mIsEnter) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.95f, 1.0f, 0.95f, 1.0f, width, height);
                scaleAnimation.setInterpolator(POP_OVER_CUSTOM_INTERPOLATOR);
                scaleAnimation.setDuration(350L);
                animationSet.addAnimation(scaleAnimation);
            }
        } else if (multiTaskingTransitionState.isClosingTransitionType() && !multiTaskingTransitionState.mIsEnter) {
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation2.setInterpolator(interpolator);
            alphaAnimation2.setDuration(200L);
            animationSet.addAnimation(alphaAnimation2);
            ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.0f, 0.95f, 1.0f, 0.95f, width, height);
            scaleAnimation2.setInterpolator(POP_OVER_SINE_IN_OUT_33_INTERPOLATOR);
            scaleAnimation2.setDuration(200L);
            animationSet.addAnimation(scaleAnimation2);
        }
        multiTaskingTransitionState.setAnimation(animationSet);
    }

    public final String toString() {
        return "PopOverAnimationLoader";
    }
}
