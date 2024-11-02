package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MaterialAttributes {
    public static TypedValue resolve(int i, Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(Context context, int i, boolean z) {
        TypedValue resolve = resolve(i, context);
        if (resolve != null && resolve.type == 18) {
            if (resolve.data != 0) {
                return true;
            }
            return false;
        }
        return z;
    }

    public static TypedValue resolveTypedValueOrThrow(Context context, String str, int i) {
        TypedValue resolve = resolve(i, context);
        if (resolve != null) {
            return resolve;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }
}
