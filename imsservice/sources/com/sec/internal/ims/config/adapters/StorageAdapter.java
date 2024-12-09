package com.sec.internal.ims.config.adapters;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.log.IMSLog;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class StorageAdapter implements IStorageAdapter {
    public static final String LOG_TAG = "StorageAdapter";
    public static final int STATE_DEFAULT = -1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_READY = 1;
    private static final Object mLock = new Object();
    protected String mIdentity;
    State mState = new IdleState();
    protected SQLiteAdapter mSQLite = null;
    protected int mDBTableMax = 10;
    private int mPhoneId = 0;

    public StorageAdapter() {
        IMSLog.i(LOG_TAG, 0, "Init StorageAdapter");
    }

    public void forceDeleteALL(Context context) {
        new SQLiteAdapter(context, null, this.mDBTableMax).forceDeleteAllConfig();
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public String getIdentity() {
        return this.mIdentity;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public void setDBTableMax(int i) {
        this.mDBTableMax = i;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public int getState() {
        int state;
        synchronized (mLock) {
            state = this.mState.getState();
        }
        return state;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public void open(Context context, String str, int i) {
        synchronized (mLock) {
            this.mState.open(context, str, i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public String read(String str) {
        String read;
        synchronized (mLock) {
            read = this.mState.read(str);
        }
        return read;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public Map<String, String> readAll(String str) {
        Map<String, String> readAll;
        synchronized (mLock) {
            readAll = this.mState.readAll(str);
        }
        return readAll;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public Map<String, String> readAll() {
        Map<String, String> readAll;
        synchronized (mLock) {
            readAll = this.mState.readAll();
        }
        return readAll;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public boolean write(String str, String str2) {
        boolean write;
        synchronized (mLock) {
            write = this.mState.write(str, str2);
        }
        return write;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public boolean writeAll(Map<String, String> map) {
        boolean writeAll;
        synchronized (mLock) {
            writeAll = this.mState.writeAll(map);
        }
        return writeAll;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public int delete(String str) {
        int delete;
        synchronized (mLock) {
            delete = this.mState.delete(str);
        }
        return delete;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public boolean deleteAll() {
        boolean deleteAll;
        synchronized (mLock) {
            deleteAll = this.mState.deleteAll();
        }
        return deleteAll;
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public void close() {
        synchronized (mLock) {
            this.mState.close();
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IStorageAdapter
    public Cursor query(String[] strArr) {
        Cursor query;
        synchronized (mLock) {
            query = this.mState.query(strArr);
        }
        return query;
    }

    abstract class State {
        protected String LOG_TAG;
        protected String mStateName;

        public void close() {
        }

        public int delete(String str) {
            return 0;
        }

        public boolean deleteAll() {
            return false;
        }

        public int getState() {
            return -1;
        }

        public void open(Context context, String str, int i) {
        }

        public Cursor query(String[] strArr) {
            return null;
        }

        public String read(String str) {
            return null;
        }

        public Map<String, String> readAll() {
            return null;
        }

        public Map<String, String> readAll(String str) {
            return null;
        }

        public boolean write(String str, String str2) {
            return false;
        }

        public boolean writeAll(Map<String, String> map) {
            return false;
        }

        public State(String str) {
            this.mStateName = str;
            this.LOG_TAG = StorageAdapter.LOG_TAG + this.mStateName;
        }
    }

    class IdleState extends State {
        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public int getState() {
            return 0;
        }

        public IdleState() {
            super("IDLE");
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public void open(Context context, String str, int i) {
            IMSLog.i(this.LOG_TAG, i, "open storage : " + str);
            StorageAdapter.this.mPhoneId = i;
            StorageAdapter storageAdapter = StorageAdapter.this;
            storageAdapter.mIdentity = str;
            StorageAdapter storageAdapter2 = StorageAdapter.this;
            storageAdapter.mSQLite = storageAdapter2.new SQLiteAdapter(context, str, storageAdapter2.mDBTableMax);
            StorageAdapter storageAdapter3 = StorageAdapter.this;
            storageAdapter3.mState = storageAdapter3.new ReadyState();
        }
    }

    class ReadyState extends State {
        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public int getState() {
            return 1;
        }

        public ReadyState() {
            super("Ready");
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public void close() {
            SQLiteAdapter sQLiteAdapter = StorageAdapter.this.mSQLite;
            if (sQLiteAdapter != null) {
                sQLiteAdapter.close();
            }
            StorageAdapter storageAdapter = StorageAdapter.this;
            storageAdapter.mIdentity = "";
            storageAdapter.mState = storageAdapter.new IdleState();
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public String read(String str) {
            Map<String, String> read = StorageAdapter.this.mSQLite.read(str);
            if (read.size() == 1) {
                return read.get(str);
            }
            return null;
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public Map<String, String> readAll(String str) {
            return StorageAdapter.this.mSQLite.read(str);
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public Map<String, String> readAll() {
            return StorageAdapter.this.mSQLite.read();
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public boolean write(String str, String str2) {
            TreeMap treeMap = new TreeMap();
            treeMap.put(str, str2);
            return StorageAdapter.this.mSQLite.write(treeMap);
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public boolean writeAll(Map<String, String> map) {
            return StorageAdapter.this.mSQLite.write(map);
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public int delete(String str) {
            return StorageAdapter.this.mSQLite.delete(str);
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public boolean deleteAll() {
            return StorageAdapter.this.mSQLite.deleteAll();
        }

        @Override // com.sec.internal.ims.config.adapters.StorageAdapter.State
        public Cursor query(String[] strArr) {
            return StorageAdapter.this.mSQLite.query(strArr);
        }
    }

    protected class SQLiteAdapter extends SQLiteOpenHelper {
        private static final String COLUMN1_NAME = "PATH";
        private static final String COLUMN2_NAME = "VALUE";
        private static final String DB_NAME = "config.db";
        private static final int DB_VERSION = 32;
        private static final String PATH_BACKUP = "backup";
        private static final String PATH_INFO = "info";
        private static final String PATH_METADATA_TIMESTAMP = "metadata/timestamp";
        private static final String PATH_OMADM = "omadm";
        private static final String PATH_ROOT = "root";
        private static final String TIMESTAMP_FORMAT = "EEE, dd MMM yyyy HH:mm:ss ZZZZ";
        private final String[] COLUMNS;
        private int DB_TABLE_MAX;
        private Context mContext;
        private String mTableName;

        public SQLiteAdapter(Context context, String str, int i) {
            super(context, DB_NAME, (SQLiteDatabase.CursorFactory) null, 32);
            this.COLUMNS = new String[]{COLUMN1_NAME, COLUMN2_NAME};
            this.mContext = context;
            this.mTableName = str;
            this.DB_TABLE_MAX = i;
            IMSLog.i(StorageAdapter.LOG_TAG, StorageAdapter.this.mPhoneId, "config.db: " + this.mTableName + ", DB_TABLE_MAX: " + this.DB_TABLE_MAX);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            String str = StorageAdapter.LOG_TAG;
            IMSLog.i(str, StorageAdapter.this.mPhoneId, "onCreate: table name: " + this.mTableName);
            if (sQLiteDatabase == null) {
                Log.i(str, "db is null. return.");
                return;
            }
            try {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + this.mTableName + " ( " + COLUMN1_NAME + " TEXT PRIMARY KEY," + COLUMN2_NAME + " TEXT )");
                Calendar calendar = Calendar.getInstance();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(TIMESTAMP_FORMAT, Locale.getDefault());
                int i = StorageAdapter.this.mPhoneId;
                StringBuilder sb = new StringBuilder();
                sb.append("timestamp:");
                sb.append(simpleDateFormat.format(calendar.getTime()));
                IMSLog.i(str, i, sb.toString());
                ContentValues contentValues = new ContentValues();
                contentValues.put(COLUMN1_NAME, PATH_METADATA_TIMESTAMP);
                contentValues.put(COLUMN2_NAME, String.valueOf(calendar.getTimeInMillis()));
                String str2 = this.mTableName;
                if (str2 != null && str2.matches("OMADM_\\w+_\\d")) {
                    String replaceFirst = this.mTableName.replaceFirst("_\\d", "");
                    if (!isTable(sQLiteDatabase, replaceFirst)) {
                        IMSLog.d(str, StorageAdapter.this.mPhoneId, "No old DB exists");
                    } else {
                        IMSLog.i(str, StorageAdapter.this.mPhoneId, String.format("onCreate: Copy the old table [%s] to new one [%s]", replaceFirst, this.mTableName));
                        sQLiteDatabase.execSQL("INSERT INTO " + this.mTableName + " SELECT * FROM " + replaceFirst);
                    }
                }
                sQLiteDatabase.insertWithOnConflict(this.mTableName, null, contentValues, 5);
            } catch (SQLiteException e) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                e.printStackTrace();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            String str = StorageAdapter.LOG_TAG;
            IMSLog.i(str, StorageAdapter.this.mPhoneId, "onOpen: table name: " + this.mTableName);
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    try {
                        if (!isTable(sQLiteDatabase, this.mTableName)) {
                            IMSLog.i(str, StorageAdapter.this.mPhoneId, "onOpen: no table " + this.mTableName + " found. Create.");
                            onCreate(sQLiteDatabase);
                        }
                        List<String> tables = getTables(sQLiteDatabase);
                        if (tables.size() > this.DB_TABLE_MAX) {
                            deleteOldTables(sQLiteDatabase, tables);
                        }
                        sQLiteDatabase.setTransactionSuccessful();
                    } catch (Exception e) {
                        e.printStackTrace();
                        IMSLog.i(StorageAdapter.LOG_TAG, StorageAdapter.this.mPhoneId, "delete all tables");
                        Iterator<String> it = getTables(sQLiteDatabase).iterator();
                        while (it.hasNext()) {
                            deleteTable(sQLiteDatabase, it.next());
                        }
                        onCreate(sQLiteDatabase);
                    }
                } catch (SQLiteCantOpenDatabaseException e2) {
                    e2.printStackTrace();
                    IMSLog.i(StorageAdapter.LOG_TAG, StorageAdapter.this.mPhoneId, "unable to open database file");
                    onCreate(sQLiteDatabase);
                }
            } finally {
                endTransaction(sQLiteDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            IMSLog.i(StorageAdapter.LOG_TAG, StorageAdapter.this.mPhoneId, "onUpgrade(): [" + i + "] -> [" + i2 + "]");
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.util.Map<java.lang.String, java.lang.String> read(java.lang.String r12) {
            /*
                r11 = this;
                java.util.TreeMap r0 = new java.util.TreeMap
                java.util.Comparator r1 = java.lang.String.CASE_INSENSITIVE_ORDER
                r0.<init>(r1)
                if (r12 != 0) goto La
                return r0
            La:
                java.util.Locale r1 = java.util.Locale.US
                java.lang.String r12 = r12.toLowerCase(r1)
                android.database.sqlite.SQLiteDatabase r1 = r11.getReadableDatabase()     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                java.lang.String r2 = "root"
                boolean r2 = r12.startsWith(r2)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                if (r2 != 0) goto L3a
                java.lang.String r2 = "info"
                boolean r2 = r12.startsWith(r2)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                if (r2 != 0) goto L3a
                java.lang.String r2 = "backup"
                boolean r2 = r12.startsWith(r2)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                if (r2 != 0) goto L3a
                java.lang.String r2 = "omadm"
                boolean r2 = r12.startsWith(r2)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                if (r2 == 0) goto L36
                goto L3a
            L36:
                java.lang.String r2 = "root/"
                goto L3c
            L3a:
                java.lang.String r2 = ""
            L3c:
                java.lang.String r3 = r11.mTableName     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                java.lang.String[] r11 = r11.COLUMNS     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                java.lang.String r4 = "PATH LIKE ?  ESCAPE '\\'"
                r9 = 1
                java.lang.String[] r5 = new java.lang.String[r9]     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                r6.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                r6.append(r2)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                java.lang.String r2 = "*"
                java.lang.String r7 = "%"
                java.lang.String r12 = r12.replace(r2, r7)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                java.lang.String r2 = "_"
                java.lang.String r7 = "\\_"
                java.lang.String r12 = r12.replace(r2, r7)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                r6.append(r12)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                java.lang.String r12 = r6.toString()     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                r10 = 0
                r5[r10] = r12     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                r6 = 0
                r7 = 0
                r8 = 0
                r2 = r3
                r3 = r11
                android.database.Cursor r11 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                if (r11 != 0) goto L78
                if (r11 == 0) goto L77
                r11.close()     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
            L77:
                return r0
            L78:
                boolean r12 = r11.moveToFirst()     // Catch: java.lang.Throwable -> L93
                if (r12 == 0) goto L8f
            L7e:
                java.lang.String r12 = r11.getString(r10)     // Catch: java.lang.Throwable -> L93
                java.lang.String r1 = r11.getString(r9)     // Catch: java.lang.Throwable -> L93
                r0.put(r12, r1)     // Catch: java.lang.Throwable -> L93
                boolean r12 = r11.moveToNext()     // Catch: java.lang.Throwable -> L93
                if (r12 != 0) goto L7e
            L8f:
                r11.close()     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
                goto Lb0
            L93:
                r12 = move-exception
                r11.close()     // Catch: java.lang.Throwable -> L98
                goto L9c
            L98:
                r11 = move-exception
                r12.addSuppressed(r11)     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
            L9c:
                throw r12     // Catch: android.database.sqlite.SQLiteException -> L9d android.database.sqlite.SQLiteCantOpenDatabaseException -> La9
            L9d:
                r11 = move-exception
                java.lang.String r12 = com.sec.internal.ims.config.adapters.StorageAdapter.LOG_TAG
                java.lang.String r1 = "SQLiteException!"
                android.util.Log.i(r12, r1)
                r11.printStackTrace()
                goto Lb0
            La9:
                java.lang.String r11 = com.sec.internal.ims.config.adapters.StorageAdapter.LOG_TAG
                java.lang.String r12 = "Can not read DB now!"
                android.util.Log.i(r11, r12)
            Lb0:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.adapters.StorageAdapter.SQLiteAdapter.read(java.lang.String):java.util.Map");
        }

        public Map<String, String> read() {
            Cursor query;
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            try {
                query = getReadableDatabase().query(this.mTableName, null, null, null, null, null, null);
            } catch (SQLiteCantOpenDatabaseException unused) {
                Log.e(StorageAdapter.LOG_TAG, "Can not read DB now!");
            } catch (SQLiteException e) {
                Log.e(StorageAdapter.LOG_TAG, "SQLiteException!");
                e.printStackTrace();
            }
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

        public boolean write(Map<String, String> map) {
            if (map == null) {
                Log.i(StorageAdapter.LOG_TAG, "data is null!");
                return false;
            }
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                try {
                    try {
                        SQLiteStatement compileStatement = writableDatabase.compileStatement("INSERT OR REPLACE INTO " + this.mTableName + " VALUES (?,?);");
                        writableDatabase.beginTransaction();
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            compileStatement.clearBindings();
                            compileStatement.bindString(1, entry.getKey());
                            compileStatement.bindString(2, entry.getValue());
                            compileStatement.execute();
                        }
                        writableDatabase.setTransactionSuccessful();
                    } catch (SQLiteException e) {
                        Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                        e.printStackTrace();
                    }
                    endTransaction(writableDatabase);
                    for (Map.Entry<String, String> entry2 : map.entrySet()) {
                        if (this.mTableName.startsWith("OMADM")) {
                            this.mContext.getContentResolver().notifyChange(UriUtil.buildUri("content://com.samsung.rcs.dmconfigurationprovider/" + entry2.getKey(), StorageAdapter.this.mPhoneId), null);
                        } else {
                            this.mContext.getContentResolver().notifyChange(UriUtil.buildUri(ConfigConstants.CONTENT_URI.buildUpon().appendPath(entry2.getKey()).build().toString(), StorageAdapter.this.mPhoneId), null);
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    endTransaction(writableDatabase);
                    throw th;
                }
            } catch (SQLiteDiskIOException e2) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteDiskIOException : " + e2.toString());
                return false;
            } catch (SQLiteException e3) {
                e3.printStackTrace();
                return false;
            }
        }

        public int delete(String str) {
            Log.i(StorageAdapter.LOG_TAG, "delete: " + str);
            try {
                return getWritableDatabase().delete(this.mTableName, "PATH = ?", new String[]{str});
            } catch (SQLiteDiskIOException e) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteDiskIOException : " + e.toString());
                return 0;
            } catch (SQLiteException e2) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                e2.printStackTrace();
                return 0;
            }
        }

        public boolean deleteAll() {
            SQLiteDatabase sQLiteDatabase;
            IMSLog.i(StorageAdapter.LOG_TAG, StorageAdapter.this.mPhoneId, "drop table:" + this.mTableName);
            try {
                try {
                    sQLiteDatabase = getWritableDatabase();
                } catch (SQLiteDiskIOException e) {
                    Log.i(StorageAdapter.LOG_TAG, "SQLiteDiskIOException : " + e.toString());
                    return false;
                }
            } catch (SQLiteException e2) {
                e = e2;
                sQLiteDatabase = null;
            }
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + this.mTableName);
            } catch (SQLiteException e3) {
                e = e3;
                Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                e.printStackTrace();
                onCreate(sQLiteDatabase);
                return true;
            }
            onCreate(sQLiteDatabase);
            return true;
        }

        public boolean forceDeleteAllConfig() {
            ArrayList arrayList = new ArrayList();
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                for (String str : getTables(writableDatabase)) {
                    writableDatabase.execSQL("DROP TABLE IF EXISTS " + str);
                    writableDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str + " ( " + COLUMN1_NAME + " TEXT PRIMARY KEY," + COLUMN2_NAME + " TEXT )");
                    Calendar calendar = Calendar.getInstance();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(TIMESTAMP_FORMAT, Locale.getDefault());
                    String str2 = StorageAdapter.LOG_TAG;
                    int i = StorageAdapter.this.mPhoneId;
                    StringBuilder sb = new StringBuilder();
                    sb.append("timestamp:");
                    sb.append(simpleDateFormat.format(calendar.getTime()));
                    IMSLog.i(str2, i, sb.toString());
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(COLUMN1_NAME, PATH_METADATA_TIMESTAMP);
                    contentValues.put(COLUMN2_NAME, String.valueOf(calendar.getTimeInMillis()));
                    writableDatabase.insertWithOnConflict(this.mTableName, null, contentValues, 5);
                    arrayList.add(str);
                }
                Log.i(StorageAdapter.LOG_TAG, "forceDeleteAllConfig: removed tables: " + arrayList);
                return true;
            } catch (SQLiteDiskIOException e) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteDiskIOException : " + e.toString());
                return false;
            } catch (SQLiteException e2) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                e2.printStackTrace();
                return false;
            }
        }

        public Cursor query(String[] strArr) {
            StringBuffer stringBuffer = new StringBuffer();
            if (strArr != null) {
                stringBuffer.append("PATH=?");
                for (int i = 1; i < strArr.length; i++) {
                    stringBuffer.append(" OR PATH=?");
                }
            }
            try {
                return getReadableDatabase().query(this.mTableName, this.COLUMNS, stringBuffer.toString(), strArr, null, null, null);
            } catch (SQLiteException e) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                e.printStackTrace();
                return null;
            }
        }

        private boolean isTable(SQLiteDatabase sQLiteDatabase, String str) {
            boolean z = false;
            try {
                Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM sqlite_master WHERE type=? AND name=?", new String[]{"table", str});
                if (rawQuery != null) {
                    try {
                        rawQuery.moveToFirst();
                        if (rawQuery.getInt(0) != 0) {
                            z = true;
                        }
                    } finally {
                    }
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } catch (SQLiteException e) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                e.printStackTrace();
            }
            return z;
        }

        List<String> getTables(SQLiteDatabase sQLiteDatabase) {
            ArrayList arrayList = new ArrayList();
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type=?", new String[]{"table"});
            if (rawQuery != null) {
                try {
                    if (rawQuery.moveToFirst()) {
                        while (rawQuery.moveToNext()) {
                            arrayList.add(rawQuery.getString(0));
                        }
                    }
                } catch (Throwable th) {
                    try {
                        rawQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return arrayList;
        }

        void deleteTable(SQLiteDatabase sQLiteDatabase, String str) {
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
            } catch (SQLiteException e) {
                Log.i(StorageAdapter.LOG_TAG, "SQLiteException!");
                e.printStackTrace();
            }
        }

        String readTable(SQLiteDatabase sQLiteDatabase, String str, String str2) {
            String str3 = null;
            try {
                Cursor query = sQLiteDatabase.query(str, this.COLUMNS, "PATH = ?", new String[]{str2}, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            str3 = query.getString(1);
                        }
                    } finally {
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e) {
                e.printStackTrace();
            }
            return str3;
        }

        void deleteOldTables(SQLiteDatabase sQLiteDatabase, List<String> list) {
            String str = StorageAdapter.LOG_TAG;
            Log.i(str, "over table limit. remove old tables");
            TreeMap treeMap = new TreeMap();
            Log.i(str, "deleteOldTables: current tables: " + list);
            for (String str2 : list) {
                String readTable = readTable(sQLiteDatabase, str2, PATH_METADATA_TIMESTAMP);
                if (readTable != null && !str2.startsWith("OMADM")) {
                    treeMap.put(Long.valueOf(readTable), str2);
                }
            }
            int size = treeMap.size() - this.DB_TABLE_MAX;
            if (size < 1) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = treeMap.entrySet().iterator();
            while (it.hasNext()) {
                String str3 = (String) ((Map.Entry) it.next()).getValue();
                if (!this.mTableName.equals(str3)) {
                    arrayList.add(str3);
                    deleteTable(sQLiteDatabase, str3);
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    } else {
                        size = i;
                    }
                }
            }
            Log.i(StorageAdapter.LOG_TAG, "deleteOldTables: removed tables: " + arrayList);
        }

        void endTransaction(SQLiteDatabase sQLiteDatabase) {
            if (sQLiteDatabase == null) {
                Log.i(StorageAdapter.LOG_TAG, "endTransaction: db is null");
                return;
            }
            try {
                sQLiteDatabase.endTransaction();
            } catch (SQLException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }
}
