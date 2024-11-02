package com.android.systemui.pluginlock;

import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PluginLockManagerImpl$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PluginLockManagerImpl f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ PluginLockManagerImpl$$ExternalSyntheticLambda3(PluginLockManagerImpl pluginLockManagerImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = pluginLockManagerImpl;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                PluginLockManagerImpl pluginLockManagerImpl = this.f$0;
                int i = this.f$1;
                pluginLockManagerImpl.getClass();
                Log.d("PluginLockManagerImpl", "onUserSwitchComplete for " + i);
                pluginLockManagerImpl.mIsSwitchingToSub = false;
                return;
            default:
                PluginLockManagerImpl pluginLockManagerImpl2 = this.f$0;
                int i2 = this.f$1;
                pluginLockManagerImpl2.updatePluginLockMode(i2, pluginLockManagerImpl2.isEnabledFromSettingHelper(i2), false);
                return;
        }
    }
}
