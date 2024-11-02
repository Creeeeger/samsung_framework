package com.android.wm.shell.bubbles.animation;

import android.graphics.PointF;
import android.view.View;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                Runnable[] runnableArr = (Runnable[]) this.f$0;
                int length = runnableArr.length;
                while (i < length) {
                    runnableArr[i].run();
                    i++;
                }
                return;
            case 1:
                Runnable[] runnableArr2 = (Runnable[]) this.f$0;
                int length2 = runnableArr2.length;
                while (i < length2) {
                    runnableArr2[i].run();
                    i++;
                }
                return;
            default:
                PhysicsAnimationLayout.PhysicsPropertyAnimator physicsPropertyAnimator = (PhysicsAnimationLayout.PhysicsPropertyAnimator) this.f$0;
                physicsPropertyAnimator.getClass();
                DynamicAnimation.AnonymousClass1 anonymousClass1 = DynamicAnimation.TRANSLATION_X;
                PointF pointF = physicsPropertyAnimator.mCurrentPointOnPath;
                float f = pointF.x;
                View view = physicsPropertyAnimator.mView;
                physicsPropertyAnimator.updateValueForChild(anonymousClass1, view, f);
                physicsPropertyAnimator.updateValueForChild(DynamicAnimation.TRANSLATION_Y, view, pointF.y);
                return;
        }
    }
}
