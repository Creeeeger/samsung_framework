package com.android.wm.shell.freeform;

import android.app.ActivityManager;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class FreeformContainerSystemProxy$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ boolean f$0;

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ActivityManager.getService().setHasTopUi(this.f$0);
        } catch (RemoteException e) {
            Log.w("FreeformContainer", "[FreeformContainerSystemProxy] Failed to setHasTopUi: " + e);
            e.printStackTrace();
        }
    }
}
