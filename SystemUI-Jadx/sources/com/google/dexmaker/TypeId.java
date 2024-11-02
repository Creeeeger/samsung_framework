package com.google.dexmaker;

import com.google.dexmaker.dx.rop.cst.CstType;
import com.google.dexmaker.dx.rop.type.Type;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TypeId {
    public static final TypeId BOOLEAN;
    public static final TypeId BYTE;
    public static final TypeId CHAR;
    public static final TypeId DOUBLE;
    public static final TypeId FLOAT;
    public static final TypeId INT;
    public static final TypeId LONG;
    public static final Map PRIMITIVE_TO_TYPE;
    public static final TypeId SHORT;
    public final CstType constant;
    public final String name;
    public final Type ropType;

    static {
        TypeId typeId = new TypeId(Type.BOOLEAN);
        BOOLEAN = typeId;
        TypeId typeId2 = new TypeId(Type.BYTE);
        BYTE = typeId2;
        TypeId typeId3 = new TypeId(Type.CHAR);
        CHAR = typeId3;
        TypeId typeId4 = new TypeId(Type.DOUBLE);
        DOUBLE = typeId4;
        TypeId typeId5 = new TypeId(Type.FLOAT);
        FLOAT = typeId5;
        TypeId typeId6 = new TypeId(Type.INT);
        INT = typeId6;
        TypeId typeId7 = new TypeId(Type.LONG);
        LONG = typeId7;
        TypeId typeId8 = new TypeId(Type.SHORT);
        SHORT = typeId8;
        TypeId typeId9 = new TypeId(Type.VOID);
        new TypeId(Type.OBJECT);
        new TypeId(Type.STRING);
        HashMap hashMap = new HashMap();
        PRIMITIVE_TO_TYPE = hashMap;
        hashMap.put(Boolean.TYPE, typeId);
        hashMap.put(Byte.TYPE, typeId2);
        hashMap.put(Character.TYPE, typeId3);
        hashMap.put(Double.TYPE, typeId4);
        hashMap.put(Float.TYPE, typeId5);
        hashMap.put(Integer.TYPE, typeId6);
        hashMap.put(Long.TYPE, typeId7);
        hashMap.put(Short.TYPE, typeId8);
        hashMap.put(Void.TYPE, typeId9);
    }

    public TypeId(String str, Type type) {
        if (str != null && type != null) {
            this.name = str;
            this.ropType = type;
            this.constant = CstType.intern(type);
            return;
        }
        throw null;
    }

    public static TypeId get(Class cls) {
        Type intern;
        if (cls.isPrimitive()) {
            return (TypeId) ((HashMap) PRIMITIVE_TO_TYPE).get(cls);
        }
        String replace = cls.getName().replace('.', '/');
        if (!cls.isArray()) {
            replace = "L" + replace + ';';
        }
        try {
            if (replace.equals("V")) {
                intern = Type.VOID;
            } else {
                intern = Type.intern(replace);
            }
            return new TypeId(replace, intern);
        } catch (NullPointerException unused) {
            throw new NullPointerException("descriptor == null");
        }
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof TypeId) && ((TypeId) obj).name.equals(this.name)) {
            return true;
        }
        return false;
    }

    public final MethodId getMethod(TypeId typeId, String str, TypeId... typeIdArr) {
        return new MethodId(this, typeId, str, new TypeList(typeIdArr));
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final String toString() {
        return this.name;
    }

    public TypeId(Type type) {
        this(type.descriptor, type);
    }
}
