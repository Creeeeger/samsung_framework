package com.android.systemui.statusbar.policy;

import androidx.core.animation.Animator;
import androidx.core.animation.ValueAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RemoteInputView$$ExternalSyntheticLambda0 implements Animator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RemoteInputView f$0;
    public final /* synthetic */ ValueAnimator f$1;

    public /* synthetic */ RemoteInputView$$ExternalSyntheticLambda0(RemoteInputView remoteInputView, ValueAnimator valueAnimator, int i) {
        this.$r8$classId = i;
        this.f$0 = remoteInputView;
        this.f$1 = valueAnimator;
    }

    @Override // androidx.core.animation.Animator.AnimatorUpdateListener
    public final void onAnimationUpdate(Animator animator) {
        int i = this.$r8$classId;
        ValueAnimator valueAnimator = this.f$1;
        RemoteInputView remoteInputView = this.f$0;
        switch (i) {
            case 0:
                Object obj = RemoteInputView.VIEW_TAG;
                remoteInputView.getClass();
                remoteInputView.setFocusAnimationScaleY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
            default:
                Object obj2 = RemoteInputView.VIEW_TAG;
                remoteInputView.getClass();
                remoteInputView.setFocusAnimationScaleY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
        }
    }
}
