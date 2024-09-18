package com.samsung.android.authenticator;

import android.util.Log;

/* loaded from: classes5.dex */
final class AuthenticatorLog {
    private static final String TAG = "SAMgr_";
    private static final int sLogLevel = 4;

    private AuthenticatorLog() {
        throw new AssertionError();
    }

    static void v(String tag, String msg) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(String tag, String msg) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(String tag, String msg) {
        Log.i(TAG + tag, msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void w(String tag, String msg) {
        Log.w(TAG + tag, msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(String tag, String msg) {
        Log.e(TAG + tag, msg);
    }

    static String getStackTraceString(Throwable throwable) {
        return Log.getStackTraceString(throwable);
    }
}
