package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.MaterialAttributes;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MaterialColors {
    private MaterialColors() {
    }

    public static int compositeARGBWithAlpha(int i, int i2) {
        return ColorUtils.setAlphaComponent(i, (Color.alpha(i) * i2) / 255);
    }

    public static int getColor(View view, int i) {
        Context context = view.getContext();
        TypedValue resolveTypedValueOrThrow = MaterialAttributes.resolveTypedValueOrThrow(view.getContext(), view.getClass().getCanonicalName(), i);
        int i2 = resolveTypedValueOrThrow.resourceId;
        if (i2 != 0) {
            Object obj = ContextCompat.sLock;
            return context.getColor(i2);
        }
        return resolveTypedValueOrThrow.data;
    }

    public static boolean isColorLight(int i) {
        if (i != 0 && ColorUtils.calculateLuminance(i) > 0.5d) {
            return true;
        }
        return false;
    }

    public static int layer(float f, int i, int i2) {
        return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    public static int getColor(int i, Context context, int i2) {
        TypedValue resolve = MaterialAttributes.resolve(i, context);
        if (resolve == null) {
            return i2;
        }
        int i3 = resolve.resourceId;
        if (i3 != 0) {
            Object obj = ContextCompat.sLock;
            return context.getColor(i3);
        }
        return resolve.data;
    }
}
