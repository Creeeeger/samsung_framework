package com.android.wm.shell.bubbles.animation;

import androidx.dynamicanimation.animation.DynamicAnimation;
import com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0 {
    public final /* synthetic */ PhysicsAnimationLayout.PhysicsAnimationController f$0;
    public final /* synthetic */ Set f$1;
    public final /* synthetic */ List f$2;

    public /* synthetic */ PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0(PhysicsAnimationLayout.PhysicsAnimationController physicsAnimationController, Set set, List list) {
        this.f$0 = physicsAnimationController;
        this.f$1 = set;
        this.f$2 = list;
    }

    public final void startAll(Runnable[] runnableArr) {
        PhysicsAnimationLayout.PhysicsAnimationController physicsAnimationController = this.f$0;
        physicsAnimationController.getClass();
        PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0 physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0 = new PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0(runnableArr, 1);
        if (physicsAnimationController.mLayout.getChildCount() == 0) {
            physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0.run();
            return;
        }
        DynamicAnimation.ViewProperty[] viewPropertyArr = (DynamicAnimation.ViewProperty[]) this.f$1.toArray(new DynamicAnimation.ViewProperty[0]);
        PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1 physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1 = new PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1(physicsAnimationController, viewPropertyArr, 1, physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0);
        for (DynamicAnimation.ViewProperty viewProperty : viewPropertyArr) {
            physicsAnimationController.mLayout.mEndActionForProperty.put(viewProperty, physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1);
        }
        Iterator it = this.f$2.iterator();
        while (it.hasNext()) {
            ((PhysicsAnimationLayout.PhysicsPropertyAnimator) it.next()).start(new Runnable[0]);
        }
    }
}
