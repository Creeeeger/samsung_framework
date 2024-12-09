package com.sec.internal.ims.servicemodules.tapi.service.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.gsma.services.rcs.CommonServiceConfiguration;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDefaultConst;
import com.sec.internal.constants.ims.servicemodules.im.ImSettings;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.servicemodules.tapi.service.defaultconst.FileTransferDefaultConst;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RcsSettingsProvider extends ContentProvider {
    public static final String DATABASE_NAME = "rcs_settings.db";
    private static final String LOG_TAG = "RcsSettingsProvider";
    private static final int RCSAPI_SETTINGS = 1;
    private static final int RCSAPI_SETTINGS_KEY = 2;
    private static final String TABLE = "settings";
    private static final UriMatcher sUriMatcher;
    private SQLiteOpenHelper mOpenHelper;
    private static final String TRUE = Boolean.toString(true);
    private static final String FALSE = Boolean.toString(false);

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        uriMatcher.addURI("com.gsma.services.rcs.provider.settings", TABLE, 1);
        uriMatcher.addURI("com.gsma.services.rcs.provider.settings", "settings/*", 2);
    }

    private static class DatabaseHelper extends SQLiteOpenHelper {
        private static final int DATABASE_VERSION = 103;

        public DatabaseHelper(Context context) {
            super(context, RcsSettingsProvider.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 103);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE settings (id integer primary key autoincrement,key TEXT,value TEXT);");
            addParameter(sQLiteDatabase, "ServiceActivated", RcsSettingsProvider.FALSE);
            addParameter(sQLiteDatabase, "ConfigurationValidity", RcsSettingsProvider.FALSE);
            addParameter(sQLiteDatabase, "ServiceAvailable", RcsSettingsProvider.FALSE);
            addParameter(sQLiteDatabase, "ModeChangeable", RcsSettingsProvider.TRUE);
            addParameter(sQLiteDatabase, "MinimumBatteryLevel", String.valueOf(CommonServiceConfiguration.MinimumBatteryLevel.NONE.toString()));
            addParameter(sQLiteDatabase, "DefaultMessagingMethod", CommonServiceConfiguration.MessagingMethod.NON_RCS.toString());
            addParameter(sQLiteDatabase, "MessagingMode", CommonServiceConfiguration.MessagingMode.NONE.toString());
            addParameter(sQLiteDatabase, "MyCountryCode", "+1");
            addParameter(sQLiteDatabase, "CountryAreaCode", "0");
            addParameter(sQLiteDatabase, "MyContactId", "");
            addParameter(sQLiteDatabase, "MyDisplayName", "");
            addParameter(sQLiteDatabase, ImSettings.CHAT_RESPOND_TO_DISPLAY_REPORTS, Boolean.toString(ImDefaultConst.DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS.booleanValue()));
            addParameter(sQLiteDatabase, ImSettings.AUTO_ACCEPT_FT_CHANGEABLE, Boolean.toString(false));
            addParameter(sQLiteDatabase, ImSettings.AUTO_ACCEPT_FILE_TRANSFER, Boolean.toString(false));
            addParameter(sQLiteDatabase, ImSettings.AUTO_ACCEPT_FT_IN_ROAMING, Boolean.toString(false));
            addParameter(sQLiteDatabase, ImSettings.KEY_IMAGE_RESIZE_OPTION, FileTransferDefaultConst.DEFALUT_IMAGERESIZEOPTION.toString());
        }

        private void addParameter(SQLiteDatabase sQLiteDatabase, String str, String str2) {
            sQLiteDatabase.execSQL("INSERT INTO settings (key,value) VALUES ('" + str + "','" + str2 + "');");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            ArrayList arrayList = new ArrayList();
            Cursor query = sQLiteDatabase.query(RcsSettingsProvider.TABLE, null, null, null, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        int columnIndex = query.getColumnIndex(McsConstants.BundleData.KEY);
                        String string = columnIndex != -1 ? query.getString(columnIndex) : null;
                        int columnIndex2 = query.getColumnIndex("value");
                        String string2 = columnIndex2 != -1 ? query.getString(columnIndex2) : null;
                        if (string != null && string2 != null) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(McsConstants.BundleData.KEY, string);
                            contentValues.put("value", string2);
                            arrayList.add(contentValues);
                        }
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
            if (query != null) {
                query.close();
            }
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS settings");
            onCreate(sQLiteDatabase);
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                ContentValues contentValues2 = (ContentValues) arrayList.get(i3);
                sQLiteDatabase.update(RcsSettingsProvider.TABLE, contentValues2, "key = ?", new String[]{CmcConstants.E_NUM_STR_QUOTE + contentValues2.getAsString(McsConstants.BundleData.KEY) + CmcConstants.E_NUM_STR_QUOTE});
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            onUpgrade(sQLiteDatabase, i, i2);
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mOpenHelper = new DatabaseHelper(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        int match = sUriMatcher.match(uri);
        if (match == 1 || match == 2) {
            return uri.toString();
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    private StringBuilder buildKeyedSelection(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("(");
        sb.append(str);
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append(str2);
        sb.append(")");
        if (TextUtils.isEmpty(str3)) {
            return sb;
        }
        sb.append(" AND (");
        sb.append(str3);
        sb.append(")");
        return sb;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(TABLE);
        int match = sUriMatcher.match(uri);
        Cursor cursor = null;
        if (match != 1) {
            if (match == 2) {
                sQLiteQueryBuilder.appendWhere(buildKeyedSelection(McsConstants.BundleData.KEY, "'" + uri.getLastPathSegment() + "'", null).toString());
            } else {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
        }
        try {
            cursor = sQLiteQueryBuilder.query(this.mOpenHelper.getReadableDatabase(), strArr, str, strArr2, null, null, str2);
            if (cursor != null) {
                cursor.setNotificationUri(getContext().getContentResolver(), uri);
            }
        } catch (RuntimeException e) {
            Log.e(LOG_TAG, "SQL exception while query: " + e);
            if (cursor != null) {
                cursor.close();
            }
        }
        return cursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i = 0;
        try {
            SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
            int match = sUriMatcher.match(uri);
            if (match == 1) {
                writableDatabase.beginTransaction();
                try {
                    try {
                        i = writableDatabase.update(TABLE, contentValues, str, strArr);
                        writableDatabase.setTransactionSuccessful();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                } finally {
                }
            } else if (match == 2) {
                String sb = buildKeyedSelection(McsConstants.BundleData.KEY, "'" + uri.getLastPathSegment() + "'", str).toString();
                writableDatabase.beginTransaction();
                try {
                    try {
                        i = writableDatabase.update(TABLE, contentValues, sb, strArr);
                        writableDatabase.setTransactionSuccessful();
                    } catch (SQLException e2) {
                        e2.printStackTrace();
                    }
                } finally {
                }
            } else {
                throw new UnsupportedOperationException("Cannot update URI " + uri);
            }
            if (i != 0) {
                getContext().getContentResolver().notifyChange(uri, null);
            }
            return i;
        } catch (SQLException e3) {
            Log.d(LOG_TAG, "update: SQLException: " + e3.toString());
            return 0;
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Cannot insert URI " + uri);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    private void endTransaction(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null) {
            Log.e(LOG_TAG, "endTransaction: db is null");
            return;
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (SQLException e) {
            Log.e(LOG_TAG, "SQLException while endTransaction:" + e);
        }
    }
}
