package com.sec.ims.settings;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class GlobalSettingsLoader {
    private static final String LOG_TAG = "GlobalSettingsLoader";

    public static GlobalSettings loadGlobalSettings(Context context, String str) {
        return GlobalSettings.getInstance(context);
    }

    public static GlobalSettings loadGlobalSettings(Context context, int i) {
        return GlobalSettings.getInstance(context, i);
    }
}
