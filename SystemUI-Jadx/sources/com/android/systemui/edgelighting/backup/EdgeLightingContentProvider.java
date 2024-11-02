package com.android.systemui.edgelighting.backup;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.UriMatcher;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Debug;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Slog;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.edgelighting.utils.EdgeLightingSettingUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.regex.Pattern;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class EdgeLightingContentProvider extends ContentProvider {
    public static final UriMatcher mUriMatcher;
    public int mThemeSeq;
    public static final boolean DEBUG = Debug.semIsProductDev();
    public static final String END_DELEMETER = ";";
    public static final String AND_DELEMETER = "|";
    public static final Uri APP_LIST_CONTENT_URI = Uri.parse("content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/app_list");
    public static final Uri CUSTOM_COLOR_LIST_CONTENT_URI = Uri.parse("content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/custom_color_list");
    public static final Uri SETTINGS_CONTENT_URI = Uri.parse("content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/lighting_settings");
    public static final Uri TEXT_FILTER_CONTENT_URI = Uri.parse("content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/custom_text_filter_color");

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        mUriMatcher = uriMatcher;
        uriMatcher.addURI("com.android.systemui.edgelighting.backup.EdgeLightingContentProvider", "app_list", 1);
        uriMatcher.addURI("com.android.systemui.edgelighting.backup.EdgeLightingContentProvider", "custom_color_list", 2);
        uriMatcher.addURI("com.android.systemui.edgelighting.backup.EdgeLightingContentProvider", "lighting_settings", 3);
        uriMatcher.addURI("com.android.systemui.edgelighting.backup.EdgeLightingContentProvider", "custom_text_filter_color", 4);
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    public final void init() {
        String str;
        EdgeLightingSettingUtils.resetAppCustomColor(getContext());
        if (SystemProperties.getInt("ro.product.first_api_level", 0) < 31) {
            Context context = getContext();
            int i = context.getSharedPreferences("edge_lighting_shared_prefs", 0).getInt("edge_lighting_duration", 0);
            if (i != 0) {
                Settings.System.putIntForUser(context.getContentResolver(), "edge_lighting_duration", i, -2);
                context.getSharedPreferences("edge_lighting_shared_prefs", 0).edit().clear().commit();
                str = "Brief fota | DurationOptions";
            } else {
                str = "Brief fota";
            }
            String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), "edge_lighting_custom_text_color", -2);
            if (stringForUser == null) {
                stringForUser = "";
            }
            final StringBuilder sb = new StringBuilder(stringForUser);
            HashMap hashMap = (HashMap) context.getSharedPreferences("edge_lighting_custom_text_color", 0).getAll();
            if (hashMap != null && hashMap.size() > 0) {
                hashMap.forEach(new BiConsumer() { // from class: com.android.systemui.edgelighting.backup.EdgeLightingContentProvider$$ExternalSyntheticLambda0
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        StringBuilder sb2 = sb;
                        boolean z = EdgeLightingContentProvider.DEBUG;
                        sb2.append((String) obj);
                        String str2 = EdgeLightingContentProvider.END_DELEMETER;
                        sb2.append(str2);
                        sb2.append((Integer) obj2);
                        sb2.append(str2);
                    }
                });
                Settings.System.putStringForUser(context.getContentResolver(), "edge_lighting_custom_text_color", sb.toString(), -2);
                context.getSharedPreferences("edge_lighting_custom_text_color", 0).edit().clear().commit();
                str = str.concat(" | CustomTextList");
            }
            if (Settings.Global.getInt(context.getContentResolver(), "lighting_color_backup_version", 0) != 3) {
                EdgeLightingSettingUtils.rematchingSimilarColorChip(context.getContentResolver(), EdgeLightingSettingUtils.getEdgeLightingBasicColorIndex(context.getContentResolver()));
                str = str + " | ColotChipIndex";
            }
            Slog.d("EdgeLightingContentProvider", str + " restore complete..");
        }
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        ApplicationInfo applicationInfo;
        boolean z;
        String str;
        int match = mUriMatcher.match(uri);
        if (match != 1) {
            if (match != 2) {
                if (match != 3) {
                    if (match == 4 && (str = (String) contentValues.get("custom_text_filter_color")) != null) {
                        Slog.d("EdgeLightingContentProvider", "restoreEdgeLightingTextFilterColorListValue");
                        EdgeLightingSettingUtils.resetAppCustomColor(getContext());
                        for (String str2 : str.split(END_DELEMETER)) {
                            String[] split = str2.split(Pattern.quote(AND_DELEMETER));
                            if (split != null && split.length == 2) {
                                Context context = getContext();
                                String str3 = split[0];
                                int parseInt = Integer.parseInt(split[1]);
                                String str4 = "";
                                if (str3 != null) {
                                    str3 = str3.replace("\u2068", "").replace("\u2069", "");
                                }
                                String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), "edge_lighting_custom_text_color", -2);
                                if (stringForUser != null) {
                                    str4 = stringForUser;
                                }
                                Settings.System.putStringForUser(context.getContentResolver(), "edge_lighting_custom_text_color", CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m(str4, str3, ";", parseInt, ";").toString(), -2);
                            }
                        }
                    }
                } else {
                    Object obj = contentValues.get("lighting_duration_option");
                    if (obj != null) {
                        Settings.System.putIntForUser(getContext().getContentResolver(), "edge_lighting_duration", Integer.valueOf((String) obj).intValue(), -2);
                    }
                    Object obj2 = contentValues.get("lighting_action_enable");
                    if (obj2 != null) {
                        if ("true".equals((String) obj2)) {
                            Settings.System.putIntForUser(getContext().getContentResolver(), "edge_lighting", 1, -2);
                        } else {
                            Settings.System.putIntForUser(getContext().getContentResolver(), "edge_lighting", 0, -2);
                        }
                    }
                }
            } else {
                String str5 = (String) contentValues.get("custom_color_list");
                if (str5 != null) {
                    Slog.d("EdgeLightingContentProvider", "restoreEdgeLightingCustomColorListValue");
                    EdgeLightingSettingUtils.resetAppCustomColor(getContext());
                    SharedPreferences.Editor edit = getContext().getSharedPreferences("edge_lighting_app_color", 0).edit();
                    for (String str6 : str5.split(END_DELEMETER)) {
                        String[] split2 = str6.split(Pattern.quote(AND_DELEMETER));
                        if (split2 != null && split2.length == 2) {
                            if (!"false".equals(split2[1]) && !"true".equals(split2[1])) {
                                edit.putInt(split2[0], Integer.parseInt(split2[1]));
                            } else {
                                edit.putBoolean(split2[0], Boolean.parseBoolean(split2[1]));
                            }
                            if (DEBUG) {
                                Slog.d("EdgeLightingContentProvider", split2[0] + " " + split2[1]);
                            }
                        }
                    }
                    edit.apply();
                }
            }
        } else {
            String str7 = (String) contentValues.get("app_list");
            if (str7 != null) {
                Slog.d("EdgeLightingContentProvider", "restoreEdgeLightingAppListValue");
                SharedPreferences.Editor edit2 = getContext().getSharedPreferences("edge_lighting_settings", 0).edit();
                HashSet hashSet = new HashSet();
                String[] split3 = str7.split(END_DELEMETER);
                for (int i = 0; i < split3.length; i++) {
                    if (i == 0) {
                        edit2.putInt("version", Integer.parseInt(split3[i]));
                    } else if (i == 1) {
                        edit2.putBoolean("all_application", Boolean.parseBoolean(split3[i]));
                    } else {
                        try {
                            applicationInfo = getContext().getPackageManager().getApplicationInfo(split3[i], 0);
                            z = true;
                        } catch (PackageManager.NameNotFoundException unused) {
                            applicationInfo = null;
                            z = false;
                        }
                        if (applicationInfo == null || !applicationInfo.enabled) {
                            z = false;
                        }
                        if (z) {
                            hashSet.add(split3[i]);
                        }
                    }
                    if (DEBUG) {
                        Slog.d("EdgeLightingContentProvider", split3[i]);
                    }
                }
                if (hashSet.size() > 0) {
                    edit2.putStringSet("enable_list", hashSet);
                }
                edit2.apply();
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i = this.mThemeSeq;
        int i2 = configuration.themeSeq;
        if (i != i2) {
            this.mThemeSeq = i2;
            init();
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        init();
        return false;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String sb;
        int match = mUriMatcher.match(uri);
        if (match != 1) {
            if (match != 2) {
                if (match != 3) {
                    if (match != 4) {
                        return null;
                    }
                    MatrixCursor matrixCursor = new MatrixCursor(new String[]{"custom_text_filter_color"});
                    String[] strArr3 = new String[1];
                    StringBuilder sb2 = new StringBuilder();
                    HashMap loadCustomTextList = EdgeLightingSettingUtils.loadCustomTextList(getContext());
                    if (loadCustomTextList == null) {
                        sb = "";
                    } else {
                        for (Map.Entry entry : loadCustomTextList.entrySet()) {
                            sb2.append((String) entry.getKey());
                            sb2.append(AND_DELEMETER);
                            sb2.append(entry.getValue());
                            sb2.append(END_DELEMETER);
                        }
                        Slog.i("EdgeLightingContentProvider", "makeTextFilterColorListValue " + sb2.toString());
                        sb = sb2.toString();
                    }
                    strArr3[0] = sb;
                    matrixCursor.addRow(strArr3);
                    return matrixCursor;
                }
                MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{"lighting_action_enable", "lighting_duration_option"});
                getContext();
                matrixCursor2.addRow(new String[]{"true", String.valueOf(EdgeLightingSettingUtils.loadEdgeLightingDurationOptionType(getContext()))});
                return matrixCursor2;
            }
            MatrixCursor matrixCursor3 = new MatrixCursor(new String[]{"custom_color_list"});
            String[] strArr4 = new String[1];
            StringBuilder sb3 = new StringBuilder();
            for (Map.Entry<String, ?> entry2 : getContext().getSharedPreferences("edge_lighting_app_color", 0).getAll().entrySet()) {
                sb3.append(entry2.getKey());
                sb3.append(AND_DELEMETER);
                sb3.append(entry2.getValue());
                sb3.append(END_DELEMETER);
            }
            strArr4[0] = sb3.toString();
            matrixCursor3.addRow(strArr4);
            return matrixCursor3;
        }
        MatrixCursor matrixCursor4 = new MatrixCursor(new String[]{"app_list"});
        String[] strArr5 = new String[1];
        SharedPreferences sharedPreferences = getContext().getSharedPreferences("edge_lighting_settings", 0);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(sharedPreferences.getInt("version", 0));
        sb4.append(END_DELEMETER);
        sb4.append(sharedPreferences.getBoolean("all_application", true));
        Set<String> stringSet = sharedPreferences.getStringSet("enable_list", null);
        if (stringSet != null) {
            Iterator<String> it = stringSet.iterator();
            while (it.hasNext()) {
                sb4.append(END_DELEMETER);
                sb4.append(it.next());
            }
        }
        strArr5[0] = sb4.toString();
        matrixCursor4.addRow(strArr5);
        return matrixCursor4;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
