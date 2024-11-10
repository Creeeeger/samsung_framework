package com.android.server.pm;

import android.app.admin.IDevicePolicyManager;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.sec.enterprise.auditlog.AuditLog;
import android.util.Log;
import com.android.server.pm.pkg.AndroidPackage;
import com.samsung.android.knox.license.IEnterpriseLicense;

/* loaded from: classes3.dex */
public abstract class PmHook {
    public static IDevicePolicyManager mDevicePolicyManager = null;
    public static boolean mSystemReady = false;

    public static void onSystemReady() {
        mSystemReady = true;
    }

    public static final void beginInstallLog(AndroidPackage androidPackage, int i) {
        AuditLog.logAsUser(5, 5, true, Process.myPid(), "PackageManagerService", String.format("Starting to install application %s version %s", androidPackage.getPackageName(), Long.valueOf(androidPackage.getLongVersionCode())), "", i);
    }

    public static final void uninstallLog(String str, boolean z, int i) {
        AuditLog.logAsUser(5, 5, true, Process.myPid(), "PackageManagerService", String.format(z ? "Uninstall application %s succeeded" : "Uninstall application %s failed", str), "", i);
    }

    public static final void installSuccesLog(String str, int i) {
        AuditLog.logAsUser(5, 5, true, Process.myPid(), "PackageManagerService", String.format("Install application %s succeeded", str), "", i);
    }

    public static final void installFailLog(Context context, AndroidPackage androidPackage, int i) {
        auditLogInstallFail(androidPackage.getPackageName(), i);
    }

    public static final void auditLogInstallFail(String str, int i) {
        auditLogInstallFail(str, i, true);
    }

    public static final void auditLogInstallFail(String str, int i, boolean z) {
        AuditLog.logAsUser(3, 5, false, Process.myPid(), "PackageManagerService", String.format("Install application %s failed", str), z ? "" : null, i);
    }

