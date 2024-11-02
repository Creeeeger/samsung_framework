package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import android.telephony.TelephonyCallback;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileConnectionsRepositoryImpl$deviceOnTheCall$1$callback$1 extends TelephonyCallback implements TelephonyCallback.CallStateListener {
    public final /* synthetic */ ProducerScope $$this$conflatedCallbackFlow;

    public MobileConnectionsRepositoryImpl$deviceOnTheCall$1$callback$1(ProducerScope producerScope) {
        this.$$this$conflatedCallbackFlow = producerScope;
    }

    @Override // android.telephony.TelephonyCallback.CallStateListener
    public final void onCallStateChanged(int i) {
        SendChannel sendChannel = this.$$this$conflatedCallbackFlow;
        boolean z = true;
        if (i != 2 && i != 1) {
            z = false;
        }
        ((ChannelCoroutine) sendChannel).mo2584trySendJP2dKIU(Boolean.valueOf(z));
    }
}
