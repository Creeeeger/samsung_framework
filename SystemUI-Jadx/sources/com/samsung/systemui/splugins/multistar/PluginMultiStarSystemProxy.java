package com.samsung.systemui.splugins.multistar;

import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface PluginMultiStarSystemProxy {
    Rect getStableInsets();

    void setDividerResizeMode(boolean z);

    void setLongLiveApp(String str);

    void startDismissSplit(boolean z);

    void toggleSplitScreen();
}
