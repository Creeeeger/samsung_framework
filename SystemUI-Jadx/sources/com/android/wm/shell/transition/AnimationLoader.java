package com.android.wm.shell.transition;

import android.graphics.Rect;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ClipRectAnimation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class AnimationLoader {
    public final MultiTaskingTransitionState mState;
    public static final Animation NO_ANIMATION = new AlphaAnimation(0.0f, 0.0f);
    public static final Animation DIRECT_SHOW_ANIMATION = new AlphaAnimation(1.0f, 1.0f);

    public AnimationLoader(MultiTaskingTransitionState multiTaskingTransitionState) {
        this.mState = multiTaskingTransitionState;
    }

    public void addRoundedClipAnimation(Rect rect, AnimationSet animationSet) {
        Rect rect2 = new Rect(rect);
        rect2.offsetTo(0, 0);
        float cornerRadius = getCornerRadius();
        ClipRectAnimation clipRectAnimation = new ClipRectAnimation(rect2, rect2);
        clipRectAnimation.setDuration(animationSet.getDuration());
        animationSet.addAnimation(clipRectAnimation);
        animationSet.setHasRoundedCorners(true);
        animationSet.setRoundedCornerRadius(cornerRadius);
    }

    public float getCornerRadius() {
        return 0.0f;
    }

    public abstract boolean isAvailable();

    public abstract void loadAnimationIfPossible();
}
