package com.samsung.android.authnrservice.service;

import android.util.Log;

/* loaded from: classes2.dex */
public abstract class AuthnrLog {
    public static void d(String str, String str2) {
    }

    public static void v(String str, String str2) {
    }

    public static void i(String str, String str2) {
        Log.i("SASvc_" + str, str2);
    }

    public static void w(String str, String str2) {
        Log.w("SASvc_" + str, str2);
    }

    public static void e(String str, String str2) {
        Log.e("SASvc_" + str, str2);
    }
}
