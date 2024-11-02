package androidx.reflect.content;

import android.content.Context;
import android.os.UserHandle;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslContextReflector {
    public static final Class mClass = Context.class;

    private SeslContextReflector() {
    }

    public static Context createPackageContextAsUser(Context context, String str, UserHandle userHandle) {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_createPackageContextAsUser", String.class, Integer.TYPE, UserHandle.class);
        if (declaredMethod != null) {
            Object invoke = SeslBaseReflector.invoke(context, declaredMethod, str, 0, userHandle);
            if (invoke instanceof Context) {
                return (Context) invoke;
            }
            return null;
        }
        return null;
    }
}
