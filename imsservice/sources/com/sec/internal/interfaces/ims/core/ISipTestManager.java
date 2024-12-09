package com.sec.internal.interfaces.ims.core;

import android.net.ConnectivityManager;
import android.os.Bundle;
import com.sec.internal.constants.ims.os.NetworkState;
import com.sec.internal.ims.core.NetworkCallback;
import com.sec.internal.ims.core.RegistrationManagerBase;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public interface ISipTestManager {
    void clearNetwork(Map<PdnEventListener, NetworkCallback> map, PdnEventListener pdnEventListener);

    void notifyImsRegistration(boolean z, int i, int i2);

    void notifyNetworkEvent(boolean z, NetworkState networkState, int i);

    void onDataConnectionStateChanged(RegistrationManagerBase registrationManagerBase, Bundle bundle, int i, boolean z, int i2);

    void requestNetwork(ConnectivityManager connectivityManager, Set<NetworkStateListener> set, NetworkCallback networkCallback, int i, int i2);
}
