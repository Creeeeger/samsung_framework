package com.android.systemui.statusbar.pipeline.carrier;

import com.samsung.android.feature.SemCarrierFeature;
import com.samsung.android.feature.SemCscFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileRoamingUtil {
    public final CommonUtil commonUtil;

    public MobileRoamingUtil(CommonUtil commonUtil) {
        this.commonUtil = commonUtil;
    }

    public final String getRoamingIconType(int i) {
        if (this.commonUtil.supportTSS20()) {
            return SemCarrierFeature.getInstance().getString(i, "CarrierFeature_SystemUI_ConfigRoamingIconType", "", false);
        }
        return SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigRoamingIconType", "");
    }
}
