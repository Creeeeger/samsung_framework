package com.sec.internal.ims.entitlement.config.persist;

import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.sec.ims.extensions.ContextExt;
import com.sec.internal.constants.ims.entitilement.EntitlementConfigContract;
import com.sec.internal.ims.entitlement.storagehelper.MigrationHelper;
import com.sec.internal.ims.entitlement.util.NSDSConfigHelper;
import com.sec.internal.log.IMSLog;
import java.util.Date;

/* loaded from: classes.dex */
public class EntitlementConfigProvider extends ContentProvider {
    private static final String CREATE_DEVICE_CONFIG_TABLE = "CREATE TABLE IF NOT EXISTS entitlement_config(_id INTEGER PRIMARY KEY AUTOINCREMENT,version TEXT, imsi TEXT NOT NULL, device_config TEXT,backup_version TEXT,validity TEXT,next_config_time TEXT,token TEXT,completed TEXT,tc_popup_user_accept TEXT);";
    private static final String DATABASE_NAME = "entitlement_config.db";
    private static final int DATABASE_VERSION = 1;
    private static final int DEFAULT_SIM_SLOT_IDX = 0;
    private static final String DEVICE_CONFIG_TABLE = "entitlement_config";
    private static final long ENTITLEMENT_FORCE_UPDATE_EXPIRATION_TIME = 300000;
    private static final String LOG_TAG = EntitlementConfigProvider.class.getSimpleName();
    private static final String PROVIDER_NAME = "com.samsung.ims.entitlementconfig.provider";
    private static final UriMatcher sUriMatcher;
    protected Messenger mService;
    private ServiceConnection mSvcConn;
    protected Context mContext = null;
    private DatabaseHelper mDatabaseHelper = null;
    private Date configUpdateDate = null;
    private final Object mLock = new Object();

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "config", 1);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "config/xpath", 3);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "config/jansky_config", 2);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "config/rcs_config", 4);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "config/force_update", 5);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "config/entitlement_url", 6);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "reconnect_db", 7);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "binding_service", 8);
        uriMatcher.addURI("com.samsung.ims.entitlementconfig.provider", "config/tag", 9);
    }

    private static class DatabaseHelper extends SQLiteOpenHelper {
        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }

        public DatabaseHelper(Context context) {
            super(context, EntitlementConfigProvider.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            IMSLog.i(EntitlementConfigProvider.LOG_TAG, "DatabaseHelper onCreate()");
            sQLiteDatabase.execSQL(EntitlementConfigProvider.CREATE_DEVICE_CONFIG_TABLE);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            IMSLog.i(EntitlementConfigProvider.LOG_TAG, "db downgrade: oldVersion=" + i + " newVersion=" + i2);
            onCreate(sQLiteDatabase);
            sQLiteDatabase.setVersion(i2);
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        IMSLog.i(LOG_TAG, "delete:" + uri);
        int i = 0;
        if (this.mDatabaseHelper == null || !NSDSConfigHelper.isUserUnlocked(this.mContext)) {
            return 0;
        }
        SQLiteDatabase writableDatabase = this.mDatabaseHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                if (sUriMatcher.match(uri) == 1) {
                    NotifyDeleteDb();
                    i = writableDatabase.delete(DEVICE_CONFIG_TABLE, str, strArr);
                }
                writableDatabase.setTransactionSuccessful();
            } catch (SQLiteException e) {
                IMSLog.s(LOG_TAG, "Could not delete:" + e.getMessage());
            }
            return i;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        IMSLog.s(LOG_TAG, "insert:" + uri);
        if (this.mDatabaseHelper != null && NSDSConfigHelper.isUserUnlocked(this.mContext)) {
            r1 = sUriMatcher.match(uri) == 1 ? EntitlementConfigContract.DeviceConfig.buildDeviceConfigUri(insertDeviceConfig(contentValues)) : null;
            if (r1 != null) {
                notifyChange(uri);
            }
        }
        return r1;
    }

    public void notifyChange(Uri uri) {
        getContext().getContentResolver().notifyChange(uri, null);
    }

    private long insertDeviceConfig(ContentValues contentValues) {
        SQLiteDatabase writableDatabase = this.mDatabaseHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        long j = -1;
        try {
            try {
                j = writableDatabase.insert(DEVICE_CONFIG_TABLE, null, contentValues);
                writableDatabase.setTransactionSuccessful();
            } catch (SQLiteException e) {
                IMSLog.s(LOG_TAG, "Could not insert into device_config table:" + e.getMessage());
            }
            return j;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private int updateDeviceConfig(ContentValues contentValues) {
        SQLiteDatabase writableDatabase = this.mDatabaseHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        int i = 0;
        try {
            try {
                i = writableDatabase.update(DEVICE_CONFIG_TABLE, contentValues, null, null);
                writableDatabase.setTransactionSuccessful();
            } catch (SQLiteException e) {
                IMSLog.s(LOG_TAG, "Could not update connectivity_parameters table:" + e.getMessage());
            }
            return i;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void forceConfigUpdate() {
        IMSLog.i(LOG_TAG, "forceConfigUpdate()");
        if (this.configUpdateDate == null || new Date().getTime() - this.configUpdateDate.getTime() > ENTITLEMENT_FORCE_UPDATE_EXPIRATION_TIME) {
            try {
                this.configUpdateDate = new Date(System.currentTimeMillis());
                Message message = new Message();
                message.what = 108;
                message.obj = 0;
                this.mService.send(message);
            } catch (Exception e) {
                IMSLog.s(LOG_TAG, "Could not force update config" + e.getMessage());
            }
        }
    }

    private void updateEntitlementUrl(Uri uri) {
        String queryParameter = uri.getQueryParameter("entitlement_url");
        try {
            Message message = new Message();
            message.what = 201;
            Bundle bundle = new Bundle();
            bundle.putString("URL", queryParameter);
            message.setData(bundle);
            this.mService.send(message);
        } catch (RemoteException e) {
            IMSLog.s(LOG_TAG, "updateEntitlementUrl: failed to request" + e.getMessage());
        }
    }

    private void NotifyDeleteDb() {
        try {
            Message message = new Message();
            message.what = 202;
            this.mService.send(message);
        } catch (RemoteException e) {
            IMSLog.s(LOG_TAG, "NotifyDeleteDb: failed to request" + e.getMessage());
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mContext = getContext().createCredentialProtectedStorageContext();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        IMSLog.s(LOG_TAG, "query " + uri);
        if (this.mDatabaseHelper == null || !NSDSConfigHelper.isUserUnlocked(this.mContext)) {
            return null;
        }
        SQLiteDatabase readableDatabase = this.mDatabaseHelper.getReadableDatabase();
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        int match = sUriMatcher.match(uri);
        if (match == 1) {
            sQLiteQueryBuilder.setTables(DEVICE_CONFIG_TABLE);
            return sQLiteQueryBuilder.query(readableDatabase, strArr, str, strArr2, null, null, str2);
        }
        if (match == 2) {
            return getJanskyConfigXmlBlock();
        }
        if (match == 3) {
            return getNsdsElementsWithXPath(uri);
        }
        if (match == 4) {
            return getRcsConfigXmlBlock();
        }
        if (match != 9) {
            return null;
        }
        return getXmlConfigbyTagUri(uri);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2 = LOG_TAG;
        IMSLog.s(str2, "update " + uri);
        UriMatcher uriMatcher = sUriMatcher;
        int i = 0;
        if (uriMatcher.match(uri) == 8) {
            IMSLog.i(str2, "Binding to EntitlementConfigService");
            connectToEntitlementConfigService();
            return 0;
        }
        if (uriMatcher.match(uri) == 7) {
            IMSLog.e(str2, "Reconnect DB for DatabaseHelper");
            if (this.mDatabaseHelper != null) {
                IMSLog.i(str2, "Reconnect DB after closing the previous DB");
                this.mDatabaseHelper.close();
            }
            this.mDatabaseHelper = new DatabaseHelper(this.mContext);
            return 0;
        }
        if (this.mDatabaseHelper == null || !NSDSConfigHelper.isUserUnlocked(this.mContext)) {
            return 0;
        }
        SQLiteDatabase writableDatabase = this.mDatabaseHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                int match = uriMatcher.match(uri);
                if (match == 1) {
                    i = updateDeviceConfig(contentValues);
                } else if (match == 5) {
                    forceConfigUpdate();
                } else if (match == 6) {
                    updateEntitlementUrl(uri);
                }
                writableDatabase.setTransactionSuccessful();
            } catch (SQLiteException e) {
                IMSLog.s(LOG_TAG, "Could not update table:" + e.getMessage());
            }
            if (i != 0) {
                notifyChange(uri);
            }
            return i;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00da A[Catch: all -> 0x0116, TryCatch #2 {, blocks: (B:4:0x0003, B:12:0x001e, B:13:0x0021, B:21:0x0099, B:22:0x009c, B:23:0x00c8, B:25:0x00da, B:26:0x00e6, B:28:0x00ec, B:30:0x0109, B:32:0x0102, B:48:0x010f, B:49:0x0112, B:50:0x0115, B:43:0x00c4), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0102 A[Catch: all -> 0x0116, TryCatch #2 {, blocks: (B:4:0x0003, B:12:0x001e, B:13:0x0021, B:21:0x0099, B:22:0x009c, B:23:0x00c8, B:25:0x00da, B:26:0x00e6, B:28:0x00ec, B:30:0x0109, B:32:0x0102, B:48:0x010f, B:49:0x0112, B:50:0x0115, B:43:0x00c4), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010f A[Catch: all -> 0x0116, TryCatch #2 {, blocks: (B:4:0x0003, B:12:0x001e, B:13:0x0021, B:21:0x0099, B:22:0x009c, B:23:0x00c8, B:25:0x00da, B:26:0x00e6, B:28:0x00ec, B:30:0x0109, B:32:0x0102, B:48:0x010f, B:49:0x0112, B:50:0x0115, B:43:0x00c4), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.database.Cursor getNsdsElementsWithXPath(android.net.Uri r15) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.entitlement.config.persist.EntitlementConfigProvider.getNsdsElementsWithXPath(android.net.Uri):android.database.Cursor");
    }

    private Cursor getJanskyConfigXmlBlock() {
        return getXmlConfigByTag("//janskyConfig");
    }

    private Cursor getRcsConfigXmlBlock() {
        return getXmlConfigByTag("//RCSConfig/wap-provisioningdoc|//wap-provisioningdoc");
    }

    private Cursor getXmlConfigbyTagUri(Uri uri) {
        String queryParameter = uri.getQueryParameter("tag_name");
        if (TextUtils.isEmpty(queryParameter)) {
            IMSLog.i(LOG_TAG, "Empty tag name. Return null");
            return null;
        }
        return getXmlConfigByTag(queryParameter);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0071, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x006a, code lost:
    
        com.sec.internal.log.IMSLog.e(com.sec.internal.ims.entitlement.config.persist.EntitlementConfigProvider.LOG_TAG, "Device Config is null: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        if (r9 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
    
        if (r9 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002b, code lost:
    
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0050, code lost:
    
        r9 = new android.database.MatrixCursor(new java.lang.String[]{com.sec.internal.constants.ims.entitilement.EntitlementConfigContract.DeviceConfig.XML_CONFIG});
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x005c, code lost:
    
        if (r1 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x005e, code lost:
    
        r9.addRow(new java.lang.String[]{com.sec.internal.ims.entitlement.util.CompleteXMLBlockExtractor.getXmlBlockForElement(r1, r10)});
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0076  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.database.Cursor getXmlConfigByTag(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 1
            r1 = 0
            java.lang.String[] r4 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            java.lang.String r0 = "device_config"
            r8 = 0
            r4[r8] = r0     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            android.content.Context r9 = r9.getContext()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            android.content.ContentResolver r2 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            android.net.Uri r3 = com.sec.internal.constants.ims.entitilement.EntitlementConfigContract.DeviceConfig.CONTENT_URI     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            if (r9 == 0) goto L29
            boolean r0 = r9.moveToFirst()     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L72
            if (r0 == 0) goto L29
            java.lang.String r1 = r9.getString(r8)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L72
            goto L29
        L27:
            r0 = move-exception
            goto L33
        L29:
            if (r9 == 0) goto L50
        L2b:
            r9.close()
            goto L50
        L2f:
            r10 = move-exception
            goto L74
        L31:
            r0 = move-exception
            r9 = r1
        L33:
            java.lang.String r2 = com.sec.internal.ims.entitlement.config.persist.EntitlementConfigProvider.LOG_TAG     // Catch: java.lang.Throwable -> L72
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72
            r3.<init>()     // Catch: java.lang.Throwable -> L72
            java.lang.String r4 = "SQL exception while parseDeviceConfig "
            r3.append(r4)     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L72
            r3.append(r0)     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L72
            com.sec.internal.log.IMSLog.s(r2, r0)     // Catch: java.lang.Throwable -> L72
            if (r9 == 0) goto L50
            goto L2b
        L50:
            android.database.MatrixCursor r9 = new android.database.MatrixCursor
            java.lang.String r0 = "xml_config"
            java.lang.String[] r0 = new java.lang.String[]{r0}
            r9.<init>(r0)
            if (r1 == 0) goto L6a
            java.lang.String r10 = com.sec.internal.ims.entitlement.util.CompleteXMLBlockExtractor.getXmlBlockForElement(r1, r10)
            java.lang.String[] r10 = new java.lang.String[]{r10}
            r9.addRow(r10)
            goto L71
        L6a:
            java.lang.String r10 = com.sec.internal.ims.entitlement.config.persist.EntitlementConfigProvider.LOG_TAG
            java.lang.String r0 = "Device Config is null: "
            com.sec.internal.log.IMSLog.e(r10, r0)
        L71:
            return r9
        L72:
            r10 = move-exception
            r1 = r9
        L74:
            if (r1 == 0) goto L79
            r1.close()
        L79:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.entitlement.config.persist.EntitlementConfigProvider.getXmlConfigByTag(java.lang.String):android.database.Cursor");
    }

    private synchronized void connectToEntitlementConfigService() {
        IMSLog.i(LOG_TAG, "connectToEntitlementConfigService()");
        Intent intent = new Intent();
        intent.setClassName("com.sec.imsservice", "com.sec.internal.ims.entitlement.config.EntitlementConfigService");
        this.mSvcConn = new ServiceConnection() { // from class: com.sec.internal.ims.entitlement.config.persist.EntitlementConfigProvider.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IMSLog.i(EntitlementConfigProvider.LOG_TAG, "onServiceConnected: Connected to EntitlementConfigService.");
                if (MigrationHelper.checkMigrateDB(EntitlementConfigProvider.this.mContext)) {
                    IMSLog.i(EntitlementConfigProvider.LOG_TAG, "Connect DB");
                    EntitlementConfigProvider.this.mDatabaseHelper = new DatabaseHelper(EntitlementConfigProvider.this.mContext);
                }
                EntitlementConfigProvider.this.mService = new Messenger(iBinder);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                IMSLog.i(EntitlementConfigProvider.LOG_TAG, "onServiceDisconnected: Disconnected.");
                EntitlementConfigProvider.this.mService = null;
            }
        };
        ContextExt.bindServiceAsUser(getContext(), intent, this.mSvcConn, 1, ContextExt.CURRENT_OR_SELF);
    }
}
