package com.samsung.systemui.splugins.slimindicator;

import com.samsung.systemui.splugins.SPlugin;
import com.samsung.systemui.splugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR", version = 7005)
/* loaded from: classes3.dex */
public interface SPluginSlimIndicatorBox extends SPlugin {
    public static final String ACTION = "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR";
    public static final String BLACK_LIST_DB = "";
    public static final int MAJOR_VERSION = 7;
    public static final int MINOR_VERSION = 5;
    public static final int VERSION = 7005;
    public static final SPluginSlimIndicatorModel mModel = null;

    String getBlackListDB();

    SPluginSlimIndicatorBoxCallback getBoxCallback();

    SPluginSlimIndicatorModel getModel();

    void onPluginConfigurationChanged();

    void onPluginConnected();

    void onPluginDisconnected();
}
