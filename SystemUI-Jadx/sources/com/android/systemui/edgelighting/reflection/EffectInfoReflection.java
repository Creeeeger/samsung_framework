package com.android.systemui.edgelighting.reflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EffectInfoReflection extends AbstractBaseReflection {
    public final Object mInstance;

    public EffectInfoReflection(Class<?> cls) {
        super(cls);
        this.mInstance = createInstance(null, new Object[0]);
    }

    @Override // com.android.systemui.edgelighting.reflection.AbstractBaseReflection
    public final String getBaseClassName() {
        return "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo";
    }
}
