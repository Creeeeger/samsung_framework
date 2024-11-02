package com.android.systemui.pluginlock;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockDelegateApp {
    public PluginLockBasicManager mBasicManager;
    public ViewGroup mRootView;
    public final PluginLockUtils mUtils;

    public PluginLockDelegateApp(PluginLockUtils pluginLockUtils) {
        Log.d("PluginLockDelegateApp", "PluginLockDelegateApp, " + this);
        this.mUtils = pluginLockUtils;
    }

    public final void onBarStateChanged(int i) {
        Log.d("PluginLockDelegateApp", "onBarStateChanged ");
        PluginLockBasicManager pluginLockBasicManager = this.mBasicManager;
        if (pluginLockBasicManager != null) {
            pluginLockBasicManager.setBarState(i);
        }
    }

    public final void onWallpaperChanged(int i) {
        Log.d("PluginLockDelegateApp", "onWallpaperChanged :" + this.mBasicManager);
        PluginLockBasicManager pluginLockBasicManager = this.mBasicManager;
        if (pluginLockBasicManager != null) {
            pluginLockBasicManager.onLockWallpaperChanged(i);
        }
    }

    public final void onWallpaperConsumed(int i, boolean z) {
        StringBuilder sb = new StringBuilder("onWallpaperConsumed :");
        sb.append(this.mBasicManager);
        sb.append(", screen = ");
        sb.append(i);
        sb.append(", updateColor = ");
        ActionBarContextView$$ExternalSyntheticOutline0.m(sb, z, "PluginLockDelegateApp");
        PluginLockBasicManager pluginLockBasicManager = this.mBasicManager;
        if (pluginLockBasicManager != null) {
            pluginLockBasicManager.onWallpaperConsumed(i, z);
        }
    }

    public final void setBasicManager(PluginLockBasicManager pluginLockBasicManager) {
        Log.d("PluginLockDelegateApp", "setBasicManager, " + pluginLockBasicManager);
        this.mBasicManager = pluginLockBasicManager;
        if (pluginLockBasicManager != null) {
            setPanelView(pluginLockBasicManager);
        }
    }

    public final void setPanelView(PluginLockBasicManager pluginLockBasicManager) {
        ViewGroup viewGroup = this.mRootView;
        if (viewGroup != null) {
            View findViewById = this.mRootView.findViewById(viewGroup.getResources().getIdentifier("notification_panel", "id", "com.android.systemui"));
            int childCount = this.mRootView.getChildCount();
            int i = 0;
            while (i < childCount && findViewById != this.mRootView.getChildAt(i)) {
                i++;
            }
            ViewGroup viewGroup2 = (ViewGroup) this.mRootView.getChildAt(i);
            Log.d("PluginLockDelegateApp", "setPanelView :" + viewGroup2);
            if (viewGroup2 != null) {
                pluginLockBasicManager.setPanelView(viewGroup2);
                return;
            } else {
                Log.e("PluginLockDelegateApp", "setPanelView failed. panelView is null.");
                return;
            }
        }
        Log.e("PluginLockDelegateApp", "setPanelView failed. mRootView is null.");
    }
}
