package com.android.systemui.keyguard;

import android.app.ActivityTaskManager;
import android.os.RemoteException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1 implements Runnable {
    public boolean aodShowing;
    public boolean showing;

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            ActivityTaskManager.getService().setLockScreenShown(this.showing, this.aodShowing);
            Log.i("KeyguardViewMediator", "setLockScreenShown " + this.showing + " " + this.aodShowing);
            z = true;
        } catch (RemoteException unused) {
            Log.e("KeyguardViewMediator", "setLockScreenShown is failed");
            z = false;
        }
        KeyguardDumpLog.state$default(KeyguardDumpLog.INSTANCE, 1, z, this.showing, this.aodShowing, 0, 0, 48);
    }
}
