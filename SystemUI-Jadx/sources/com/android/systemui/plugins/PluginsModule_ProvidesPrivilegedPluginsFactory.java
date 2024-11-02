package com.android.systemui.plugins;

import android.content.Context;
import dagger.internal.Preconditions;
import java.util.List;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginsModule_ProvidesPrivilegedPluginsFactory implements Provider {
    private final Provider contextProvider;

    public PluginsModule_ProvidesPrivilegedPluginsFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static PluginsModule_ProvidesPrivilegedPluginsFactory create(Provider provider) {
        return new PluginsModule_ProvidesPrivilegedPluginsFactory(provider);
    }

    public static List<String> providesPrivilegedPlugins(Context context) {
        List<String> providesPrivilegedPlugins = PluginsModule.providesPrivilegedPlugins(context);
        Preconditions.checkNotNullFromProvides(providesPrivilegedPlugins);
        return providesPrivilegedPlugins;
    }

    @Override // javax.inject.Provider
    public List<String> get() {
        return providesPrivilegedPlugins((Context) this.contextProvider.get());
    }
}
