package com.google.gson.internal;

import java.lang.reflect.Modifier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class UnsafeAllocator {
    public static void assertInstantiable(Class cls) {
        int modifiers = cls.getModifiers();
        if (!Modifier.isInterface(modifiers)) {
            if (!Modifier.isAbstract(modifiers)) {
                return;
            } else {
                throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: ".concat(cls.getName()));
            }
        }
        throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: ".concat(cls.getName()));
    }

    public abstract Object newInstance(Class cls);
}
