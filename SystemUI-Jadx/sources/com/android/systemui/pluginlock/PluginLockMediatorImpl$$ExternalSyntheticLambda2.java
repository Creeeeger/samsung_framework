package com.android.systemui.pluginlock;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PluginLockMediatorImpl$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PluginLockMediatorImpl f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ PluginLockMediatorImpl$$ExternalSyntheticLambda2(PluginLockMediatorImpl pluginLockMediatorImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = pluginLockMediatorImpl;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                PluginLockMediatorImpl pluginLockMediatorImpl = this.f$0;
                pluginLockMediatorImpl.mWindowListener.onViewModeChanged(this.f$1);
                return;
            default:
                PluginLockMediatorImpl pluginLockMediatorImpl2 = this.f$0;
                pluginLockMediatorImpl2.mBasicListener.onBarStateChanged(this.f$1);
                return;
        }
    }
}
