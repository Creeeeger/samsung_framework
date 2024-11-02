package com.android.wm.shell.bubbles.animation;

import androidx.dynamicanimation.animation.DynamicAnimation;
import com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ExpandedAnimationController$$ExternalSyntheticLambda2 implements PhysicsAnimationLayout.PhysicsAnimationController.ChildAnimationConfigurator {
    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController.ChildAnimationConfigurator
    public final void configureAnimationForChildAtIndex(int i, PhysicsAnimationLayout.PhysicsPropertyAnimator physicsPropertyAnimator) {
        physicsPropertyAnimator.property(DynamicAnimation.SCALE_X, 1.0f, new Runnable[0]);
        physicsPropertyAnimator.property(DynamicAnimation.SCALE_Y, 1.0f, new Runnable[0]);
        physicsPropertyAnimator.property(DynamicAnimation.ALPHA, 1.0f, new Runnable[0]);
    }
}
