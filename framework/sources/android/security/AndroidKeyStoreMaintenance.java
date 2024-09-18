package android.security;

import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.StrictMode;
import android.security.maintenance.IKeystoreMaintenance;
import android.system.keystore2.KeyDescriptor;
import android.util.Log;

/* loaded from: classes3.dex */
public class AndroidKeyStoreMaintenance {
    public static final int INVALID_ARGUMENT = 20;
    public static final int KEY_NOT_FOUND = 7;
    public static final int PERMISSION_DENIED = 6;
    public static final int SYSTEM_ERROR = 4;
    private static final String TAG = "AndroidKeyStoreMaintenance";

    private static IKeystoreMaintenance getService() {
        return IKeystoreMaintenance.Stub.asInterface(ServiceManager.checkService("android.security.maintenance"));
    }

    public static int onUserAdded(int userId) {
        try {
            getService().onUserAdded(userId);
            return 0;
        } catch (ServiceSpecificException e) {
            Log.e(TAG, "onUserAdded failed", e);
            return e.errorCode;
        } catch (Exception e2) {
            Log.e(TAG, "Can not connect to keystore", e2);
            return 4;
        }
    }

    public static int onUserRemoved(int userId) {
        try {
            getService().onUserRemoved(userId);
            return 0;
        } catch (ServiceSpecificException e) {
            Log.e(TAG, "onUserRemoved failed", e);
            return e.errorCode;
        } catch (Exception e2) {
            Log.e(TAG, "Can not connect to keystore", e2);
            return 4;
        }
    }

