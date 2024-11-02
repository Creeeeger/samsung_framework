package com.google.android.setupdesign.util;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import com.google.android.setupcompat.internal.TemplateLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DrawableLayoutDirectionHelper {
    public static InsetDrawable createRelativeInsetDrawable(Drawable drawable, int i, int i2, TemplateLayout templateLayout) {
        boolean z = true;
        if (templateLayout.getLayoutDirection() != 1) {
            z = false;
        }
        if (z) {
            return new InsetDrawable(drawable, i2, 0, i, 0);
        }
        return new InsetDrawable(drawable, i, 0, i2, 0);
    }
}
