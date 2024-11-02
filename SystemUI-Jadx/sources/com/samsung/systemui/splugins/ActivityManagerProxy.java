package com.samsung.systemui.splugins;

import android.app.ActivityManager;
import android.app.UserSwitchObserver;
import android.os.RemoteException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ActivityManagerProxy {
    private static String TAG = "ActivityManagerProxyImpl";
    int mUserId = -10000;
    UserSwitchObserver mUserSwitchObserver = new UserSwitchObserver() { // from class: com.samsung.systemui.splugins.ActivityManagerProxy.1
        public void onUserSwitchComplete(int i) {
            ActivityManagerProxy.this.mUserId = i;
            int i2 = ActivityManagerProxy.this.mUserId;
        }
    };

    private void register() {
        try {
            ActivityManager.getService().registerUserSwitchObserver(this.mUserSwitchObserver, TAG);
        } catch (RemoteException e) {
            e.rethrowAsRuntimeException();
        }
    }

    public synchronized int getCurrentUser() {
        if (this.mUserId == -10000) {
            register();
            this.mUserId = ActivityManager.getCurrentUser();
        }
        return this.mUserId;
    }

    public void unregister() {
        try {
            ActivityManager.getService().unregisterUserSwitchObserver(this.mUserSwitchObserver);
        } catch (RemoteException e) {
            e.rethrowAsRuntimeException();
        }
    }
}
