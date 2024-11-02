package com.android.systemui.plugins;

import android.content.ComponentName;
import com.android.systemui.plugins.Plugin;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginLifecycleManager<T extends Plugin> {
    ComponentName getComponentName();

    String getPackage();

    T getPlugin();

    default boolean isLoaded() {
        if (getPlugin() != null) {
            return true;
        }
        return false;
    }

    void loadPlugin();

    void unloadPlugin();
}
