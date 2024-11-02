package com.samsung.android.knox;

import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.samsung.android.knox.IEnterpriseDeviceManager;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AccessController {
    public static final String TAG = "EnterpriseDeviceManager";

    public static ContextInfo enforceActiveAdminPermissionByContext(ContextInfo contextInfo, List<String> list) {
        if (getService() != null) {
            try {
                return getService().enforceActiveAdminPermissionByContext(contextInfo, list);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with enterprise policy service", e);
            }
        }
        return contextInfo;
    }

    public static ContextInfo enforceOwnerOnlyAndActiveAdminPermission(ContextInfo contextInfo, List<String> list) {
        if (getService() != null) {
            try {
                return getService().enforceOwnerOnlyAndActiveAdminPermission(contextInfo, list);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with enterprise policy service", e);
            }
        }
        return contextInfo;
    }

    public static boolean enforceWpcod() {
        try {
            if (getService() != null) {
                getService().enforceWpcod(Process.myUid(), true);
                return true;
            }
            return false;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static IEnterpriseDeviceManager getService() {
        return IEnterpriseDeviceManager.Stub.asInterface(ServiceManager.getService("enterprise_policy"));
    }

    public static void throwIfParentInstance(ContextInfo contextInfo, String str) {
        if (!contextInfo.mParent) {
        } else {
            throw new SecurityException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, " cannot be called on the parent instance"));
        }
    }
}
