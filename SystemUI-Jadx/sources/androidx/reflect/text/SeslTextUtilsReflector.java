package androidx.reflect.text;

import android.text.TextPaint;
import android.text.TextUtils;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslTextUtilsReflector {
    public static final Class mClass = TextUtils.class;

    private SeslTextUtilsReflector() {
    }

    public static char[] semGetPrefixCharForSpan(TextPaint textPaint, CharSequence charSequence, char[] cArr) {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_semGetPrefixCharForSpan", TextPaint.class, CharSequence.class, char[].class);
        if (declaredMethod != null) {
            Object invoke = SeslBaseReflector.invoke(null, declaredMethod, textPaint, charSequence, cArr);
            if (!(invoke instanceof char[])) {
                return null;
            }
            return (char[]) invoke;
        }
        return new char[0];
    }
}
