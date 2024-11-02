package com.android.systemui.edgelighting.reflection;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AbsEdgeLightingEffectReflection extends AbstractBaseReflection {
    public final ClassLoader mClassLoader;
    public final Object mInstance;

    public AbsEdgeLightingEffectReflection(Class<?> cls, Context context, Context context2, ClassLoader classLoader) {
        super(cls);
        this.mClassLoader = classLoader;
        this.mInstance = createInstance(new Class[]{Context.class, Context.class}, context, context2);
    }

    @Override // com.android.systemui.edgelighting.reflection.AbstractBaseReflection
    public final String getBaseClassName() {
        return "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect";
    }
}
