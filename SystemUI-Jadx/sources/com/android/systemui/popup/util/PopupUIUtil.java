package com.android.systemui.popup.util;

import android.os.SystemProperties;
import com.android.systemui.BasicRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PopupUIUtil {
    public static final boolean SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL;
    public static final boolean SIM_CARD_TRAY_STYLE_FLIP_TYPE;
    public static final boolean SIM_CARD_TRAY_STYLE_FOLD_TYPE;

    static {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = BasicRune.BASIC_FOLDABLE_TYPE_FOLD;
        boolean z5 = true;
        if (z4 && SystemProperties.get("ro.product.name", "").startsWith("q6aq")) {
            z = true;
        } else {
            z = false;
        }
        if (z4 && SystemProperties.get("ro.product.name", "").startsWith("q6q") && !z) {
            z2 = true;
        } else {
            z2 = false;
        }
        SIM_CARD_TRAY_STYLE_FOLD_TYPE = z2;
        if (!SystemProperties.get("ro.product.name", "").startsWith("b6qzcx") && !SystemProperties.get("ro.product.name", "").startsWith("b6qzhx") && !SystemProperties.get("ro.product.name", "").startsWith("b6qctcx")) {
            z3 = false;
        } else {
            z3 = true;
        }
        SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL = z3;
        if (!BasicRune.BASIC_FOLDABLE_TYPE_FLIP || !SystemProperties.get("ro.product.name", "").startsWith("b6")) {
            z5 = false;
        }
        SIM_CARD_TRAY_STYLE_FLIP_TYPE = z5;
    }
}
