package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppCompatDrawableManager {
    public static AppCompatDrawableManager INSTANCE;
    public ResourceManagerInternal mResourceManager;

    static {
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
    }

    public static synchronized AppCompatDrawableManager get() {
        AppCompatDrawableManager appCompatDrawableManager;
        synchronized (AppCompatDrawableManager.class) {
            if (INSTANCE == null) {
                preload();
            }
            appCompatDrawableManager = INSTANCE;
        }
        return appCompatDrawableManager;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.appcompat.widget.AppCompatDrawableManager$1] */
    public static synchronized void preload() {
        synchronized (AppCompatDrawableManager.class) {
            if (INSTANCE == null) {
                AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
                INSTANCE = appCompatDrawableManager;
                appCompatDrawableManager.mResourceManager = ResourceManagerInternal.get();
                ResourceManagerInternal resourceManagerInternal = INSTANCE.mResourceManager;
                ?? r2 = new Object() { // from class: androidx.appcompat.widget.AppCompatDrawableManager.1
                };
                synchronized (resourceManagerInternal) {
                    resourceManagerInternal.mHooks = r2;
                }
            }
        }
    }

    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        PorterDuff.Mode mode2 = ResourceManagerInternal.DEFAULT_MODE;
        int[] state = drawable.getState();
        Rect rect = DrawableUtils.INSETS_NONE;
        if (drawable.mutate() == drawable) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z2 = tintInfo.mHasTintList;
        if (!z2 && !tintInfo.mHasTintMode) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilter = null;
        if (z2) {
            colorStateList = tintInfo.mTintList;
        } else {
            colorStateList = null;
        }
        if (tintInfo.mHasTintMode) {
            mode = tintInfo.mTintMode;
        } else {
            mode = ResourceManagerInternal.DEFAULT_MODE;
        }
        if (colorStateList != null && mode != null) {
            porterDuffColorFilter = ResourceManagerInternal.getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
        }
        drawable.setColorFilter(porterDuffColorFilter);
    }

    public final synchronized Drawable getDrawable(int i, Context context) {
        return this.mResourceManager.getDrawable(i, context);
    }
}
