package com.samsung.android.knox.nfc;

import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.IMiscPolicy;
import com.samsung.android.knox.license.EnterpriseLicenseManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class NfcPolicy {
    public static String TAG = "NfcPolicy";
    public ContextInfo mContextInfo;
    public IMiscPolicy mService;

    public NfcPolicy(ContextInfo contextInfo) {
        this.mContextInfo = contextInfo;
    }

    public final boolean allowNFCStateChange(boolean z) {
        EnterpriseLicenseManager.log(this.mContextInfo, "NfcPolicy.allowNFCStateChange");
        if (getService() != null) {
            try {
                return this.mService.allowNFCStateChange(this.mContextInfo, z);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with MiscPolicy", e);
                return false;
            }
        }
        return false;
    }

    public final IMiscPolicy getService() {
        if (this.mService == null) {
            this.mService = IMiscPolicy.Stub.asInterface(ServiceManager.getService("misc_policy"));
        }
        return this.mService;
    }

    public final boolean isNFCStarted() {
        if (getService() != null) {
            try {
                return this.mService.isNFCStarted();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with MiscPolicy", e);
                return false;
            }
        }
        return false;
    }

    public final boolean isNFCStateChangeAllowed() {
        if (getService() != null) {
            try {
                return this.mService.isNFCStateChangeAllowed();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with MiscPolicy", e);
                return true;
            }
        }
        return true;
    }

    public final boolean startNFC(boolean z) {
        EnterpriseLicenseManager.log(this.mContextInfo, "NfcPolicy.startNFC");
        if (getService() != null) {
            try {
                return this.mService.startNFC(this.mContextInfo, z);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with MiscPolicy", e);
                return false;
            }
        }
        return false;
    }
}
