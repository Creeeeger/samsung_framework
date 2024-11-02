package com.android.systemui.pluginlock;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginWallpaperManager {
    static int getScreenId(int i) {
        if ((i & 16) != 0) {
            return 1;
        }
        return 0;
    }
}
