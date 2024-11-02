package com.android.wm.shell.bubbles;

import com.android.wm.shell.bubbles.Bubbles;
import com.android.wm.shell.bubbles.SecHideInformationMirroringController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$$ExternalSyntheticLambda5 implements Bubbles.BubbleMetadataFlagListener, Bubbles.PendingIntentCanceledListener, SecHideInformationMirroringController.HideInformationMirroringCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubbleController f$0;

    public /* synthetic */ BubbleController$$ExternalSyntheticLambda5(BubbleController bubbleController, int i) {
        this.$r8$classId = i;
        this.f$0 = bubbleController;
    }

    public final void onBubbleMetadataFlagChanged(Bubble bubble) {
        int i = this.$r8$classId;
        BubbleController bubbleController = this.f$0;
        switch (i) {
            case 0:
                bubbleController.onBubbleMetadataFlagChanged(bubble);
                return;
            default:
                bubbleController.onBubbleMetadataFlagChanged(bubble);
                return;
        }
    }
}
