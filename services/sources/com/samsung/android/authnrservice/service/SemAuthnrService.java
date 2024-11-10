package com.samsung.android.authnrservice.service;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import com.android.internal.util.FrameworkStatsLog;
import com.samsung.android.authnrservice.manager.ISemAuthnrService;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class SemAuthnrService extends ISemAuthnrService.Stub {
    public Context mContext;

    public SemAuthnrService(Context context) {
        this.mContext = context;
    }

    public int getVersion() {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "gv denied");
        AuthnrLog.i("SAS", "version :" + FrameworkStatsLog.HDMI_CEC_MESSAGE_REPORTED__USER_CONTROL_PRESSED_COMMAND__UP);
        return FrameworkStatsLog.HDMI_CEC_MESSAGE_REPORTED__USER_CONTROL_PRESSED_COMMAND__UP;
    }

    public boolean initialize(ParcelFileDescriptor parcelFileDescriptor, long j, long j2) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "i denied");
        AuthnrLog.e("SAS", "initialize not supported");
        if (Binder.getCallingPid() == Process.myPid() || parcelFileDescriptor == null) {
            return false;
        }
        try {
            parcelFileDescriptor.close();
            return false;
        } catch (IOException unused) {
            AuthnrLog.w("SAS", "failed to close");
            return false;
        }
    }

    public boolean terminate() {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "t denied");
        AuthnrLog.e("SAS", "terminate not supported");
        return false;
    }

    public byte[] process(byte[] bArr) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "p denied");
        AuthnrLog.e("SAS", "process not supported");
        return new byte[0];
    }

    public boolean setChallenge(byte[] bArr) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "sc denied");
        try {
            return FingerprintOperation.getInstance(this.mContext).setChallenge(bArr);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "setChallenge failed : " + e.getMessage());
            return false;
        }
    }

    public byte[] getWrappedObject(byte[] bArr) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "gwo denied");
        try {
            return FingerprintOperation.getInstance(this.mContext).getWrappedObject(bArr);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "getWrappedObject failed : " + e.getMessage());
            return new byte[0];
        }
    }

    public boolean initializeDrk() {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "id denied");
        try {
            return DrkOperation.getInstance().initialize(this.mContext);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "initializeDrk failed : " + e.getMessage());
            return false;
        }
    }

    public boolean terminateDrk() {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "td denied");
        try {
            return DrkOperation.getInstance().terminate();
        } catch (Exception e) {
            AuthnrLog.e("SAS", "terminateDrk failed : " + e.getMessage());
            return false;
        }
    }

    public byte[] getDrkKeyHandle() {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "gdkh denied");
        try {
            return DrkOperation.getInstance().getDrkKeyHandle();
        } catch (Exception e) {
            AuthnrLog.e("SAS", "getDrkKeyHandle failed : " + e.getMessage());
            return new byte[0];
        }
    }

    public boolean writeFile(byte[] bArr, String str) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "wf denied");
        try {
            return FileOperation.getInstance().writeFile(bArr, str);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "writeFile failed : " + e.getMessage());
            return false;
        }
    }

    public boolean deleteFile(String str) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "df denied");
        try {
            return FileOperation.getInstance().deleteFile(str);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "deleteFile failed : " + e.getMessage());
            return false;
        }
    }

    public List getFiles(String str, String str2) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "gf denied");
        try {
            return FileOperation.getInstance().getFiles(str, str2);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "getFiles failed : " + e.getMessage());
            return Collections.emptyList();
        }
    }

    public boolean initializeWithPreloadedTa() {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "iwpt denied");
        AuthnrLog.e("SAS", "initializeWithPreloadedTa not supported");
        return false;
    }

    public boolean terminateWithPreloadedTa() {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "twpt denied");
        AuthnrLog.e("SAS", "terminateWithPreloadedTa not supported");
        return false;
    }

    public byte[] processWithPreloadedTa(byte[] bArr, String str) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "pwpt denied");
        AuthnrLog.e("SAS", "processWithPreloadedTa not supported");
        return new byte[0];
    }

    public String readFile(String str) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "rf denied");
        try {
            return FileOperation.getInstance().readFile(str);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "readFile failed : " + e.getMessage());
            return "";
        }
    }

    public List getMatchedFilePaths(String str, String str2) {
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "gmfp denied");
        try {
            return FileOperation.getInstance().getMatchedFilePaths(str, str2);
        } catch (Exception e) {
            AuthnrLog.e("SAS", "getMatchedFilePaths failed : " + e.getMessage());
            return Collections.emptyList();
        }
    }

    public boolean initializePreloadedTa(int i) {
        AuthnrLog.d("SAS", "public boolean initializePreloadedTa(int trustedAppType) throws RemoteException");
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "ipt denied");
        AuthnrLog.e("SAS", "initializePreloadedTa not supported");
        return false;
    }

    public boolean terminatePreloadedTa(int i) {
        AuthnrLog.d("SAS", "public boolean terminatePreloadedTa(int trustedAppType) throws RemoteException");
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "tpt denied");
        AuthnrLog.e("SAS", "terminatePreloadedTa not supported");
        return false;
    }

    public byte[] processPreloadedTa(int i, byte[] bArr) {
        AuthnrLog.d("SAS", "processPreloadedTa(int trustedAppType, byte[] data) throws RemoteException");
        this.mContext.enforceCallingPermission("com.samsung.android.permission.REQUEST_AUTHNR_SERVICE", "ppt denied");
        AuthnrLog.e("SAS", "processPreloadedTa not supported");
        return new byte[0];
    }
}
