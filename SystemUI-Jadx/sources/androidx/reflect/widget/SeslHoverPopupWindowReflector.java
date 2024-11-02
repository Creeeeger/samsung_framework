package androidx.reflect.widget;

import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslHoverPopupWindowReflector {
    private SeslHoverPopupWindowReflector() {
    }

    public static int getField_TYPE_NONE() {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod("com.samsung.android.widget.SemHoverPopupWindow", "hidden_TYPE_NONE", new Class[0]);
        Object obj = null;
        if (declaredMethod != null) {
            obj = SeslBaseReflector.invoke(null, declaredMethod, new Object[0]);
        }
        if (!(obj instanceof Integer)) {
            return 0;
        }
        return ((Integer) obj).intValue();
    }
}
