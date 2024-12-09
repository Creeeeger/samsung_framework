package com.sec.internal.ims.entitlement.storagehelper;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import com.sec.internal.constants.ims.entitilement.EntitlementConfigContract;
import com.sec.internal.constants.ims.entitilement.data.ResponseManageConnectivity;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class EntitlementConfigDBHelper extends NSDSDatabaseHelper {
    private static final String LOG_TAG = "EntitlementConfigDBHelper";

    public EntitlementConfigDBHelper(Context context) {
        super(context);
    }

    @Override // com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper
    public boolean isDeviceConfigAvailable(String str) {
        if (getDeviceConfig(str) != null) {
            return true;
        }
        IMSLog.i(LOG_TAG, "isDeviceConfigAvailable: no config");
        return false;
    }

    @Override // com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper
    public String getDeviceConfig(String str) {
        ContentResolver contentResolver = this.mResolver;
        Uri uri = EntitlementConfigContract.DeviceConfig.CONTENT_URI;
        Cursor query = contentResolver.query(uri, new String[]{"device_config"}, "imsi = ?", new String[]{str}, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(0);
                    query.close();
                    return string;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query == null) {
            return null;
        }
        query.close();
        return null;
    }

    @Override // com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper
    public void insertDeviceConfig(ResponseManageConnectivity responseManageConnectivity, String str, String str2) {
        insertDeviceConfig(this.mContext, responseManageConnectivity.deviceConfig, str, str2);
    }

    public static void insertDeviceConfig(Context context, String str, String str2, String str3) {
        ContentValues contentValues;
        Context createCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
        if (TextUtils.isEmpty(str)) {
            contentValues = null;
        } else {
            contentValues = new ContentValues();
            if (str2 != null) {
                contentValues.put("version", str2);
            }
            contentValues.put("imsi", str3);
            contentValues.put("device_config", str);
        }
        if (contentValues == null || contentValues.size() == 0 || createCredentialProtectedStorageContext.getContentResolver().insert(EntitlementConfigContract.DeviceConfig.CONTENT_URI, contentValues) == null) {
            return;
        }
        IMSLog.i(LOG_TAG, "inserted device config in device config successfully");
    }

    @Override // com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper
    public void updateDeviceConfig(ResponseManageConnectivity responseManageConnectivity, String str, String str2) {
        updateDeviceConfig(this.mContext, responseManageConnectivity.deviceConfig, str, str2);
    }

    public static void updateDeviceConfig(Context context, String str, String str2, String str3) {
        String str4 = LOG_TAG;
        IMSLog.i(str4, "updateDeviceConfig: version:" + str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Context createCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
        ContentValues contentValues = new ContentValues();
        if (str2 != null) {
            contentValues.put("version", str2);
        }
        contentValues.put("device_config", str);
        if (createCredentialProtectedStorageContext.getContentResolver().update(EntitlementConfigContract.DeviceConfig.CONTENT_URI, contentValues, "imsi = ?", new String[]{str3}) > 0) {
            IMSLog.i(str4, "updated device config in device config successfully with version:" + str2);
        }
    }

    public static void deleteConfig(Context context, String str) {
        if (context.createCredentialProtectedStorageContext().getContentResolver().delete(EntitlementConfigContract.DeviceConfig.CONTENT_URI, "imsi = ?", new String[]{str}) > 0) {
            IMSLog.s(LOG_TAG, "Deleted device config: successfully for imsi:" + str);
        }
    }

    public static String getNsdsUrlFromDeviceConfig(Context context, String str) {
        String str2 = null;
        try {
            Cursor query = context.createCredentialProtectedStorageContext().getContentResolver().query(EntitlementConfigContract.DeviceConfig.buildXPathExprUri("//janskyConfig/entitlement_server_FQDN"), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str2 = query.getString(1);
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLException e) {
            IMSLog.s(LOG_TAG, "getNsdsUrlFromDeviceConfig: " + e.getMessage());
        }
        if (str2 == null) {
            return str;
        }
        if (!str2.endsWith("generic_devices")) {
            str2 = str2 + "/generic_devices";
        }
        IMSLog.i(LOG_TAG, "getNsdsUrlFromDeviceConfig: " + str2);
        return str2;
    }

    public static boolean migrationToCe(Context context, String str) {
        if (!context.createCredentialProtectedStorageContext().moveDatabaseFrom(context, str)) {
            IMSLog.e(LOG_TAG, "Failed to maigrate DB.");
            return false;
        }
        if (!context.deleteDatabase(str)) {
            IMSLog.e(LOG_TAG, "Failed delete DB on DE.");
            return false;
        }
        IMSLog.i(LOG_TAG, "migration is done");
        return true;
    }
}
