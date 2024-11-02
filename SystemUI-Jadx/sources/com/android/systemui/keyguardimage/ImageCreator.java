package com.android.systemui.keyguardimage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;
import com.android.systemui.keyguardimage.ImageOptionCreator;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ImageCreator {
    static Bitmap getViewImage(View view, ImageOptionCreator.ImageOption imageOption) {
        view.measure(View.MeasureSpec.makeMeasureSpec(imageOption.realWidth, VideoPlayer.MEDIA_ERROR_SYSTEM), View.MeasureSpec.makeMeasureSpec(imageOption.realHeight, VideoPlayer.MEDIA_ERROR_SYSTEM));
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (measuredWidth == 0 || measuredHeight == 0) {
            return null;
        }
        view.layout(0, 0, measuredWidth, measuredHeight);
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        float f = imageOption.scale;
        if (f > 0.0f && f < 1.0f) {
            int i = (int) (measuredWidth * f);
            int i2 = (int) (measuredHeight * f);
            if (i == 0 || i2 == 0) {
                return null;
            }
            return Bitmap.createScaledBitmap(createBitmap, i, i2, true);
        }
        return createBitmap;
    }

    Bitmap createImage(ImageOptionCreator.ImageOption imageOption, Point point);
}
