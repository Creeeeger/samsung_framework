package com.android.systemui.pluginlock;

import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PluginLockManagerImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PluginLockManagerImpl f$0;

    public /* synthetic */ PluginLockManagerImpl$$ExternalSyntheticLambda0(PluginLockManagerImpl pluginLockManagerImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = pluginLockManagerImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((PluginWallpaperManagerImpl) this.f$0.mPluginWallpaperManager).onLockWallpaperChanged(0);
                return;
            case 1:
                this.f$0.disableByMode();
                return;
            default:
                PluginLockManagerImpl pluginLockManagerImpl = this.f$0;
                pluginLockManagerImpl.getClass();
                Log.d("PluginLockManagerImpl", "onUserSwitchComplete for owner");
                pluginLockManagerImpl.setLatestPluginInstance(false);
                pluginLockManagerImpl.mIsSwitchingToSub = false;
                return;
        }
    }
}
