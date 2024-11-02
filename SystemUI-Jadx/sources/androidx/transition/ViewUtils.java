package androidx.transition;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewUtils {
    public static final ViewUtilsApi29 IMPL = new ViewUtilsApi29();
    public static final AnonymousClass1 TRANSITION_ALPHA = new Property(Float.class, "translationAlpha") { // from class: androidx.transition.ViewUtils.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            ViewUtils.IMPL.getClass();
            return Float.valueOf(((View) obj).getTransitionAlpha());
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            ViewUtils.setTransitionAlpha((View) obj, ((Float) obj2).floatValue());
        }
    };
    public static final AnonymousClass2 CLIP_BOUNDS = new Property(Rect.class, "clipBounds") { // from class: androidx.transition.ViewUtils.2
        @Override // android.util.Property
        public final Object get(Object obj) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            return ViewCompat.Api18Impl.getClipBounds((View) obj);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api18Impl.setClipBounds((View) obj, (Rect) obj2);
        }
    };

    private ViewUtils() {
    }

    public static void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        IMPL.getClass();
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    public static void setTransitionAlpha(View view, float f) {
        IMPL.getClass();
        view.setTransitionAlpha(f);
    }

    public static void setTransitionVisibility(View view, int i) {
        IMPL.getClass();
        view.setTransitionVisibility(i);
    }
}
