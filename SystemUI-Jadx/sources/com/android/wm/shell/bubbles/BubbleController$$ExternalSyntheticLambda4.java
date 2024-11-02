package com.android.wm.shell.bubbles;

import android.os.Bundle;
import com.android.wm.shell.bubbles.Bubbles;
import com.android.wm.shell.common.SingleInstanceRemoteListener;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$$ExternalSyntheticLambda4 implements Bubbles.BubbleExpandListener, SingleInstanceRemoteListener.RemoteCall {
    public final /* synthetic */ Object f$0;

    @Override // com.android.wm.shell.common.SingleInstanceRemoteListener.RemoteCall
    public final void accept(Object obj) {
        ((IBubblesListener$Stub$Proxy) ((IBubblesListener) obj)).onBubbleStateChange((Bundle) this.f$0);
    }

    @Override // com.android.wm.shell.bubbles.Bubbles.BubbleExpandListener
    public final void onBubbleExpandChanged(String str, boolean z) {
        Bubbles.BubbleExpandListener bubbleExpandListener = (Bubbles.BubbleExpandListener) this.f$0;
        if (bubbleExpandListener != null) {
            bubbleExpandListener.onBubbleExpandChanged(str, z);
        }
    }
}
