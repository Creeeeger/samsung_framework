package com.android.systemui.assist.ui;

import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeLight {
    public int mColor;
    public float mLength;
    public float mStart;

    public EdgeLight(int i, float f, float f2) {
        this.mColor = i;
        this.mStart = f;
        this.mLength = f2;
    }

    public final void setEndpoints(float f, float f2) {
        if (f > f2) {
            Log.e("EdgeLight", String.format("Endpoint must be >= start (add 1 if necessary). Got [%f, %f]", Float.valueOf(f), Float.valueOf(f2)));
        } else {
            this.mStart = f;
            this.mLength = f2 - f;
        }
    }

    public EdgeLight(EdgeLight edgeLight) {
        this.mColor = edgeLight.mColor;
        this.mStart = edgeLight.mStart;
        this.mLength = edgeLight.mLength;
    }
}
