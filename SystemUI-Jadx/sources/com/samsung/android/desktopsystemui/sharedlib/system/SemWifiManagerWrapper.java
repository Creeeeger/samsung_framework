package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import com.samsung.android.wifi.SemWifiManager;
import com.sec.ims.extensions.WiFiManagerExt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SemWifiManagerWrapper {
    private static final SemWifiManagerWrapper sInstance = new SemWifiManagerWrapper();
    private static final SemWifiManager mSemWifiManager = (SemWifiManager) AppGlobals.getInitialApplication().getSystemService(WiFiManagerExt.SEM_WIFI_SERVICE);

    private SemWifiManagerWrapper() {
    }

    public static SemWifiManagerWrapper getInstance() {
        return sInstance;
    }

    public boolean isDualAPConfiguration() {
        if (mSemWifiManager.getSoftApConfiguration().getBand() != 0) {
            return true;
        }
        return false;
    }

    public boolean isWifiSharingLiteSupported() {
        return mSemWifiManager.isWifiSharingLiteSupported();
    }

    public boolean isWifiSharingSupported() {
        return mSemWifiManager.isWifiSharingSupported();
    }
}
