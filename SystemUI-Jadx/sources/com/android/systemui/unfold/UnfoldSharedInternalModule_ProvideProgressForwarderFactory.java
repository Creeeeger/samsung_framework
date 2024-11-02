package com.android.systemui.unfold;

import com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig;
import com.android.systemui.unfold.config.UnfoldTransitionConfig;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldSharedInternalModule_ProvideProgressForwarderFactory implements Provider {
    public final Provider configProvider;
    public final UnfoldSharedInternalModule module;
    public final Provider progressForwarderProvider;

    public UnfoldSharedInternalModule_ProvideProgressForwarderFactory(UnfoldSharedInternalModule unfoldSharedInternalModule, Provider provider, Provider provider2) {
        this.module = unfoldSharedInternalModule;
        this.configProvider = provider;
        this.progressForwarderProvider = provider2;
    }

    public static Optional provideProgressForwarder(UnfoldSharedInternalModule unfoldSharedInternalModule, UnfoldTransitionConfig unfoldTransitionConfig, Provider provider) {
        unfoldSharedInternalModule.getClass();
        if (!((Boolean) ((ResourceUnfoldTransitionConfig) unfoldTransitionConfig).isEnabled$delegate.getValue()).booleanValue()) {
            return Optional.empty();
        }
        return Optional.of(provider.get());
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideProgressForwarder(this.module, (UnfoldTransitionConfig) this.configProvider.get(), this.progressForwarderProvider);
    }
}
