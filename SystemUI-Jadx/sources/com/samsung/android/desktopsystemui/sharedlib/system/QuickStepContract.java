package com.samsung.android.desktopsystemui.sharedlib.system;

import android.content.Context;
import android.content.res.Resources;
import android.view.ViewConfiguration;
import com.android.internal.policy.ScreenDecorationsUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.StringJoiner;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QuickStepContract {
    public static final String KEY_EXTRA_INPUT_MONITOR = "extra_input_monitor";
    public static final String KEY_EXTRA_SHELL_ONE_HANDED = "extra_shell_one_handed";
    public static final String KEY_EXTRA_SHELL_PIP = "extra_shell_pip";
    public static final String KEY_EXTRA_SHELL_SHELL_TRANSITIONS = "extra_shell_shell_transitions";
    public static final String KEY_EXTRA_SHELL_SPLIT_SCREEN = "extra_shell_split_screen";
    public static final String KEY_EXTRA_SHELL_STARTING_WINDOW = "extra_shell_starting_window";
    public static final String KEY_EXTRA_SUPPORTS_WINDOW_CORNERS = "extra_supports_window_corners";
    public static final String KEY_EXTRA_SYSUI_PROXY = "extra_sysui_proxy";
    public static final String KEY_EXTRA_WINDOW_CORNER_RADIUS = "extra_window_corner_radius";
    public static final String NAV_BAR_MODE_2BUTTON_OVERLAY = "com.android.internal.systemui.navbar.twobutton";
    public static final String NAV_BAR_MODE_3BUTTON_OVERLAY = "com.android.internal.systemui.navbar.threebutton";
    public static final String NAV_BAR_MODE_GESTURAL_OVERLAY = "com.android.internal.systemui.navbar.gestural";
    public static final int NAV_BAR_MODE_SAMSUNG_GESTURAL = 3;
    public static final float QUICKSTEP_TOUCH_SLOP_RATIO = 3.0f;
    public static final int SYSUI_STATE_A11Y_BUTTON_CLICKABLE = 16;
    public static final int SYSUI_STATE_A11Y_BUTTON_LONG_CLICKABLE = 32;
    public static final int SYSUI_STATE_ALLOW_GESTURE_IGNORING_BAR_VISIBILITY = 131072;
    public static final int SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED = 8192;
    public static final int SYSUI_STATE_BACK_DISABLED = 4194304;
    public static final int SYSUI_STATE_BOUNCER_SHOWING = 8;
    public static final int SYSUI_STATE_BUBBLES_EXPANDED = 16384;
    public static final int SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED = 8388608;
    public static final int SYSUI_STATE_DEVICE_DOZING = 2097152;
    public static final int SYSUI_STATE_GAME_TOOLS_SHOWING = 33554432;
    public static final int SYSUI_STATE_GLOBAL_ACTIONS_SHOWING = 32768;
    public static final int SYSUI_STATE_HOME_DISABLED = 256;
    public static final int SYSUI_STATE_IME_SHOWING = 262144;
    public static final int SYSUI_STATE_IME_SWITCHER_SHOWING = 1048576;
    public static final int SYSUI_STATE_KNOX_HARD_KEY_INTENT = 536870912;
    public static final int SYSUI_STATE_MAGNIFICATION_OVERLAP = 524288;
    public static final int SYSUI_STATE_NAV_BAR_HIDDEN = 2;
    public static final int SYSUI_STATE_NAV_BAR_VIS_GONE = 268435456;
    public static final int SYSUI_STATE_NOTIFICATION_PANEL_EXPANDED = 4;
    public static final int SYSUI_STATE_ONE_HANDED_ACTIVE = 65536;
    public static final int SYSUI_STATE_OVERVIEW_DISABLED = 128;
    public static final int SYSUI_STATE_QUICK_SETTINGS_EXPANDED = 2048;
    public static final int SYSUI_STATE_REQUESTED_HOME_KEY = 134217728;
    public static final int SYSUI_STATE_REQUESTED_RECENT_KEY = 67108864;
    public static final int SYSUI_STATE_SCREEN_PINNING = 1;
    public static final int SYSUI_STATE_SEARCH_DISABLED = 1024;
    public static final int SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING = 64;
    public static final int SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING_OCCLUDED = 512;
    public static final int SYSUI_STATE_TRACING_ENABLED = 4096;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface SystemUiStateFlags {
    }

    private static int convertDpToPixel(float f) {
        return (int) (f * Resources.getSystem().getDisplayMetrics().density);
    }

    public static int getQuickScrubTouchSlopPx() {
        return convertDpToPixel(24.0f);
    }

    public static int getQuickStepDragSlopPx() {
        return convertDpToPixel(10.0f);
    }

    public static final float getQuickStepTouchSlopPx(Context context) {
        return ViewConfiguration.get(context).getScaledTouchSlop() * 3.0f;
    }

    public static String getSystemUiStateString(int i) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        String str27;
        String str28;
        StringJoiner stringJoiner = new StringJoiner("|");
        String str29 = "";
        if ((i & 1) == 0) {
            str = "";
        } else {
            str = "screen_pinned";
        }
        stringJoiner.add(str);
        if ((i & 128) == 0) {
            str2 = "";
        } else {
            str2 = "overview_disabled";
        }
        stringJoiner.add(str2);
        if ((i & 256) == 0) {
            str3 = "";
        } else {
            str3 = "home_disabled";
        }
        stringJoiner.add(str3);
        if ((i & 1024) == 0) {
            str4 = "";
        } else {
            str4 = "search_disabled";
        }
        stringJoiner.add(str4);
        if ((i & 2) == 0) {
            str5 = "";
        } else {
            str5 = "navbar_hidden";
        }
        stringJoiner.add(str5);
        if ((i & 4) == 0) {
            str6 = "";
        } else {
            str6 = "notif_visible";
        }
        stringJoiner.add(str6);
        if ((i & 2048) == 0) {
            str7 = "";
        } else {
            str7 = "qs_visible";
        }
        stringJoiner.add(str7);
        if ((i & 64) == 0) {
            str8 = "";
        } else {
            str8 = "keygrd_visible";
        }
        stringJoiner.add(str8);
        if ((i & 512) == 0) {
            str9 = "";
        } else {
            str9 = "keygrd_occluded";
        }
        stringJoiner.add(str9);
        if ((i & 8) == 0) {
            str10 = "";
        } else {
            str10 = "bouncer_visible";
        }
        stringJoiner.add(str10);
        if ((32768 & i) == 0) {
            str11 = "";
        } else {
            str11 = "global_actions";
        }
        stringJoiner.add(str11);
        if ((i & 16) == 0) {
            str12 = "";
        } else {
            str12 = "a11y_click";
        }
        stringJoiner.add(str12);
        if ((i & 32) == 0) {
            str13 = "";
        } else {
            str13 = "a11y_long_click";
        }
        stringJoiner.add(str13);
        if ((i & 4096) == 0) {
            str14 = "";
        } else {
            str14 = "tracing";
        }
        stringJoiner.add(str14);
        if ((i & 8192) == 0) {
            str15 = "";
        } else {
            str15 = "asst_gesture_constrain";
        }
        stringJoiner.add(str15);
        if ((i & 16384) == 0) {
            str16 = "";
        } else {
            str16 = "bubbles_expanded";
        }
        stringJoiner.add(str16);
        if ((65536 & i) == 0) {
            str17 = "";
        } else {
            str17 = "one_handed_active";
        }
        stringJoiner.add(str17);
        if ((131072 & i) == 0) {
            str18 = "";
        } else {
            str18 = "allow_gesture";
        }
        stringJoiner.add(str18);
        if ((262144 & i) == 0) {
            str19 = "";
        } else {
            str19 = "ime_visible";
        }
        stringJoiner.add(str19);
        if ((524288 & i) == 0) {
            str20 = "";
        } else {
            str20 = "magnification_overlap";
        }
        stringJoiner.add(str20);
        if ((1048576 & i) == 0) {
            str21 = "";
        } else {
            str21 = "ime_switcher_showing";
        }
        stringJoiner.add(str21);
        if ((2097152 & i) == 0) {
            str22 = "";
        } else {
            str22 = "device_dozing";
        }
        stringJoiner.add(str22);
        if ((4194304 & i) == 0) {
            str23 = "";
        } else {
            str23 = "back_disabled";
        }
        stringJoiner.add(str23);
        if ((8388608 & i) == 0) {
            str24 = "";
        } else {
            str24 = "bubbles_mange_menu_expanded";
        }
        stringJoiner.add(str24);
        if ((33554432 & i) == 0) {
            str25 = "";
        } else {
            str25 = "game_tools_showing";
        }
        stringJoiner.add(str25);
        if ((67108864 & i) == 0) {
            str26 = "";
        } else {
            str26 = "requested_recent_key";
        }
        stringJoiner.add(str26);
        if ((134217728 & i) == 0) {
            str27 = "";
        } else {
            str27 = "requested_home_key";
        }
        stringJoiner.add(str27);
        if ((268435456 & i) == 0) {
            str28 = "";
        } else {
            str28 = "navbar_gone";
        }
        stringJoiner.add(str28);
        if ((i & SYSUI_STATE_KNOX_HARD_KEY_INTENT) != 0) {
            str29 = "knox_hard_key_intent";
        }
        stringJoiner.add(str29);
        return stringJoiner.toString();
    }

    public static float getWindowCornerRadius(Context context) {
        return ScreenDecorationsUtils.getWindowCornerRadius(context);
    }

    public static boolean isAssistantGestureDisabled(int i) {
        if ((131072 & i) != 0) {
            i &= -3;
        }
        if ((i & 3083) != 0) {
            return true;
        }
        if ((i & 4) != 0 && (i & 64) == 0) {
            return true;
        }
        return false;
    }

    public static boolean isBackGestureDisabled(int i) {
        if ((i & 8) != 0 || (32768 & i) != 0) {
            return false;
        }
        if ((131072 & i) != 0) {
            i &= -3;
        }
        if ((i & 268435458) == 0) {
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

    public static boolean isLegacyMode(int i) {
        if (i == 0) {
            return true;
        }
        return false;
    }

    public static boolean isSwipeUpMode(int i) {
        if (i == 1) {
            return true;
        }
        return false;
    }

    public static boolean supportsRoundedCornersOnWindows(Resources resources) {
        return ScreenDecorationsUtils.supportsRoundedCornersOnWindows(resources);
    }

    public static int getQuickStepTouchSlopPx() {
        return convertDpToPixel(24.0f);
    }
}
