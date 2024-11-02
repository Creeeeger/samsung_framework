package com.android.systemui.navigationbar.util;

import android.content.Context;
import android.provider.Settings;
import com.android.systemui.BasicRune;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavigationModeUtil {
    public static final NavigationModeUtil INSTANCE = new NavigationModeUtil();
    public static float[] sideInsetScaleArray = new float[0];
    public static float[] bottomInsetScaleArray = new float[0];

    private NavigationModeUtil() {
    }

    public static final String getGestureOverlayPackageName(Context context) {
        boolean z = true;
        int i = Settings.Global.getInt(context.getContentResolver(), "navigation_bar_gesture_detail_type", !BasicRune.supportSamsungGesturalModeAsDefault() ? 1 : 0);
        if (Settings.Global.getInt(context.getContentResolver(), "navigation_bar_gesture_hint", 1) == 0) {
            z = false;
        }
        if (i == 0) {
            if (z) {
                return "com.samsung.internal.systemui.navbar.sec_gestural";
            }
            return "com.samsung.internal.systemui.navbar.sec_gestural_no_hint";
        }
        if (z) {
            return QuickStepContract.NAV_BAR_MODE_GESTURAL_OVERLAY;
        }
        return "com.samsung.internal.systemui.navbar.gestural_no_hint";
    }

    public static final boolean isBottomGesture(int i) {
        if (i == 3) {
            return true;
        }
        return false;
    }
}
