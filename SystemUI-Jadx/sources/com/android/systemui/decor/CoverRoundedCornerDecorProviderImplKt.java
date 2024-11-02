package com.android.systemui.decor;

import android.graphics.Matrix;
import android.widget.ImageView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CoverRoundedCornerDecorProviderImplKt {
    public static final void access$setRotation(int i, ImageView imageView) {
        Matrix matrix = new Matrix();
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    matrix.postRotate(90.0f);
                    matrix.postTranslate(imageView.getDrawable().getIntrinsicHeight(), 0.0f);
                }
            } else {
                matrix.postRotate(180.0f);
                matrix.postTranslate(imageView.getDrawable().getIntrinsicWidth(), imageView.getDrawable().getIntrinsicHeight());
            }
        } else {
            matrix.postRotate(270.0f);
            matrix.postTranslate(0.0f, imageView.getDrawable().getIntrinsicWidth());
        }
        imageView.setImageMatrix(matrix);
    }
}