    public static final void enableDisableApplicationLog(String str, String str2, int i, int i2) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (str2 == null) {
                if (i != 1 && i != 0) {
                    if (i == 2 || i == 3) {
                        AuditLog.logAsUser(5, 5, true, Process.myPid(), "PackageManagerService", String.format("Application %s has been disabled.", str), "", i2);
                    }
                }
                AuditLog.logAsUser(5, 5, true, Process.myPid(), "PackageManagerService", String.format("Application %s has been enabled.", str), "", i2);
            }
            if (i != 1 && i != 0) {
                if (i == 2 || i == 3) {
                    AuditLog.logAsUser(5, 5, true, Process.myPid(), "PackageManagerService", String.format("Component %s/%s has been disabled.", str, str2), "", i2);
                }
            }
            AuditLog.logAsUser(5, 5, true, Process.myPid(), "PackageManagerService", String.format("Component %s/%s has been enabled.", str, str2), "", i2);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ed A[Catch: all -> 0x00fd, TRY_LEAVE, TryCatch #2 {all -> 0x00fd, blocks: (B:7:0x006f, B:10:0x0077, B:12:0x0086, B:14:0x0090, B:16:0x0096, B:26:0x00b4, B:28:0x00ba, B:30:0x00c0, B:32:0x00ca, B:20:0x00ed, B:36:0x00d2), top: B:6:0x006f, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isUpdateAllowedByMdm(android.content.pm.PackageManager.ComponentEnabledSetting r8, int r9, android.content.Context r10) {
        /*
            java.lang.String r0 = r8.getPackageName()
            int r1 = r8.getEnabledState()
            java.lang.String r2 = "application_policy"
            android.os.IBinder r2 = android.os.ServiceManager.getService(r2)
            com.samsung.android.knox.application.IApplicationPolicy r2 = com.samsung.android.knox.application.IApplicationPolicy.Stub.asInterface(r2)
            r3 = 1
            r4 = 0
            java.lang.String r5 = "PM_HOOK"
            if (r2 != 0) goto L1e
            java.lang.String r8 = "ApplicationPolicy is null"
            android.util.Log.w(r5, r8)     // Catch: android.os.RemoteException -> L6b
            goto L6b
        L1e:
            if (r1 == r3) goto L22
            if (r1 != 0) goto L6b
        L22:
            boolean r6 = r2.getApplicationStateEnabledAsUser(r0, r4, r9)     // Catch: android.os.RemoteException -> L6b
            if (r6 != 0) goto L3d
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: android.os.RemoteException -> L6b
            r8.<init>()     // Catch: android.os.RemoteException -> L6b
            java.lang.String r2 = "This app can not be enabled due to EDM policy. packageName = "
            r8.append(r2)     // Catch: android.os.RemoteException -> L6b
            r8.append(r0)     // Catch: android.os.RemoteException -> L6b
            java.lang.String r8 = r8.toString()     // Catch: android.os.RemoteException -> L6b
            android.util.Log.w(r5, r8)     // Catch: android.os.RemoteException -> L6b
            return r4
        L3d:
            boolean r6 = r8.isComponent()     // Catch: android.os.RemoteException -> L6b
            if (r6 == 0) goto L6b
            android.content.ComponentName r8 = r8.getComponentName()     // Catch: android.os.RemoteException -> L6b
            com.samsung.android.knox.ContextInfo r6 = new com.samsung.android.knox.ContextInfo     // Catch: android.os.RemoteException -> L6b
            int r7 = android.os.Binder.getCallingUid()     // Catch: android.os.RemoteException -> L6b
            r6.<init>(r7)     // Catch: android.os.RemoteException -> L6b
            boolean r2 = r2.getApplicationComponentState(r6, r8)     // Catch: android.os.RemoteException -> L6b
            if (r2 != 0) goto L6b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: android.os.RemoteException -> L6b
            r2.<init>()     // Catch: android.os.RemoteException -> L6b
            java.lang.String r6 = "This component can not be enabled due to EDM policy. componentName = "
            r2.append(r6)     // Catch: android.os.RemoteException -> L6b
            r2.append(r8)     // Catch: android.os.RemoteException -> L6b
            java.lang.String r8 = r2.toString()     // Catch: android.os.RemoteException -> L6b
            android.util.Log.w(r5, r8)     // Catch: android.os.RemoteException -> L6b
            return r4
        L6b:
            long r6 = android.os.Binder.clearCallingIdentity()
            boolean r8 = com.samsung.android.knox.SemPersonaManager.isKnoxId(r9)     // Catch: java.lang.Throwable -> Lfd
            if (r8 == 0) goto Lf9
            if (r1 != r3) goto Lf9
            com.android.server.enterprise.storage.EdmStorageProvider r8 = new com.android.server.enterprise.storage.EdmStorageProvider     // Catch: java.lang.Throwable -> Lfd
            r8.<init>(r10)     // Catch: java.lang.Throwable -> Lfd
            int r10 = r8.getMUMContainerOwnerUid(r9)     // Catch: java.lang.Throwable -> Lfd
            android.content.ComponentName r8 = r8.getComponentNameForUid(r10)     // Catch: java.lang.Throwable -> Lfd
            if (r8 == 0) goto Lf9
            java.lang.String r8 = r8.getPackageName()     // Catch: java.lang.Throwable -> Lfd
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Throwable -> Lfd
            if (r8 == 0) goto Lf9
            int r8 = android.os.UserHandle.getUserId(r10)     // Catch: java.lang.Throwable -> Lfd
            if (r8 == r9) goto Lf9
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lfd
            r8.<init>()     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r1 = "try to enable admin for CL container: "
            r8.append(r1)     // Catch: java.lang.Throwable -> Lfd
            r8.append(r10)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> Lfd
            android.util.Log.d(r5, r8)     // Catch: java.lang.Throwable -> Lfd
            android.os.Binder.restoreCallingIdentity(r6)     // Catch: java.lang.Throwable -> Lfd
            android.app.admin.IDevicePolicyManager r8 = getDevicePolicyManager()     // Catch: java.lang.Throwable -> Lfd
            if (r8 == 0) goto Lea
            android.content.ComponentName r8 = r8.getProfileOwnerAsUser(r9)     // Catch: android.os.RemoteException -> Ld1 java.lang.Throwable -> Lfd
            if (r8 == 0) goto Lea
            java.lang.String r9 = r8.getPackageName()     // Catch: android.os.RemoteException -> Ld1 java.lang.Throwable -> Lfd
            if (r9 == 0) goto Lea
            java.lang.String r8 = r8.getPackageName()     // Catch: android.os.RemoteException -> Ld1 java.lang.Throwable -> Lfd
            boolean r8 = r0.equals(r8)     // Catch: android.os.RemoteException -> Ld1 java.lang.Throwable -> Lfd
            if (r8 == 0) goto Lea
            java.lang.String r8 = "Can enable admin inside container to support AfW feature"
            android.util.Log.d(r5, r8)     // Catch: android.os.RemoteException -> Ld1 java.lang.Throwable -> Lfd
            r8 = r3
            goto Leb
        Ld1:
            r8 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lfd
            r9.<init>()     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r10 = "RemoteException: "
            r9.append(r10)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> Lfd
            r9.append(r8)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r8 = r9.toString()     // Catch: java.lang.Throwable -> Lfd
            android.util.Log.d(r5, r8)     // Catch: java.lang.Throwable -> Lfd
        Lea:
            r8 = r4
        Leb:
            if (r8 != 0) goto Lf9
            java.lang.String r8 = "Cannot enable this package inside the container."
            android.util.Log.w(r5, r8)     // Catch: java.lang.Throwable -> Lfd
            android.os.Binder.restoreCallingIdentity(r6)     // Catch: java.lang.Throwable -> Lfd
            android.os.Binder.restoreCallingIdentity(r6)
            return r4
        Lf9:
            android.os.Binder.restoreCallingIdentity(r6)
            return r3
        Lfd:
            r8 = move-exception
            android.os.Binder.restoreCallingIdentity(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PmHook.isUpdateAllowedByMdm(android.content.pm.PackageManager$ComponentEnabledSetting, int, android.content.Context):boolean");
    }

    public static boolean isPkgLicenseActivated(String str) {
        IEnterpriseLicense asInterface;
        if (!mSystemReady || (asInterface = IEnterpriseLicense.Stub.asInterface(ServiceManager.getService("enterprise_license_policy"))) == null) {
            return false;
        }
        try {
            return asInterface.getInstanceId(str) != null;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        } catch (SecurityException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void updateAdminPermissions() {
        if (mSystemReady) {
            IEnterpriseLicense asInterface = IEnterpriseLicense.Stub.asInterface(ServiceManager.getService("enterprise_license_policy"));
            try {
                if (asInterface != null) {
                    asInterface.updateAdminPermissions();
                } else {
                    Log.d("PM_HOOK", "ENTERPRISE_LICENSE_POLICY_SERVICE is null");
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (NullPointerException e2) {
                Log.e("PM_HOOK", "NPE occurs for EnterpriseLicense", e2);
                e2.printStackTrace();
            }
        }
    }

    public static IDevicePolicyManager getDevicePolicyManager() {
        if (mDevicePolicyManager == null) {
            mDevicePolicyManager = IDevicePolicyManager.Stub.asInterface(ServiceManager.getService("device_policy"));
        }
        return mDevicePolicyManager;
    }

    public static boolean hasSelectivePermissionsForMDM(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return bundle.getBoolean("com.samsung.knoxlicense.permissions");
    }
}
