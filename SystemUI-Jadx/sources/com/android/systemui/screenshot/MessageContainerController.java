package com.android.systemui.screenshot;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.android.systemui.flags.FeatureFlags;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MessageContainerController {
    public Animator animateOut;
    public ViewGroup container;
    public ViewGroup detectionNoticeView;
    public Guideline guideline;
    public ViewGroup workProfileFirstRunView;
    public final WorkProfileMessageController workProfileMessageController;

    public MessageContainerController(WorkProfileMessageController workProfileMessageController, ScreenshotDetectionController screenshotDetectionController, FeatureFlags featureFlags) {
        this.workProfileMessageController = workProfileMessageController;
    }

    public final Animator getAnimator(boolean z) {
        ValueAnimator ofFloat;
        ViewGroup viewGroup = this.container;
        ViewGroup viewGroup2 = null;
        if (viewGroup == null) {
            viewGroup = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewGroup.getLayoutParams();
        ViewGroup viewGroup3 = this.container;
        if (viewGroup3 != null) {
            viewGroup2 = viewGroup3;
        }
        final int height = viewGroup2.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        if (z) {
            ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        } else {
            ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        }
        ofFloat.setDuration(400L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.screenshot.MessageContainerController$getAnimator$1$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Guideline guideline = MessageContainerController.this.guideline;
                ViewGroup viewGroup4 = null;
                if (guideline == null) {
                    guideline = null;
                }
                int i = (int) (height * floatValue);
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) guideline.getLayoutParams();
                if (!guideline.mFilterRedundantCalls || layoutParams.guideEnd != i) {
                    layoutParams.guideEnd = i;
                    guideline.setLayoutParams(layoutParams);
                }
                ViewGroup viewGroup5 = MessageContainerController.this.container;
                if (viewGroup5 != null) {
                    viewGroup4 = viewGroup5;
                }
                viewGroup4.setAlpha(floatValue);
            }
        });
        return ofFloat;
    }
}
