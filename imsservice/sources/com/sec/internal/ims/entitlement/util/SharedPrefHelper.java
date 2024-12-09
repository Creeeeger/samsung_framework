package com.sec.internal.ims.entitlement.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.sec.internal.log.IMSLog;
import java.util.Map;

/* loaded from: classes.dex */
public class SharedPrefHelper {
    private static final String LOG_TAG = "SharedPrefHelper";
    private final String mSharedPrefName;

    public SharedPrefHelper(String str) {
        this.mSharedPrefName = str;
    }

    public String get(Context context, String str) {
        return context.getSharedPreferences(this.mSharedPrefName, 0).getString(str, null);
    }

    public long getLong(Context context, String str, long j) {
        return context.getSharedPreferences(this.mSharedPrefName, 0).getLong(str, j);
    }

    public void save(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(this.mSharedPrefName, 0).edit();
        edit.putString(str, str2);
        edit.commit();
        IMSLog.s(LOG_TAG, "saved preference with key:" + str + " Value:" + str2);
    }

    public void save(Context context, String str, long j) {
        SharedPreferences.Editor edit = context.getSharedPreferences(this.mSharedPrefName, 0).edit();
        edit.putLong(str, j);
        edit.commit();
        IMSLog.s(LOG_TAG, "saved preference with key:" + str + " Value:" + j);
    }

    public void save(Context context, Map<String, String> map) {
        SharedPreferences.Editor edit = context.getSharedPreferences(this.mSharedPrefName, 0).edit();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            edit.putString(entry.getKey(), entry.getValue());
        }
        edit.commit();
    }

    public void remove(Context context, String... strArr) {
        SharedPreferences.Editor edit = context.getSharedPreferences(this.mSharedPrefName, 0).edit();
        for (String str : strArr) {
            edit.remove(str);
        }
        edit.commit();
    }
}
