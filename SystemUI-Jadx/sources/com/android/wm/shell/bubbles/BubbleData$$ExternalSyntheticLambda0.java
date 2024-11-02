package com.android.wm.shell.bubbles;

import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleData$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ BubbleData$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((List) this.f$0).add((Bubble) obj);
                return;
            default:
                BubbleData bubbleData = (BubbleData) this.f$0;
                bubbleData.getClass();
                bubbleData.doRemove(2, ((Bubble) obj).mKey);
                return;
        }
    }
}
