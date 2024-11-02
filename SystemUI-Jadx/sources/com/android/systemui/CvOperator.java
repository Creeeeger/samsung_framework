package com.android.systemui;

import android.os.SystemProperties;
import com.samsung.android.feature.SemCscFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CvOperator {
    public static final String sISOCountry = SystemProperties.get("ro.csc.countryiso_code", "");

    static {
        String string = SemCscFeature.getInstance().getString("CscFeature_Wifi_ConfigOpBrandingForMobileAp", "ALL");
        "VZW".equals(string);
        "SPRINT".equals(string);
    }

    public static int getHotspotStringID(int i) {
        String str = sISOCountry;
        if (i == R.string.quick_settings_mobile_hotspot_label) {
            if ("JP".equals(str)) {
                return R.string.quick_settings_mobile_hotspot_label_jpn;
            }
            return i;
        }
        if (i == R.string.mobile_hotspot_detail_title) {
            if ("JP".equals(str)) {
                return R.string.mobile_hotspot_detail_title_jpn;
            }
            return i;
        }
        if (i == R.string.mobile_hotspot_dialog_nosim_warning_title) {
            if ("JP".equals(str)) {
                return R.string.mobile_hotspot_dialog_nosim_warning_title_jpn;
            }
            return i;
        }
        if (i == R.string.mobile_hotspot_dialog_nosim_warning_message && "JP".equals(str)) {
            return R.string.mobile_hotspot_dialog_nosim_warning_message_jpn;
        }
        return i;
    }
}
