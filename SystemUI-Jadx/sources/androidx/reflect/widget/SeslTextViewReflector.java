package androidx.reflect.widget;

import android.widget.TextView;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslTextViewReflector {
    public static final Class mClass = TextView.class;

    private SeslTextViewReflector() {
    }

    public static void semSetButtonShapeEnabled(TextView textView, boolean z) {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_semSetButtonShapeEnabled", Boolean.TYPE);
        if (declaredMethod != null) {
            SeslBaseReflector.invoke(textView, declaredMethod, Boolean.valueOf(z));
        }
    }

    public static void semSetButtonShapeEnabled(int i, TextView textView, boolean z) {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_semSetButtonShapeEnabled", Boolean.TYPE, Integer.TYPE);
        if (declaredMethod != null) {
            SeslBaseReflector.invoke(textView, declaredMethod, Boolean.valueOf(z), Integer.valueOf(i));
        }
    }
}
