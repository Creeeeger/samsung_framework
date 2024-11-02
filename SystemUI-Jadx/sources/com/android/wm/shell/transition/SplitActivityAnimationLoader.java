package com.android.wm.shell.transition;

import android.R;
import android.view.animation.Animation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitActivityAnimationLoader extends AnimationLoader {
    public SplitActivityAnimationLoader(MultiTaskingTransitionState multiTaskingTransitionState) {
        super(multiTaskingTransitionState);
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final boolean isAvailable() {
        this.mState.getClass();
        return false;
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final void loadAnimationIfPossible() {
        Animation animation;
        int i;
        int i2;
        MultiTaskingTransitionState multiTaskingTransitionState = this.mState;
        int i3 = multiTaskingTransitionState.mTransitionType;
        boolean z = true;
        if (i3 != 1 && i3 != 3) {
            z = false;
        }
        if (z) {
            if (multiTaskingTransitionState.mIsEnter) {
                i2 = R.anim.ft_avd_toarrow_rectangle_2_pivot_animation;
            } else {
                i2 = R.anim.ft_avd_toarrow_rectangle_3_animation;
            }
            animation = multiTaskingTransitionState.loadAnimationFromResources(i2);
        } else if (multiTaskingTransitionState.isClosingTransitionType()) {
            if (multiTaskingTransitionState.mIsEnter) {
                i = R.anim.ft_avd_toarrow_rectangle_2_animation;
            } else {
                i = R.anim.ft_avd_toarrow_rectangle_2_pivot_0_animation;
            }
            animation = multiTaskingTransitionState.loadAnimationFromResources(i);
        } else {
            animation = null;
        }
        if (animation != null) {
            animation.setDuration(336L);
            multiTaskingTransitionState.setAnimation(animation);
        }
    }

    public final String toString() {
        return "SplitActivityAnimationLoader";
    }
}
