package com.android.wm.shell.bubbles;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleStackView$$ExternalSyntheticLambda8 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubbleStackView f$0;

    public /* synthetic */ BubbleStackView$$ExternalSyntheticLambda8(BubbleStackView bubbleStackView, int i) {
        this.$r8$classId = i;
        this.f$0 = bubbleStackView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                BubbleStackView bubbleStackView = this.f$0;
                BubbleData bubbleData = bubbleStackView.mBubbleData;
                bubbleData.mShowingOverflow = true;
                bubbleData.setSelectedBubble(bubbleStackView.mBubbleOverflow);
                bubbleStackView.mBubbleData.setExpanded(true);
                bubbleStackView.mBubbleSALogger.sendEventCDLog("QPNE0100", "app", "overflow bubble");
                return;
            case 1:
                BubbleStackView bubbleStackView2 = this.f$0;
                if (bubbleStackView2.isManageEduVisible()) {
                    bubbleStackView2.mManageEduView.hide();
                    return;
                }
                if (bubbleStackView2.isStackEduVisible()) {
                    bubbleStackView2.mStackEduView.hide(false);
                    return;
                }
                BubbleData bubbleData2 = bubbleStackView2.mBubbleData;
                if (bubbleData2.mExpanded) {
                    bubbleData2.setExpanded(false);
                    return;
                }
                return;
            default:
                BubbleStackView.$r8$lambda$Cn_cFsmoCiAxFL8cmUmWnqiwXJk(this.f$0);
                return;
        }
    }
}
