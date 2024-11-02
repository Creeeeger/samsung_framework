package com.google.android.setupcompat.template;

import android.content.Context;
import android.content.res.ColorStateList;
import com.google.android.setupcompat.partnerconfig.PartnerConfig;
import com.google.android.setupcompat.partnerconfig.PartnerConfigHelper;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FooterButtonStyleUtils {
    public static final HashMap defaultTextColor = new HashMap();

    private FooterButtonStyleUtils() {
    }

    public static void updateButtonTextDisabledColorWithPartnerConfig(Context context, FooterActionButton footerActionButton, PartnerConfig partnerConfig) {
        if (PartnerConfigHelper.get(context).isPartnerConfigAvailable(partnerConfig)) {
            int color = PartnerConfigHelper.get(context).getColor(context, partnerConfig);
            if (color != 0) {
                footerActionButton.setTextColor(ColorStateList.valueOf(color));
                return;
            }
            return;
        }
        HashMap hashMap = defaultTextColor;
        if (hashMap.containsKey(Integer.valueOf(footerActionButton.getId()))) {
            footerActionButton.setTextColor((ColorStateList) hashMap.get(Integer.valueOf(footerActionButton.getId())));
            return;
        }
        throw new IllegalStateException("There is no saved default color for button");
    }
}
