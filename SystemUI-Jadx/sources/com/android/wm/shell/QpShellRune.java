package com.android.wm.shell;

import android.os.SystemProperties;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.util.SemViewUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QpShellRune {
    public static final boolean NOTI_BUBBLE_STYLE_FLIP;
    public static final boolean NOTI_BUBBLE_STYLE_TABLET;

    static {
        boolean z;
        SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD");
        NOTI_BUBBLE_STYLE_TABLET = SemViewUtils.isTablet();
        SystemProperties.get("ro.product.name", "").startsWith("gthh");
        if (SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY").contains("WATCHFACE") && SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY").contains("LARGESCREEN")) {
            z = true;
        } else {
            z = false;
        }
        NOTI_BUBBLE_STYLE_FLIP = z;
    }
}
