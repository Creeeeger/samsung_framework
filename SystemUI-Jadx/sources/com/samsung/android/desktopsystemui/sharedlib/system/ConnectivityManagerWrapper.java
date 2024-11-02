package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.net.ConnectivityManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ConnectivityManagerWrapper {
    private static final ConnectivityManagerWrapper sInstance = new ConnectivityManagerWrapper();
    private static final ConnectivityManager mConnectivityManager = (ConnectivityManager) AppGlobals.getInitialApplication().getSystemService("connectivity");

    private ConnectivityManagerWrapper() {
    }

    public static ConnectivityManagerWrapper getInstance() {
        return sInstance;
    }

    public void setAirplaneMode(boolean z) {
        mConnectivityManager.setAirplaneMode(z);
    }
}
