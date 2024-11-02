package androidx.reflect.view;

import android.graphics.Rect;
import android.view.PointerIcon;
import android.view.View;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslViewReflector {
    public static final Class mClass = View.class;

    private SeslViewReflector() {
    }

    public static boolean isVisibleToUser(View view) {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "isVisibleToUser", Rect.class);
        if (declaredMethod != null) {
            Object invoke = SeslBaseReflector.invoke(view, declaredMethod, null);
            if (invoke instanceof Boolean) {
                return ((Boolean) invoke).booleanValue();
            }
        }
        return false;
    }

    public static void semSetHoverPopupType(View view, int i) {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_semSetHoverPopupType", Integer.TYPE);
        if (declaredMethod != null) {
            SeslBaseReflector.invoke(view, declaredMethod, Integer.valueOf(i));
        }
    }

    public static void semSetPointerIcon(View view, PointerIcon pointerIcon) {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_semSetPointerIcon", Integer.TYPE, PointerIcon.class);
        if (declaredMethod != null) {
            SeslBaseReflector.invoke(view, declaredMethod, 2, pointerIcon);
        }
    }
}
