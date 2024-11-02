package com.android.systemui.plugins;

import android.content.Context;
import com.android.systemui.plugins.Plugin;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginListener<T extends Plugin> {
    default boolean onPluginAttached(PluginLifecycleManager<T> pluginLifecycleManager) {
        return true;
    }

    default void onPluginLoaded(T t, Context context, PluginLifecycleManager<T> pluginLifecycleManager) {
        onPluginConnected(t, context);
    }

    default void onPluginUnloaded(T t, PluginLifecycleManager<T> pluginLifecycleManager) {
        onPluginDisconnected(t);
    }

    default void onPluginDetached(PluginLifecycleManager<T> pluginLifecycleManager) {
    }

    @Deprecated
    default void onPluginDisconnected(T t) {
    }

    @Deprecated
    default void onPluginConnected(T t, Context context) {
    }
}
