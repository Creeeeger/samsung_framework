package com.android.systemui;

import android.os.Build;
import android.os.Debug;
import android.os.SystemProperties;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.wifi.SemWifiApCust;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CvRune extends Rune {
    public static final boolean HOTSPOT_CHECK_MHSDBG;
    public static final String HOTSPOT_CONFIG_OP_BRANDING;
    public static final boolean HOTSPOT_ENABLED_SPRINT_EXTENSION = SemCscFeature.getInstance().getBoolean("CscFeature_Common_EnableSprintExtension");
    public static final boolean HOTSPOT_USE_CHAMELEON = SemCscFeature.getInstance().getBoolean("CscFeature_Common_UseChameleon");

    static {
        boolean z;
        if (!"eng".equals(Build.TYPE) && !Debug.semIsProductDev()) {
            z = false;
        } else {
            z = true;
        }
        HOTSPOT_CHECK_MHSDBG = z;
        SystemProperties.get("vendor.wifiap.simcheck.disable").equals("1");
        SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon", "");
        SemWifiApCust.getInstance();
        HOTSPOT_CONFIG_OP_BRANDING = SemWifiApCust.mMHSCustomer;
        SystemProperties.getInt("ro.product.first_api_level", -1);
    }
}
