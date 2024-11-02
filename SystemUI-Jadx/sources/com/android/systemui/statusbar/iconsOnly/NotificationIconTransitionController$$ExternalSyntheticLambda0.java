package com.android.systemui.statusbar.iconsOnly;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import androidx.dynamicanimation.animation.SpringAnimation;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationIconTransitionController$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NotificationIconTransitionController$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((SpringAnimation) obj).cancel();
                return;
            case 1:
                ((ValueAnimator) obj).cancel();
                return;
            case 2:
                ((AnimatorSet) obj).cancel();
                return;
            case 3:
                ((AnimatorSet) obj).cancel();
                return;
            default:
                SpringAnimation springAnimation = (SpringAnimation) obj;
                if (springAnimation.mRunning) {
                    springAnimation.cancel();
                    return;
                }
                return;
        }
    }
}
