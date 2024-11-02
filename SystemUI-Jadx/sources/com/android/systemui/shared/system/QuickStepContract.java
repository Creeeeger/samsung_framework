package com.android.systemui.shared.system;

import android.os.SystemProperties;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QuickStepContract {
    public static final boolean ALLOW_BACK_GESTURE_IN_SHADE = SystemProperties.getBoolean("persist.wm.debug.shade_allow_back_gesture", true);
    public static boolean SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN = false;

    public static boolean isAssistantGestureDisabled(long j) {
        if ((131072 & j) != 0) {
            j &= -3;
        }
        if ((3083 & j) != 0) {
            return true;
        }
        if ((4 & j) != 0 && (j & 64) == 0) {
            return true;
        }
        return false;
    }

    public static boolean isBackGestureDisabled(long j) {
        long j2;
        if ((8 & j) != 0 || (32768 & j) != 0 || (33554432 & j) != 0) {
            return false;
        }
        if ((131072 & j) != 0 || SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN) {
            j &= -3;
        }
        if (!ALLOW_BACK_GESTURE_IN_SHADE) {
            j2 = 34363932678L;
        } else {
            j2 = 34363932674L;
        }
        if ((j & j2) == 0) {
            return false;
        }
        return true;
    }

    public static boolean isGesturalMode(int i) {
        if (i != 2 && i != 3) {
            return false;
        }
        return true;
    }
}
