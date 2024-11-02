package com.android.wm.shell.bubbles;

import android.service.notification.NotificationListenerService;
import com.android.systemui.wmshell.BubblesManager;
import com.android.wm.shell.bubbles.BubbleController;
import java.util.HashMap;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$$ExternalSyntheticLambda11 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ BubbleController$$ExternalSyntheticLambda11(Object obj, Object obj2, int i, Object obj3) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                BubbleController bubbleController = (BubbleController) this.f$0;
                List<BubbleEntry> list = (List) this.f$1;
                BubbleController.UserBubbleData userBubbleData = (BubbleController.UserBubbleData) this.f$2;
                bubbleController.getClass();
                for (BubbleEntry bubbleEntry : list) {
                    if (BubbleController.canLaunchInTaskView(bubbleController.mContext, bubbleEntry)) {
                        bubbleController.updateBubble(bubbleEntry, true, ((Boolean) ((HashMap) userBubbleData.mKeyToShownInShadeMap).get(bubbleEntry.getKey())).booleanValue());
                    }
                }
                return;
            case 1:
                BubbleController bubbleController2 = (BubbleController) this.f$0;
                BubbleEntry bubbleEntry2 = (BubbleEntry) this.f$1;
                Bubble bubble = (Bubble) this.f$2;
                bubbleController2.getClass();
                if (bubbleEntry2 != null && bubbleController2.getBubblesInGroup(bubbleEntry2.mSbn.getGroupKey()).isEmpty()) {
                    BubblesManager.AnonymousClass4 anonymousClass4 = bubbleController2.mSysuiProxy;
                    String str = bubble.mKey;
                    anonymousClass4.getClass();
                    return;
                }
                return;
            default:
                BubbleController.BubblesImpl bubblesImpl = (BubbleController.BubblesImpl) this.f$0;
                BubbleController.this.onRankingUpdated((NotificationListenerService.RankingMap) this.f$1, (HashMap) this.f$2);
                return;
        }
    }
}
