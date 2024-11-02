package com.android.systemui.screenshot;

import android.animation.ValueAnimator;
import android.util.MathUtils;
import com.android.systemui.screenshot.DraggableConstraintLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DraggableConstraintLayout$SwipeDismissHandler$$ExternalSyntheticLambda0 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DraggableConstraintLayout.SwipeDismissHandler f$0;
    public final /* synthetic */ float f$1;
    public final /* synthetic */ float f$2;

    public /* synthetic */ DraggableConstraintLayout$SwipeDismissHandler$$ExternalSyntheticLambda0(DraggableConstraintLayout.SwipeDismissHandler swipeDismissHandler, float f, float f2, int i) {
        this.$r8$classId = i;
        this.f$0 = swipeDismissHandler;
        this.f$1 = f;
        this.f$2 = f2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.$r8$classId) {
            case 0:
                DraggableConstraintLayout.SwipeDismissHandler swipeDismissHandler = this.f$0;
                float f = this.f$1;
                float f2 = this.f$2;
                swipeDismissHandler.getClass();
                swipeDismissHandler.mView.setTranslationX(MathUtils.lerp(f, f2 + f, valueAnimator.getAnimatedFraction()));
                swipeDismissHandler.mView.setAlpha(1.0f - valueAnimator.getAnimatedFraction());
                return;
            default:
                DraggableConstraintLayout.SwipeDismissHandler swipeDismissHandler2 = this.f$0;
                float f3 = this.f$1;
                float f4 = this.f$2;
                swipeDismissHandler2.getClass();
                swipeDismissHandler2.mView.setTranslationX(MathUtils.lerp(f3, f4, valueAnimator.getAnimatedFraction()));
                return;
        }
    }
}
