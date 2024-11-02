package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal INSTANCE;
    public final WeakHashMap mDrawableCaches = new WeakHashMap(0);
    public boolean mHasCheckedVectorDrawableSetup;
    public AppCompatDrawableManager.AnonymousClass1 mHooks;
    public TypedValue mTypedValue;
    public static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ColorFilterLruCache extends LruCache {
        public ColorFilterLruCache(int i) {
            super(i);
        }
    }

    public static synchronized ResourceManagerInternal get() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            if (INSTANCE == null) {
                INSTANCE = new ResourceManagerInternal();
            }
            resourceManagerInternal = INSTANCE;
        }
        return resourceManagerInternal;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            ColorFilterLruCache colorFilterLruCache = COLOR_FILTER_CACHE;
            colorFilterLruCache.getClass();
            int i2 = (i + 31) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) colorFilterLruCache.get(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                colorFilterLruCache.getClass();
            }
        }
        return porterDuffColorFilter;
    }

    public final synchronized Drawable getCachedDrawable(Context context, long j) {
        LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) longSparseArray.get(j);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.remove(j);
        }
        return null;
    }

    public final synchronized Drawable getDrawable(int i, Context context) {
        return getDrawable(context, i, false);
    }

    public final synchronized ColorStateList getTintList(int i, Context context) {
        AppCompatDrawableManager.AnonymousClass1 anonymousClass1 = this.mHooks;
        return null;
    }

    public final Drawable loadDrawableFromDelegates(int i, Context context) {
        return null;
    }

    public final Drawable tintDrawable(Context context, int i, boolean z, Drawable drawable) {
        getTintList(i, context);
        if (z) {
            return null;
        }
        return drawable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x002b, code lost:
    
        if (r0 == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized android.graphics.drawable.Drawable getDrawable(android.content.Context r6, int r7, boolean r8) {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = r5.mHasCheckedVectorDrawableSetup     // Catch: java.lang.Throwable -> L68
            r1 = 1
            if (r0 == 0) goto L7
            goto L2d
        L7:
            r5.mHasCheckedVectorDrawableSetup = r1     // Catch: java.lang.Throwable -> L68
            r0 = 2131232342(0x7f080656, float:1.808079E38)
            android.graphics.drawable.Drawable r0 = r5.getDrawable(r0, r6)     // Catch: java.lang.Throwable -> L68
            r2 = 0
            if (r0 == 0) goto L6a
            boolean r3 = r0 instanceof androidx.vectordrawable.graphics.drawable.VectorDrawableCompat     // Catch: java.lang.Throwable -> L68
            if (r3 != 0) goto L2a
            java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Throwable -> L68
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "android.graphics.drawable.VectorDrawable"
            boolean r0 = r3.equals(r0)     // Catch: java.lang.Throwable -> L68
            if (r0 == 0) goto L28
            goto L2a
        L28:
            r0 = r2
            goto L2b
        L2a:
            r0 = r1
        L2b:
            if (r0 == 0) goto L6a
        L2d:
            android.util.TypedValue r0 = r5.mTypedValue     // Catch: java.lang.Throwable -> L68
            if (r0 != 0) goto L38
            android.util.TypedValue r0 = new android.util.TypedValue     // Catch: java.lang.Throwable -> L68
            r0.<init>()     // Catch: java.lang.Throwable -> L68
            r5.mTypedValue = r0     // Catch: java.lang.Throwable -> L68
        L38:
            android.util.TypedValue r0 = r5.mTypedValue     // Catch: java.lang.Throwable -> L68
            android.content.res.Resources r2 = r6.getResources()     // Catch: java.lang.Throwable -> L68
            r2.getValue(r7, r0, r1)     // Catch: java.lang.Throwable -> L68
            int r1 = r0.assetCookie     // Catch: java.lang.Throwable -> L68
            long r1 = (long) r1     // Catch: java.lang.Throwable -> L68
            r3 = 32
            long r1 = r1 << r3
            int r0 = r0.data     // Catch: java.lang.Throwable -> L68
            long r3 = (long) r0     // Catch: java.lang.Throwable -> L68
            long r0 = r1 | r3
            android.graphics.drawable.Drawable r0 = r5.getCachedDrawable(r6, r0)     // Catch: java.lang.Throwable -> L68
            if (r0 == 0) goto L53
            goto L54
        L53:
            r0 = 0
        L54:
            if (r0 != 0) goto L5c
            java.lang.Object r0 = androidx.core.content.ContextCompat.sLock     // Catch: java.lang.Throwable -> L68
            android.graphics.drawable.Drawable r0 = r6.getDrawable(r7)     // Catch: java.lang.Throwable -> L68
        L5c:
            if (r0 == 0) goto L62
            android.graphics.drawable.Drawable r0 = r5.tintDrawable(r6, r7, r8, r0)     // Catch: java.lang.Throwable -> L68
        L62:
            if (r0 == 0) goto L66
            android.graphics.Rect r6 = androidx.appcompat.widget.DrawableUtils.INSETS_NONE     // Catch: java.lang.Throwable -> L68
        L66:
            monitor-exit(r5)
            return r0
        L68:
            r6 = move-exception
            goto L74
        L6a:
            r5.mHasCheckedVectorDrawableSetup = r2     // Catch: java.lang.Throwable -> L68
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L68
            java.lang.String r7 = "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L68
            throw r6     // Catch: java.lang.Throwable -> L68
        L74:
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ResourceManagerInternal.getDrawable(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }
}
