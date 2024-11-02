package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.ActivityManager;
import android.app.admin.IDevicePolicyManager;
import android.content.ComponentName;
import android.os.RemoteException;
import android.os.ServiceManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class DevicePolicyManagerWrapper {
    private static final DevicePolicyManagerWrapper sInstance = new DevicePolicyManagerWrapper();

    private DevicePolicyManagerWrapper() {
    }

    public static DevicePolicyManagerWrapper getInstance() {
        return sInstance;
    }

    public boolean isWifiBlockedByEASPolicy() {
        IDevicePolicyManager asInterface = IDevicePolicyManager.Stub.asInterface(ServiceManager.getService("device_policy"));
        if (asInterface == null) {
            return false;
        }
        try {
            if (asInterface.semGetAllowWifi((ComponentName) null, ActivityManager.getCurrentUser())) {
                return false;
            }
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }
}
