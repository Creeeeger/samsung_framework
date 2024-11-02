package com.samsung.systemui.splugins;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.ArraySet;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SPluginPrefs {
    private static final String HAS_PLUGINS = "plugins";
    private static final String PLUGIN_ACTIONS = "actions";
    private static final String PREFIX_UNCAUGHT_EXCEPTION_COUNT = "ExceptionCount";
    private static final String PREFIX_UNCAUGHT_EXCEPTION_FIRST_TIME = "FirstExceptionTime";
    private static final String PREFS = "splugin_prefs";
    private final Set<String> mPluginActions;
    private final SharedPreferences mSharedPrefs;

    public SPluginPrefs(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS, 0);
        this.mSharedPrefs = sharedPreferences;
        this.mPluginActions = new ArraySet(sharedPreferences.getStringSet(PLUGIN_ACTIONS, null));
    }

    public static long getFirstUncaughtExceptionTime(Context context) {
        return context.getSharedPreferences(PREFS, 0).getLong(PREFIX_UNCAUGHT_EXCEPTION_FIRST_TIME, 0L);
    }

    public static int getUncaughtExceptionCount(Context context) {
        return context.getSharedPreferences(PREFS, 0).getInt(PREFIX_UNCAUGHT_EXCEPTION_COUNT, 0);
    }

    public static boolean hasPlugins(Context context) {
        return context.getSharedPreferences(PREFS, 0).getBoolean(HAS_PLUGINS, false);
    }

    public static void setFirstUncaughtExceptionTime(Context context, long j) {
        context.getSharedPreferences(PREFS, 0).edit().putLong(PREFIX_UNCAUGHT_EXCEPTION_FIRST_TIME, j).commit();
    }

    public static void setHasPlugins(Context context) {
        context.getSharedPreferences(PREFS, 0).edit().putBoolean(HAS_PLUGINS, true).commit();
    }

    public static void setUncaughtExceptionCount(Context context, int i) {
        context.getSharedPreferences(PREFS, 0).edit().putInt(PREFIX_UNCAUGHT_EXCEPTION_COUNT, i).commit();
    }

    public synchronized void addAction(String str) {
        if (this.mPluginActions.add(str)) {
            this.mSharedPrefs.edit().putStringSet(PLUGIN_ACTIONS, this.mPluginActions).commit();
        }
    }

    public Set<String> getPluginList() {
        return this.mPluginActions;
    }
}
