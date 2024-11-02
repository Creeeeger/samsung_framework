package com.android.systemui;

import android.content.Context;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Prefs {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Key {
    }

    private Prefs() {
    }

    public static boolean getBoolean(Context context, String str, boolean z) {
        return context.getSharedPreferences(context.getPackageName(), 0).getBoolean(str, z);
    }

    public static int getInt(Context context, String str, int i) {
        return context.getSharedPreferences(context.getPackageName(), 0).getInt(str, i);
    }

    public static String getString(Context context, String str, String str2) {
        return context.getSharedPreferences(context.getPackageName(), 0).getString(str, str2);
    }

    public static void putBoolean(Context context, String str, boolean z) {
        context.getSharedPreferences(context.getPackageName(), 0).edit().putBoolean(str, z).apply();
    }

    public static void putInt(Context context, String str, int i) {
        context.getSharedPreferences(context.getPackageName(), 0).edit().putInt(str, i).apply();
    }

    public static void putString(Context context, String str, String str2) {
        context.getSharedPreferences(context.getPackageName(), 0).edit().putString(str, str2).apply();
    }
}
