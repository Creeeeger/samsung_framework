package com.samsung.android.nexus.egl.world;

import android.renderscript.Matrix4f;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class WorldOrthographic extends BaseWorld {
    public WorldOrthographic(int i, int i2) {
        int i3;
        if (i2 > i) {
            i3 = i2;
        } else {
            i3 = i;
        }
        float f = i;
        float f2 = f * (-0.5f);
        float f3 = f * 0.5f;
        float f4 = i2;
        float f5 = f4 * (-0.5f);
        float f6 = f4 * 0.5f;
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadOrtho(f2, f3, f5, f6, i3, -i3);
        this.mProjectionMatrix = matrix4f.getArray();
    }
}
