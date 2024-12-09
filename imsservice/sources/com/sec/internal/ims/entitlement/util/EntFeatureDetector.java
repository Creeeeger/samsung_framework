package com.sec.internal.ims.entitlement.util;

import android.util.Log;

/* loaded from: classes.dex */
public class EntFeatureDetector {
    private static final String LOG_TAG = "EntFeatureDetector";

    public static boolean checkVSimFeatureEnabled(String str, int i) {
        String configServer = NSDSConfigHelper.getConfigServer(i);
        Log.i(LOG_TAG, "checkVSimFeatureEnabled: " + str + " configserver:" + configServer);
        return str != null && str.equalsIgnoreCase(configServer);
    }

    public static boolean checkWFCAutoOnEnabled(int i) {
        boolean isWFCAutoOnEnabled = NSDSConfigHelper.isWFCAutoOnEnabled(i);
        Log.i(LOG_TAG, "checkWFCAutoOnEnabled: " + isWFCAutoOnEnabled);
        return isWFCAutoOnEnabled;
    }
}
