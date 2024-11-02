package com.samsung.android.knox.internal;

import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.sec.enterprise.auditlog.AuditLog;
import android.util.Log;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.IEnterpriseDeviceManager;
import com.samsung.android.knox.application.IApplicationPolicy;
import com.samsung.android.knox.bluetooth.BluetoothPolicy;
import com.samsung.android.knox.bluetooth.IBluetoothPolicy;
import com.samsung.android.knox.license.EnterpriseLicenseManager;
import com.samsung.android.knox.log.IAuditLog;
import com.samsung.android.knox.remotecontrol.IRemoteInjection;
import com.samsung.android.knox.restriction.IRestrictionPolicy;
import java.io.UnsupportedEncodingException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class EDMNativeHelper {
    public static String TAG = "EDMNativeHelper";

    public static void enterpriseLogger(String str) {
        EnterpriseLicenseManager.log(new ContextInfo(Process.myUid()), str);
    }

    public static boolean isAVRCPProfileEnabled() {
        IBluetoothPolicy asInterface = IBluetoothPolicy.Stub.asInterface(ServiceManager.getService("bluetooth_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isProfileEnabledInternal(16, true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static boolean isAudioRecordAllowed(int i) {
        IRestrictionPolicy asInterface = IRestrictionPolicy.Stub.asInterface(ServiceManager.getService("restriction_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isAudioRecordAllowed(new ContextInfo(i), true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static boolean isAuditLogEnabled() {
        IAuditLog asInterface = IAuditLog.Stub.asInterface(ServiceManager.getService("auditlog"));
        if (asInterface != null) {
            try {
                return asInterface.isAuditServiceRunning();
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean isBTOutgoingCallEnabled() {
        IBluetoothPolicy asInterface = IBluetoothPolicy.Stub.asInterface(ServiceManager.getService("bluetooth_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isOutgoingCallsAllowed(new ContextInfo());
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x005d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isCameraEnabled(int r5) {
        /*
            java.lang.String r0 = com.samsung.android.knox.internal.EDMNativeHelper.TAG
            java.lang.String r1 = "isCameraEnabled"
            android.util.Log.d(r0, r1)
            java.lang.String r0 = "enterprise_policy"
            android.os.IBinder r0 = android.os.ServiceManager.getService(r0)
            com.samsung.android.knox.IEnterpriseDeviceManager r0 = com.samsung.android.knox.IEnterpriseDeviceManager.Stub.asInterface(r0)
            r1 = 1
            if (r0 == 0) goto L33
            java.lang.String r2 = com.samsung.android.knox.internal.EDMNativeHelper.TAG     // Catch: java.lang.Exception -> L25 java.lang.SecurityException -> L2a android.os.RemoteException -> L2f
            java.lang.String r3 = "checking for camera in EnterpriseDeviceManagerService"
            android.util.Log.d(r2, r3)     // Catch: java.lang.Exception -> L25 java.lang.SecurityException -> L2a android.os.RemoteException -> L2f
            com.samsung.android.knox.ContextInfo r2 = new com.samsung.android.knox.ContextInfo     // Catch: java.lang.Exception -> L25 java.lang.SecurityException -> L2a android.os.RemoteException -> L2f
            r2.<init>(r5)     // Catch: java.lang.Exception -> L25 java.lang.SecurityException -> L2a android.os.RemoteException -> L2f
            boolean r0 = r0.isCameraEnabledNative(r2)     // Catch: java.lang.Exception -> L25 java.lang.SecurityException -> L2a android.os.RemoteException -> L2f
            goto L34
        L25:
            r0 = move-exception
            r0.printStackTrace()
            goto L33
        L2a:
            r0 = move-exception
            r0.printStackTrace()
            goto L33
        L2f:
            r0 = move-exception
            r0.printStackTrace()
        L33:
            r0 = r1
        L34:
            java.lang.String r2 = "device_policy"
            android.os.IBinder r2 = android.os.ServiceManager.getService(r2)
            android.app.admin.IDevicePolicyManager r2 = android.app.admin.IDevicePolicyManager.Stub.asInterface(r2)
            r3 = 0
            if (r2 == 0) goto L5a
            int r5 = android.os.UserHandle.getUserId(r5)     // Catch: java.lang.Exception -> L4c java.lang.SecurityException -> L51 android.os.RemoteException -> L56
            r4 = 0
            boolean r5 = r2.getCameraDisabled(r4, r4, r5, r3)     // Catch: java.lang.Exception -> L4c java.lang.SecurityException -> L51 android.os.RemoteException -> L56
            r5 = r5 ^ r1
            goto L5b
        L4c:
            r5 = move-exception
            r5.printStackTrace()
            goto L5a
        L51:
            r5 = move-exception
            r5.printStackTrace()
            goto L5a
        L56:
            r5 = move-exception
            r5.printStackTrace()
        L5a:
            r5 = r1
        L5b:
            if (r0 == 0) goto L60
            if (r5 == 0) goto L60
            goto L61
        L60:
            r1 = r3
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.internal.EDMNativeHelper.isCameraEnabled(int):boolean");
    }

    public static boolean isFaceRecognitionAllowedEvenCameraBlocked(int i) {
        IRestrictionPolicy asInterface = IRestrictionPolicy.Stub.asInterface(ServiceManager.getService("restriction_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isFaceRecognitionAllowedEvenCameraBlocked(new ContextInfo(i));
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        }
        return true;
    }

    public static boolean isHIDProfileEnabled() {
        IBluetoothPolicy asInterface = IBluetoothPolicy.Stub.asInterface(ServiceManager.getService("bluetooth_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isBluetoothUUIDAllowed(new ContextInfo(), BluetoothPolicy.BluetoothUUID.HID_UUID);
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        }
        return true;
    }

    public static boolean isIrisCameraEnabled(int i) {
        IRestrictionPolicy asInterface = IRestrictionPolicy.Stub.asInterface(ServiceManager.getService("restriction_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isIrisCameraEnabled(new ContextInfo(i), true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static boolean isMicrophoneEnabled(int i) {
        IRestrictionPolicy asInterface = IRestrictionPolicy.Stub.asInterface(ServiceManager.getService("restriction_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isMicrophoneEnabled(new ContextInfo(i), true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static boolean isPackageInAvrWhitelist(int i) {
        IApplicationPolicy asInterface = IApplicationPolicy.Stub.asInterface(ServiceManager.getService("application_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isPackageInWhitelistInternal(3, UserHandle.getCallingUserId(), i);
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean isScreenCaptureEnabled() {
        IRestrictionPolicy asInterface = IRestrictionPolicy.Stub.asInterface(ServiceManager.getService("restriction_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isScreenCaptureEnabledInternal(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static boolean isVideoRecordAllowed(int i) {
        IRestrictionPolicy asInterface = IRestrictionPolicy.Stub.asInterface(ServiceManager.getService("restriction_policy"));
        if (asInterface != null) {
            try {
                return asInterface.isVideoRecordAllowed(new ContextInfo(i), true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static void nativeLogger(int i, int i2, boolean z, int i3, String str, String str2) {
        AuditLog.log(i, i2, z, i3, str, str2);
    }

    public static void nativeLoggerPrivilegedAsUser(int i, int i2, int i3, int i4, String str, byte[] bArr, byte[] bArr2, int i5) {
        boolean z;
        String str2;
        try {
            String str3 = new String(bArr, "UTF-8");
            String str4 = new String(bArr2, "UTF-8");
            String[] split = str3.split("\\n");
            String[] split2 = str4.split("\\n");
            for (int i6 = 0; i6 < split.length; i6++) {
                if (i3 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                String str5 = split[i6];
                if (split2.length > i6) {
                    str2 = split2[i6];
                } else {
                    str2 = null;
                }
                AuditLog.logPrivilegedAsUser(i, i2, z, i4, str, str5, str2, i5);
            }
        } catch (UnsupportedEncodingException unused) {
            Log.d(TAG, "Unsupported conversion");
        }
    }

    public static void sendIntent(int i) {
        IEnterpriseDeviceManager asInterface = IEnterpriseDeviceManager.Stub.asInterface(ServiceManager.getService("enterprise_policy"));
        if (asInterface != null) {
            try {
                asInterface.sendIntent(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public static void updateDexScreenDimensions(int i, int i2, int i3) {
        IRemoteInjection asInterface = IRemoteInjection.Stub.asInterface(ServiceManager.getService("remoteinjection"));
        if (asInterface != null) {
            try {
                asInterface.updateDexScreenDimensions(i, i2, i3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public static void updateRemoteScreenDimensionsAndCallerUid(int i, int i2, int i3) {
        IRemoteInjection asInterface = IRemoteInjection.Stub.asInterface(ServiceManager.getService("remoteinjection"));
        if (asInterface != null) {
            try {
                asInterface.updateRemoteScreenDimensionsAndCallerUid(i, i2, i3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public static void nativeLogger(int i, int i2, int i3, int i4, String str, byte[] bArr) {
        try {
            String[] split = new String(bArr, "UTF-8").split("\\n");
            for (String str2 : split) {
                AuditLog.log(i, i2, true, i4, str, str2);
            }
        } catch (UnsupportedEncodingException unused) {
            Log.d(TAG, "Unsupported conversion");
        }
    }
}
