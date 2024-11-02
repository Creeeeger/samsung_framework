package com.android.wm.shell.dagger;

import com.android.wm.shell.unfold.ShellUnfoldProgressProvider;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideUnfoldControllerFactory implements Provider {
    public final Provider fullscreenUnfoldControllerProvider;
    public final Provider progressProvider;

    public WMShellBaseModule_ProvideUnfoldControllerFactory(Provider provider, Provider provider2) {
        this.fullscreenUnfoldControllerProvider = provider;
        this.progressProvider = provider2;
    }

    public static Optional provideUnfoldController(Lazy lazy, Optional optional) {
        Optional empty;
        if (optional.isPresent() && optional.get() != ShellUnfoldProgressProvider.NO_PROVIDER) {
            empty = (Optional) lazy.get();
        } else {
            empty = Optional.empty();
        }
        Preconditions.checkNotNullFromProvides(empty);
        return empty;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideUnfoldController(DoubleCheck.lazy(this.fullscreenUnfoldControllerProvider), (Optional) this.progressProvider.get());
    }
}
