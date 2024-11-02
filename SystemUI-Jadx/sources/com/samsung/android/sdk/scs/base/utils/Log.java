package com.samsung.android.sdk.scs.base.utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Log {
    public static String concatPrefixTag(String str) {
        return "ScsApi@".concat(str.replace("ScsApi@", ""));
    }

    public static void d(String str, String str2) {
        android.util.Log.d(concatPrefixTag(str), str2);
    }

    public static void e(String str, String str2) {
        android.util.Log.e(concatPrefixTag(str), str2);
    }

    public static void i(String str, String str2) {
        android.util.Log.i(concatPrefixTag(str), str2);
    }
}
