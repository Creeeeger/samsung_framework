package com.google.dexmaker.dx.rop.type;

import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Prototype implements Comparable {
    public static final HashMap internTable = new HashMap(500);
    public final String descriptor;
    public final StdTypeList parameterTypes;
    public final Type returnType;

    private Prototype(String str, Type type, StdTypeList stdTypeList) {
        if (str != null) {
            if (type != null) {
                if (stdTypeList != null) {
                    this.descriptor = str;
                    this.returnType = type;
                    this.parameterTypes = stdTypeList;
                    return;
                }
                throw new NullPointerException("parameterTypes == null");
            }
            throw new NullPointerException("returnType == null");
        }
        throw new NullPointerException("descriptor == null");
    }

    public static Prototype intern(String str) {
        Prototype prototype;
        Type intern;
        int i;
        if (str != null) {
            HashMap hashMap = internTable;
            synchronized (hashMap) {
                prototype = (Prototype) hashMap.get(str);
            }
            if (prototype != null) {
                return prototype;
            }
            int length = str.length();
            if (str.charAt(0) == '(') {
                int i2 = 0;
                int i3 = 1;
                while (true) {
                    if (i3 < length) {
                        char charAt = str.charAt(i3);
                        if (charAt == ')') {
                            break;
                        }
                        if (charAt >= 'A' && charAt <= 'Z') {
                            i2++;
                        }
                        i3++;
                    } else {
                        i3 = 0;
                        break;
                    }
                }
                if (i3 != 0 && i3 != length - 1) {
                    if (str.indexOf(41, i3 + 1) == -1) {
                        Type[] typeArr = new Type[i2];
                        int i4 = 0;
                        int i5 = 1;
                        while (true) {
                            char charAt2 = str.charAt(i5);
                            if (charAt2 == ')') {
                                String substring = str.substring(i5 + 1);
                                HashMap hashMap2 = Type.internTable;
                                try {
                                    if (substring.equals("V")) {
                                        intern = Type.VOID;
                                    } else {
                                        intern = Type.intern(substring);
                                    }
                                    StdTypeList stdTypeList = new StdTypeList(i4);
                                    for (int i6 = 0; i6 < i4; i6++) {
                                        stdTypeList.set(i6, typeArr[i6]);
                                    }
                                    Prototype prototype2 = new Prototype(str, intern, stdTypeList);
                                    HashMap hashMap3 = internTable;
                                    synchronized (hashMap3) {
                                        String str2 = prototype2.descriptor;
                                        Prototype prototype3 = (Prototype) hashMap3.get(str2);
                                        if (prototype3 != null) {
                                            return prototype3;
                                        }
                                        hashMap3.put(str2, prototype2);
                                        return prototype2;
                                    }
                                } catch (NullPointerException unused) {
                                    throw new NullPointerException("descriptor == null");
                                }
                            }
                            int i7 = i5;
                            while (charAt2 == '[') {
                                i7++;
                                charAt2 = str.charAt(i7);
                            }
                            if (charAt2 == 'L') {
                                int indexOf = str.indexOf(59, i7);
                                if (indexOf != -1) {
                                    i = indexOf + 1;
                                } else {
                                    throw new IllegalArgumentException("bad descriptor");
                                }
                            } else {
                                i = i7 + 1;
                            }
                            typeArr[i4] = Type.intern(str.substring(i5, i));
                            i4++;
                            i5 = i;
                        }
                    } else {
                        throw new IllegalArgumentException("bad descriptor");
                    }
                } else {
                    throw new IllegalArgumentException("bad descriptor");
                }
            } else {
                throw new IllegalArgumentException("bad descriptor");
            }
        } else {
            throw new NullPointerException("descriptor == null");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Prototype)) {
            return false;
        }
        return this.descriptor.equals(((Prototype) obj).descriptor);
    }

    public final int hashCode() {
        return this.descriptor.hashCode();
    }

    public final String toString() {
        return this.descriptor;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Prototype prototype) {
        if (this == prototype) {
            return 0;
        }
        int compareTo = this.returnType.descriptor.compareTo(prototype.returnType.descriptor);
        if (compareTo != 0) {
            return compareTo;
        }
        int length = this.parameterTypes.arr.length;
        int length2 = prototype.parameterTypes.arr.length;
        int min = Math.min(length, length2);
        for (int i = 0; i < min; i++) {
            int compareTo2 = this.parameterTypes.get(i).descriptor.compareTo(prototype.parameterTypes.get(i).descriptor);
            if (compareTo2 != 0) {
                return compareTo2;
            }
        }
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }
}
