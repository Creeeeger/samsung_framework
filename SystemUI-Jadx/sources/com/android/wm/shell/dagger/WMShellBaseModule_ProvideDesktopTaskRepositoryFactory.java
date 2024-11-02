package com.android.wm.shell.dagger;

import com.android.wm.shell.desktopmode.DesktopModeStatus;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideDesktopTaskRepositoryFactory implements Provider {
    public final Provider desktopModeTaskRepositoryProvider;

    public WMShellBaseModule_ProvideDesktopTaskRepositoryFactory(Provider provider) {
        this.desktopModeTaskRepositoryProvider = provider;
    }

    public static Optional provideDesktopTaskRepository(Optional optional) {
        Optional empty;
        if (DesktopModeStatus.isAnyEnabled()) {
            empty = optional.map(new WMShellBaseModule$$ExternalSyntheticLambda0(4));
        } else {
            empty = Optional.empty();
        }
        Preconditions.checkNotNullFromProvides(empty);
        return empty;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideDesktopTaskRepository((Optional) this.desktopModeTaskRepositoryProvider.get());
    }
}
