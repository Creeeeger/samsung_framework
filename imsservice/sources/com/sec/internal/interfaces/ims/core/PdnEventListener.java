package com.sec.internal.interfaces.ims.core;

import android.net.Network;
import java.util.List;

/* loaded from: classes.dex */
public interface PdnEventListener {
    default void onConnected(int i, Network network) {
    }

    default void onDisconnected(int i) {
    }

    default void onLocalIpChanged(int i, Network network, boolean z) {
    }

    default void onNetworkRequestFail() {
    }

    default void onPcscfAddressChanged(int i, Network network, List<String> list) {
    }

    default void onPcscfRestorationNotified(int i, List<String> list) {
    }

    default void onResumed(int i) {
    }

    default void onResumedBySnapshot(int i) {
    }

    default void onSuspended(int i) {
    }

    default void onSuspendedBySnapshot(int i) {
    }
}
