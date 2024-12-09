package com.sec.internal.ims.entitlement.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.log.IMSLog;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SimSwapNSDSConfigHelper extends NSDSConfigHelper {
    public static final String KEY_NATIVE_MSISDN = "NATIVE_MSISDN";
    private static final String LOG_TAG = "SimSwapNSDSConfigHelper";
    private static Map<String, String> sDataMap = new HashMap();

    public static synchronized String getConfigValue(Context context, String str) {
        String str2;
        synchronized (SimSwapNSDSConfigHelper.class) {
            if (sDataMap.isEmpty()) {
                Map<String, String> loadConfigFromDb = loadConfigFromDb(context);
                if (!loadConfigFromDb.isEmpty()) {
                    sDataMap.putAll(loadConfigFromDb);
                    addDerivedConfigToMap();
                }
            }
            str2 = sDataMap.get(str);
        }
        return str2;
    }

    public static synchronized void clear() {
        synchronized (SimSwapNSDSConfigHelper.class) {
            sDataMap.clear();
        }
    }

    private static void addDerivedConfigToMap() {
        String str = sDataMap.get(NSDSConfigHelper.KEY_URL_ENTITLEMENT_SERVER);
        if (str == null || str.endsWith("generic_devices")) {
            return;
        }
        sDataMap.put(NSDSConfigHelper.KEY_URL_ENTITLEMENT_SERVER, str + "/generic_devices");
    }

    public static Map<String, String> loadConfigFromDb(Context context) {
        HashMap hashMap = new HashMap();
        try {
            Cursor query = context.getContentResolver().query(NSDSContractExt.SimSwapNsdsConfigs.CONTENT_URI, new String[]{NSDSContractExt.NsdsConfigColumns.PNAME, NSDSContractExt.NsdsConfigColumns.PVALUE}, null, null, null);
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
}
