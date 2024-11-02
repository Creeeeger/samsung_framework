package androidx.reflect;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslBaseReflector {
    private SeslBaseReflector() {
    }

    public static Object get(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalAccessException", e);
            return null;
        } catch (IllegalArgumentException e2) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalArgumentException", e2);
            return null;
        }
    }

    public static Class getClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            Log.w("SeslBaseReflector", "Fail to get class = ".concat(str));
            return null;
        }
    }

    public static Field getDeclaredField(Class cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
            if (field != null) {
                try {
                    field.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                    Log.w("SeslBaseReflector", "Reflector did not find field = ".concat(str));
                    return field;
                }
            }
        } catch (NoSuchFieldException unused2) {
            field = null;
        }
        return field;
    }

    public static Method getDeclaredMethod(String str, String str2, Class... clsArr) {
        Class cls = getClass(str);
        Method method = null;
        if (cls != null) {
            try {
                method = cls.getDeclaredMethod(str2, clsArr);
                if (method != null) {
                    method.setAccessible(true);
                }
            } catch (NoSuchMethodException unused) {
                Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str2));
            }
        }
        return method;
    }

    public static Method getMethod(String str, String str2, Class... clsArr) {
        Class cls = getClass(str);
        if (cls != null) {
            try {
                return cls.getMethod(str2, clsArr);
            } catch (NoSuchMethodException unused) {
                Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str2));
            }
        }
        return null;
    }

    public static Object invoke(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            Log.e("SeslBaseReflector", method.getName() + " IllegalAccessException", e);
            return null;
        } catch (IllegalArgumentException e2) {
            Log.e("SeslBaseReflector", method.getName() + " IllegalArgumentException", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("SeslBaseReflector", method.getName() + " InvocationTargetException", e3);
            return null;
        }
    }

    public static void set(Field field, Object obj, Object obj2) {
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalAccessException", e);
        } catch (IllegalArgumentException e2) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalArgumentException", e2);
        }
    }

    public static Method getMethod(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str));
            return null;
        }
    }

    public static Method getDeclaredMethod(Class cls, String str, Class... clsArr) {
        Method method;
        try {
            method = cls.getDeclaredMethod(str, clsArr);
            if (method != null) {
                try {
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                    Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str));
                    return method;
                }
            }
        } catch (NoSuchMethodException unused2) {
            method = null;
        }
        return method;
    }
}
