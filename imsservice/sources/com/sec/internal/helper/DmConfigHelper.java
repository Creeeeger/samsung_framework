package com.sec.internal.helper;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.log.IMSLog;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class DmConfigHelper {
    private static final String LOG_TAG = "DmConfigHelper";
    private static Map<String, String> mServiceSwitchDmMap;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        mServiceSwitchDmMap = concurrentHashMap;
        concurrentHashMap.put("mmtel", ConfigConstants.ConfigPath.OMADM_VOLTE_ENABLED);
        mServiceSwitchDmMap.put("mmtel-video", ConfigConstants.ConfigPath.OMADM_LVC_ENABLED);
        mServiceSwitchDmMap.put(SipMsg.EVENT_PRESENCE, ConfigConstants.ConfigPath.OMADM_EAB_SETTING);
    }

    @Deprecated
    public static Boolean readBool(Context context, String str) {
        return readBool(context, str, Boolean.FALSE, 0);
    }

    public static Boolean readBool(Context context, String str, Boolean bool, int i) {
        String read = read(context, str, null, i);
        return read != null ? Boolean.valueOf("1".equals(read)) : bool;
    }

    public static Long readLong(Context context, String str, Long l, int i) {
        String read = read(context, str, null, i);
        if (!TextUtils.isEmpty(read)) {
            try {
                return Long.valueOf(Long.parseLong(read));
            } catch (NumberFormatException unused) {
            }
        }
        return l;
    }

    public static Integer readInt(Context context, String str, Integer num, int i) {
        String read = read(context, str, null, i);
        if (!TextUtils.isEmpty(read)) {
            try {
                return Integer.valueOf(Integer.parseInt(read));
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return num;
    }

    public static String read(Context context, String str, String str2, int i) {
        Map<String, String> read = read(context, str, i);
        if (read == null) {
            return str2;
        }
        Locale locale = Locale.US;
        String str3 = read.get(str.toLowerCase(locale));
        if (TextUtils.isEmpty(str3)) {
            str3 = read.get(("omadm/./3GPP_IMS/" + str).toLowerCase(locale));
        }
        return !TextUtils.isEmpty(str3) ? str3 : str2;
    }

    public static Map<String, String> read(Context context, String str, int i) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        Cursor query = context.getContentResolver().query(UriUtil.buildUri("content://com.samsung.rcs.dmconfigurationprovider/" + str, i), null, null, null, null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return treeMap;
        }
        try {
            if (query.moveToFirst()) {
                do {
                    treeMap.put(query.getString(0), query.getString(1));
                } while (query.moveToNext());
            }
            query.close();
            return treeMap;
        } catch (Throwable th) {
            try {
                query.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static boolean readSwitch(Context context, String str, boolean z, int i) {
        String str2;
        String str3 = null;
        if (mServiceSwitchDmMap.containsKey(str)) {
            str2 = mServiceSwitchDmMap.get(str);
            str3 = read(context, str2, null, i);
        } else {
            str2 = null;
        }
        if (str3 == null) {
            return z;
        }
        Log.d(LOG_TAG, "readBool(" + str + ") from " + str2 + ": [" + str3 + "]");
        return "1".equals(str3);
    }

    public static void setImsUserSetting(Context context, String str, int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", str);
        contentValues.put("value", Integer.valueOf(i));
        context.getContentResolver().update(UriUtil.buildUri("content://com.sec.ims.settings/imsusersetting", i2), contentValues, null, null);
    }

    public static int getImsUserSetting(Context context, String str, int i) {
        ContentValues contentValues = new ContentValues();
        Cursor query = context.getContentResolver().query(UriUtil.buildUri("content://com.sec.ims.settings/imsusersetting", i), new String[]{str}, null, null, null);
        if (query != null) {
            try {
                if (query.getCount() != 0) {
                    try {
                        if (query.moveToFirst()) {
                            do {
                                contentValues.put(query.getString(query.getColumnIndexOrThrow("name")), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("value"))));
                            } while (query.moveToNext());
                        }
                    } catch (IllegalArgumentException unused) {
                        Log.d(LOG_TAG, "getImsUserSetting: false due to IllegalArgumentException");
                    }
                    query.close();
                    Integer num = -1;
                    if (contentValues.getAsInteger(str) != null) {
                        num = contentValues.getAsInteger(str);
                    }
                    return num.intValue();
                }
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        IMSLog.d(LOG_TAG, i, "getImsUserSetting: not found");
        if (query != null) {
            query.close();
        }
        return -1;
    }

    public static void setImsSwitch(Context context, String str, boolean z, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("service", str);
        contentValues.put("enabled", Boolean.valueOf(z));
        context.getContentResolver().update(UriUtil.buildUri("content://com.sec.ims.settings/imsswitch", i), contentValues, null, null);
    }

    public static boolean isImsSwitchEnabled(Context context, String str, int i) {
        return getImsSwitchValue(context, str, i) == 1;
    }

    public static int getImsSwitchValue(Context context, String str, int i) {
        ContentValues imsSwitchValue = getImsSwitchValue(context, new String[]{str}, i);
        if (imsSwitchValue == null || imsSwitchValue.size() == 0) {
            Log.d(LOG_TAG, "getImsSwitchValue: value is not exist.");
            return 0;
        }
        Integer num = 0;
        if (imsSwitchValue.getAsInteger(str) != null) {
            num = imsSwitchValue.getAsInteger(str);
        }
        return num.intValue();
    }

    public static ContentValues getImsSwitchValue(Context context, String[] strArr, int i) {
        ContentValues contentValues = new ContentValues();
        Cursor query = context.getContentResolver().query(UriUtil.buildUri("content://com.sec.ims.settings/imsswitch", i), strArr, null, null, null);
        if (query != null) {
            try {
                if (query.getCount() != 0) {
                    try {
                        if (query.moveToFirst()) {
                            do {
                                contentValues.put(query.getString(query.getColumnIndexOrThrow("name")), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("enabled"))));
                            } while (query.moveToNext());
                        }
                    } catch (IllegalArgumentException unused) {
                        Log.d(LOG_TAG, "isServiceEnabled: false due to IllegalArgumentException");
                    }
                    query.close();
                    return contentValues;
                }
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        IMSLog.d(LOG_TAG, i, "getImsSwitchValue: not found");
        if (query != null) {
            query.close();
        }
        return contentValues;
    }
}
