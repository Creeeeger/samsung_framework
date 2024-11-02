package com.android.systemui.dagger;

import android.content.Context;
import com.android.systemui.navigationbar.layout.LayoutProviderContainerImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungServicesModule_ProvidesLayoutProviderContainerFactory implements Provider {
    public final Provider contextProvider;

    public SamsungServicesModule_ProvidesLayoutProviderContainerFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static LayoutProviderContainerImpl providesLayoutProviderContainer(Context context) {
        return new LayoutProviderContainerImpl(context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new LayoutProviderContainerImpl((Context) this.contextProvider.get());
    }
}
