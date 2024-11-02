package com.android.wm.shell.bubbles;

import com.android.wm.shell.bubbles.BubbleController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$BubblesImpl$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubbleController.BubblesImpl f$0;

    public /* synthetic */ BubbleController$BubblesImpl$$ExternalSyntheticLambda6(BubbleController.BubblesImpl bubblesImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = bubblesImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                BubbleController.this.mBubbleData.dismissAll(2);
                return;
            case 1:
                BubbleController bubbleController = BubbleController.this;
                BubbleData bubbleData = bubbleController.mBubbleData;
                for (Bubble bubble : bubbleData.getBubbles()) {
                    bubbleData.dismissBubbleWithKey(4, bubble.mKey);
                    bubbleController.setIsBubble(bubble, false);
                }
                return;
            case 2:
                for (Bubble bubble2 : BubbleController.this.mBubbleData.getBubbles()) {
                    bubble2.setShowDot(bubble2.showInShade());
                }
                return;
            default:
                BubbleController.this.collapseStack();
                return;
        }
    }
}
