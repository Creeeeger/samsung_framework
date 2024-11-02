package kotlin.jvm;

import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.reflect.KClass;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class JvmClassMappingKt {
    public static final Class getJavaObjectType(KClass kClass) {
        Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
        if (!jClass.isPrimitive()) {
            return jClass;
        }
        String name = jClass.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    return Double.class;
                }
                return jClass;
            case 104431:
                if (name.equals("int")) {
                    return Integer.class;
                }
                return jClass;
            case 3039496:
                if (name.equals("byte")) {
                    return Byte.class;
                }
                return jClass;
            case 3052374:
                if (name.equals("char")) {
                    return Character.class;
                }
                return jClass;
            case 3327612:
                if (name.equals("long")) {
                    return Long.class;
                }
                return jClass;
            case 3625364:
                if (name.equals("void")) {
                    return Void.class;
                }
                return jClass;
            case 64711720:
                if (name.equals("boolean")) {
                    return Boolean.class;
                }
                return jClass;
            case 97526364:
                if (name.equals("float")) {
                    return Float.class;
                }
                return jClass;
            case 109413500:
                if (name.equals("short")) {
                    return Short.class;
                }
                return jClass;
            default:
                return jClass;
        }
    }
}
