package com.android.systemui.edgelighting;

import android.os.Build;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import com.samsung.android.feature.SemCarrierFeature;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Feature {
    public static final boolean FEATURE_CONTEXTSERVICE_ENABLE_SURVEY;
    public static final boolean FEATURE_SUPPORT_AOD;
    public static final boolean FEATURE_SUPPORT_BASIC_LIGHTING;
    public static final boolean FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR;
    public static final boolean FEATURE_SUPPORT_EDGE_LIGHTING;
    public static final boolean FEATURE_SUPPORT_EDGE_LIGHTING_TILE;

    static {
        boolean z;
        SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon", "");
        String str = SemSystemProperties.get("persist.omc.country_code");
        String str2 = SemSystemProperties.get("ro.csc.country_code");
        if (TextUtils.isEmpty(str2)) {
            str2 = SemSystemProperties.get("ril.sales_code");
        }
        if (str == null || "".equals(str)) {
            str = str2;
        }
        if (str != null) {
            str.equalsIgnoreCase("CHINA");
        }
        FEATURE_CONTEXTSERVICE_ENABLE_SURVEY = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE");
        String string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE");
        if (string != null) {
            string.contains("-edgefeeds");
        }
        SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY");
        boolean z2 = false;
        if (Build.VERSION.SEM_PLATFORM_INT >= 120000) {
            z = true;
        } else {
            z = false;
        }
        FEATURE_SUPPORT_EDGE_LIGHTING = z;
        FEATURE_SUPPORT_EDGE_LIGHTING_TILE = z;
        SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP");
        SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK");
        String string2 = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE");
        if (string2 != null) {
            string2.contains("search");
        }
        FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR = true;
        SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_ACCESSIBILITY_CONFLICT");
        SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK");
        SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG");
        String string3 = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT");
        if (string3 != null && string3.contains("frame_effect")) {
            z2 = true;
        }
        FEATURE_SUPPORT_BASIC_LIGHTING = z2;
        String string4 = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE");
        if (string4 != null) {
            string4.contains("-edge_panel");
        }
        FEATURE_SUPPORT_AOD = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM", "").contains("aodversion");
    }

    public static boolean isEdgeLightingDefaultOff() {
        String string = SemCscFeature.getInstance().getString("CscFeature_Framework_ConfigDefStatusEdgeLighting");
        String string2 = SemCarrierFeature.getInstance().getString(0, "CarrierFeature_SystemUI_ConfigDefStatusEdgeLighting", "", false);
        if ((string == null || !string.contains("-defaulton")) && (string2 == null || !string2.contains("-defaulton"))) {
            return false;
        }
        return true;
    }
}
