package com.android.wm.shell.bubbles;

import android.util.SparseArray;
import com.android.systemui.wmshell.BubblesManager;
import com.android.systemui.wmshell.BubblesManager$$ExternalSyntheticLambda1;
import com.android.wm.shell.bubbles.BubbleController;
import com.android.wm.shell.bubbles.Bubbles;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$$ExternalSyntheticLambda15 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ BubbleController$$ExternalSyntheticLambda15(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                BubbleController bubbleController = (BubbleController) this.f$0;
                Bubble bubble = (Bubble) this.f$1;
                bubbleController.getClass();
                bubbleController.removeBubble(bubble.mKey, 10);
                return;
            case 1:
                ((Consumer) this.f$0).accept((Boolean) this.f$1);
                return;
            case 2:
                BubbleController.this.mBubbleSALogger = (BubblesManager$$ExternalSyntheticLambda1) this.f$1;
                return;
            case 3:
                BubbleController.this.mSysuiProxy = (BubblesManager.AnonymousClass4) this.f$1;
                return;
            case 4:
                BubbleController.this.mCurrentProfiles = (SparseArray) this.f$1;
                return;
            case 5:
                BubbleController.BubblesImpl bubblesImpl = (BubbleController.BubblesImpl) this.f$0;
                Bubble bubble2 = (Bubble) this.f$1;
                BubbleController bubbleController2 = BubbleController.this;
                if (bubble2 == null) {
                    bubbleController2.getClass();
                    return;
                }
                BubbleData bubbleData = bubbleController2.mBubbleData;
                String str = bubble2.mKey;
                if (bubbleData.hasBubbleInStackWithKey(str)) {
                    bubbleData.setSelectedBubble(bubble2);
                    bubbleData.setExpanded(true);
                    return;
                } else {
                    if (bubbleData.hasOverflowBubbleWithKey(str)) {
                        bubbleController2.promoteBubbleFromOverflow(bubble2);
                        return;
                    }
                    return;
                }
            case 6:
                BubbleController.BubblesImpl bubblesImpl2 = (BubbleController.BubblesImpl) this.f$0;
                BubbleController.this.setExpandListener((Bubbles.BubbleExpandListener) this.f$1);
                return;
            default:
                BubbleController.IBubblesImpl iBubblesImpl = (BubbleController.IBubblesImpl) this.f$0;
                iBubblesImpl.mListener.register((IBubblesListener) this.f$1);
                return;
        }
    }
}
