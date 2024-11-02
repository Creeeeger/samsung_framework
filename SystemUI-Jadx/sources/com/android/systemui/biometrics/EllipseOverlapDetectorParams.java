package com.android.systemui.biometrics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EllipseOverlapDetectorParams {
    public final float minOverlap;
    public final int stepSize;
    public final float targetSize;

    public EllipseOverlapDetectorParams(float f, float f2, int i) {
        this.minOverlap = f;
        this.targetSize = f2;
        this.stepSize = i;
    }
}
