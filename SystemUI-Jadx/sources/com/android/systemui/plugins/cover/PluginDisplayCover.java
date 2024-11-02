package com.android.systemui.plugins.cover;

import com.android.systemui.plugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = PluginDisplayCover.ACTION, version = 1)
/* loaded from: classes2.dex */
public interface PluginDisplayCover extends PluginCover {
    public static final String ACTION = "com.samsung.systemui.action.PLUGIN_DISPLAY_COVER";
    public static final int VERSION = 1;

    default void onLockDisabledChanged(boolean z) {
    }

    default void onWindowFocusChanged(boolean z) {
    }

    default void onUserUnlocked() {
    }
}
