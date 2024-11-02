package com.samsung.android.settingslib.wifi;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.samsung.android.wifi.SemWifiManager;
import com.sec.ims.extensions.WiFiManagerExt;
import com.sec.ims.settings.ImsProfile;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class WifiWarningDialogController {
    public final Context mContext;
    public final SemWifiManager mSemWifiManager;
    public final WifiManager mWifiManager;

    public WifiWarningDialogController(Context context) {
        this.mContext = context;
        this.mWifiManager = (WifiManager) context.getSystemService(ImsProfile.PDN_WIFI);
        this.mSemWifiManager = (SemWifiManager) context.getSystemService(WiFiManagerExt.SEM_WIFI_SERVICE);
    }
}
