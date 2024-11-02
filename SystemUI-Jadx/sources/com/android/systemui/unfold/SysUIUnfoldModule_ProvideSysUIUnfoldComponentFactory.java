package com.android.systemui.unfold;

import com.android.systemui.unfold.SysUIUnfoldComponent;
import com.android.systemui.unfold.util.NaturalRotationUnfoldProgressProvider;
import com.android.systemui.unfold.util.ScopedUnfoldTransitionProgressProvider;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory implements Provider {
    public final Provider factoryProvider;
    public final SysUIUnfoldModule module;
    public final Provider providerProvider;
    public final Provider rotationProvider;
    public final Provider scopedProvider;

    public SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory(SysUIUnfoldModule sysUIUnfoldModule, Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.module = sysUIUnfoldModule;
        this.providerProvider = provider;
        this.rotationProvider = provider2;
        this.scopedProvider = provider3;
        this.factoryProvider = provider4;
    }

    public static Optional provideSysUIUnfoldComponent(SysUIUnfoldModule sysUIUnfoldModule, Optional optional, Optional optional2, Optional optional3, SysUIUnfoldComponent.Factory factory) {
        sysUIUnfoldModule.getClass();
        UnfoldTransitionProgressProvider unfoldTransitionProgressProvider = (UnfoldTransitionProgressProvider) optional.orElse(null);
        NaturalRotationUnfoldProgressProvider naturalRotationUnfoldProgressProvider = (NaturalRotationUnfoldProgressProvider) optional2.orElse(null);
        ScopedUnfoldTransitionProgressProvider scopedUnfoldTransitionProgressProvider = (ScopedUnfoldTransitionProgressProvider) optional3.orElse(null);
        if (unfoldTransitionProgressProvider != null && naturalRotationUnfoldProgressProvider != null && scopedUnfoldTransitionProgressProvider != null) {
            return Optional.of(factory.create(unfoldTransitionProgressProvider, naturalRotationUnfoldProgressProvider, scopedUnfoldTransitionProgressProvider));
        }
        return Optional.empty();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideSysUIUnfoldComponent(this.module, (Optional) this.providerProvider.get(), (Optional) this.rotationProvider.get(), (Optional) this.scopedProvider.get(), (SysUIUnfoldComponent.Factory) this.factoryProvider.get());
    }
}
