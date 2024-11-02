package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Picture;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface BitmapRenderer {
    static Bitmap createHardwareBitmap(int i, int i2, ShadowGenerator$Builder$$ExternalSyntheticLambda0 shadowGenerator$Builder$$ExternalSyntheticLambda0) {
        GraphicsUtils$$ExternalSyntheticLambda0 graphicsUtils$$ExternalSyntheticLambda0 = GraphicsUtils.sOnNewBitmapRunnable;
        Picture picture = new Picture();
        shadowGenerator$Builder$$ExternalSyntheticLambda0.draw(picture.beginRecording(i, i2));
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }
}
