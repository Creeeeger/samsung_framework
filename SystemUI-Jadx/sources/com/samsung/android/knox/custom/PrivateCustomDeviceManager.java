package com.samsung.android.knox.custom;

import android.content.ComponentName;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.custom.IKnoxCustomManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PrivateCustomDeviceManager {
    public static final String TAG = "PrivateCustomDeviceManager";
    public static PrivateCustomDeviceManager gPrivateCustomDeviceManager;
    public static ContextInfo mContextInfo;
    public IKnoxCustomManager mService;
    public static final Object mSync = new Object();
    public static final String[] GEAR_PACKAGE_FILTER = {"com.samsung.android.hostmanager", "com.samsung.android.gear1plugin", "com.samsung.android.wms"};

    public static PrivateCustomDeviceManager getInstance() {
        PrivateCustomDeviceManager privateCustomDeviceManager;
        synchronized (mSync) {
            if (gPrivateCustomDeviceManager == null) {
                gPrivateCustomDeviceManager = new PrivateCustomDeviceManager();
            }
            if (mContextInfo == null) {
                mContextInfo = new ContextInfo();
            }
            privateCustomDeviceManager = gPrivateCustomDeviceManager;
        }
        return privateCustomDeviceManager;
    }

    public final boolean getGearNotificationStateInternal(int i, String str) {
        if (getService() != null && (i & 2) != 0) {
            try {
                if (!this.mService.getGearNotificationState()) {
                    for (String str2 : GEAR_PACKAGE_FILTER) {
                        if (str2.equalsIgnoreCase(str)) {
                            return false;
                        }
                    }
                    return true;
                }
                return true;
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with KnoxCustomManager service", e);
                return true;
            }
        }
        return true;
    }

    public final String getLoadingLogoPath() {
        if (getService() != null) {
            try {
                return this.mService.getLoadingLogoPath();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with KnoxCustomManager service", e);
                return null;
            }
        }
        return null;
    }

    public final IKnoxCustomManager getService() {
        if (this.mService == null) {
            this.mService = IKnoxCustomManager.Stub.asInterface(ServiceManager.getService("knoxcustom"));
        }
        return this.mService;
    }

    public final int getUsbConnectionTypeInternal() {
        if (getService() != null) {
            try {
                return this.mService.getUsbConnectionTypeInternal();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with KnoxCustomManager service", e);
                return 0;
            }
        }
        return 0;
    }

    public final int isAutoOpenLastAppAllowed() {
        if (getService() != null) {
            try {
                return this.mService.isDexAutoOpenLastAppAllowed();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with KnoxCustomManager service", e);
                return -1;
            }
        }
        return -1;
    }

    public final boolean registerSystemUICallback(IKnoxCustomManagerSystemUiCallback iKnoxCustomManagerSystemUiCallback) {
        if (getService() != null) {
            try {
                return this.mService.registerSystemUiCallback(iKnoxCustomManagerSystemUiCallback);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with KnoxCustomManager service", e);
                return false;
            }
        }
        return false;
    }

    public final boolean stayInForeground(ComponentName componentName) {
        if (getService() != null) {
            try {
                return this.mService.stayInDexForegroundMode(componentName);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with KnoxCustomManager service", e);
                return false;
            }
        }
        return false;
    }
}
