package com.android.wm.shell.transition;

import android.app.ActivityManager;
import android.content.res.Configuration;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Slog;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.PathInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.window.TransitionInfo;
import com.android.internal.policy.TransitionAnimation;
import com.android.wm.shell.common.DisplayController;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.util.InterpolatorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiTaskingTransitionState {
    public Animation mAnimation;
    public boolean mAnimationLoaded;
    public TransitionInfo.AnimationOptions mAnimationOptions;
    public TransitionInfo.Change mChange;
    public final DisplayController mDisplayController;
    public boolean mHasCustomDisplayChangeTransition;
    public boolean mIsEnter;
    public boolean mIsFreeformMovingBehindSplitScreen;
    public ActivityManager.RunningTaskInfo mOpeningAppsEdgeTaskInfo;
    public boolean mSeparatedFromCustomDisplayChange;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public final TransitionAnimation mTransitAnimation;
    public int mTransitionType = 0;
    public final Configuration mConfiguration = new Configuration();
    public int mTaskId = -1;
    public int mDisplayId = -1;
    public int mWindowingMode = 0;
    public int mMinimizeAnimState = 0;
    public final PointF mMinimizePoint = new PointF();
    public boolean mIsPopOverAnimationNeeded = false;
    public float mFreeformStashScale = 1.0f;
    public int mForceHidingTransit = 0;

    public MultiTaskingTransitionState(TransitionAnimation transitionAnimation, DisplayController displayController) {
        this.mTransitAnimation = transitionAnimation;
        this.mDisplayController = displayController;
    }

    public final Animation createMinimizeAnimation(boolean z, PointF pointF, Rect rect, float f, boolean z2) {
        boolean z3;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        Configuration configuration;
        float f12;
        ScaleAnimation scaleAnimation;
        PathInterpolator pathInterpolator;
        PathInterpolator pathInterpolator2;
        PathInterpolator pathInterpolator3;
        long j;
        float f13;
        float f14;
        ScaleAnimation scaleAnimation2;
        boolean z4 = CoreRune.MT_NEW_DEX_SHELL_TRANSITION;
        Configuration configuration2 = this.mConfiguration;
        if (z4 && configuration2.isNewDexMode()) {
            z3 = true;
        } else {
            z3 = false;
        }
        float width = rect.width() / 2.0f;
        float height = rect.height() / 2.0f;
        float f15 = 0.2f;
        if (z) {
            if (z3) {
                f2 = 0.0f;
            } else {
                f2 = 0.2f;
            }
        } else {
            f2 = f;
        }
        if (z) {
            f15 = f;
        } else if (z3) {
            f15 = 0.0f;
        }
        int centerX = rect.centerX();
        int centerY = (int) (rect.centerY() * f);
        if (z2) {
            f3 = rect.width() - (rect.width() * f);
        } else {
            f3 = 0.0f;
        }
        float f16 = pointF.x - (centerX + f3);
        float f17 = pointF.y - centerY;
        if (z) {
            f4 = f16;
        } else {
            f4 = 0.0f;
        }
        if (z) {
            f16 = 0.0f;
        }
        if (z) {
            f5 = f17;
        } else {
            f5 = 0.0f;
        }
        if (z) {
            f17 = 0.0f;
        }
        if (z) {
            f6 = 0.0f;
        } else {
            f6 = 1.0f;
        }
        if (z) {
            f7 = 1.0f;
        } else {
            f7 = 0.0f;
        }
        if (f > 0.0f && f < 1.0f) {
            if (z2) {
                f13 = f7;
                f14 = f6;
                scaleAnimation2 = new ScaleAnimation(f2, f15, f2, f15, 1, 1.0f, 1, 0.0f);
            } else {
                f13 = f7;
                f14 = f6;
                scaleAnimation2 = new ScaleAnimation(f2, f15, f2, f15);
            }
            configuration = configuration2;
            scaleAnimation = scaleAnimation2;
            f9 = f13;
            f10 = f5;
            f11 = f4;
            f12 = f16;
            f8 = f14;
        } else {
            f8 = f6;
            f9 = f7;
            f10 = f5;
            f11 = f4;
            configuration = configuration2;
            f12 = f16;
            scaleAnimation = new ScaleAnimation(f2, f15, f2, f15, width, height);
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(f11, f12, f10, f17);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f8, f9);
        if (z3) {
            pathInterpolator = InterpolatorUtils.ONE_EASING;
        } else {
            pathInterpolator = InterpolatorUtils.SINE_IN_OUT_80;
        }
        translateAnimation.setInterpolator(pathInterpolator);
        if (z3) {
            pathInterpolator2 = InterpolatorUtils.ONE_EASING;
        } else {
            pathInterpolator2 = InterpolatorUtils.SINE_IN_OUT_33;
        }
        alphaAnimation.setInterpolator(pathInterpolator2);
        if (z3) {
            pathInterpolator3 = InterpolatorUtils.ONE_EASING;
        } else {
            pathInterpolator3 = InterpolatorUtils.SINE_IN_OUT_80;
        }
        scaleAnimation.setInterpolator(pathInterpolator3);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setFillAfter(true);
        animationSet.setFillEnabled(true);
        if (!z && this.mForceHidingTransit == 2) {
            j = 0;
        } else if (CoreRune.MT_NEW_DEX_SHELL_TRANSITION && configuration.isNewDexMode()) {
            j = 450;
        } else {
            j = 250;
        }
        animationSet.setDuration(j);
        if (z) {
            animationSet.setZAdjustment(1);
        }
        return animationSet;
    }

    public final Rect getBounds() {
        return new Rect(this.mChange.getEndAbsBounds());
    }

    public final boolean isActivityTypeHome() {
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
        if ((runningTaskInfo != null && runningTaskInfo.getActivityType() == 2) || this.mConfiguration.windowConfiguration.getActivityType() == 2) {
            return true;
        }
        return false;
    }

    public final boolean isClosingTransitionType() {
        int i = this.mTransitionType;
        if (i != 2 && i != 4) {
            return false;
        }
        return true;
    }

    public final Animation loadAnimationFromResources(int i) {
        return this.mTransitAnimation.loadAnimationRes("android", i);
    }

    public final void reset() {
        this.mAnimation = null;
        this.mAnimationLoaded = false;
        this.mTransitionType = 0;
        this.mIsEnter = false;
        this.mConfiguration.setToDefaults();
        this.mChange = null;
        this.mDisplayId = -1;
        this.mTaskInfo = null;
        this.mTaskId = -1;
        this.mWindowingMode = 0;
        this.mAnimationOptions = null;
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
            this.mOpeningAppsEdgeTaskInfo = null;
        }
        if (CoreRune.MW_FREEFORM_SHELL_TRANSITION) {
            this.mIsFreeformMovingBehindSplitScreen = false;
        }
        if (CoreRune.MW_SHELL_DISPLAY_CHANGE_TRANSITION) {
            this.mHasCustomDisplayChangeTransition = false;
            this.mSeparatedFromCustomDisplayChange = false;
        }
        if (CoreRune.MW_FREEFORM_MINIMIZE_SHELL_TRANSITION) {
            this.mMinimizeAnimState = 0;
            this.mMinimizePoint.set(0.0f, 0.0f);
        }
    }

    public final void setAnimation(Animation animation) {
        if (animation == null) {
            Slog.w("MultiTaskingTransitionState", "setAnimation: failed, animation is null");
        } else {
            this.mAnimation = animation;
            this.mAnimationLoaded = true;
        }
    }

    public final String toString() {
        String str;
        String str2;
        boolean z;
        String str3 = "";
        if (this.mForceHidingTransit == 0) {
            str = "";
        } else {
            str = ", mForceHidingTransit=" + MultiWindowManager.forceHidingTransitToString(this.mForceHidingTransit);
        }
        StringBuilder sb = new StringBuilder("{Type=");
        sb.append(this.mTransitionType);
        sb.append(", mIsEnter=");
        sb.append(this.mIsEnter);
        sb.append(", mDisplayId=");
        sb.append(this.mDisplayId);
        sb.append(", mTaskId=");
        sb.append(this.mTaskId);
        sb.append(", mWindowingMode=");
        sb.append(this.mWindowingMode);
        sb.append(", mAnimationOptions=");
        sb.append(this.mAnimationOptions);
        sb.append(", mHasCustomDisplayChangeTransition=");
        sb.append(this.mHasCustomDisplayChangeTransition);
        sb.append(", mSeparatedFromCustomDisplayChange=");
        sb.append(this.mSeparatedFromCustomDisplayChange);
        if (!this.mIsFreeformMovingBehindSplitScreen) {
            str2 = "";
        } else {
            str2 = ", mFreeformMovingBehindSplit=true";
        }
        sb.append(str2);
        sb.append(str);
        if (this.mAnimation == AnimationLoader.NO_ANIMATION) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            str3 = ", NO_AMIM";
        }
        sb.append(str3);
        sb.append('}');
        return sb.toString();
    }
}
