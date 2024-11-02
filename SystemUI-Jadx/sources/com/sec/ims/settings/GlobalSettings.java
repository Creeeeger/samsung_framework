package com.sec.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class GlobalSettings {
    private static final Uri CONTENT_URI = Uri.parse("content://com.sec.ims.settings/global");
    public static final String LOG_TAG = "GlobalSettings";
    public static final String NAME = "mnoname";
    public static final String NETWORK = "network";
    private static int mPhoneId;
    private int mId;
    private String mName;
    private String mNetwork;
    private ContentValues mValues;

    private GlobalSettings() {
    }

    @Deprecated
    public static GlobalSettings getInstance(Context context) {
        return getInstance(context, mPhoneId);
    }

    private Integer getIntegerValue(ContentValues contentValues, String str, Integer num) {
        Integer asInteger = contentValues.getAsInteger(str);
        if (asInteger == null) {
            return num;
        }
        return asInteger;
    }

    private String getStringValue(ContentValues contentValues, String str) {
        return getStringValue(contentValues, str, "");
    }

    public int getId() {
        return this.mId;
    }

    public String getName() {
        return this.mName;
    }

    public String getNetwork() {
        return this.mNetwork;
    }

    public ContentValues getValues() {
        return this.mValues;
    }

    public GlobalSettings(ContentValues contentValues, int i) {
        this(contentValues);
        mPhoneId = i;
    }

    @Deprecated
    public static GlobalSettings getInstance(Context context, int i) {
        Log.d("GlobalSettings[" + i + "]", "getInstance:");
        ContentValues contentValues = new ContentValues();
        Uri build = CONTENT_URI.buildUpon().fragment("simslot" + Integer.toString(i)).build();
        Log.d(LOG_TAG, "getInstance, uri = " + build);
        Cursor query = context.getContentResolver().query(build, null, null, null, null);
        if (query != null) {
            try {
                if (query.getCount() != 0) {
                    if (query.moveToFirst()) {
                        DatabaseUtils.cursorRowToContentValues(query, contentValues);
                        query.close();
                        return new GlobalSettings(contentValues, i);
                    }
                    query.close();
                    return null;
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
        Log.d(LOG_TAG, "getInstance, cursor is invalid");
        if (query != null) {
            query.close();
        }
        return null;
    }

    private String getStringValue(ContentValues contentValues, String str, String str2) {
        String asString = contentValues.getAsString(str);
        return asString == null ? str2 : asString;
    }

    public GlobalSettings(ContentValues contentValues) {
        this();
        this.mValues = contentValues;
        this.mId = getIntegerValue(contentValues, "_id", -1).intValue();
        this.mName = getStringValue(contentValues, "mnoname");
        this.mNetwork = getStringValue(contentValues, "network", this.mNetwork);
    }
}
