package com.android.systemui.wallpaper.theme;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DensityUtil {
    public static int sMetricsHeight;
    public static int sMetricsWidth;

    private DensityUtil() {
    }

    public static int dip2px(float f, Context context) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
