package com.android.systemui.edgelighting.effect.utils;

import android.os.Build;
import android.os.SemSystemProperties;
import android.os.SystemProperties;
import android.util.Slog;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.view.SemWindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Utils {
    public static String MODEL_NAME = SemSystemProperties.get("ro.product.model");
    public static final String MODEL_NAME_FOR_JPN = SemSystemProperties.get("ro.factory.model");
    public static final int MODEL_DEFAULT_DENSITY = SemSystemProperties.getInt("ro.sf.lcd_density", -1);
    public static final String TAG = "Utils";

    public static void getRadiusController() {
        String str;
        float f;
        SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE");
        String str2 = SemSystemProperties.get("ro.product.device");
        if (str2 != null) {
            str = str2.toLowerCase();
        } else {
            str = "";
        }
        if (str.contains("f2q") && isFolded()) {
            f = 3.9f;
        } else {
            f = 6.0f;
        }
        Slog.i(TAG, " getDeviceRadius : " + f);
    }

    public static boolean isFolded() {
        SemWindowManager semWindowManager = SemWindowManager.getInstance();
        if (semWindowManager != null) {
            return semWindowManager.isFolded();
        }
        return false;
    }

    public static boolean isLargeCoverFlipFolded() {
        String string;
        if (!"user".equals(Build.TYPE) && (SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) != 0) {
            string = "";
        } else {
            string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY");
        }
        if (!string.contains("COVER") || !string.contains("LARGESCREEN")) {
            return false;
        }
        return isFolded();
    }
}
