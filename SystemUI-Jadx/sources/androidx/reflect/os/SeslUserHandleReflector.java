package androidx.reflect.os;

import android.os.UserHandle;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslUserHandleReflector {
    public static final Class mClass = UserHandle.class;

    private SeslUserHandleReflector() {
    }

    public static int myUserId() {
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_myUserId", new Class[0]);
        if (declaredMethod != null) {
            Object invoke = SeslBaseReflector.invoke(null, declaredMethod, new Object[0]);
            if (invoke instanceof Integer) {
                return ((Integer) invoke).intValue();
            }
        }
        return 0;
    }

    public static UserHandle of(int i) {
        Method method = SeslBaseReflector.getMethod(mClass, "of", Integer.TYPE);
        if (method != null) {
            Object invoke = SeslBaseReflector.invoke(null, method, Integer.valueOf(i));
            if (invoke instanceof UserHandle) {
                return (UserHandle) invoke;
            }
        }
        return null;
    }
}
