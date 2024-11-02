package com.android.systemui.edgelighting.effect;

import android.os.Build;
import android.os.SemSystemProperties;
import android.os.SystemProperties;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Feature {
    public static final boolean FEATURE_IS_CANVAS;
    public static final boolean FEATURE_IS_FOLDABLE;
    public static final boolean FEATURE_IS_TABLET_DEVICE;
    public static final boolean FEATURE_IS_TOP;

    static {
        String string;
        boolean z;
        boolean z2;
        String str;
        boolean z3 = true;
        if (!"user".equals(Build.TYPE) && (SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) != 0) {
            string = "";
        } else {
            string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY");
        }
        string.contains("LOCKSCREEN");
        String str2 = SemSystemProperties.get("ro.build.characteristics");
        if (str2 != null) {
            str2.contains("tablet");
        }
        String string2 = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE");
        if (string2 != null && string2.contains("TOP")) {
            z = true;
        } else {
            z = false;
        }
        FEATURE_IS_TOP = z;
        String str3 = SemSystemProperties.get("ro.product.device");
        if (str3 != null) {
            String lowerCase = str3.toLowerCase();
            if (lowerCase.contains("c1") || lowerCase.contains("c2")) {
                z2 = true;
                FEATURE_IS_CANVAS = z2;
                FEATURE_IS_FOLDABLE = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD");
                str = SemSystemProperties.get("ro.build.characteristics");
                if (str != null || !str.contains("tablet")) {
                    z3 = false;
                }
                FEATURE_IS_TABLET_DEVICE = z3;
            }
        }
        z2 = false;
        FEATURE_IS_CANVAS = z2;
        FEATURE_IS_FOLDABLE = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD");
        str = SemSystemProperties.get("ro.build.characteristics");
        if (str != null) {
        }
        z3 = false;
        FEATURE_IS_TABLET_DEVICE = z3;
    }
}
