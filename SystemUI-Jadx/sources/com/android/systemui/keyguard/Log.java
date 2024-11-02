package com.android.systemui.keyguard;

import com.android.systemui.log.LogLevel;
import com.android.systemui.util.LogUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Log {
    public static void d(String str, String str2) {
        android.util.Log.d(str, str2);
        KeyguardDumpLog.log(str, LogLevel.DEBUG, str2, null);
    }

    public static void e(String str, String str2) {
        android.util.Log.e(str, str2);
        KeyguardDumpLog.log(str, LogLevel.ERROR, str2, null);
    }

    public static void i(String str, String str2) {
        android.util.Log.i(str, str2);
        KeyguardDumpLog.log(str, LogLevel.INFO, str2, null);
    }

    public static void w(String str, String str2) {
        android.util.Log.w(str, str2);
        KeyguardDumpLog.log(str, LogLevel.WARNING, str2, null);
    }

    public static void d(String str, String str2, Object... objArr) {
        d(str, LogUtil.getMsg(str2, objArr));
    }
}
