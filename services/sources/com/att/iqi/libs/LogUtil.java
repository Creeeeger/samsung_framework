package com.att.iqi.libs;

import android.util.Log;

/* loaded from: classes3.dex */
public class LogUtil {
    private static String LOG_TAG = "IQIConcierge";
    private static boolean sDebug = false;

    public static void loge(String str) {
        Log.e(LOG_TAG, str);
    }

    public static void loge(String str, Throwable th) {
        Log.e(LOG_TAG, str, th);
    }

    public static void logd(String str) {
        Log.d(LOG_TAG, str);
    }

    public static void logd(String str, Throwable th) {
        Log.d(LOG_TAG, str, th);
    }

    public static void logw(String str) {
        Log.w(LOG_TAG, str);
    }

    public static void logw(String str, Throwable th) {
        Log.w(LOG_TAG, str, th);
    }

    public static void enableLogging(boolean z) {
        sDebug = z;
    }

    public static boolean canLog() {
        return sDebug;
    }
}
