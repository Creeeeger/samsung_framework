package com.android.systemui;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LsRune extends Rune {
    public static final boolean AOD_BRIGHTNESS_CONTROL;
    public static final boolean AOD_DISABLE_CLOCK_TRANSITION;
    public static final boolean AOD_FULLSCREEN;
    public static final boolean AOD_HYSTERESIS_BRIGHTNESS;
    public static final boolean AOD_LIGHT_REVEAL;
    public static final boolean AOD_SAFEMODE;
    public static final boolean AOD_SELF_POKE_DRAW_LOCK;
    public static final boolean AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT;
    public static final boolean AOD_SUB_DISPLAY_COVER;
    public static final boolean AOD_SUB_DISPLAY_LOCK;
    public static final boolean AOD_SUB_FULLSCREEN;
    public static final boolean AOD_TSP_CONTROL;
    public static final boolean COVER_ADJUST_REFRESH_RATE;
    public static final boolean COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER;
    public static final boolean COVER_SAFEMODE;
    public static final boolean COVER_SUPPORTED;
    public static final boolean COVER_VIRTUAL_DISPLAY;
    public static final boolean KEYGUARD_ALLOW_ROTATION;
    public static final boolean KEYGUARD_DCM_LIVE_UX;
    public static final boolean KEYGUARD_DELAY_NOTIFY_DRAWN_PREMIUM_WATCH;
    public static final boolean KEYGUARD_EM_TOKEN_CAPTURE_WINDOW;
    public static final boolean KEYGUARD_ENABLE_DEFAULT_ROTATION;
    public static final boolean KEYGUARD_EXTRA_USER_PRESENT;
    public static final boolean KEYGUARD_FBE;
    public static final boolean KEYGUARD_HOMEHUB;
    public static final boolean KEYGUARD_LOCK_SITUATION_VOLUME;
    public static final boolean KEYGUARD_PERFORMANCE_BIO_UNLOCK_BOOSTER;
    public static final boolean KEYGUARD_PERFORMANCE_SCREEN_ON;
    public static final boolean KEYGUARD_SUB_DISPLAY_COVER;
    public static final boolean KEYGUARD_SUB_DISPLAY_LARGE_FRONT;
    public static final boolean KEYGUARD_SUB_DISPLAY_LOCK;
    public static final boolean KEYGUARD_SUB_DISPLAY_ROTATIONAL;
    public static final boolean LOCKUI_AOD_PACKAGE_AVAILABLE;
    public static final boolean LOCKUI_BLUR;
    public static final boolean LOCKUI_BOTTOM_USIM_TEXT;
    public static final boolean LOCKUI_CAPTURED_BLUR;
    public static final boolean LOCKUI_ECO_BATTERY;
    public static final boolean LOCKUI_HELP_TEXT_FOR_CHN;
    public static final boolean LOCKUI_MULTI_USER;
    public static final boolean LOCKUI_SUB_DISPLAY_COVER;
    public static final boolean LOCKUI_SUB_DISPLAY_LOCK;
    public static final boolean PLUGIN_LOCK_LSM;
    public static final boolean PLUGIN_LOCK_MULTIPLE_ACTIVATION;
    public static final boolean SECURITY_ARROW_VIEW;
    public static final boolean SECURITY_BACKGROUND_AUTHENTICATION;
    public static final boolean SECURITY_BIOMETRICS_TABLET;
    public static final boolean SECURITY_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY;
    public static final boolean SECURITY_BLUR;
    public static final boolean SECURITY_BOUNCER_WINDOW;
    public static final boolean SECURITY_CAPTURED_BLUR;
    public static final boolean SECURITY_CLEAR_NO_SIM_DEFAULT_TEXT;
    public static final boolean SECURITY_COLOR_CURVE_BLUR;
    public static final boolean SECURITY_DCM_USIM_TEXT;
    public static final boolean SECURITY_DEAD_ZONE;
    public static final boolean SECURITY_DEFAULT_LANDSCAPE;
    public static final boolean SECURITY_DIRECT_CALL_TO_ECC;
    public static final boolean SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE;
    public static final boolean SECURITY_DISAPPEAR_DEFAULT_CARRIER_TEXT;
    public static final boolean SECURITY_EMERGENCY_BUTTON_KOR;
    public static final boolean SECURITY_ESIM;
    public static final boolean SECURITY_FACTORY_RESET_WITHOUT_UI;
    public static final boolean SECURITY_FINGERPRINT_GUIDE_POPUP;
    public static final boolean SECURITY_FINGERPRINT_IN_DISPLAY;
    public static final boolean SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL;
    public static final boolean SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR;
    public static final boolean SECURITY_HIDE_EMERGENCY_BUTTON_BY_SIMSTATE;
    public static final boolean SECURITY_KOR_USIM_TEXT;
    public static final boolean SECURITY_KTT_USIM_TEXT;
    public static final boolean SECURITY_LGU_USIM_TEXT;
    public static final boolean SECURITY_NAVBAR_ENABLED;
    public static final boolean SECURITY_NOT_REQUIRE_SIMPUK_CODE;
    public static final boolean SECURITY_OPEN_THEME;
    public static final boolean SECURITY_PUNCH_HOLE_FACE_VI;
    public static final boolean SECURITY_SIM_PERM_DISABLED;
    public static final boolean SECURITY_SIM_PERSO_LOCK;
    public static final boolean SECURITY_SIM_UNLOCK_TOAST;
    public static final boolean SECURITY_SKT_USIM_TEXT;
    public static final boolean SECURITY_SPR_USIM_TEXT;
    public static final boolean SECURITY_SUB_DISPLAY_COVER;
    public static final boolean SECURITY_SUB_DISPLAY_LOCK;
    public static final boolean SECURITY_SWIPE_BOUNCER;
    public static final boolean SECURITY_UNPACK;
    public static final boolean SECURITY_USE_CDMA_CARD_TEXT;
    public static final boolean SECURITY_VZW_INSTRUCTION;
    public static final boolean SECURITY_WARNING_WIPE_OUT_MESSAGE;
    public static final boolean SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN;
    public static final boolean SUBSCREEN_PLUGIN_DISCONNECT_WHEN_UNFOLDING;
    public static final boolean SUBSCREEN_UI;
    public static final boolean SUBSCREEN_WATCHFACE;
    public static final boolean SUPPORT_LARGE_FRONT_SUB_DISPLAY;
    public static final String VALUE_CONFIG_CARRIER_SECURITY_POLICY;
    public static final String VALUE_CONFIG_CARRIER_TEXT_POLICY;
    public static final String VALUE_LOCK_POLICY;
    public static final String VALUE_SUB_DISPLAY_POLICY;
    public static final boolean WALLPAPER_BLUR;
    public static final boolean WALLPAPER_CACHED_WALLPAPER;
    public static final boolean WALLPAPER_CAPTURED_BLUR;
    public static final boolean WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER;
    public static final boolean WALLPAPER_FESTIVAL_WALLPAPER;
    public static final boolean WALLPAPER_MAISON_MARGIELA_EDITION;
    public static final boolean WALLPAPER_PLAY_GIF;
    public static final boolean WALLPAPER_ROTATABLE_WALLPAPER;
    public static final boolean WALLPAPER_SUB_DISPLAY_MODE;
    public static final boolean WALLPAPER_SUB_WATCHFACE;
    public static final boolean WALLPAPER_SUPPORT_DLS_SNAPSHOT;
    public static final boolean WALLPAPER_SUPPORT_SUIT_CASE;
    public static final boolean WALLPAPER_VIDEO_PLAY_RANDOM_POSITION;
    public static final boolean WALLPAPER_VIDEO_WALLPAPER;
    public static final boolean WALLPAPER_VIRTUAL_DISPLAY;

    /* JADX WARN: Can't wrap try/catch for region: R(105:1|(1:255)(1:5)|6|(1:254)(1:10)|11|(1:253)(1:15)|16|(1:252)(1:22)|23|(1:251)(1:27)|28|(1:250)(1:34)|35|(1:249)(1:39)|40|(1:248)(1:44)|45|(1:47)|48|(1:50)(1:247)|(1:246)(1:55)|56|(1:58)(1:245)|59|(1:244)(1:63)|64|(2:66|(76:71|72|(1:241)(1:76)|77|(1:79)|80|(2:82|(68:84|85|(1:238)(1:91)|92|93|94|95|96|97|(2:99|(56:101|102|(1:230)(1:108)|109|(1:229)(1:114)|115|(5:117|(3:121|(1:123)(1:125)|124)|126|(1:128)(1:227)|(46:130|131|(1:133)(1:226)|134|(1:136)(1:225)|137|(1:139)(1:224)|140|(1:223)(1:144)|145|(1:222)(1:149)|150|(1:221)(1:154)|155|(2:157|(23:159|160|(1:218)(1:166)|167|(1:217)(1:172)|173|(1:216)(1:177)|178|(1:215)(1:182)|183|(1:214)(1:187)|188|(1:213)(1:191)|192|(1:194)(1:212)|195|(1:211)(1:198)|199|(1:201)(1:210)|202|(1:209)(1:205)|206|207))(1:220)|219|160|(1:162)|218|167|(0)|217|173|(1:175)|216|178|(1:180)|215|183|(0)|214|188|(0)|213|192|(0)(0)|195|(0)|211|199|(0)(0)|202|(0)|209|206|207))|228|131|(0)(0)|134|(0)(0)|137|(0)(0)|140|(1:142)|223|145|(1:147)|222|150|(1:152)|221|155|(0)(0)|219|160|(0)|218|167|(0)|217|173|(0)|216|178|(0)|215|183|(0)|214|188|(0)|213|192|(0)(0)|195|(0)|211|199|(0)(0)|202|(0)|209|206|207)(1:231))|233|102|(2:104|106)|230|109|(1:111)|229|115|(0)|228|131|(0)(0)|134|(0)(0)|137|(0)(0)|140|(0)|223|145|(0)|222|150|(0)|221|155|(0)(0)|219|160|(0)|218|167|(0)|217|173|(0)|216|178|(0)|215|183|(0)|214|188|(0)|213|192|(0)(0)|195|(0)|211|199|(0)(0)|202|(0)|209|206|207))(1:240)|239|85|(1:87)|238|92|93|94|95|96|97|(0)|233|102|(0)|230|109|(0)|229|115|(0)|228|131|(0)(0)|134|(0)(0)|137|(0)(0)|140|(0)|223|145|(0)|222|150|(0)|221|155|(0)(0)|219|160|(0)|218|167|(0)|217|173|(0)|216|178|(0)|215|183|(0)|214|188|(0)|213|192|(0)(0)|195|(0)|211|199|(0)(0)|202|(0)|209|206|207))(1:243)|242|72|(0)|241|77|(0)|80|(0)(0)|239|85|(0)|238|92|93|94|95|96|97|(0)|233|102|(0)|230|109|(0)|229|115|(0)|228|131|(0)(0)|134|(0)(0)|137|(0)(0)|140|(0)|223|145|(0)|222|150|(0)|221|155|(0)(0)|219|160|(0)|218|167|(0)|217|173|(0)|216|178|(0)|215|183|(0)|214|188|(0)|213|192|(0)(0)|195|(0)|211|199|(0)(0)|202|(0)|209|206|207|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x03ca, code lost:
    
        android.util.Log.e(r4, "Fail to get service array");
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x03c8, code lost:
    
        r4 = "DeviceType";
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x051a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x05b1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x05bc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x05d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x05fc  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0603 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04ff  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03b1 A[Catch: Exception -> 0x03ca, TryCatch #0 {Exception -> 0x03ca, blocks: (B:97:0x03ac, B:99:0x03b1, B:231:0x03c2), top: B:96:0x03ac }] */
    static {
        /*
            Method dump skipped, instructions count: 1566
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.LsRune.<clinit>():void");
    }
}
