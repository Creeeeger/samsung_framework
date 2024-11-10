package com.android.server.wm;

import com.android.server.wm.ScreenRotationAnimation;
import com.android.server.wm.SurfaceAnimator;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0 implements SurfaceAnimator.OnAnimationFinishedCallback {
    public final /* synthetic */ ScreenRotationAnimation.SurfaceRotationAnimationController f$0;

    public /* synthetic */ ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0(ScreenRotationAnimation.SurfaceRotationAnimationController surfaceRotationAnimationController) {
        this.f$0 = surfaceRotationAnimationController;
    }

    @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
    public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
        ScreenRotationAnimation.SurfaceRotationAnimationController.m13469$r8$lambda$953esEamEY0ik0NmGjvtRbkZo(this.f$0, i, animationAdapter);
    }
}
