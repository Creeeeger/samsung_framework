package com.sec.internal.log;

import android.os.SemSystemProperties;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;

/* loaded from: classes.dex */
public class AECLog {
    private static final String LOG_TAG = "AECLog";
    private static final String LOG_LEVEL_PROP_LOW = "0x4f4c";
    private static final String sysLoglevel = SemSystemProperties.get("ro.boot.debug_level", LOG_LEVEL_PROP_LOW);
    private static final boolean SHIP_BUILD = CloudMessageProviderContract.JsonData.TRUE.equals(SemSystemProperties.get("ro.product_ship", ConfigConstants.VALUE.INFO_COMPLETED));

    public static void d(String str, String str2) {
        Log.d(LOG_TAG, str + ": " + str2);
    }

    public static void d(String str, String str2, int i) {
        Log.d(LOG_TAG, str + "<" + i + ">: " + str2);
    }

    public static void e(String str, String str2) {
        Log.e(LOG_TAG, str + ": " + str2);
    }

    public static void e(String str, String str2, int i) {
        Log.e(LOG_TAG, str + "<" + i + ">: " + str2);
    }

    public static void i(String str, String str2) {
        Log.i(LOG_TAG, str + ": " + str2);
    }

    public static void i(String str, String str2, int i) {
        Log.i(LOG_TAG, str + "<" + i + ">: " + str2);
    }

    public static void s(String str, String str2) {
        if (SHIP_BUILD || sysLoglevel.equalsIgnoreCase(LOG_LEVEL_PROP_LOW)) {
            return;
        }
        d(str, str2);
    }

    public static void s(String str, String str2, int i) {
        if (SHIP_BUILD || sysLoglevel.equalsIgnoreCase(LOG_LEVEL_PROP_LOW)) {
            return;
        }
        d(str, str2, i);
    }
}
