package com.airbnb.lottie.value;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScaleXY {
    public float scaleX;
    public float scaleY;

    public ScaleXY(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public final String toString() {
        return this.scaleX + "x" + this.scaleY;
    }

    public ScaleXY() {
        this(1.0f, 1.0f);
    }
}
