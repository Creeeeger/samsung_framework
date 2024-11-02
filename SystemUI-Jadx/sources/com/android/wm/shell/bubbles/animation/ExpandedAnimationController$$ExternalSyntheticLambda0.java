package com.android.wm.shell.bubbles.animation;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ExpandedAnimationController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ExpandedAnimationController$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ExpandedAnimationController expandedAnimationController = (ExpandedAnimationController) this.f$0;
                expandedAnimationController.mAnimatingExpand = false;
                Runnable runnable = expandedAnimationController.mAfterExpand;
                if (runnable != null) {
                    runnable.run();
                }
                expandedAnimationController.mAfterExpand = null;
                expandedAnimationController.updateBubblePositions();
                return;
            case 1:
                ExpandedAnimationController expandedAnimationController2 = (ExpandedAnimationController) this.f$0;
                expandedAnimationController2.mAnimatingCollapse = false;
                Runnable runnable2 = expandedAnimationController2.mAfterCollapse;
                if (runnable2 != null) {
                    runnable2.run();
                }
                expandedAnimationController2.mAfterCollapse = null;
                return;
            case 2:
                ((ExpandedAnimationController) this.f$0).mLeadBubbleEndAction = null;
                return;
            default:
                ((View) this.f$0).setTranslationZ(0.0f);
                return;
        }
    }
}
