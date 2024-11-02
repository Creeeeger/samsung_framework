package androidx.reflect.view;

import android.view.InputDevice;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslInputDeviceReflector {
    public static final Class mClass = InputDevice.class;

    private SeslInputDeviceReflector() {
    }

    public static void semSetPointerType(InputDevice inputDevice, int i) {
        Method declaredMethod;
        if (inputDevice != null && (declaredMethod = SeslBaseReflector.getDeclaredMethod(mClass, "hidden_setPointerType", Integer.TYPE)) != null) {
            SeslBaseReflector.invoke(inputDevice, declaredMethod, Integer.valueOf(i));
        }
    }
}
