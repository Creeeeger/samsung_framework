package com.android.wm.shell.bubbles.animation;

import android.view.View;
import com.android.systemui.R;
import com.android.wm.shell.bubbles.animation.StackAnimationController;
import com.android.wm.shell.common.FloatingContentCoordinator;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StackAnimationController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StackAnimationController$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((View) this.f$0).setTag(R.id.reorder_animator_tag, null);
                return;
            default:
                StackAnimationController stackAnimationController = (StackAnimationController) this.f$0;
                stackAnimationController.setStackPosition(stackAnimationController.mPositioner.getRestingPosition());
                stackAnimationController.mStackMovedToStartPosition = true;
                stackAnimationController.mLayout.setVisibility(0);
                if (stackAnimationController.mLayout.getChildCount() > 0) {
                    FloatingContentCoordinator floatingContentCoordinator = stackAnimationController.mFloatingContentCoordinator;
                    floatingContentCoordinator.updateContentBounds();
                    Map map = floatingContentCoordinator.allContentBounds;
                    StackAnimationController.AnonymousClass1 anonymousClass1 = stackAnimationController.mStackFloatingContent;
                    ((HashMap) map).put(anonymousClass1, anonymousClass1.getFloatingBoundsOnScreen());
                    floatingContentCoordinator.maybeMoveConflictingContent(anonymousClass1);
                    stackAnimationController.animateInBubble(stackAnimationController.mLayout.getChildAt(0), 0);
                    return;
                }
                return;
        }
    }
}
