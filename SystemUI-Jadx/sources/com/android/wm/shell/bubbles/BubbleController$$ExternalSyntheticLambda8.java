package com.android.wm.shell.bubbles;

import android.graphics.Rect;
import com.android.wm.shell.bubbles.BubbleViewInfoTask;
import com.android.wm.shell.draganddrop.DragAndDropController;
import com.android.wm.shell.onehanded.OneHandedController;
import com.android.wm.shell.onehanded.OneHandedTransitionCallback;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$$ExternalSyntheticLambda8 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubbleController f$0;

    public /* synthetic */ BubbleController$$ExternalSyntheticLambda8(BubbleController bubbleController, int i) {
        this.$r8$classId = i;
        this.f$0 = bubbleController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                BubbleController bubbleController = this.f$0;
                bubbleController.getClass();
                ((ArrayList) ((OneHandedController) obj).mDisplayAreaOrganizer.mTransitionCallbacks).add(new OneHandedTransitionCallback() { // from class: com.android.wm.shell.bubbles.BubbleController.1
                    public AnonymousClass1() {
                    }

                    @Override // com.android.wm.shell.onehanded.OneHandedTransitionCallback
                    public final void onStartFinished(Rect rect) {
                        BubbleStackView bubbleStackView = BubbleController.this.mStackView;
                        if (bubbleStackView != null) {
                            bubbleStackView.mDismissView.setPadding(0, 0, 0, rect.top);
                        }
                    }

                    @Override // com.android.wm.shell.onehanded.OneHandedTransitionCallback
                    public final void onStopFinished(Rect rect) {
                        BubbleStackView bubbleStackView = BubbleController.this.mStackView;
                        if (bubbleStackView != null) {
                            bubbleStackView.mDismissView.setPadding(0, 0, 0, rect.top);
                        }
                    }
                });
                return;
            case 1:
                BubbleController bubbleController2 = this.f$0;
                bubbleController2.getClass();
                ((DragAndDropController) obj).mListeners.add(new BubbleController$$ExternalSyntheticLambda18(bubbleController2));
                return;
            default:
                final BubbleController bubbleController3 = this.f$0;
                final Bubble bubble = (Bubble) obj;
                bubbleController3.getClass();
                if (!bubbleController3.mBubbleData.hasAnyBubbleWithKey(bubble.mKey)) {
                    bubble.inflate(new BubbleViewInfoTask.Callback() { // from class: com.android.wm.shell.bubbles.BubbleController$$ExternalSyntheticLambda20
                        @Override // com.android.wm.shell.bubbles.BubbleViewInfoTask.Callback
                        public final void onBubbleViewsReady(Bubble bubble2) {
                            BubbleController.this.mBubbleData.overflowBubble(15, bubble);
                        }
                    }, bubbleController3.mContext, bubbleController3, bubbleController3.mStackView, bubbleController3.mBubbleIconFactory, bubbleController3.mBubbleBadgeIconFactory, true);
                    return;
                }
                return;
        }
    }
}
