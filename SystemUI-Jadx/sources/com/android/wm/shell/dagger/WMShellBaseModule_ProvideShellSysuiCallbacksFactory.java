package com.android.wm.shell.dagger;

import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInterface;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideShellSysuiCallbacksFactory implements Provider {
    public final Provider createTriggerProvider;
    public final Provider shellControllerProvider;

    public WMShellBaseModule_ProvideShellSysuiCallbacksFactory(Provider provider, Provider provider2) {
        this.createTriggerProvider = provider;
        this.shellControllerProvider = provider2;
    }

    public static ShellInterface provideShellSysuiCallbacks(ShellController shellController) {
        ShellController.ShellInterfaceImpl shellInterfaceImpl = shellController.mImpl;
        Preconditions.checkNotNullFromProvides(shellInterfaceImpl);
        return shellInterfaceImpl;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        this.createTriggerProvider.get();
        ShellController.ShellInterfaceImpl shellInterfaceImpl = ((ShellController) this.shellControllerProvider.get()).mImpl;
        Preconditions.checkNotNullFromProvides(shellInterfaceImpl);
        return shellInterfaceImpl;
    }
}
