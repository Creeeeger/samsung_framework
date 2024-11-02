package com.android.wm.shell.dagger;

import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideBackAnimationFactory implements Provider {
    public final Provider backAnimationControllerProvider;

    public WMShellBaseModule_ProvideBackAnimationFactory(Provider provider) {
        this.backAnimationControllerProvider = provider;
    }

    public static Optional provideBackAnimation(Optional optional) {
        Optional map = optional.map(new WMShellBaseModule$$ExternalSyntheticLambda0(8));
        Preconditions.checkNotNullFromProvides(map);
        return map;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideBackAnimation((Optional) this.backAnimationControllerProvider.get());
    }
}
