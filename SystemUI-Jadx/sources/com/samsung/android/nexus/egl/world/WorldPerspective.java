package com.samsung.android.nexus.egl.world;

import android.opengl.Matrix;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class WorldPerspective extends BaseWorld {
    public WorldPerspective(int i, int i2) {
        int i3;
        if (i2 > i) {
            i3 = i2;
        } else {
            i3 = i;
        }
        Matrix.setLookAtM(this.mViewMatrix, 0, 0.0f, 0.0f, r3 * 2, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        float f = i;
        float f2 = i2;
        Matrix.frustumM(this.mProjectionMatrix, 0, f * (-0.5f) * 0.5f, f * 0.5f * 0.5f, (-0.5f) * f2 * 0.5f, f2 * 0.5f * 0.5f, (int) (i3 * 0.5f), r3 * 3);
    }
}
