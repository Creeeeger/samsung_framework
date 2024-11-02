package com.samsung.android.sdk.command.util;

import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LogWrapper {
    public static void e(String str, String str2) {
        Log.e("[CmdL-2.0.8]".concat(str), str2);
    }

    public static void i(String str) {
        Log.i("[CmdL-2.0.8]CommandProvider", str);
    }
}
