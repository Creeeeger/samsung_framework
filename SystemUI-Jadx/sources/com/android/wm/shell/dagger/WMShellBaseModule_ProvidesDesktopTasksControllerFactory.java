package com.android.wm.shell.dagger;

import com.android.wm.shell.desktopmode.DesktopModeStatus;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvidesDesktopTasksControllerFactory implements Provider {
    public final Provider desktopTasksControllerProvider;

    public WMShellBaseModule_ProvidesDesktopTasksControllerFactory(Provider provider) {
        this.desktopTasksControllerProvider = provider;
    }

    public static Optional providesDesktopTasksController(Optional optional) {
        Optional empty;
        if (DesktopModeStatus.IS_PROTO2_ENABLED) {
            empty = optional.map(new WMShellBaseModule$$ExternalSyntheticLambda0(0));
        } else {
            empty = Optional.empty();
        }
        Preconditions.checkNotNullFromProvides(empty);
        return empty;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesDesktopTasksController((Optional) this.desktopTasksControllerProvider.get());
    }
}
