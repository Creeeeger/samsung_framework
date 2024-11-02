package com.samsung.context.sdk.samsunganalytics.internal.util;

import android.os.Build;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Debug {
    public static void LogD(String str) {
        Log.d("SamsungAnalytics605033", str);
    }

    public static void LogE(String str) {
        Log.e("SamsungAnalytics605033", str);
    }

    public static void LogENG(String str) {
        if (Build.TYPE.equals("eng")) {
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("[ENG ONLY] ", str, "SamsungAnalytics605033");
        }
    }

    public static void LogException(Class cls, Exception exc) {
        Log.w("SamsungAnalytics605033", "[" + cls.getSimpleName() + "] " + exc.getClass().getSimpleName() + " " + exc.getMessage());
    }

    public static void LogD(String str, String str2) {
        LogD("[" + str + "] " + str2);
    }
}
