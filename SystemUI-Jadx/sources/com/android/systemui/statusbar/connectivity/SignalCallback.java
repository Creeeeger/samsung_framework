package com.android.systemui.statusbar.connectivity;

import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface SignalCallback {
    default void setEthernetIndicators(IconState iconState) {
    }

    default void setIsAirplaneMode(IconState iconState) {
    }

    default void setMobileDataEnabled(boolean z) {
    }

    default void setMobileDataIndicators(MobileDataIndicators mobileDataIndicators) {
    }

    default void setSubs(List list) {
    }

    default void setWifiIndicators(WifiIndicators wifiIndicators) {
    }

    default void setNoSims(boolean z, boolean z2) {
    }

    default void setConnectivityStatus(boolean z, boolean z2, boolean z3) {
    }
}
