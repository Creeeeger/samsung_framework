package com.android.systemui.volume.util;

import android.content.Context;
import android.content.res.ColorStateList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ColorUtils {
    static {
        new ColorUtils();
    }

    private ColorUtils() {
    }

    public static final ColorStateList getSingleColorStateList(int i, Context context) {
        return new ColorStateList(new int[][]{new int[0]}, new int[]{context.getResources().getColor(i, null)});
    }
}
