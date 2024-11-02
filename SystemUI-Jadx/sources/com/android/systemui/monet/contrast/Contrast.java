package com.android.systemui.monet.contrast;

import com.android.systemui.monet.utils.ColorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Contrast {
    private Contrast() {
    }

    public static double ratioOfTones(double d, double d2) {
        double yFromLstar = ColorUtils.yFromLstar(d);
        double yFromLstar2 = ColorUtils.yFromLstar(d2);
        double max = Math.max(yFromLstar, yFromLstar2);
        if (max != yFromLstar2) {
            yFromLstar = yFromLstar2;
        }
        return (max + 5.0d) / (yFromLstar + 5.0d);
    }
}
