package com.android.systemui.blur;

import com.android.systemui.LsRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerColorCurve {
    public static final float RADIUS;
    public float mRadius = 0.0f;
    public float mSaturation = 0.0f;
    public float mCurve = 0.0f;
    public float mMinX = 0.0f;
    public float mMaxX = 0.0f;
    public float mMinY = 0.0f;
    public float mMaxY = 0.0f;
    public float mFraction = -1.0f;

    static {
        float f;
        if (LsRune.SECURITY_CAPTURED_BLUR) {
            f = 53.0f;
        } else {
            f = 150.0f;
        }
        RADIUS = f;
    }

    public final void setFraction(float f, boolean z) {
        float f2;
        float f3;
        this.mFraction = f;
        this.mRadius = RADIUS * f;
        float f4 = 0.0f * f;
        this.mSaturation = f4;
        this.mCurve = 8.0f * f;
        this.mMinX = f4;
        if (z) {
            f2 = 1.0f;
        } else {
            f2 = 2.0f;
        }
        this.mMinY = f2 * f;
        this.mMaxX = 255.0f - f4;
        if (z) {
            f3 = 255.0f;
        } else {
            f3 = 178.2f;
        }
        this.mMaxY = 255.0f - ((255.0f - f3) * f);
    }
}
