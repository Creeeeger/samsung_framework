package com.samsung.systemui.splugins;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SPluginDependencyProvider_Factory implements Provider {
    private final Provider managerProvider;

    public SPluginDependencyProvider_Factory(Provider provider) {
        this.managerProvider = provider;
    }

    public static SPluginDependencyProvider_Factory create(Provider provider) {
        return new SPluginDependencyProvider_Factory(provider);
    }

    public static SPluginDependencyProvider newInstance(SPluginManager sPluginManager) {
        return new SPluginDependencyProvider(sPluginManager);
    }

    @Override // javax.inject.Provider
    public SPluginDependencyProvider get() {
        return newInstance((SPluginManager) this.managerProvider.get());
    }
}
