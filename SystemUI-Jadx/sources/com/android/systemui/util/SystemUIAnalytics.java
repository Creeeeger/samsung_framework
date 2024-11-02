package com.android.systemui.util;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.samsung.android.rune.CoreRune;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.LogBuilders$EventBuilder;
import com.samsung.context.sdk.samsunganalytics.LogBuilders$ScreenViewBuilder;
import com.samsung.context.sdk.samsunganalytics.LogBuilders$SettingPrefBuilder;
import com.samsung.context.sdk.samsunganalytics.SamsungAnalytics;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemUIAnalytics {
    public static boolean sConfigured = false;
    public static Context sContext = null;
    public static String sCurrentScreenID = "";
    public static final Map sIDMap = new HashMap();

    public static boolean checkConfigurationConfirmed() {
        if (!sConfigured) {
            Log.d("SystemUIAnalytics", "SA is NOT configured");
        }
        return sConfigured;
    }

    public static String convertScreenID(String str) {
        Context context = sContext;
        if (context != null && DeviceState.isSubDisplay(context) && str != null && !str.contains("_S")) {
            return str.concat("_S");
        }
        return str;
    }

    public static void initSystemUIAnalyticsStates(Application application) {
        Log.d("SystemUIAnalytics", "initSystemUIAnalyticsStates");
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
            String[] stringArray = sContext.getResources().getStringArray(R.array.tile_ids);
            for (int i = 0; i < stringArray.length; i += 3) {
                logBuilders$SettingPrefBuilder.addKey("quick_pref", stringArray[i + 2]);
            }
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPBS1100");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPBS1101");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPDS1006");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPPS1027");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPPS1023");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPPS1026");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPPS1025");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPPS1024");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPDS1009");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPDS1010");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPDS1011");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPDS1012");
            logBuilders$SettingPrefBuilder.addKey("quick_pref", "QPDS1014");
            logBuilders$SettingPrefBuilder.addKey("lockscreen_pref", "9008");
            logBuilders$SettingPrefBuilder.addKey("lockscreen_pref", "9009");
            logBuilders$SettingPrefBuilder.addKey("lockscreen_pref", "9010");
            logBuilders$SettingPrefBuilder.addKey("lockscreen_pref", "9008F");
            logBuilders$SettingPrefBuilder.addKey("lockscreen_pref", "9010F");
            logBuilders$SettingPrefBuilder.addKey("navbar_pref", "5191");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0001");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0002");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0003");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0004");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0001_C");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0002_C");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0003_C");
            logBuilders$SettingPrefBuilder.addKey("wallpaper_pref", "WS0004_C");
            logBuilders$SettingPrefBuilder.addKey("notification_pref", "QPNS0001");
            logBuilders$SettingPrefBuilder.addKey("notification_pref", "QPNS0002");
            if (CoreRune.MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING) {
                logBuilders$SettingPrefBuilder.addKey("flex_panel_pref", "F006");
                logBuilders$SettingPrefBuilder.addKey("flex_panel_pref", "F007");
            }
            if (BasicRune.CONTROLS_SAMSUNG_ANALYTICS) {
                logBuilders$SettingPrefBuilder.addKey("controls_prefs", "Dvcs_NumApps");
                logBuilders$SettingPrefBuilder.addKey("controls_prefs", "Dvcs_Apps_Status");
            }
            logBuilders$SettingPrefBuilder.addKey("micmode_pref", "ASMM1030");
            logBuilders$SettingPrefBuilder.addKey("micmode_pref", "ASMM1031");
            logBuilders$SettingPrefBuilder.addKey("micmode_pref", "ASMM1032");
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            Map map = logBuilders$SettingPrefBuilder.map;
            Debug.LogENG(map.toString());
            samsungAnalytics.registerSettingPref(map);
        } catch (Exception e) {
            Log.d("SystemUIAnalytics", "makeSAPreference : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        Arrays.asList(SystemUIAnalytics.class.getFields()).stream().filter(new SystemUIAnalytics$$ExternalSyntheticLambda0()).forEach(new SystemUIAnalytics$$ExternalSyntheticLambda1());
        Context context = sContext;
        if (context != null) {
            String[] stringArray2 = context.getResources().getStringArray(R.array.tile_ids);
            String str = stringArray2[0];
            for (int i2 = 0; i2 < stringArray2.length; i2++) {
                if (i2 % 3 == 0) {
                    str = stringArray2[i2];
                } else {
                    ((HashMap) sIDMap).put(stringArray2[i2], str);
                }
            }
            return;
        }
        Log.d("SystemUIAnalytics", "warning, setConfiguration() needed for tile_ids loading.");
    }

    public static void sendEventCDLog(String str, String str2, Map map) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            Log.d("SystemUIAnalytics", "sendEventLog " + toReadableString(convertScreenID, str2) + ", " + map);
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                logBuilders$EventBuilder.setDimension(map);
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog/all : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }

    public static void sendEventLog(String str, String str2) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            Log.d("SystemUIAnalytics", "sendEventLog " + toReadableString(convertScreenID, str2));
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }

    public static void sendRunestoneEventCDLog(String str, String str2, String str3, String str4, String str5) {
        String convertScreenID = convertScreenID(str);
        if (!checkConfigurationConfirmed()) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(str3, str4);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(str5, new String[]{str3});
        StringBuilder sb = new StringBuilder("sendRunestoneEventCDLog ");
        sb.append(toReadableString(convertScreenID, str2));
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        ExifInterface$$ExternalSyntheticOutline0.m(sb, ", ", str5, "SystemUIAnalytics");
        try {
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
            logBuilders$EventBuilder.setScreenView(convertScreenID);
            logBuilders$EventBuilder.setEventName(str2);
            logBuilders$EventBuilder.setDimension(hashMap);
            logBuilders$EventBuilder.setPersonalizedData(hashMap2);
            samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
        } catch (Exception e) {
            Log.d("SystemUIAnalytics", "sendEventLog/all : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        setCurrentScreenID(convertScreenID);
    }

    public static void sendRunestoneEventCDLog$1(String str, String str2, String str3, String str4, String str5) {
        String convertScreenID = convertScreenID(str);
        if (!checkConfigurationConfirmed()) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(str3, str4);
        hashMap.put("settings", str5);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("QUICK_PANEL_BUTTON", new String[]{str3, "settings"});
        Log.d("SystemUIAnalytics", "sendRunestoneEventCDLog " + toReadableString(convertScreenID, str2) + ", " + str3 + ", " + str4 + ", settings, " + str5 + ", QUICK_PANEL_BUTTON");
        try {
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
            logBuilders$EventBuilder.setScreenView(convertScreenID);
            logBuilders$EventBuilder.setEventName(str2);
            logBuilders$EventBuilder.setDimension(hashMap);
            logBuilders$EventBuilder.setPersonalizedData(hashMap2);
            samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
        } catch (Exception e) {
            Log.d("SystemUIAnalytics", "sendEventLog/all : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        setCurrentScreenID(convertScreenID);
    }

    public static void sendRunstoneEventLog(String str, String str2, String str3) {
        String convertScreenID = convertScreenID(str);
        if (!checkConfigurationConfirmed()) {
            return;
        }
        Log.d("SystemUIAnalytics", "sendRunstoneEventLog " + toReadableString(convertScreenID, str2) + ", " + str3);
        try {
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
            logBuilders$EventBuilder.setScreenView(convertScreenID);
            logBuilders$EventBuilder.setEventName(str2);
            String[] strArr = {str3};
            StringBuilder sb = new StringBuilder();
            String str4 = strArr[0];
            if (sb.length() != 0) {
                sb.append(Utils.Depth.TWO_DEPTH.getCollectionDLM());
            }
            sb.append(str4);
            logBuilders$EventBuilder.set("ps", sb.toString());
            samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
        } catch (Exception e) {
            Log.d("SystemUIAnalytics", "sendRunstoneEventLog : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        setCurrentScreenID(convertScreenID);
    }

    public static void sendScreenViewLog(String str) {
        String str2;
        String convertScreenID = convertScreenID(str);
        if (!checkConfigurationConfirmed() || sCurrentScreenID.equals(convertScreenID)) {
            return;
        }
        StringBuilder sb = new StringBuilder("sendScreenViewLog ");
        HashMap hashMap = (HashMap) sIDMap;
        if (hashMap.containsKey(convertScreenID)) {
            str2 = (String) hashMap.get(convertScreenID);
        } else {
            str2 = "";
        }
        ExifInterface$$ExternalSyntheticOutline0.m(sb, str2, "SystemUIAnalytics");
        try {
            SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
            LogBuilders$ScreenViewBuilder logBuilders$ScreenViewBuilder = new LogBuilders$ScreenViewBuilder();
            if (TextUtils.isEmpty(convertScreenID)) {
                com.samsung.context.sdk.samsunganalytics.internal.util.Utils.throwException("Failure to set Screen View : Screen name cannot be null.");
            } else {
                logBuilders$ScreenViewBuilder.set("pn", convertScreenID);
            }
            samsungAnalytics.sendLog(logBuilders$ScreenViewBuilder.build());
        } catch (Exception e) {
            Log.d("SystemUIAnalytics", "sendScreenViewLog : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
        }
        setCurrentScreenID(convertScreenID);
    }

    public static void setCurrentScreenID(String str) {
        if (!sCurrentScreenID.equals(str)) {
            sCurrentScreenID = str;
        }
    }

    public static String toReadableString(String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        Map map = sIDMap;
        String str4 = "";
        if (!((HashMap) map).containsKey(str)) {
            str3 = "";
        } else {
            str3 = (String) ((HashMap) map).get(str);
        }
        sb.append(str3);
        sb.append(", ");
        if (((HashMap) map).containsKey(str2)) {
            str4 = (String) ((HashMap) map).get(str2);
        }
        sb.append(str4);
        return sb.toString();
    }

    public static void sendEventLog(String str, String str2, String str3) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            HashMap hashMap = new HashMap(1);
            hashMap.put("det", str3);
            Log.d("SystemUIAnalytics", "sendEventLog " + toReadableString(convertScreenID, str2) + ", " + str3);
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                logBuilders$EventBuilder.setDimension(hashMap);
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog/detail : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }

    public static void sendEventCDLog(String str, String str2, String str3, String str4) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            HashMap hashMap = new HashMap();
            hashMap.put(str3, str4);
            Log.d("SystemUIAnalytics", "sendEventLog " + toReadableString(convertScreenID, str2) + ", " + str3 + ", " + str4);
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                logBuilders$EventBuilder.setDimension(hashMap);
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog/all : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }

    public static void sendEventLog(long j, String str, String str2) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            Log.d("SystemUIAnalytics", "sendEventLog " + toReadableString(convertScreenID, str2) + ", " + j);
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                logBuilders$EventBuilder.set("ev", String.valueOf(j));
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog/detail : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }

    public static void sendEventCDLog(String str, String str2, String str3, String str4, String str5, String str6) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            HashMap hashMap = new HashMap();
            hashMap.put(str3, str4);
            hashMap.put(str5, str6);
            Log.d("SystemUIAnalytics", "sendEventLog " + toReadableString(convertScreenID, str2) + ", " + str3 + ", " + str4 + ", " + str5 + ", " + str6);
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                logBuilders$EventBuilder.setDimension(hashMap);
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog/all : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }

    public static void sendEventLog(String str, String str2, String str3, long j) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            HashMap hashMap = new HashMap(1);
            hashMap.put("det", str3);
            Log.d("SystemUIAnalytics", "sendEventLog " + toReadableString(convertScreenID, str2) + ", " + str3 + ", " + j);
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                logBuilders$EventBuilder.setDimension(hashMap);
                logBuilders$EventBuilder.set("ev", String.valueOf(j));
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog/all : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }

    public static void sendEventCDLog(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        String convertScreenID = convertScreenID(str);
        if (checkConfigurationConfirmed()) {
            HashMap hashMap = new HashMap();
            hashMap.put(str3, str4);
            hashMap.put(str5, str6);
            hashMap.put(str7, str8);
            StringBuilder sb = new StringBuilder("sendEventLog ");
            sb.append(toReadableString(convertScreenID, str2));
            sb.append(", ");
            sb.append(str3);
            sb.append(", ");
            sb.append(str4);
            AppOpItem$$ExternalSyntheticOutline0.m(sb, ", ", str5, ", ", str6);
            sb.append(", ");
            sb.append(str7);
            sb.append(", ");
            sb.append(str8);
            Log.d("SystemUIAnalytics", sb.toString());
            try {
                SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
                LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
                logBuilders$EventBuilder.setScreenView(convertScreenID);
                logBuilders$EventBuilder.setEventName(str2);
                logBuilders$EventBuilder.setDimension(hashMap);
                samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
            } catch (Exception e) {
                Log.d("SystemUIAnalytics", "sendEventLog/all : " + e.getMessage() + ", " + android.os.Debug.getCallers(3));
            }
            setCurrentScreenID(convertScreenID);
        }
    }
}
