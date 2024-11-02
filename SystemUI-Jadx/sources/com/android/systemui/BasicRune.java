package com.android.systemui;

import com.samsung.android.feature.SemCscFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BasicRune extends Rune {
    public static final boolean ASSIST_ASSISTANCE_APP_SETTING_POPUP;
    public static final boolean ASSIST_DISCLOSURE_CORNER_ROUND_ENABLED;
    public static final float ASSIST_DISCLOSURE_CORNER_ROUND_SIZE;
    public static final boolean ASSIST_INVOCATION_SWITCH;
    public static final boolean BASIC_FOLDABLE_TYPE_FLIP;
    public static final boolean BASIC_FOLDABLE_TYPE_FOLD;
    public static final boolean BIXBY_TOUCH_SUPPORT_CIRCLE2SEARCH;
    public static final boolean CONTROLS_ALLOW_BASIC_ACTION_WHEN_LOCKED;
    public static final boolean CONTROLS_AOSP_BUGFIX;
    public static final boolean CONTROLS_AUI;
    public static final boolean CONTROLS_AUTO_ADD;
    public static final boolean CONTROLS_AUTO_REMOVE;
    public static final boolean CONTROLS_BADGE;
    public static final boolean CONTROLS_BLUR;
    public static final boolean CONTROLS_CAPTURED_BLUR;
    public static final boolean CONTROLS_CARD_REORDER_DIM;
    public static final boolean CONTROLS_CUSTOM_MAIN_ACTION_ICON;
    public static final boolean CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS;
    public static final boolean CONTROLS_CUSTOM_SERVICES_INFO_ORDERING;
    public static final boolean CONTROLS_CUSTOM_STATUS;
    public static final boolean CONTROLS_DEX_SUPPORT;
    public static final boolean CONTROLS_DYNAMIC_ORDERING;
    public static final boolean CONTROLS_LAYOUT_TYPE;
    public static final boolean CONTROLS_LOADING_DEVICES;
    public static final boolean CONTROLS_LOTTIE_ICON_ANIMATION;
    public static final boolean CONTROLS_MANAGE_BACKUP_RESOTRE;
    public static final boolean CONTROLS_MEMORY_LEAK_BUGFIX;
    public static final boolean CONTROLS_OVERLAY_CUSTOM_ICON;
    public static final boolean CONTROLS_PROVIDER_INFO;
    public static final boolean CONTROLS_REQUEST_UNLOCK_WHEN_LONG_PRESSED_CARD;
    public static final boolean CONTROLS_SAMSUNG_ANALYTICS;
    public static final boolean CONTROLS_SAMSUNG_STYLE;
    public static final boolean CONTROLS_SAMSUNG_STYLE_FOLD;
    public static final boolean CONTROLS_SAMSUNG_STYLE_TABLET;
    public static final boolean CONTROLS_SMALL_TYPE_NEW_STRUCTURE_ORDER_FIRST;
    public static final boolean CONTROLS_SMARTTHINGS_UNBIND;
    public static final boolean CONTROLS_STRUCTURE_ORDERING;
    public static final boolean CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING;
    public static final boolean CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG;
    public static final boolean CONTROLS_USE_FULL_SCREEN_DETAIL_DIALOG;
    public static final boolean FOLDABLE_TYPE_FLIP;
    public static final boolean GLOBALACTIONS_BLUR;
    public static final boolean GLOBALACTIONS_CAPTURED_BLUR;
    public static final boolean KEYBOARD_SUPPORT_EMOJI_SHORTCUT;
    public static final boolean MAINTENANCE_MODE;
    public static final boolean MEDIA_PROJECTION_PERMISSION_CLAIM_CAPTURE;
    public static final boolean NAVBAR_AOSP_BUG_FIX;
    public static final boolean NAVBAR_BOTTOM_GESTURE_SENSITIVITY;
    public static final boolean NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK;
    public static final boolean NAVBAR_DESKTOP;
    public static final boolean NAVBAR_DISABLE_TOUCH;
    public static final boolean NAVBAR_ENABLED;
    public static final boolean NAVBAR_ENABLED_HARD_KEY;
    public static final boolean NAVBAR_FOLDERBLE_TYPE_FOLD;
    public static final boolean NAVBAR_GESTURE;
    public static final boolean NAVBAR_ICON_MOVEMENT;
    public static final boolean NAVBAR_KNOX_MONITOR;
    public static final boolean NAVBAR_LIGHTBAR;
    public static final boolean NAVBAR_MOVABLE_POSITION;
    public static final boolean NAVBAR_MULTI_MODAL_ICON;
    public static final boolean NAVBAR_MULTI_MODAL_ICON_LARGE_COVER;
    public static final boolean NAVBAR_MW_ENTER_SPLIT_USING_GESTURE;
    public static final boolean NAVBAR_NEW_DEX;
    public static final boolean NAVBAR_OPEN_THEME;
    public static final boolean NAVBAR_PERFORMANCE_TUNING;
    public static final boolean NAVBAR_REMOTEVIEW;
    public static final boolean NAVBAR_SETUPWIZARD;
    public static final boolean NAVBAR_SIMPLIFIED_GESTURE;
    public static final boolean NAVBAR_STABLE_LAYOUT;
    public static final boolean NAVBAR_SUPPORT_COVER_DISPLAY;
    public static final boolean NAVBAR_SUPPORT_LARGE_COVER_SCREEN;
    public static final boolean NAVBAR_SUPPORT_POLICY_VISIBILITY;
    public static final boolean NAVBAR_SUPPORT_SEARCLE;
    public static final boolean NAVBAR_SUPPORT_TASKBAR;
    public static final boolean POPUPUI_FOLDERBLE_TYPE_FLIP;
    public static final boolean POPUPUI_FOLDERBLE_TYPE_FOLD;
    public static final boolean POPUPUI_MOBILE_DEVICE_WARNING;
    public static final boolean POPUPUI_MODEL_TYPE_WINNER;
    public static final boolean POPUPUI_SD_CARD_STORAGE;
    public static final boolean POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG;
    public static final boolean SEARCLE;
    public static final boolean STATUS_LAYOUT_MUM_ICON;
    public static final boolean STATUS_LAYOUT_SHOW_DATE;
    public static final boolean STATUS_LAYOUT_SHOW_ICONS_IN_UDC;
    public static final boolean STATUS_LAYOUT_SIDELING_CUTOUT;
    public static final boolean STATUS_NETWORK_MULTI_SIM;
    public static final boolean STATUS_NETWORK_SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL;
    public static final boolean STATUS_NETWORK_WIFI_DISPLAY_AP_NAME;
    public static final boolean STATUS_NETWORK_WIFI_FLASHING;
    public static final boolean STATUS_REAL_TIME_NETWORK_SPEED;
    public static final boolean SUPPORT_SEARCLE;
    public static final boolean SUPPORT_SOUND_THEME;
    public static final boolean VOLUME_CAPTURED_BLUR;
    public static final boolean VOLUME_FOLDABLE_WIDE_SCREEN_VOLUME_DIALOG;
    public static final boolean VOLUME_HOME_IOT;
    public static final boolean VOLUME_LEFT_DISPLAY_VOLUME_DIALOG;
    public static final boolean VOLUME_MONITOR_PHASE_3;
    public static final boolean VOLUME_PARTIAL_BLUR;
    public static final boolean VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG;
    public static final boolean VOLUME_SUB_DISPLAY_VOLUME_DIALOG;
    public static final boolean VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG;

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0239, code lost:
    
        if ((android.os.SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) != 0) goto L117;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0342  */
    static {
        /*
            Method dump skipped, instructions count: 1103
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.BasicRune.<clinit>():void");
    }

    public static final boolean supportSamsungGesturalModeAsDefault() {
        if (NAVBAR_SIMPLIFIED_GESTURE) {
            return false;
        }
        for (String str : SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigNavigationBarPolicy", "").split(";")) {
            if (str.contains("DefaultBottomGesture")) {
                return true;
            }
        }
        return false;
    }
}
