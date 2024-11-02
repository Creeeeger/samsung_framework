package com.sec.android.diagmonagent.log.ged.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.sec.android.diagmonagent.common.logger.AppLog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PreferenceUtils {
    public static String getDiagmonPreference(Context context, String str, String str2) {
        return context.getSharedPreferences("DIAGMON_PREFERENCE", 0).getString(str, str2);
    }

    public static void setDiagmonPreference(Context context, String str, String str2) {
        if (str2 == null) {
            AppLog.d(str.concat(" - value is null"));
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("DIAGMON_PREFERENCE", 0).edit();
        edit.putString(str, str2);
        edit.apply();
    }
}
