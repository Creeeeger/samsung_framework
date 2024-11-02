package androidx.picker.helper;

import android.graphics.drawable.Drawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class DrawableHelperKt {
    public static final Drawable newMutateDrawable(Drawable drawable) {
        Drawable.ConstantState constantState;
        Drawable newDrawable;
        if (drawable != null && (constantState = drawable.getConstantState()) != null && (newDrawable = constantState.newDrawable()) != null) {
            return newDrawable.mutate();
        }
        return null;
    }
}
