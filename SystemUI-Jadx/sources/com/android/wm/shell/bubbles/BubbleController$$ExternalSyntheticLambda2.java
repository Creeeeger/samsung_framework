package com.android.wm.shell.bubbles;

import com.android.wm.shell.bubbles.BubbleController;
import com.android.wm.shell.common.HandlerExecutor;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubbleController f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ BubbleController$$ExternalSyntheticLambda2(BubbleController bubbleController, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = bubbleController;
        this.f$1 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                BubbleController bubbleController = this.f$0;
                BubbleController.UserBubbleData userBubbleData = (BubbleController.UserBubbleData) this.f$1;
                bubbleController.getClass();
                ((HandlerExecutor) bubbleController.mMainExecutor).execute(new BubbleController$$ExternalSyntheticLambda11(bubbleController, (List) obj, 0, userBubbleData));
                return;
            case 1:
                BubbleController bubbleController2 = this.f$0;
                Bubble bubble = (Bubble) this.f$1;
                bubbleController2.getClass();
                ((HandlerExecutor) bubbleController2.mMainExecutor).execute(new BubbleController$$ExternalSyntheticLambda11(bubbleController2, (BubbleEntry) obj, 1, bubble));
                return;
            default:
                BubbleController bubbleController3 = this.f$0;
                bubbleController3.getClass();
                ((HandlerExecutor) bubbleController3.mMainExecutor).execute(new BubbleController$$ExternalSyntheticLambda15(1, (Consumer) this.f$1, (Boolean) obj));
                return;
        }
    }
}
