package com.google.dexmaker;

import com.google.dexmaker.dx.rop.type.StdTypeList;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TypeList {
    public final StdTypeList ropTypes;
    public final TypeId[] types;

    public TypeList(TypeId[] typeIdArr) {
        this.types = (TypeId[]) typeIdArr.clone();
        this.ropTypes = new StdTypeList(typeIdArr.length);
        for (int i = 0; i < typeIdArr.length; i++) {
            this.ropTypes.set(i, typeIdArr[i].ropType);
        }
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof TypeList) && Arrays.equals(((TypeList) obj).types, this.types)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.types);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            TypeId[] typeIdArr = this.types;
            if (i < typeIdArr.length) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(typeIdArr[i]);
                i++;
            } else {
                return sb.toString();
            }
        }
    }
}
