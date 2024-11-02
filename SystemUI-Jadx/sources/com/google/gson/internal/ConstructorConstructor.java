package com.google.gson.internal;

import java.lang.reflect.Type;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConstructorConstructor {
    public final Map instanceCreators;
    public final boolean useJdkUnsafe;

    public ConstructorConstructor(Map<Type, Object> map, boolean z) {
        this.instanceCreators = map;
        this.useJdkUnsafe = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x00a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.gson.internal.ObjectConstructor get(com.google.gson.reflect.TypeToken r11) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.ConstructorConstructor.get(com.google.gson.reflect.TypeToken):com.google.gson.internal.ObjectConstructor");
    }

    public final String toString() {
        return this.instanceCreators.toString();
    }
}
