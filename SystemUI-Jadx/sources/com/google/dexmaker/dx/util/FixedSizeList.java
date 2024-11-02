package com.google.dexmaker.dx.util;

import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class FixedSizeList extends MutabilityControl implements ToHuman {
    public final Object[] arr;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public FixedSizeList(int r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L4
            r0 = 1
            goto L5
        L4:
            r0 = 0
        L5:
            r1.<init>(r0)
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.NegativeArraySizeException -> Ld
            r1.arr = r2     // Catch: java.lang.NegativeArraySizeException -> Ld
            return
        Ld:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "size < 0"
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.dexmaker.dx.util.FixedSizeList.<init>(int):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.arr, ((FixedSizeList) obj).arr);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.arr);
    }

    @Override // com.google.dexmaker.dx.util.ToHuman
    public final String toHuman() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + '{', true);
    }

    public final String toString() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + '{', false);
    }

    public final String toString0(String str, boolean z) {
        Object[] objArr = this.arr;
        int length = objArr.length;
        StringBuffer stringBuffer = new StringBuffer((length * 10) + 10);
        if (str != null) {
            stringBuffer.append(str);
        }
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuffer.append(", ");
            }
            if (z) {
                stringBuffer.append(((ToHuman) objArr[i]).toHuman());
            } else {
                stringBuffer.append(objArr[i]);
            }
        }
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
