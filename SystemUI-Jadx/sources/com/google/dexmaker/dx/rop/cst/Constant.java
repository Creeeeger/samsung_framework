package com.google.dexmaker.dx.rop.cst;

import com.google.dexmaker.dx.util.ToHuman;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class Constant implements ToHuman, Comparable {
    public abstract int compareTo0(Constant constant);

    public abstract void typeName();

    @Override // java.lang.Comparable
    public final int compareTo(Constant constant) {
        Class<?> cls = getClass();
        Class<?> cls2 = constant.getClass();
        if (cls != cls2) {
            return cls.getName().compareTo(cls2.getName());
        }
        return compareTo0(constant);
    }
}
