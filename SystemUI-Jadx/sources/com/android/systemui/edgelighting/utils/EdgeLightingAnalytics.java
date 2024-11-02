package com.android.systemui.edgelighting.utils;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Slog;
import com.android.systemui.R;
import com.android.systemui.util.DeviceState;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.LogBuilders$EventBuilder;
import com.samsung.context.sdk.samsunganalytics.LogBuilders$ScreenViewBuilder;
import com.samsung.context.sdk.samsunganalytics.LogBuilders$SettingPrefBuilder;
import com.samsung.context.sdk.samsunganalytics.SamsungAnalytics;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeLightingAnalytics {
    public static boolean sConfigured = false;
    public static Context sContext = null;
    public static String sCurrentScreenID = "";
    public static final Map sIDMap = new HashMap();

    public static void initEdgeLightingAnalyticsStates(Application application) {
        Slog.d("EdgeLightingAnalytics", "initEdgeLightingAnalyticsStates");
        Configuration configuration = new Configuration();
        configuration.trackingId = "472-399-5110257";
        configuration.version = "unspecified";
        configuration.enableAutoDeviceId = true;
        configuration.isAlwaysRunningApp = true;
        SamsungAnalytics.getInstanceAndConfig(application, configuration);
        sContext = application.getApplicationContext();
        sConfigured = true;
        try {
            LogBuilders$SettingPrefBuilder logBuilders$SettingPrefBuilder = new LogBuilders$SettingPrefBuilder();
            logBuilders$SettingPrefBuilder.addKey("edgelighting_pref", "36105");
            logBuilders$SettingPrefBuilder.addKey("edgelighting_pref", "36106");
            logBuilders$SettingPrefBuilder.addKey("edgelighting_pref", "36107");
            logBuilders$SettingPrefBuilder.addKey("edgelighting_pref", "36108");
            logBuilders$SettingPrefBuilder.addKey("edgelighting_pref", "36110");
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            Map map = logBuilders$SettingPrefBuilder.map;
            Debug.LogENG(map.toString());
            samsungAnalytics.registerSettingPref(map);
        } catch (Exception e) {
            Slog.d("EdgeLightingAnalytics", "makeSAPreference : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        Arrays.asList(EdgeLightingAnalytics.class.getFields()).stream().filter(new EdgeLightingAnalytics$$ExternalSyntheticLambda0()).forEach(new EdgeLightingAnalytics$$ExternalSyntheticLambda1());
        Context context = sContext;
        if (context != null) {
            String[] stringArray = context.getResources().getStringArray(R.array.tile_ids);
            String str = stringArray[0];
            for (int i = 0; i < stringArray.length; i++) {
                if (i % 3 == 0) {
                    str = stringArray[i];
                } else {
                    ((HashMap) sIDMap).put(stringArray[i], str);
                }
            }
            return;
        }
        Slog.d("EdgeLightingAnalytics", "warning, setConfiguration() needed for tile_ids loading.");
    }

    public static void sendEventLog(String str, String str2) {
        String str3;
        Context context = sContext;
        if (context != null) {
            DeviceState.isSubDisplay(context);
        }
        if (!sConfigured) {
            Slog.d("EdgeLightingAnalytics", "SA is NOT configured");
        }
        if (!sConfigured) {
            return;
        }
        StringBuilder sb = new StringBuilder("sendEventLog ");
        StringBuilder sb2 = new StringBuilder();
        HashMap hashMap = (HashMap) sIDMap;
        String str4 = "";
        if (!hashMap.containsKey(str)) {
            str3 = "";
        } else {
            str3 = (String) hashMap.get(str);
        }
        sb2.append(str3);
        sb2.append(", ");
        if (hashMap.containsKey(str2)) {
            str4 = (String) hashMap.get(str2);
        }
        sb2.append(str4);
        sb.append(sb2.toString());
        Slog.d("EdgeLightingAnalytics", sb.toString());
        try {
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
            logBuilders$EventBuilder.setScreenView(str);
            logBuilders$EventBuilder.setEventName(str2);
            samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
        } catch (Exception e) {
            Slog.d("EdgeLightingAnalytics", "sendEventLog : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        if (!sCurrentScreenID.equals(str)) {
            sCurrentScreenID = str;
        }
    }

    public static void sendScreenViewLog(String str) {
        String str2;
        Context context = sContext;
        if (context != null) {
            DeviceState.isSubDisplay(context);
        }
        if (!sConfigured) {
            Slog.d("EdgeLightingAnalytics", "SA is NOT configured");
        }
        if (!sConfigured || sCurrentScreenID.equals(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder("sendScreenViewLog ");
        HashMap hashMap = (HashMap) sIDMap;
        if (hashMap.containsKey(str)) {
            str2 = (String) hashMap.get(str);
        } else {
            str2 = "";
        }
        sb.append(str2);
        Slog.d("EdgeLightingAnalytics", sb.toString());
        try {
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            LogBuilders$ScreenViewBuilder logBuilders$ScreenViewBuilder = new LogBuilders$ScreenViewBuilder();
            if (TextUtils.isEmpty(str)) {
                com.samsung.context.sdk.samsunganalytics.internal.util.Utils.throwException("Failure to set Screen View : Screen name cannot be null.");
            } else {
                logBuilders$ScreenViewBuilder.set("pn", str);
            }
            samsungAnalytics.sendLog(logBuilders$ScreenViewBuilder.build());
        } catch (Exception e) {
            Slog.d("EdgeLightingAnalytics", "sendScreenViewLog : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        if (!sCurrentScreenID.equals(str)) {
            sCurrentScreenID = str;
        }
    }
}
