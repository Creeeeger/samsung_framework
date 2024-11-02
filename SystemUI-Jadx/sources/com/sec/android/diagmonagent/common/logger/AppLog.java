package com.sec.android.diagmonagent.common.logger;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AppLog {
    public static String SERVICE_ID_TAG = "";
    public static Context mContext = null;
    public static String mServiceId = "";
    public static AppLogData sInstance;

    public static void d(String str) {
        if (mContext != null && !TextUtils.isEmpty(mServiceId)) {
            AppLogData appLogData = sInstance;
            String str2 = SERVICE_ID_TAG;
            appLogData.getClass();
            try {
                appLogData.makeAdditionalData(str2);
                appLogData.printToFile("[d]", "DIAGMON_SDK" + appLogData.mMessagePrefix + str);
                StringBuilder sb = new StringBuilder("DIAGMON_SDK");
                sb.append(appLogData.mMessagePrefix);
                Log.d(sb.toString(), str);
                return;
            } catch (Exception e) {
                Log.e("DIAGMON_SDK", e.getMessage());
                return;
            }
        }
        Log.d("DIAGMON_SDK", str);
    }

    public static void e(String str) {
        if (mContext != null && !TextUtils.isEmpty(mServiceId)) {
            AppLogData appLogData = sInstance;
            String str2 = SERVICE_ID_TAG;
            appLogData.getClass();
            try {
                appLogData.makeAdditionalData(str2);
                appLogData.printToFile("[e]", "DIAGMON_SDK" + appLogData.mMessagePrefix + str);
                StringBuilder sb = new StringBuilder("DIAGMON_SDK");
                sb.append(appLogData.mMessagePrefix);
                Log.e(sb.toString(), str);
                return;
            } catch (Exception e) {
                Log.e("DIAGMON_SDK", e.getMessage());
                return;
            }
        }
        Log.e("DIAGMON_SDK", str);
    }

    public static void i(String str) {
        if (mContext != null && !TextUtils.isEmpty(mServiceId)) {
            AppLogData appLogData = sInstance;
            String str2 = SERVICE_ID_TAG;
            appLogData.getClass();
            try {
                appLogData.makeAdditionalData(str2);
                appLogData.printToFile("[i]", "DIAGMON_SDK" + appLogData.mMessagePrefix + str);
                StringBuilder sb = new StringBuilder("DIAGMON_SDK");
                sb.append(appLogData.mMessagePrefix);
                Log.i(sb.toString(), str);
                return;
            } catch (Exception e) {
                Log.e("DIAGMON_SDK", e.getMessage());
                return;
            }
        }
        Log.i("DIAGMON_SDK", str);
    }

    public static void w(String str) {
        if (mContext != null && !TextUtils.isEmpty(mServiceId)) {
            AppLogData appLogData = sInstance;
            String str2 = SERVICE_ID_TAG;
            appLogData.getClass();
            try {
                appLogData.makeAdditionalData(str2);
                appLogData.printToFile("[w]", "DIAGMON_SDK" + appLogData.mMessagePrefix + str);
                StringBuilder sb = new StringBuilder("DIAGMON_SDK");
                sb.append(appLogData.mMessagePrefix);
                Log.w(sb.toString(), str);
                return;
            } catch (Exception e) {
                Log.e("DIAGMON_SDK", e.getMessage());
                return;
            }
        }
        Log.w("DIAGMON_SDK", str);
    }
}
