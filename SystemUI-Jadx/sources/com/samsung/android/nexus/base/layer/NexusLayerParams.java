package com.samsung.android.nexus.base.layer;

import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class NexusLayerParams {
    public final int mHeight;
    public final int mWidth;
    public final int mX;
    public final int mY;

    public NexusLayerParams(NexusLayerParams nexusLayerParams) {
        this.mWidth = nexusLayerParams.mWidth;
        this.mHeight = nexusLayerParams.mHeight;
        this.mX = nexusLayerParams.mX;
        this.mY = nexusLayerParams.mY;
    }

    public NexusLayerParams(int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mY = 0;
        this.mX = 0;
        new Rect();
    }

    public NexusLayerParams(int i, int i2, int i3) {
        this(i, i2);
    }
}
