package com.android.systemui.recents;

import android.app.ActivityTaskManager;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class OverviewProxyService$1$$ExternalSyntheticLambda7 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        try {
            ActivityTaskManager.getService().stopSystemLockTaskMode();
        } catch (RemoteException unused) {
            Log.e("OverviewProxyService", "Failed to stop screen pinning");
        }
    }
}
