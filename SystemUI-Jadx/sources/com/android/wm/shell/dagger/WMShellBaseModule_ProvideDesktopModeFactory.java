package com.android.wm.shell.dagger;

import com.android.wm.shell.desktopmode.DesktopModeStatus;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideDesktopModeFactory implements Provider {
    public final Provider desktopModeControllerProvider;
    public final Provider desktopTasksControllerProvider;

    public WMShellBaseModule_ProvideDesktopModeFactory(Provider provider, Provider provider2) {
        this.desktopModeControllerProvider = provider;
        this.desktopTasksControllerProvider = provider2;
    }

    public static Optional provideDesktopMode(Optional optional, Optional optional2) {
        Optional map;
        if (DesktopModeStatus.IS_PROTO2_ENABLED) {
            map = optional2.map(new WMShellBaseModule$$ExternalSyntheticLambda0(6));
        } else {
            map = optional.map(new WMShellBaseModule$$ExternalSyntheticLambda0(7));
        }
        Preconditions.checkNotNullFromProvides(map);
        return map;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideDesktopMode((Optional) this.desktopModeControllerProvider.get(), (Optional) this.desktopTasksControllerProvider.get());
    }
}
