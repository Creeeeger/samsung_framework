package com.android.wm.shell.dagger;

import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideRecentTasksFactory implements Provider {
    public final Provider recentTasksControllerProvider;

    public WMShellBaseModule_ProvideRecentTasksFactory(Provider provider) {
        this.recentTasksControllerProvider = provider;
    }

    public static Optional provideRecentTasks(Optional optional) {
        Optional map = optional.map(new WMShellBaseModule$$ExternalSyntheticLambda0(2));
        Preconditions.checkNotNullFromProvides(map);
        return map;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideRecentTasks((Optional) this.recentTasksControllerProvider.get());
    }
}
