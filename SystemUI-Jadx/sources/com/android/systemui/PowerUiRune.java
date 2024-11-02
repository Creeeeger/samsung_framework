package com.android.systemui;

import android.os.Build;
import android.os.SystemProperties;
import com.android.systemui.util.DeviceType;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;
import java.io.File;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PowerUiRune extends Rune {
    public static final boolean ADAPTIVE_PROTECTION_NOTIFICATION;
    public static final boolean AUDIO_DISABLE_HEADSET_CHARGING_SOUND;
    public static final boolean AUDIO_SUPPORT_SITUATION_EXTENSION;
    public static final boolean BATTERY_CHARGING_ESTIMATE_TIME;
    public static final boolean BATTERY_PROTECTION;
    public static final boolean BATTERY_PROTECTION_NOTIFICATION;
    public static final boolean BATTERY_PROTECTION_TIPS_NOTIFICATION;
    public static final boolean BATTERY_SWELLING_NOTICE;
    public static final boolean CHN_SMART_MANAGER;
    public static final boolean COVER_DISPLAY_LARGE_SCREEN;
    public static final boolean FULL_BATTERY_CHECK;
    public static final boolean GPU_BLUR_SUPPORTED;
    public static final boolean HV_CHARGER_ENABLE_POPUP;
    public static final boolean INCOMPATIBLE_CHARGER_CHECK;
    public static final boolean INIT_LTC_TIME_CHANGED;
    public static final boolean IS_LDU_OR_UNPACK_BINARY;
    public static final boolean KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION;
    public static final boolean LOW_BATTTERY_SOUND_THEME;
    public static final boolean POLICY_CHARGING_NOTIFICATION;
    public static final boolean PROTECT_BATTERY_CUTOFF;
    public static final boolean SPECIFIC_POWER_REQUEST_BY_CHN;
    public static final boolean SPECIFIC_POWER_REQUEST_BY_VZW;
    public static final boolean TIPS_NOTIFICATION;
    public static final boolean TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE;
    public static final boolean TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA;
    public static final boolean WINDOW_BLUR_SUPPORTED;
    public static final boolean WIRELESS_CHARGING;

    static {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        String str = "";
        String string = SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigQuickSettingPopup", "");
        CHN_SMART_MANAGER = "com.samsung.android.sm_cn".equals(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME", "com.samsung.android.sm"));
        BATTERY_CHARGING_ESTIMATE_TIME = new File("/sys/class/power_supply/battery/time_to_full_now").exists();
        boolean z8 = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF");
        PROTECT_BATTERY_CUTOFF = z8;
        boolean exists = new File("/sys/class/sec/led/led_pattern").exists();
        boolean z9 = false;
        if (!DeviceType.isTablet() && exists) {
            z = false;
        } else {
            z = true;
        }
        KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION = z;
        if (exists && !"VZW".equals(string) && !"ATT".equals(string) && !"SPR".equals(string) && !"TMB".equals(string)) {
            z2 = false;
        } else {
            z2 = true;
        }
        FULL_BATTERY_CHECK = z2;
        BATTERY_SWELLING_NOTICE = !SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_BATTERY_DISABLE_LOW_TEMP_SLOW_CHARGED_POPUP");
        INCOMPATIBLE_CHARGER_CHECK = "VZW".equals(string);
        SPECIFIC_POWER_REQUEST_BY_VZW = "VZW".equals(string);
        SPECIFIC_POWER_REQUEST_BY_CHN = "China".equalsIgnoreCase(SystemProperties.get("ro.csc.country_code"));
        if (!"DCM".equals(string) && !"KDI".equals(string) && !"SBM".equals(string)) {
            "XJP".equals(string);
        }
        HV_CHARGER_ENABLE_POPUP = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV");
        AUDIO_SUPPORT_SITUATION_EXTENSION = "TRUE".equals(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SITUATION_EXTENSION"));
        WIRELESS_CHARGING = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV");
        if (!DeviceType.isLDUSKU() && !SemCscFeature.getInstance().getBoolean("CscFeature_Common_EnableLiveDemo") && !SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK")) {
            z3 = false;
        } else {
            z3 = true;
        }
        IS_LDU_OR_UNPACK_BINARY = z3;
        if (Build.VERSION.SEM_PLATFORM_INT >= 120100) {
            z4 = true;
        } else {
            z4 = false;
        }
        LOW_BATTTERY_SOUND_THEME = z4;
        if ("user".equals(Build.TYPE) || (SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) == 0) {
            str = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY");
        }
        TIPS_NOTIFICATION = str.contains("WATCHFACE");
        WINDOW_BLUR_SUPPORTED = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG");
        if (!"1".equalsIgnoreCase(SystemProperties.get("ro.surface_flinger.protected_contents")) && !"true".equalsIgnoreCase(SystemProperties.get("ro.surface_flinger.protected_contents"))) {
            z5 = false;
        } else {
            z5 = true;
        }
        GPU_BLUR_SUPPORTED = z5;
        AUDIO_DISABLE_HEADSET_CHARGING_SOUND = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_AUDIO_DISABLE_HEADSET_CHARGING_SOUND");
        TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA = z8;
        INIT_LTC_TIME_CHANGED = z8;
        COVER_DISPLAY_LARGE_SCREEN = str.contains("LARGESCREEN");
        if (Build.VERSION.SEM_PLATFORM_INT >= 150100) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6 && z8 && !SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_BATTERY_DISABLE_ECO_BATTERY")) {
            z7 = true;
        } else {
            z7 = false;
        }
        BATTERY_PROTECTION = z7;
        if (Build.VERSION.SEM_PLATFORM_INT >= 150000) {
            z9 = true;
        }
        POLICY_CHARGING_NOTIFICATION = z9;
        BATTERY_PROTECTION_NOTIFICATION = z7;
        TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE = z7;
        ADAPTIVE_PROTECTION_NOTIFICATION = z7;
        BATTERY_PROTECTION_TIPS_NOTIFICATION = z7;
    }
}
