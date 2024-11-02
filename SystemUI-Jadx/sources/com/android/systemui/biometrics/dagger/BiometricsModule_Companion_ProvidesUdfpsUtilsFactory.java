package com.android.systemui.biometrics.dagger;

import com.android.settingslib.udfps.UdfpsUtils;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricsModule_Companion_ProvidesUdfpsUtilsFactory implements Provider {
    public static UdfpsUtils providesUdfpsUtils() {
        BiometricsModule.Companion.getClass();
        return new UdfpsUtils();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesUdfpsUtils();
    }
}
