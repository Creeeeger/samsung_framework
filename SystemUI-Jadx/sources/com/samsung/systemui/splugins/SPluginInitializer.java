package com.samsung.systemui.splugins;

import android.content.Context;
import android.os.Looper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface SPluginInitializer {
    String[] getAllowedPlugins(Context context);

    Looper getBgLooper();

    SPluginEnabler getPluginEnabler(Context context);

    void handleWtfs();

    void onPluginManagerInit();
}
