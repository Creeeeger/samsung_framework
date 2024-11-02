package com.android.systemui;

import android.os.Build;
import android.os.Debug;
import android.os.SystemProperties;
import com.android.systemui.util.LogUtil;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScRune extends Rune {
    public static final boolean ENHANCEMENT_DUMP_HELPER;
    public static final boolean QUICK_MANAGE_SUBSCREEN_TILE_LIST;
    public static final boolean QUICK_TILE_SUBSCREEN_SENSOR_PRIVACY;

    static {
        boolean z;
        String string;
        if (!Debug.semIsProductDev() && !LogUtil.isDebugLevelMid) {
            z = false;
        } else {
            z = true;
        }
        ENHANCEMENT_DUMP_HELPER = z;
        if (!"user".equals(Build.TYPE) && (SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) != 0) {
            string = "";
        } else {
            string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY");
        }
        QUICK_MANAGE_SUBSCREEN_TILE_LIST = string.contains("LARGESCREEN");
        QUICK_TILE_SUBSCREEN_SENSOR_PRIVACY = string.contains("LARGESCREEN");
    }
}
