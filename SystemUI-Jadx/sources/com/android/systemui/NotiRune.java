package com.android.systemui;

import android.os.Build;
import android.os.SystemProperties;
import com.android.systemui.util.DeviceType;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotiRune extends Rune {
    public static final boolean NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW;
    public static final boolean NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_SHOW_CONTENT_WHEN_UNLOCKED").contains("support");
    public static final boolean NOTI_STATIC_SHELF_ALPHA_VI = !DeviceType.isTablet();
    public static final boolean NOTI_STATUSBAR_SIMPLE_DEFAULT_ON = "On".equals(SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar", "On"));
    public static final boolean NOTI_STYLE_EMPTY_SHADE;
    public static final boolean NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME;
    public static final boolean NOTI_STYLE_TABLET_BG;
    public static final boolean NOTI_SUBSCREEN_ALL;
    public static final boolean NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT;
    public static final boolean NOTI_SUBSCREEN_CLEAR_COVER;
    public static final boolean NOTI_SUBSCREEN_GHOST_NOTIFICATION;
    public static final boolean NOTI_SUBSCREEN_NOTIFICATION;
    public static final boolean NOTI_SUBSCREEN_NOTIFICATION_COMMON;
    public static final boolean NOTI_SUBSCREEN_NOTIFICATION_FIFTH;
    public static final boolean NOTI_SUBSCREEN_NOTIFICATION_SECOND;
    public static final boolean NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT;
    public static final boolean NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY;
    public static final boolean NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI;
    public static final boolean NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA;

    static {
        boolean z;
        boolean z2;
        String string;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i = Build.VERSION.SEM_PLATFORM_INT;
        boolean z8 = false;
        if (i >= 140100) {
            z = true;
        } else {
            z = false;
        }
        if (i >= 140500) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!"user".equals(Build.TYPE) && (SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) != 0) {
            string = "";
        } else {
            string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY");
        }
        boolean contains = string.contains("COVER");
        NOTI_SUBSCREEN_NOTIFICATION = contains;
        if (contains && string.contains("WATCHFACE")) {
            z3 = true;
        } else {
            z3 = false;
        }
        NOTI_SUBSCREEN_NOTIFICATION_SECOND = z3;
        if (z3 && string.contains("LARGESCREEN")) {
            z4 = true;
        } else {
            z4 = false;
        }
        NOTI_SUBSCREEN_NOTIFICATION_FIFTH = z4;
        if (!z3 && !z4) {
            z5 = false;
        } else {
            z5 = true;
        }
        NOTI_SUBSCREEN_NOTIFICATION_COMMON = z5;
        NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT = contains;
        boolean contains2 = string.contains("VIRTUAL_DISPLAY");
        NOTI_SUBSCREEN_CLEAR_COVER = contains2;
        if (!contains && !z5 && !contains2) {
            z6 = false;
        } else {
            z6 = true;
        }
        NOTI_SUBSCREEN_ALL = z6;
        NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY = z2;
        NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT = contains;
        NOTI_SUBSCREEN_GHOST_NOTIFICATION = z4;
        if (z4 && !SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI", false) && Rune.SYSUI_CHINA_FEATURE && Build.VERSION.SEM_FIRST_SDK_INT >= 34) {
            z7 = true;
        } else {
            z7 = false;
        }
        NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA = z7;
        if (z4 && !SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI", false) && SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_GENAI_SUPPORT_OFFLINE_LANGUAGEMODEL", false) && !"CN".equalsIgnoreCase(SemCscFeature.getInstance().getString("CountryISO", ""))) {
            z8 = true;
        }
        NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI = z8;
        NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME = z;
        NOTI_STYLE_EMPTY_SHADE = !DeviceType.isTablet();
        NOTI_STYLE_TABLET_BG = QpRune.QUICK_TABLET_BG;
        NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW = DeviceType.isTablet();
    }
}
