package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class VectorEnabledTintResources extends ResourcesWrapper {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final WeakReference mContextRef;

    public VectorEnabledTintResources(Context context, Resources resources) {
        super(resources);
        this.mContextRef = new WeakReference(context);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final Drawable getDrawable(int i) {
        Context context = (Context) this.mContextRef.get();
        if (context != null) {
            ResourceManagerInternal resourceManagerInternal = ResourceManagerInternal.get();
            synchronized (resourceManagerInternal) {
                Drawable loadDrawableFromDelegates = resourceManagerInternal.loadDrawableFromDelegates(i, context);
                if (loadDrawableFromDelegates == null) {
                    loadDrawableFromDelegates = getDrawableCanonical(i);
                }
                if (loadDrawableFromDelegates != null) {
                    return resourceManagerInternal.tintDrawable(context, i, false, loadDrawableFromDelegates);
                }
                return null;
            }
        }
        return getDrawableCanonical(i);
    }
}
