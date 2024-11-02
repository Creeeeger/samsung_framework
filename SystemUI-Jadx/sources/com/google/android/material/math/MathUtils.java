package com.google.android.material.math;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MathUtils {
    private MathUtils() {
    }

    public static float distanceToFurthestCorner(float f, float f2, float f3, float f4) {
        double d = 0.0f - f;
        double d2 = 0.0f - f2;
        float hypot = (float) Math.hypot(d, d2);
        double d3 = f3 - f;
        float hypot2 = (float) Math.hypot(d3, d2);
        double d4 = f4 - f2;
        float hypot3 = (float) Math.hypot(d3, d4);
        float hypot4 = (float) Math.hypot(d, d4);
        if (hypot <= hypot2 || hypot <= hypot3 || hypot <= hypot4) {
            if (hypot2 > hypot3 && hypot2 > hypot4) {
                return hypot2;
            }
            if (hypot3 > hypot4) {
                return hypot3;
            }
            return hypot4;
        }
        return hypot;
    }
}
