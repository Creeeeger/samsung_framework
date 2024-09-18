package com.samsung.android.sume.core.filter;

import com.samsung.android.sume.core.plugin.PluginFixture;

/* loaded from: classes4.dex */
public abstract class PluginFilter<T extends PluginFixture<?>> implements MediaFilter {
    protected T plugin;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PluginFilter(T plugin) {
        this.plugin = plugin;
    }
}
