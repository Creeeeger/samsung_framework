package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextHelper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TintTypedArray {
    public final Context mContext;
    public TypedValue mTypedValue;
    public final TypedArray mWrapped;

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.mContext = context;
        this.mWrapped = typedArray;
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public final boolean getBoolean(int i, boolean z) {
        return this.mWrapped.getBoolean(i, z);
    }

    public final ColorStateList getColorStateList(int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = this.mWrapped;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (colorStateList = ContextCompat.getColorStateList(resourceId, this.mContext)) != null) {
            return colorStateList;
        }
        return typedArray.getColorStateList(i);
    }

    public final int getDimensionPixelOffset(int i, int i2) {
        return this.mWrapped.getDimensionPixelOffset(i, i2);
    }

    public final int getDimensionPixelSize(int i, int i2) {
        return this.mWrapped.getDimensionPixelSize(i, i2);
    }

    public final Drawable getDrawable(int i) {
        int resourceId;
        TypedArray typedArray = this.mWrapped;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0) {
            return AppCompatResources.getDrawable(resourceId, this.mContext);
        }
        return typedArray.getDrawable(i);
    }

    public final Drawable getDrawableIfKnown(int i) {
        int resourceId;
        Drawable drawable;
        if (this.mWrapped.hasValue(i) && (resourceId = this.mWrapped.getResourceId(i, 0)) != 0) {
            AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
            Context context = this.mContext;
            synchronized (appCompatDrawableManager) {
                drawable = appCompatDrawableManager.mResourceManager.getDrawable(context, resourceId, true);
            }
            return drawable;
        }
        return null;
    }

    public final Typeface getFont(int i, int i2, AppCompatTextHelper.AnonymousClass1 anonymousClass1) {
        int resourceId = this.mWrapped.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        Context context = this.mContext;
        if (context.isRestricted()) {
            return null;
        }
        return ResourcesCompat.loadFont(context, resourceId, typedValue, i2, anonymousClass1, true, false);
    }

    public final int getInt(int i, int i2) {
        return this.mWrapped.getInt(i, i2);
    }

    public final int getResourceId(int i, int i2) {
        return this.mWrapped.getResourceId(i, i2);
    }

    public final String getString(int i) {
        return this.mWrapped.getString(i);
    }

    public final CharSequence getText(int i) {
        return this.mWrapped.getText(i);
    }

    public final boolean hasValue(int i) {
        return this.mWrapped.hasValue(i);
    }

    public final void recycle() {
        this.mWrapped.recycle();
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int i, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i, iArr));
    }
}
