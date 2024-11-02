package com.android.systemui.pluginlock;

import com.android.systemui.shade.NotificationShadeWindowState;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PluginLockMediatorImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PluginLockMediatorImpl f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ PluginLockMediatorImpl$$ExternalSyntheticLambda0(PluginLockMediatorImpl pluginLockMediatorImpl, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = pluginLockMediatorImpl;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                PluginLockMediatorImpl pluginLockMediatorImpl = this.f$0;
                boolean z = this.f$1;
                SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 = pluginLockMediatorImpl.mWindowListener;
                secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1.getClass();
                String str = SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG;
                SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1.this$0;
                NotificationShadeWindowState currentState = secNotificationShadeWindowControllerHelperImpl.getCurrentState();
                currentState.securedWindow = z;
                secNotificationShadeWindowControllerHelperImpl.apply(currentState);
                return;
            case 1:
                PluginLockMediatorImpl pluginLockMediatorImpl2 = this.f$0;
                pluginLockMediatorImpl2.mWindowListener.updateOverlayUserTimeout(this.f$1);
                return;
            case 2:
                PluginLockMediatorImpl pluginLockMediatorImpl3 = this.f$0;
                pluginLockMediatorImpl3.mWindowListener.updateBiometricRecognition(this.f$1);
                return;
            default:
                PluginLockMediatorImpl pluginLockMediatorImpl4 = this.f$0;
                SecNotificationShadeWindowControllerHelperImpl.access$setScreenOrientation(pluginLockMediatorImpl4.mWindowListener.this$0, this.f$1);
                return;
        }
    }
}
