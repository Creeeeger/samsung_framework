package com.android.systemui.statusbar.pipeline.carrier;

import android.os.Build;
import android.os.SystemProperties;
import com.samsung.android.feature.SemCarrierFeature;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;
import java.util.List;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CommonUtil {
    public final String VALUE_SUB_DISPLAY_POLICY;
    public final String countryISO = SemCscFeature.getInstance().getString("CountryISO", "");
    public final List extraSystemIcons = StringsKt__StringsKt.split$default(SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigDefIndicatorAdditionalSystemIcon", ""), new String[]{","}, 0, 6);
    public String overriddenIconBranding = "";
    public final String salesCode;
    public final SystemPropertiesWrapper systemPropertiesWrapper;

    public CommonUtil(SystemPropertiesWrapper systemPropertiesWrapper) {
        this.systemPropertiesWrapper = systemPropertiesWrapper;
        this.salesCode = systemPropertiesWrapper.salesCode;
        this.VALUE_SUB_DISPLAY_POLICY = ("user".equals(Build.TYPE) || (SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) == 0) ? SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY") : "";
    }

    public final String getIconBranding(int i) {
        boolean z = false;
        if (supportTSS20()) {
            return SemCarrierFeature.getInstance().getString(i, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon", "", false);
        }
        String str = this.overriddenIconBranding;
        if (str.length() == 0) {
            z = true;
        }
        if (z) {
            return SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon", "");
        }
        return str;
    }

    public final boolean supportTSS20() {
        SystemPropertiesWrapper systemPropertiesWrapper = this.systemPropertiesWrapper;
        if (systemPropertiesWrapper.singleSKU && systemPropertiesWrapper.unified) {
            return true;
        }
        return false;
    }
}
