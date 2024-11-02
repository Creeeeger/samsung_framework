package androidx.reflect.view;

import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslViewRuneReflector {
    private SeslViewRuneReflector() {
    }

    public static boolean isEdgeEffectStretchType() {
        Object obj;
        Method method = SeslBaseReflector.getMethod("com.samsung.android.rune.ViewRune", "hidden_isEdgeEffectStretchType", new Class[0]);
        if (method != null) {
            obj = SeslBaseReflector.invoke("com.samsung.android.rune.ViewRune", method, new Object[0]);
        } else {
            obj = null;
        }
        if (!(obj instanceof Boolean)) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }

    public static boolean supportFoldableDualDisplay() {
        Object obj;
        Method method = SeslBaseReflector.getMethod("com.samsung.android.rune.ViewRune", "hidden_supportFoldableDualDisplay", new Class[0]);
        if (method != null) {
            obj = SeslBaseReflector.invoke("com.samsung.android.rune.ViewRune", method, new Object[0]);
        } else {
            obj = null;
        }
        if (!(obj instanceof Boolean)) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }

    public static boolean supportFoldableNoSubDisplay() {
        Object obj;
        Method method = SeslBaseReflector.getMethod("com.samsung.android.rune.ViewRune", "hidden_supportFoldableNoSubDisplay", new Class[0]);
        if (method != null) {
            obj = SeslBaseReflector.invoke("com.samsung.android.rune.ViewRune", method, new Object[0]);
        } else {
            obj = null;
        }
        if (!(obj instanceof Boolean)) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }
}
