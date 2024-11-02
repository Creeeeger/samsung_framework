package com.google.dexmaker.dx.rop.cst;

import com.google.dexmaker.dx.rop.type.Type;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CstType extends TypedConstant {
    public static final HashMap interns = new HashMap(100);
    public final Type type;

    static {
        intern(Type.OBJECT);
        intern(Type.BOOLEAN_CLASS);
        intern(Type.BYTE_CLASS);
        intern(Type.CHARACTER_CLASS);
        intern(Type.DOUBLE_CLASS);
        intern(Type.FLOAT_CLASS);
        intern(Type.LONG_CLASS);
        intern(Type.INTEGER_CLASS);
        intern(Type.SHORT_CLASS);
        intern(Type.VOID_CLASS);
        intern(Type.BOOLEAN_ARRAY);
        intern(Type.BYTE_ARRAY);
        intern(Type.CHAR_ARRAY);
        intern(Type.DOUBLE_ARRAY);
        intern(Type.FLOAT_ARRAY);
        intern(Type.LONG_ARRAY);
        intern(Type.INT_ARRAY);
        intern(Type.SHORT_ARRAY);
    }

    public CstType(Type type) {
        if (type != null) {
            if (type != Type.KNOWN_NULL) {
                this.type = type;
                return;
            }
            throw new UnsupportedOperationException("KNOWN_NULL is not representable");
        }
        throw new NullPointerException("type == null");
    }

    public static CstType intern(Type type) {
        CstType cstType;
        HashMap hashMap = interns;
        synchronized (hashMap) {
            cstType = (CstType) hashMap.get(type);
            if (cstType == null) {
                cstType = new CstType(type);
                hashMap.put(type, cstType);
            }
        }
        return cstType;
    }

    @Override // com.google.dexmaker.dx.rop.cst.Constant
    public final int compareTo0(Constant constant) {
        return this.type.descriptor.compareTo(((CstType) constant).type.descriptor);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CstType) || this.type != ((CstType) obj).type) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.type.hashCode();
    }

    @Override // com.google.dexmaker.dx.util.ToHuman
    public final String toHuman() {
        return this.type.toHuman();
    }

    public final String toString() {
        return "type{" + toHuman() + '}';
    }
}
