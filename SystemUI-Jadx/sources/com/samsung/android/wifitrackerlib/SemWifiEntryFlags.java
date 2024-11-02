package com.samsung.android.wifitrackerlib;

import android.content.Context;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.provider.Settings;
import android.util.Log;
import com.samsung.android.wifi.SemOpBrandingLoader;
import com.samsung.android.wifi.SemWifiConfiguration;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SemWifiEntryFlags {
    public static int isShowBandSummaryOn = -1;
    public static int isWifiDeveloperOptionOn = -1;
    public static int isWpa3OweSupported = -1;
    public static int isWpa3SaeSupported = -1;
    public static int isWpa3SuiteBSupported = -1;
    public static SemOpBrandingLoader.SemVendor sVendor;
    public boolean has6EStandard;
    public boolean hasVHTVSICapabilities;
    public boolean isCarrierNetwork;
    public boolean isOpenRoamingNetwork;
    public boolean isSamsungMobileHotspot;
    public boolean networkScoringUiEnabled;
    public int networkType;
    public PasspointConfiguration passpointConfiguration;
    public SemWifiConfiguration semConfig;
    public int wifiStandard;
    public int staCount = -1;
    public final Map qosScoredNetworkCache = new HashMap();

    public SemWifiEntryFlags() {
        getOpBranding();
    }

    public static SemOpBrandingLoader.SemVendor getOpBranding() {
        if (sVendor == null) {
            sVendor = SemOpBrandingLoader.getInstance().getOpBranding();
            Log.i("SemWifiEntryFlags", "getOpBranding: " + sVendor.name());
        }
        return sVendor;
    }

    public static boolean isShowBandInfoOn(Context context) {
        int i;
        if (isShowBandSummaryOn == -1) {
            int i2 = SemWifiUtils.$r8$clinit;
            if (Settings.Global.getInt(context.getContentResolver(), "sec_wifi_developer_show_band", 0) == 1) {
                i = 1;
            } else {
                i = 0;
            }
            isShowBandSummaryOn = i;
        }
        if (isShowBandSummaryOn != 1) {
            return false;
        }
        return true;
    }

    public static boolean isWifiDeveloperOptionOn(Context context) {
        int i;
        if (isWifiDeveloperOptionOn == -1) {
            int i2 = SemWifiUtils.$r8$clinit;
            if (Settings.Global.getInt(context.getContentResolver(), "sem_wifi_developer_option_visible", 0) == 1) {
                i = 1;
            } else {
                i = 0;
            }
            isWifiDeveloperOptionOn = i;
        }
        if (isWifiDeveloperOptionOn != 1) {
            return false;
        }
        return true;
    }
}
