package androidx.reflect.os;

import android.os.Build;
import androidx.reflect.SeslBaseReflector;
import java.lang.reflect.Field;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslBuildReflector$SeslVersionReflector {
    public static final Class mClass = Build.VERSION.class;

    private SeslBuildReflector$SeslVersionReflector() {
    }

    public static int getField_SEM_PLATFORM_INT() {
        Field declaredField = SeslBaseReflector.getDeclaredField(mClass, "SEM_PLATFORM_INT");
        if (declaredField != null && (SeslBaseReflector.get(declaredField, null) instanceof Integer)) {
            return ((Integer) SeslBaseReflector.get(declaredField, null)).intValue();
        }
        return -1;
    }
}
