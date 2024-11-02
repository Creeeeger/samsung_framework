package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.net.NetworkPolicyManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NetworkPolicyManagerWrapper {
    private static final NetworkPolicyManagerWrapper sInstance = new NetworkPolicyManagerWrapper();
    private static final NetworkPolicyManager mNetworkPolicyManager = (NetworkPolicyManager) AppGlobals.getInitialApplication().getSystemService("netpolicy");

    private NetworkPolicyManagerWrapper() {
    }

    public static NetworkPolicyManagerWrapper getInstance() {
        return sInstance;
    }

    public boolean getRestrictBackground() {
        return mNetworkPolicyManager.getRestrictBackground();
    }
}