    public static int onUserPasswordChanged(int userId, byte[] password) {
        try {
            getService().onUserPasswordChanged(userId, password);
            return 0;
        } catch (ServiceSpecificException e) {
            Log.e(TAG, "onUserPasswordChanged failed", e);
            return e.errorCode;
        } catch (Exception e2) {
            Log.e(TAG, "Can not connect to keystore", e2);
            return 4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int clearNamespace(int r10, long r11) {
        /*
            java.lang.String r1 = "AndroidKeyStoreMaintenance"
            r8 = 1
            android.security.maintenance.IKeystoreMaintenance r0 = getService()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38 android.os.ServiceSpecificException -> L6a
            r0.clearNamespace(r10, r11)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38 android.os.ServiceSpecificException -> L6a
            if (r10 != 0) goto L13
            int r0 = (int) r11
            int r0 = android.os.UserHandle.getUserId(r0)
            goto L1b
        L13:
            int r0 = android.os.Binder.getCallingUid()
            int r0 = android.os.UserHandle.getUserId(r0)
        L1b:
            boolean r1 = android.security.KeyStoreAuditLog.isAuditLogEnabledAsUser(r0)
            if (r1 == 0) goto L33
            r1 = 0
            r5 = 1
            java.lang.String r6 = "AndroidKeyStoreMaintenance"
            r2 = r11
            r4 = r10
            r7 = r8
            android.security.KeyStoreAuditLog$AuditLogParams r1 = android.security.KeyStoreAuditLog.AuditLogParams.init(r1, r2, r4, r5, r6, r7)
            r1.setUserId(r0)
            android.security.KeyStoreAuditLog.auditLogPrivilegedAsUser(r1)
        L33:
            r0 = 0
            return r0
        L35:
            r0 = move-exception
            goto L9e
        L38:
            r0 = move-exception
            java.lang.String r2 = "Can not connect to keystore"
            android.util.Log.e(r1, r2, r0)     // Catch: java.lang.Throwable -> L35
            r8 = 4
            if (r10 != 0) goto L48
            int r1 = (int) r11
            int r1 = android.os.UserHandle.getUserId(r1)
            goto L50
        L48:
            int r1 = android.os.Binder.getCallingUid()
            int r1 = android.os.UserHandle.getUserId(r1)
        L50:
            r9 = r1
            boolean r1 = android.security.KeyStoreAuditLog.isAuditLogEnabledAsUser(r9)
            if (r1 == 0) goto L68
            r1 = 0
            r5 = 1
            java.lang.String r6 = "AndroidKeyStoreMaintenance"
            r2 = r11
            r4 = r10
            r7 = r8
            android.security.KeyStoreAuditLog$AuditLogParams r1 = android.security.KeyStoreAuditLog.AuditLogParams.init(r1, r2, r4, r5, r6, r7)
            r1.setUserId(r9)
            android.security.KeyStoreAuditLog.auditLogPrivilegedAsUser(r1)
        L68:
            r1 = 4
            return r1
        L6a:
            r0 = move-exception
            java.lang.String r2 = "clearNamespace failed"
            android.util.Log.e(r1, r2, r0)     // Catch: java.lang.Throwable -> L35
            int r7 = r0.errorCode     // Catch: java.lang.Throwable -> L35
            int r8 = r0.errorCode     // Catch: java.lang.Throwable -> L9c
            if (r10 != 0) goto L7c
            int r1 = (int) r11
            int r1 = android.os.UserHandle.getUserId(r1)
            goto L84
        L7c:
            int r1 = android.os.Binder.getCallingUid()
            int r1 = android.os.UserHandle.getUserId(r1)
        L84:
            r9 = r1
            boolean r1 = android.security.KeyStoreAuditLog.isAuditLogEnabledAsUser(r9)
            if (r1 == 0) goto L9b
            r1 = 0
            r5 = 1
            java.lang.String r6 = "AndroidKeyStoreMaintenance"
            r2 = r11
            r4 = r10
            android.security.KeyStoreAuditLog$AuditLogParams r1 = android.security.KeyStoreAuditLog.AuditLogParams.init(r1, r2, r4, r5, r6, r7)
            r1.setUserId(r9)
            android.security.KeyStoreAuditLog.auditLogPrivilegedAsUser(r1)
        L9b:
            return r8
        L9c:
            r0 = move-exception
            r8 = r7
        L9e:
            if (r10 != 0) goto La6
            int r1 = (int) r11
            int r1 = android.os.UserHandle.getUserId(r1)
            goto Lae
        La6:
            int r1 = android.os.Binder.getCallingUid()
            int r1 = android.os.UserHandle.getUserId(r1)
        Lae:
            r9 = r1
            boolean r1 = android.security.KeyStoreAuditLog.isAuditLogEnabledAsUser(r9)
            if (r1 == 0) goto Lc6
            r1 = 0
            r5 = 1
            java.lang.String r6 = "AndroidKeyStoreMaintenance"
            r2 = r11
            r4 = r10
            r7 = r8
            android.security.KeyStoreAuditLog$AuditLogParams r1 = android.security.KeyStoreAuditLog.AuditLogParams.init(r1, r2, r4, r5, r6, r7)
            r1.setUserId(r9)
            android.security.KeyStoreAuditLog.auditLogPrivilegedAsUser(r1)
        Lc6:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.security.AndroidKeyStoreMaintenance.clearNamespace(int, long):int");
    }

    public static int getState(int userId) {
        try {
            return getService().getState(userId);
        } catch (ServiceSpecificException e) {
            Log.e(TAG, "getState failed", e);
            return e.errorCode;
        } catch (Exception e2) {
            Log.e(TAG, "Can not connect to keystore", e2);
            return 4;
        }
    }

    public static void onDeviceOffBody() {
        try {
            getService().onDeviceOffBody();
        } catch (Exception e) {
            Log.e(TAG, "Error while reporting device off body event.", e);
        }
    }

    public static int migrateKeyNamespace(KeyDescriptor source, KeyDescriptor destination) {
        try {
            getService().migrateKeyNamespace(source, destination);
            return 0;
        } catch (ServiceSpecificException e) {
            Log.e(TAG, "migrateKeyNamespace failed", e);
            return e.errorCode;
        } catch (Exception e2) {
            Log.e(TAG, "Can not connect to keystore", e2);
            return 4;
        }
    }

    public static void deleteAllKeys() throws KeyStoreException {
        StrictMode.noteDiskWrite();
        try {
            getService().deleteAllKeys();
        } catch (RemoteException | NullPointerException e) {
            throw new KeyStoreException(4, "Failure to connect to Keystore while trying to delete all keys.");
        } catch (ServiceSpecificException e2) {
            throw new KeyStoreException(e2.errorCode, "Keystore error while trying to delete all keys.");
        }
    }
}
