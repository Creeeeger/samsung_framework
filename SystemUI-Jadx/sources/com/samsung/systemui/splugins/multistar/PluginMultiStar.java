package com.samsung.systemui.splugins.multistar;

import com.samsung.systemui.splugins.SPlugin;
import com.samsung.systemui.splugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = PluginMultiStar.ACTION, version = PluginMultiStar.VERSION)
/* loaded from: classes3.dex */
public interface PluginMultiStar extends SPlugin {
    public static final String ACTION = "com.samsung.systemui.action.PLUGIN_MULTISTAR";
    public static final int VERSION = 7000;

    PluginDockedStackListener getDockedStackListener();

    void init(PluginMultiStarSystemProxy pluginMultiStarSystemProxy);

    boolean onLongPressRecents();
}
