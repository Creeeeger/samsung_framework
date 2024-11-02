package com.android.systemui.util;

import android.graphics.Color;
import java.util.Arrays;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ColorUtilKt {
    public static final int getColorWithAlpha(float f, int i) {
        return Color.argb((int) (f * 255), Color.red(i), Color.green(i), Color.blue(i));
    }

    public static final String hexColorString(Integer num) {
        if (num != null) {
            int intValue = num.intValue();
            int i = StringCompanionObject.$r8$clinit;
            return String.format("#%08x", Arrays.copyOf(new Object[]{Integer.valueOf(intValue)}, 1));
        }
        return "null";
    }
}
