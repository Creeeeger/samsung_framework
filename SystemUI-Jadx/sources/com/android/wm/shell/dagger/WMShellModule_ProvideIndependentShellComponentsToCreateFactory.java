package com.android.wm.shell.dagger;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvideIndependentShellComponentsToCreateFactory implements Provider {
    public final Provider defaultMixedHandlerProvider;
    public final Provider desktopModeControllerProvider;

    public WMShellModule_ProvideIndependentShellComponentsToCreateFactory(Provider provider, Provider provider2) {
        this.defaultMixedHandlerProvider = provider;
        this.desktopModeControllerProvider = provider2;
    }

    public static Object provideIndependentShellComponentsToCreate$1() {
        return new Object();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new Object();
    }
}
