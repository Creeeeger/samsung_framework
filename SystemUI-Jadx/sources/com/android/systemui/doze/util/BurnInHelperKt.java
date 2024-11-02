package com.android.systemui.doze.util;

import android.util.MathUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class BurnInHelperKt {
    public static final int getBurnInOffset(int i, boolean z) {
        float f;
        float currentTimeMillis = ((float) System.currentTimeMillis()) / 60000.0f;
        float f2 = i;
        if (z) {
            f = 83.0f;
        } else {
            f = 521.0f;
        }
        return (int) zigzag(currentTimeMillis, f2, f);
    }

    public static final float getBurnInProgressOffset() {
        return zigzag(((float) System.currentTimeMillis()) / 60000.0f, 1.0f, 89.0f);
    }

    public static final float zigzag(float f, float f2, float f3) {
        float f4 = 2;
        float f5 = (f % f3) / (f3 / f4);
        if (f5 > 1.0f) {
            f5 = f4 - f5;
        }
        return MathUtils.lerp(0.0f, f2, f5);
    }
}
