package com.android.systemui.dagger;

import com.android.systemui.navigationbar.bandaid.BandAidPackFactory;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungServicesModule_ProvidesBandAidPackFactoryFactory implements Provider {
    public static BandAidPackFactory providesBandAidPackFactory() {
        return new BandAidPackFactory();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new BandAidPackFactory();
    }
}
