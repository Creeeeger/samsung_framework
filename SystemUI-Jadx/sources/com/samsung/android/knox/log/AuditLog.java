package com.samsung.android.knox.log;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.KnoxInternalFeature;
import com.samsung.android.knox.license.EnterpriseLicenseManager;
import com.samsung.android.knox.log.IAuditLog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AuditLog {
    public static final String ACTION_AUDIT_CRITICAL_SIZE = "com.samsung.android.knox.intent.action.AUDIT_CRITICAL_SIZE";
    public static final String ACTION_AUDIT_FULL_SIZE = "com.samsung.android.knox.intent.action.AUDIT_FULL_SIZE";
    public static final String ACTION_AUDIT_MAXIMUM_SIZE = "com.samsung.android.knox.intent.action.AUDIT_MAXIMUM_SIZE";
    public static final String ACTION_DUMP_LOG_RESULT = "com.samsung.android.knox.intent.action.DUMP_LOG_RESULT";
    public static final String ACTION_LOG_EXCEPTION = "com.samsung.android.knox.intent.action.LOG_EXCEPTION";
    public static final int AUDIT_LOG_GROUP_APPLICATION = 5;
    public static final int AUDIT_LOG_GROUP_EVENTS = 4;
    public static final int AUDIT_LOG_GROUP_NETWORK = 3;
    public static final int AUDIT_LOG_GROUP_SECURITY = 1;
    public static final int AUDIT_LOG_GROUP_SYSTEM = 2;
    public static final int AUDIT_LOG_SEVERITY_ALERT = 1;
    public static final int AUDIT_LOG_SEVERITY_CRITICAL = 2;
    public static final int AUDIT_LOG_SEVERITY_ERROR = 3;
    public static final int AUDIT_LOG_SEVERITY_NOTICE = 5;
    public static final int AUDIT_LOG_SEVERITY_WARNING = 4;
    public static final int ERROR_NONE = 0;
    public static final int ERROR_UNKNOWN = -2000;
    public static final String EXTRA_AUDIT_RESULT = "com.samsung.android.knox.intent.extra.AUDIT_RESULT";
    public static final String TAG = "AuditLog";
    public static AuditLog mAuditLog;
    public static final Object mSync = new Object();
    public IAuditLog mAuditService;
    public ContextInfo mContextInfo;

    private AuditLog(ContextInfo contextInfo, Context context) {
        this.mContextInfo = contextInfo;
    }

    public static void a(int i, boolean z, int i2, String str, String str2) {
        ContextInfo contextInfo = new ContextInfo(Binder.getCallingUid());
        EnterpriseLicenseManager.log(contextInfo, "AuditLog.a");
        IAuditLog asInterface = IAuditLog.Stub.asInterface(ServiceManager.getService("auditlog"));
        if (asInterface != null) {
            try {
                asInterface.AuditLogger(contextInfo, 1, i, z, i2, str, str2);
            } catch (RemoteException unused) {
                Log.w(TAG, "Access to AuditLogger not allowed");
            }
        }
    }

    public static void c(int i, boolean z, int i2, String str, String str2) {
        ContextInfo contextInfo = new ContextInfo(Binder.getCallingUid());
        EnterpriseLicenseManager.log(contextInfo, "AuditLog.c");
        IAuditLog asInterface = IAuditLog.Stub.asInterface(ServiceManager.getService("auditlog"));
        if (asInterface != null) {
            try {
                asInterface.AuditLogger(contextInfo, 2, i, z, i2, str, str2);
            } catch (RemoteException unused) {
                Log.w(TAG, "Access to AuditLogger not allowed");
            }
        }
    }

    public static AuditLog createInstance(ContextInfo contextInfo, Context context) {
        return new AuditLog(contextInfo, context.getApplicationContext());
    }

    public static void e(int i, boolean z, int i2, String str, String str2) {
        ContextInfo contextInfo = new ContextInfo(Binder.getCallingUid());
        EnterpriseLicenseManager.log(contextInfo, "AuditLog.e");
        IAuditLog asInterface = IAuditLog.Stub.asInterface(ServiceManager.getService("auditlog"));
        if (asInterface != null) {
            try {
                asInterface.AuditLogger(contextInfo, 3, i, z, i2, str, str2);
            } catch (RemoteException unused) {
                Log.d(TAG, "Access to AuditLogger not allowed");
            }
        }
    }

    public static AuditLog getInstance(Context context) {
        AuditLog auditLog;
        synchronized (mSync) {
            if (mAuditLog == null && context != null) {
                mAuditLog = new AuditLog(new ContextInfo(Process.myUid()), context.getApplicationContext());
            }
            auditLog = mAuditLog;
        }
        return auditLog;
    }

    public static void n(int i, boolean z, int i2, String str, String str2) {
        ContextInfo contextInfo = new ContextInfo(Binder.getCallingUid());
        EnterpriseLicenseManager.log(contextInfo, "AuditLog.n");
        IAuditLog asInterface = IAuditLog.Stub.asInterface(ServiceManager.getService("auditlog"));
        if (asInterface != null) {
            try {
                asInterface.AuditLogger(contextInfo, 5, i, z, i2, str, str2);
            } catch (RemoteException unused) {
                Log.d(TAG, "Access to AuditLogger not allowed");
            }
        }
    }

    public static void w(int i, boolean z, int i2, String str, String str2) {
        ContextInfo contextInfo = new ContextInfo(Binder.getCallingUid());
        EnterpriseLicenseManager.log(contextInfo, "AuditLog.w");
        IAuditLog asInterface = IAuditLog.Stub.asInterface(ServiceManager.getService("auditlog"));
        if (asInterface != null) {
            try {
                asInterface.AuditLogger(contextInfo, 4, i, z, i2, str, str2);
            } catch (RemoteException unused) {
                Log.d(TAG, "Access to AuditLogger not allowed");
            }
        }
    }

    public final boolean disableAuditLog() {
        EnterpriseLicenseManager.log(this.mContextInfo, "AuditLog.disableAuditLog");
        if (getService() != null) {
            try {
                return this.mAuditService.disableAuditLog(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed to disableAuditLog");
                return false;
            }
        }
        return false;
    }

    public final boolean disableIPTablesLogging() {
        return false;
    }

    public final boolean dumpLogFile(long j, long j2, String str, ParcelFileDescriptor parcelFileDescriptor) {
        EnterpriseLicenseManager.log(this.mContextInfo, "AuditLog.dumpLogFile");
        if (getService() != null) {
            try {
                return this.mAuditService.dumpLogFile(this.mContextInfo, j, j2, str, parcelFileDescriptor);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed to dumpLogFile");
                return false;
            }
        }
        return false;
    }

    public final boolean enableAuditLog() {
        EnterpriseLicenseManager.log(this.mContextInfo, "AuditLog.enableAuditLog");
        if (getService() != null) {
            try {
                return this.mAuditService.enableAuditLog(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed to enableAuditLog");
                return false;
            }
        }
        return false;
    }

    public final boolean enableIPTablesLogging() {
        return false;
    }

    public final AuditLogRulesInfo getAuditLogRules() {
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mAuditService.getAuditLogRules(this.mContextInfo);
                } catch (RemoteException unused) {
                    Log.w(TAG, "Failed to getAuditLogFilter");
                    return null;
                }
            }
            Log.i(TAG, "getAuditLogRules() : This device doesn't support this API.");
            return null;
        }
        return null;
    }

    public final int getCriticalLogSize() {
        if (getService() != null) {
            try {
                return this.mAuditService.getCriticalLogSize(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed to get current log size");
                return 0;
            }
        }
        return 0;
    }

    public final int getCurrentLogFileSize() {
        if (getService() != null) {
            try {
                return this.mAuditService.getCurrentLogFileSize(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed to get current log size");
                return 0;
            }
        }
        return 0;
    }

    public final int getMaximumLogSize() {
        if (getService() != null) {
            try {
                return this.mAuditService.getMaximumLogSize(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed to get current log size");
                return 0;
            }
        }
        return 0;
    }

    public final IAuditLog getService() {
        if (this.mAuditService == null) {
            this.mAuditService = IAuditLog.Stub.asInterface(ServiceManager.getService("auditlog"));
        }
        return this.mAuditService;
    }

    public final boolean isAuditLogEnabled() {
        EnterpriseLicenseManager.log(this.mContextInfo, "AuditLog.isAuditLogEnabled", true);
        if (getService() != null) {
            try {
                return this.mAuditService.isAuditLogEnabled(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed to isAuditLogEnabled");
                return false;
            }
        }
        return false;
    }

    public final boolean isIPTablesLoggingEnabled() {
        return false;
    }

    public final boolean setAuditLogRules(AuditLogRulesInfo auditLogRulesInfo) {
        EnterpriseLicenseManager.log(this.mContextInfo, "AuditLog.setAuditLogRules");
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mAuditService.setAuditLogRules(this.mContextInfo, auditLogRulesInfo);
                } catch (RemoteException unused) {
                    Log.w(TAG, "Failed to setAuditLogFilter");
                    return false;
                }
            }
            Log.i(TAG, "setAuditLogRules() : This device doesn't support this API.");
            return false;
        }
        return false;
    }

    public final boolean setCriticalLogSize(int i) {
        EnterpriseLicenseManager.log(this.mContextInfo, "AuditLog.setCriticalLogSize");
        if (getService() != null) {
            try {
                return this.mAuditService.setCriticalLogSize(this.mContextInfo, i);
            } catch (RemoteException unused) {
                IconCompat$$ExternalSyntheticOutline0.m("Failed to setCriticalLogSize size=", i, TAG);
                return false;
            }
        }
        return false;
    }

    public final boolean setMaximumLogSize(int i) {
        EnterpriseLicenseManager.log(this.mContextInfo, "AuditLog.setMaximumLogSize");
        if (getService() != null) {
            try {
                return this.mAuditService.setMaximumLogSize(this.mContextInfo, i);
            } catch (RemoteException unused) {
                IconCompat$$ExternalSyntheticOutline0.m("Failed to setMaximumLogSize size=", i, TAG);
                return false;
            }
        }
        return false;
    }
}
