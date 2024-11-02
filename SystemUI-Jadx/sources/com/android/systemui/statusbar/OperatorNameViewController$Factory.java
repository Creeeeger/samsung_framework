package com.android.systemui.statusbar;

import android.telephony.TelephonyManager;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.CarrierConfigTracker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OperatorNameViewController$Factory {
    public final DarkIconDispatcher mDarkIconDispatcher;

    public OperatorNameViewController$Factory(DarkIconDispatcher darkIconDispatcher, NetworkController networkController, TunerService tunerService, TelephonyManager telephonyManager, KeyguardUpdateMonitor keyguardUpdateMonitor, CarrierConfigTracker carrierConfigTracker) {
        this.mDarkIconDispatcher = darkIconDispatcher;
    }
}
