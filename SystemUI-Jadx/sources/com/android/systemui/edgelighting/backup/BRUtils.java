package com.android.systemui.edgelighting.backup;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.Slog;
import com.android.systemui.edgelighting.Feature;
import com.android.systemui.edgelighting.utils.EdgeLightingSettingUtils;
import java.io.File;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BRUtils {
    public static BRUtils sInstance;
    public final Context mContext;

    private BRUtils(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public static synchronized BRUtils getInstance(Context context) {
        BRUtils bRUtils;
        synchronized (BRUtils.class) {
            if (sInstance == null) {
                sInstance = new BRUtils(context);
            }
            bRUtils = sInstance;
        }
        return bRUtils;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0103. Please report as an issue. */
    public final void restoreSettingValue(boolean z, File file) {
        char c;
        Context context = this.mContext;
        Iterator it = new CocktailBarXmlParser(context, file).itemsList.iterator();
        boolean z2 = true;
        while (it.hasNext()) {
            CocktailBarSettingValue cocktailBarSettingValue = (CocktailBarSettingValue) it.next();
            if (!z) {
                return;
            }
            String str = cocktailBarSettingValue.mType;
            String str2 = cocktailBarSettingValue.mName;
            String str3 = cocktailBarSettingValue.mValue;
            if (str2 != null && str != null && str3 != null) {
                if (str2.equals("edge_lighting_version")) {
                    if (Settings.System.getInt(context.getContentResolver(), "edge_lighting_version", 0) == 1) {
                        z2 = false;
                    }
                } else if (!Feature.FEATURE_SUPPORT_EDGE_LIGHTING || !str2.equals("turn_over_lighting")) {
                    if ("edge_lighting_basic_color_index".equals(str2)) {
                        EdgeLightingSettingUtils.rematchingSimilarColorChip(context.getContentResolver(), Integer.parseInt(str3));
                    } else {
                        switch (str.hashCode()) {
                            case -1957622010:
                                if (str.equals("FLOAT_GLOBAL")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case -1670476674:
                                if (str.equals("BOOLEAN_SHARED_PREFERENCE")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case -1601929838:
                                if (str.equals("FLOAT_SYSTEM")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case -1598283544:
                                if (str.equals("EDGE_LIGHTING_CUSTOM_COLOR_LIST_SETTING")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case -1239946107:
                                if (str.equals("INT_SHARED_PREFERENCE")) {
                                    c = 4;
                                    break;
                                }
                                break;
                            case 177848851:
                                if (str.equals("INT_GLOBAL")) {
                                    c = 5;
                                    break;
                                }
                                break;
                            case 220238324:
                                if (str.equals("EDGE_LIGHTING_SETTINGS")) {
                                    c = 6;
                                    break;
                                }
                                break;
                            case 496821726:
                                if (str.equals("EDGE_LIGHTING_APP_LIST_SETTING")) {
                                    c = 7;
                                    break;
                                }
                                break;
                            case 533541023:
                                if (str.equals("INT_SYSTEM")) {
                                    c = '\b';
                                    break;
                                }
                                break;
                            case 616797069:
                                if (str.equals("EDGE_LIGHTING_CUSTOM_TEXT_FILTER")) {
                                    c = '\t';
                                    break;
                                }
                                break;
                            case 1345395601:
                                if (str.equals("STRING_GLOBAL")) {
                                    c = '\n';
                                    break;
                                }
                                break;
                            case 1701087773:
                                if (str.equals("STRING_SYSTEM")) {
                                    c = 11;
                                    break;
                                }
                                break;
                        }
                        c = 65535;
                        switch (c) {
                            case 0:
                                Settings.Global.putFloat(context.getContentResolver(), str2, Float.parseFloat(str3));
                                break;
                            case 1:
                                SharedPreferences.Editor edit = context.getSharedPreferences("cocktailbar_shared_prefs", 0).edit();
                                edit.putBoolean(str2, Boolean.parseBoolean(str3));
                                edit.apply();
                                break;
                            case 2:
                                Settings.System.putFloat(context.getContentResolver(), str2, Float.parseFloat(str3));
                                break;
                            case 3:
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("custom_color_list", str3);
                                context.getContentResolver().insert(EdgeLightingContentProvider.CUSTOM_COLOR_LIST_CONTENT_URI, contentValues);
                                break;
                            case 4:
                                SharedPreferences.Editor edit2 = context.getSharedPreferences("cocktailbar_shared_prefs", 0).edit();
                                edit2.putInt(str2, Integer.parseInt(str3));
                                edit2.apply();
                                break;
                            case 5:
                                Settings.Global.putInt(context.getContentResolver(), str2, Integer.parseInt(str3));
                                break;
                            case 6:
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put(str2, str3);
                                context.getContentResolver().insert(EdgeLightingContentProvider.SETTINGS_CONTENT_URI, contentValues2);
                                break;
                            case 7:
                                ContentValues contentValues3 = new ContentValues();
                                contentValues3.put("app_list", str3);
                                context.getContentResolver().insert(EdgeLightingContentProvider.APP_LIST_CONTENT_URI, contentValues3);
                                break;
                            case '\b':
                                Settings.System.putInt(context.getContentResolver(), str2, Integer.parseInt(str3));
                                break;
                            case '\t':
                                ContentValues contentValues4 = new ContentValues();
                                contentValues4.put("custom_text_filter_color", str3);
                                context.getContentResolver().insert(EdgeLightingContentProvider.TEXT_FILTER_CONTENT_URI, contentValues4);
                                break;
                            case '\n':
                                Settings.Global.putString(context.getContentResolver(), str2, str3);
                                break;
                            case 11:
                                if (str2.equals("edge_lighting_style_type_str")) {
                                    if (z2 && str3.equals("preload/basic")) {
                                        Settings.System.putString(context.getContentResolver(), str2, "preload/noframe");
                                        Slog.i("BRUtils_systemui", "edgelighting style will be restored from basic to noFrame");
                                        break;
                                    } else {
                                        Settings.System.putString(context.getContentResolver(), str2, str3);
                                        break;
                                    }
                                } else {
                                    Settings.System.putString(context.getContentResolver(), str2, str3);
                                    break;
                                }
                                break;
                        }
                        Slog.d("BRUtils_systemui", "restore Setting  Value - " + str2 + " " + str3);
                    }
                }
            } else {
                Slog.i("BRUtils_systemui", str2 + " " + str + " " + str3);
                return;
            }
        }
    }
}
