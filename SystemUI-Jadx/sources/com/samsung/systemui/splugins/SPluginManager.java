package com.samsung.systemui.splugins;

import android.text.TextUtils;
import com.samsung.systemui.splugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface SPluginManager {
    public static final String NOTIFICATION_CHANNEL_ID = "ALR";
    public static final String PLUGIN_CHANGED = "com.android.systemui.action.PLUGIN_CHANGED";

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static class Helper {
        public static <P> String getAction(Class<P> cls) {
            ProvidesInterface providesInterface = (ProvidesInterface) cls.getDeclaredAnnotation(ProvidesInterface.class);
            if (providesInterface != null) {
                if (!TextUtils.isEmpty(providesInterface.action())) {
                    return providesInterface.action();
                }
                throw new RuntimeException(cls + " doesn't provide an action");
            }
            throw new RuntimeException(cls + " doesn't provide an interface");
        }
    }

    <T extends SPlugin> void addPluginListener(SPluginListener<T> sPluginListener, Class<?> cls);

    <T extends SPlugin> void addPluginListener(SPluginListener<T> sPluginListener, Class<?> cls, boolean z);

    <T extends SPlugin> void addPluginListener(SPluginListener<T> sPluginListener, Class<?> cls, boolean z, boolean z2);

    <T extends SPlugin> void addPluginListener(String str, SPluginListener<T> sPluginListener, Class<?> cls);

    <T extends SPlugin> void addPluginListener(String str, SPluginListener<T> sPluginListener, Class cls, boolean z, boolean z2);

    <T> boolean dependsOn(SPlugin sPlugin, Class<T> cls);

    String[] getAllowedPlugins();

    <T extends SPlugin> T getOneShotPlugin(Class<T> cls);

    <T extends SPlugin> T getOneShotPlugin(String str, Class<?> cls);

    void removePluginListener(SPluginListener<?> sPluginListener);
}
