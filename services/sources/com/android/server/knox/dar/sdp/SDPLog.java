package com.android.server.knox.dar.sdp;

import android.os.SystemProperties;
import android.util.Log;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public final class SDPLog {
    public static final boolean DEBUG;

    static {
        DEBUG = "userdebug".equals(SystemProperties.get("ro.build.type")) || "eng".equals(SystemProperties.get("ro.build.type"));
    }

    public static void d(String str) {
        d(null, str);
    }

    public static void d(String str, String str2) {
        SDPLogger.enqMessage(SDPLogUtil.makeDebugMessage(str2));
        if (str2 != null) {
            if (str == null) {
                str = "SDPLog";
            }
            Log.d(str, str2);
        }
    }

    public static void i(String str) {
        i(null, str, new Throwable());
    }

    public static void i(String str, String str2) {
        i(str, str2, new Throwable());
    }

    public static void i(String str, String str2, Throwable th) {
        for (String str3 : SDPLogUtil.makeInfoMessages(str2, th)) {
            SDPLogger.enqMessage(str3);
        }
        if (str2 != null) {
            if (str == null) {
                str = "SDPLog";
            }
            Log.i(str, str2);
        }
    }

    public static void e(Exception exc) {
        e(null, exc);
    }

    public static void e(String str, Exception exc) {
        e(null, str, exc);
    }

    public static void e(String str, String str2, Exception exc) {
        for (String str3 : SDPLogUtil.makeErrorMessages(str2, exc)) {
            SDPLogger.enqMessage(str3);
        }
        if (str2 != null) {
            if (str == null) {
                str = "SDPLog";
            }
            Log.e(str, str2);
            exc.printStackTrace();
        }
    }

    public static void p(Object... objArr) {
        if (DEBUG) {
            String currentTime = SDPLogUtil.getCurrentTime();
            String makePairs = SDPLogUtil.makePairs(objArr);
            SDPLogger.enqMessage(SDPLogUtil.makeParamMessage(currentTime, makePairs));
            Log.d("SDPLog.p", makePairs);
        }
    }

    public static void dump(PrintWriter printWriter) {
        SDPLogger.dump(printWriter);
    }
}
