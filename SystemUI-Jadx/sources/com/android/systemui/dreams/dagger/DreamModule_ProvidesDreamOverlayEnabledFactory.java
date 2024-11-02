package com.android.systemui.dreams.dagger;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DreamModule_ProvidesDreamOverlayEnabledFactory implements Provider {
    public final Provider componentProvider;
    public final Provider packageManagerProvider;

    public DreamModule_ProvidesDreamOverlayEnabledFactory(Provider provider, Provider provider2) {
        this.packageManagerProvider = provider;
        this.componentProvider = provider2;
    }

    public static Boolean providesDreamOverlayEnabled(PackageManager packageManager, ComponentName componentName) {
        Boolean bool;
        try {
            bool = Boolean.valueOf(packageManager.getServiceInfo(componentName, 128).enabled);
        } catch (PackageManager.NameNotFoundException unused) {
            bool = Boolean.FALSE;
        }
        Preconditions.checkNotNullFromProvides(bool);
        return bool;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesDreamOverlayEnabled((PackageManager) this.packageManagerProvider.get(), (ComponentName) this.componentProvider.get());
    }
}
