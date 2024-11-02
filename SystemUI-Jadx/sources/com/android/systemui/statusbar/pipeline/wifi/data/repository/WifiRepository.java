package com.android.systemui.statusbar.pipeline.wifi.data.repository;

import com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface WifiRepository {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class DefaultImpls {
        public static boolean isWifiConnectedWithValidSsid(WifiRepository wifiRepository) {
            boolean z;
            WifiNetworkModel wifiNetworkModel = (WifiNetworkModel) wifiRepository.getWifiNetwork().getValue();
            if (!(wifiNetworkModel instanceof WifiNetworkModel.Active)) {
                return false;
            }
            String str = ((WifiNetworkModel.Active) wifiNetworkModel).ssid;
            if (str != null && !Intrinsics.areEqual(str, "<unknown ssid>")) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
            return true;
        }
    }

    StateFlow getHideDuringMobileSwitching();

    StateFlow getReceivedInetCondition();

    StateFlow getWifiActivity();

    StateFlow getWifiConnectivityTestReported();

    StateFlow getWifiNetwork();

    boolean isWifiConnectedWithValidSsid();

    StateFlow isWifiDefault();

    StateFlow isWifiEnabled();
}
