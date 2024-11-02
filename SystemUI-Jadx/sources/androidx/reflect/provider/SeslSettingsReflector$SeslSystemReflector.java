package androidx.reflect.provider;

import android.provider.Settings;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslSettingsReflector$SeslSystemReflector {
    public static final Class mClass = Settings.System.class;

    private SeslSettingsReflector$SeslSystemReflector() {
    }

    public static String getField_SEM_PEN_HOVERING() {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_SEM_PEN_HOVERING", new Class[0]);
        Object obj = null;
        if (declaredMethod != null) {
            obj = SeslBaseReflector.invoke(null, declaredMethod, new Object[0]);
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        return "pen_hovering";
    }
}
