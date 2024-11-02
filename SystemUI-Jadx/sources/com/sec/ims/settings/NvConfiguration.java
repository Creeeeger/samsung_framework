package com.sec.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.sec.ims.configuration.DATA;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class NvConfiguration {
    public static final String LOG_TAG = "NvConfiguration";
    public static final Uri URI = Uri.parse("content://com.sec.ims.settings/nvstorage/omadm/");

    private NvConfiguration() {
    }

    public static String get(Context context, String str, String str2) {
        Cursor query = context.getContentResolver().query(URI, new String[]{str}, null, null, null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return str2;
        }
        try {
            if (query.moveToFirst()) {
                str2 = query.getString(1);
            }
            query.close();
            return str2;
        } catch (Throwable th) {
            try {
                query.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static ContentValues getAll(Context context) {
        Cursor query = context.getContentResolver().query(URI, null, null, null, null);
        ContentValues contentValues = null;
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return null;
        }
        try {
            if (query.moveToFirst()) {
                contentValues = new ContentValues();
                do {
                    contentValues.put(query.getString(0), query.getString(1));
                } while (query.moveToNext());
            }
            query.close();
            return contentValues;
        } catch (Throwable th) {
            try {
                query.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static boolean getSmsIpNetworkIndi(Context context, int i) {
        try {
            if (Integer.parseInt(get(context, DATA.DM_NODE.SMS_OVER_IMS, "1", i)) == 1) {
                return true;
            }
            return false;
        } catch (NumberFormatException unused) {
            return true;
        }
    }

    public static void insert(Context context, ContentValues contentValues) {
        context.getContentResolver().insert(URI, contentValues);
    }

    public static Cursor query(Context context, String[] strArr) {
        return context.getContentResolver().query(URI, strArr, null, null, null);
    }

    public static void set(Context context, String str, String str2, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(str, str2);
        context.getContentResolver().insert(URI.buildUpon().fragment("simslot" + i).build(), contentValues);
    }

    public static void setSmsIpNetworkIndi(Context context, boolean z, int i) {
        String str;
        if (z) {
            str = "1";
        } else {
            str = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN;
        }
        set(context, DATA.DM_NODE.SMS_OVER_IMS, str, i);
    }

    public static String get(Context context, String str, String str2, int i) {
        Cursor query = context.getContentResolver().query(URI.buildUpon().fragment("simslot" + i).build(), new String[]{str}, null, null, null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return str2;
        }
        try {
            if (query.moveToFirst()) {
                str2 = query.getString(1);
            }
            query.close();
            return str2;
        } catch (Throwable th) {
            try {
                query.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
