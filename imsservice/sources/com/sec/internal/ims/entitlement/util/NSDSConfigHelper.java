package com.sec.internal.ims.entitlement.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.UserManager;
import android.text.TextUtils;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.log.IMSLog;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class NSDSConfigHelper {
    public static final String KEY_CONFIG_REFRESH_ON_POWERUP = "configRefreshOnPowerUp";
    public static final String KEY_GCM_EVT_LST_MSG_SENDER_ID = "GCM_Sender_ID_Event_List";
    public static final String KEY_GCM_PUSH_MSG_SENDER_ID = "GCM_Sender_ID";
    public static final String KEY_URL_ENTITLEMENT_SERVER = "entitlement_server_FQDN";
    private static final String LOG_TAG = "NSDSConfigHelper";
    private static Map<String, String> sDataMap = new HashMap();

    public static synchronized void clear() {
        synchronized (NSDSConfigHelper.class) {
            sDataMap.clear();
        }
    }

    public static synchronized String getConfigValue(Context context, String str, String str2) {
        String str3;
        synchronized (NSDSConfigHelper.class) {
            if (sDataMap.isEmpty()) {
                Map<String, String> loadConfigFromDb = loadConfigFromDb(context, str);
                if (!loadConfigFromDb.isEmpty()) {
                    sDataMap.putAll(loadConfigFromDb);
                    addDerivedConfigToMap();
                }
            }
            str3 = sDataMap.get(str2);
        }
        return str3;
    }

    public static synchronized String getConfigValue(Context context, String str, String str2, String str3) {
        synchronized (NSDSConfigHelper.class) {
            String configValue = getConfigValue(context, str, str2);
            if (configValue != null) {
                str3 = configValue;
            }
        }
        return str3;
    }

    private static void addDerivedConfigToMap() {
        String str = sDataMap.get(KEY_URL_ENTITLEMENT_SERVER);
        if (str == null || str.endsWith("generic_devices")) {
            return;
        }
        sDataMap.put(KEY_URL_ENTITLEMENT_SERVER, str + "/generic_devices");
    }

    protected static Map<String, String> loadConfigFromDb(Context context, String str) {
        HashMap hashMap = new HashMap();
        try {
            Cursor query = context.getContentResolver().query(NSDSContractExt.NsdsConfigs.CONTENT_URI, new String[]{NSDSContractExt.NsdsConfigColumns.PNAME, NSDSContractExt.NsdsConfigColumns.PVALUE}, "imsi = ?", new String[]{str}, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        hashMap.put(string, string2);
                        IMSLog.s(LOG_TAG, "Key:" + string + " Value:" + string2);
                    } finally {
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e) {
            IMSLog.s(LOG_TAG, "!!!Could not load nsds config from db" + e.getMessage());
        }
        return hashMap;
    }

    public static boolean getConfigRefreshOnPowerUp(Context context, String str) {
        return getBooleanValue(getConfigValue(context, str, KEY_CONFIG_REFRESH_ON_POWERUP, "0"));
    }

    private static boolean getBooleanValue(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.equals("1");
        } catch (NumberFormatException e) {
            IMSLog.s(LOG_TAG, "Invalid confifg value:" + str + e.getMessage());
            return false;
        }
    }

    public static boolean isUserUnlocked(Context context) {
        if (context != null) {
            if (((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked()) {
                return true;
            }
        } else {
            IMSLog.s(LOG_TAG, "context is null");
        }
        IMSLog.i(LOG_TAG, "User is lock");
        return false;
    }

    public static String getConfigServer(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.Entitlement.SUPPORT_CONFIGSERVER, "");
    }

    public static boolean isWFCAutoOnEnabled(int i) {
        return ImsRegistry.getBoolean(i, GlobalSettingsConstants.Entitlement.WFC_AUTO_ON, false);
    }

    public static String getAllowedGid(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.Entitlement.ALLOWED_GID, "");
    }
}
