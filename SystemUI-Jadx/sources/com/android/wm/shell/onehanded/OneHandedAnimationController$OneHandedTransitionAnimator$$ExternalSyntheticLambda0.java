package com.android.wm.shell.onehanded;

import com.android.wm.shell.onehanded.OneHandedAnimationController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OneHandedAnimationController.OneHandedTransitionAnimator f$0;

    public /* synthetic */ OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0(OneHandedAnimationController.OneHandedTransitionAnimator oneHandedTransitionAnimator, int i) {
        this.$r8$classId = i;
        this.f$0 = oneHandedTransitionAnimator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                OneHandedAnimationController.OneHandedTransitionAnimator oneHandedTransitionAnimator = this.f$0;
                oneHandedTransitionAnimator.getClass();
                ((OneHandedAnimationCallback) obj).onOneHandedAnimationStart(oneHandedTransitionAnimator);
                return;
            default:
                OneHandedAnimationController.OneHandedTransitionAnimator oneHandedTransitionAnimator2 = this.f$0;
                oneHandedTransitionAnimator2.getClass();
                ((OneHandedAnimationCallback) obj).onOneHandedAnimationCancel(oneHandedTransitionAnimator2);
                return;
        }
    }
}
