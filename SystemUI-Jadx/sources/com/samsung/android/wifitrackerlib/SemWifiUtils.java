package com.samsung.android.wifitrackerlib;

import android.os.SystemProperties;
import android.text.TextUtils;
import com.samsung.android.feature.SemCscFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SemWifiUtils {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        SemCscFeature.getInstance().getBoolean("CscFeature_Wifi_EnableAutoWifi");
    }

    public static int calculateSignalLevel(int i) {
        if (i <= -89) {
            return 0;
        }
        if (i > -89 && i <= -83) {
            return 1;
        }
        if (i > -83 && i <= -75) {
            return 2;
        }
        if (i > -75 && i <= -64) {
            return 3;
        }
        return 4;
    }

    public static String readSalesCode() {
        try {
            String str = SystemProperties.get("persist.omc.sales_code");
            if (TextUtils.isEmpty(str)) {
                String str2 = SystemProperties.get("ro.csc.sales_code");
                if (TextUtils.isEmpty(str2)) {
                    return SystemProperties.get("ril.sales_code");
                }
                return str2;
            }
            return str;
        } catch (Exception unused) {
            return "";
        }
    }
}
