package com.airbnb.lottie.utils;

import android.util.Log;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Logger {
    public static final LogcatLogger INSTANCE = new LogcatLogger();

    public static void debug() {
        INSTANCE.getClass();
    }

    public static void warning(String str, Throwable th) {
        INSTANCE.getClass();
        HashSet hashSet = (HashSet) LogcatLogger.loggedMessages;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        hashSet.add(str);
    }

    public static void warning(String str) {
        INSTANCE.getClass();
        HashSet hashSet = (HashSet) LogcatLogger.loggedMessages;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, null);
        hashSet.add(str);
    }
}
