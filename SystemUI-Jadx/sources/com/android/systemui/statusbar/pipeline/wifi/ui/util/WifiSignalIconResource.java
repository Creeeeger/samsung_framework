package com.android.systemui.statusbar.pipeline.wifi.ui.util;

import android.net.wifi.WifiManager;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiSignalIconResource {
    public final CarrierInfraMediator carrierInfraMediator;
    public final WifiManager wifiManager;

    public WifiSignalIconResource(CarrierInfraMediator carrierInfraMediator, WifiManager wifiManager) {
        this.carrierInfraMediator = carrierInfraMediator;
        this.wifiManager = wifiManager;
    }
}
