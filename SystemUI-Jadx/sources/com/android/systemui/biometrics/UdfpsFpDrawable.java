package com.android.systemui.biometrics;

import android.content.Context;
import android.graphics.Canvas;

/* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsFpDrawable extends UdfpsDrawable {
    public UdfpsFpDrawable(Context context) {
        super(context);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.isDisplayConfigured) {
            return;
        }
        this.fingerprintDrawable.draw(canvas);
    }
}
