package com.android.systemui.plugins.keyguardstatusview;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginSystemUIWallpaperUtils {
    int getColorByName(String str);

    boolean hasAdaptiveColorResult();

    boolean isOpenThemeLook();

    boolean isWhiteKeyguardWallpaper(String str);

    boolean isWhiteSubUiWallpaper(int i);

    void registerCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback, int i);

    void registerSubUiCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback, int i);

    void removeCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback);

    void removeSubUiCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback);
}
