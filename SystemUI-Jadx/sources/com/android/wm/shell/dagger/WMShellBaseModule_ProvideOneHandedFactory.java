package com.android.wm.shell.dagger;

import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideOneHandedFactory implements Provider {
    public final Provider oneHandedControllerProvider;

    public WMShellBaseModule_ProvideOneHandedFactory(Provider provider) {
        this.oneHandedControllerProvider = provider;
    }

    public static Optional provideOneHanded(Optional optional) {
        Optional map = optional.map(new WMShellBaseModule$$ExternalSyntheticLambda0(9));
        Preconditions.checkNotNullFromProvides(map);
        return map;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideOneHanded((Optional) this.oneHandedControllerProvider.get());
    }
}
