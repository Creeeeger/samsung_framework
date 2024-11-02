package com.android.systemui.unfold;

import com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig;
import com.android.systemui.unfold.config.UnfoldTransitionConfig;
import com.android.wm.shell.unfold.ShellUnfoldProgressProvider;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldTransitionModule_ProvideShellProgressProviderFactory implements Provider {
    public final Provider configProvider;
    public final UnfoldTransitionModule module;
    public final Provider providerProvider;
    public final Provider unfoldOnlyProvider;

    public UnfoldTransitionModule_ProvideShellProgressProviderFactory(UnfoldTransitionModule unfoldTransitionModule, Provider provider, Provider provider2, Provider provider3) {
        this.module = unfoldTransitionModule;
        this.configProvider = provider;
        this.providerProvider = provider2;
        this.unfoldOnlyProvider = provider3;
    }

    public static ShellUnfoldProgressProvider provideShellProgressProvider(UnfoldTransitionModule unfoldTransitionModule, UnfoldTransitionConfig unfoldTransitionConfig, Provider provider, Provider provider2) {
        Optional optional;
        UnfoldTransitionProgressProvider unfoldTransitionProgressProvider;
        unfoldTransitionModule.getClass();
        if (((Boolean) ((ResourceUnfoldTransitionConfig) unfoldTransitionConfig).isEnabled$delegate.getValue()).booleanValue()) {
            if (!UnfoldTransitionModuleKt.ENABLE_FOLD_TASK_ANIMATIONS) {
                provider = provider2;
            }
        } else {
            provider = null;
        }
        if (provider != null && (optional = (Optional) provider.get()) != null && (unfoldTransitionProgressProvider = (UnfoldTransitionProgressProvider) optional.orElse(null)) != null) {
            return new UnfoldProgressProvider(unfoldTransitionProgressProvider);
        }
        return ShellUnfoldProgressProvider.NO_PROVIDER;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideShellProgressProvider(this.module, (UnfoldTransitionConfig) this.configProvider.get(), this.providerProvider, this.unfoldOnlyProvider);
    }
}
