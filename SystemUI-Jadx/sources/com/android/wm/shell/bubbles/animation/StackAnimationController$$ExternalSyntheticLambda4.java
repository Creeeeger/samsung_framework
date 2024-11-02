package com.android.wm.shell.bubbles.animation;

import android.view.View;
import com.android.systemui.R;
import com.android.wm.shell.bubbles.BadgedImageView;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StackAnimationController$$ExternalSyntheticLambda4 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ StackAnimationController$$ExternalSyntheticLambda4(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float f;
        switch (this.$r8$classId) {
            case 0:
                StackAnimationController stackAnimationController = (StackAnimationController) this.f$0;
                List list = (List) this.f$1;
                stackAnimationController.getClass();
                for (int i = 0; i < list.size(); i++) {
                    View view = (View) list.get(i);
                    if (i < 2) {
                        f = (stackAnimationController.mMaxBubbles * stackAnimationController.mElevation) - i;
                    } else {
                        f = 0.0f;
                    }
                    view.setZ(f);
                    BadgedImageView badgedImageView = (BadgedImageView) view;
                    if (i == 0) {
                        badgedImageView.showDotAndBadge(!stackAnimationController.isStackOnLeftSide());
                    } else {
                        badgedImageView.hideDotAndBadge(!stackAnimationController.isStackOnLeftSide());
                    }
                }
                return;
            default:
                View view2 = (View) this.f$0;
                Runnable runnable = (Runnable) this.f$1;
                view2.setTag(R.id.reorder_animator_tag, null);
                runnable.run();
                return;
        }
    }
}
