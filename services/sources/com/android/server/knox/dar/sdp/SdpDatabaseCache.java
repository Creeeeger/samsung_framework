package com.android.server.knox.dar.sdp;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class SdpDatabaseCache {
    public final HashMap mCache = new LinkedHashMap(10, 0.75f, true) { // from class: com.android.server.knox.dar.sdp.SdpDatabaseCache.1
        private static final long serialVersionUID = -6538574977717884266L;

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            return size() >= 30;
        }
    };
    public final DatabaseHelper mDatabaseHelper;
    public SQLiteDatabase mDbReadable;
    public SQLiteDatabase mDbWritable;

    public static void LogD(String str) {
    }

    public SdpDatabaseCache(Context context) {
        DatabaseHelper databaseHelper = new DatabaseHelper(context);
        this.mDatabaseHelper = databaseHelper;
        this.mDbReadable = databaseHelper.getReadableDatabase();
        this.mDbWritable = databaseHelper.getWritableDatabase();
    }

    public void putBoolean(int i, String str, boolean z) {
        putInternal(i, str, z ? "1" : "0");
    }

    public void putInt(int i, String str, int i2) {
        putInternal(i, str, String.valueOf(i2));
    }

    public final void putInternal(int i, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", str);
        contentValues.put("user", Integer.valueOf(i));
        contentValues.put("value", str2);
        boolean z = false;
        try {
            try {
                this.mDbWritable.beginTransaction();
                this.mDbWritable.delete("sdp_info", "name=? AND user=?", new String[]{str, Integer.toString(i)});
                this.mDbWritable.insert("sdp_info", null, contentValues);
                this.mDbWritable.setTransactionSuccessful();
                this.mDbWritable.endTransaction();
                z = true;
            } catch (Exception e) {
                reportError("put", e);
                this.mDbWritable.endTransaction();
            }
            if (z) {
                cache(i, str, str2);
            }
        } catch (Throwable th) {
            this.mDbWritable.endTransaction();
            throw th;
        }
    }

    public boolean getBoolean(int i, String str, boolean z) {
        String internal = getInternal(i, str);
        return "1".equals(internal) || (!"0".equals(internal) && z);
    }

    public int getInt(int i, String str, int i2) {
        try {
            String internal = getInternal(i, str);
            return internal != null ? Integer.parseInt(internal) : i2;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        if (r1 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
    
        cache(r13, r14, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0048, code lost:
    
        if (r2 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getInternal(int r13, java.lang.String r14) {
        /*
            r12 = this;
            java.lang.String r0 = r12.hitOrNull(r13, r14)
            if (r0 == 0) goto L7
            return r0
        L7:
            r1 = 0
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r12.mDbReadable     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            java.lang.String r4 = "sdp_info"
            r11 = 1
            java.lang.String[] r5 = new java.lang.String[r11]     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            java.lang.String r6 = "value"
            r5[r1] = r6     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            java.lang.String r6 = "name=? AND user=?"
            r7 = 2
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            r7[r1] = r14     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            java.lang.String r8 = java.lang.Integer.toString(r13)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            r7[r11] = r8     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            r8 = 0
            r9 = 0
            r10 = 0
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r2 == 0) goto L3a
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r3 == 0) goto L3a
            java.lang.String r0 = r2.getString(r1)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r0 == 0) goto L3a
            r1 = r11
        L3a:
            if (r2 == 0) goto L4b
        L3c:
            r2.close()
            goto L4b
        L40:
            r12 = move-exception
            goto L51
        L42:
            r3 = move-exception
            java.lang.String r4 = "get"
            reportError(r4, r3)     // Catch: java.lang.Throwable -> L40
            if (r2 == 0) goto L4b
            goto L3c
        L4b:
            if (r1 == 0) goto L50
            r12.cache(r13, r14, r0)
        L50:
            return r0
        L51:
            if (r2 == 0) goto L56
            r2.close()
        L56:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.sdp.SdpDatabaseCache.getInternal(int, java.lang.String):java.lang.String");
    }

    public final String hitOrNull(int i, String str) {
        String makeTag = makeTag(i, str);
        synchronized (this.mCache) {
            if (!this.mCache.containsKey(makeTag)) {
                return null;
            }
            LogD("hit - [ Tag : " + makeTag + " ]");
            return (String) this.mCache.get(makeTag);
        }
    }

    public final void cache(int i, String str, String str2) {
        String makeTag = makeTag(i, str);
        synchronized (this.mCache) {
            LogD("cache - [ Tag : " + makeTag + ", Val : " + str2 + " ]");
            this.mCache.put(makeTag, str2);
        }
    }

    public void preload(int i) {
        Cursor cursor = null;
        try {
            try {
                cursor = this.mDbReadable.query("sdp_info", new String[]{"name", "value"}, "user=?", new String[]{Integer.toString(i)}, null, null, null);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        putInternal(i, cursor.getString(0), cursor.getString(1));
                    }
                }
                if (cursor == null) {
                    return;
                }
            } catch (Exception e) {
                reportError("preload", e);
                if (cursor == null) {
                    return;
                }
            }
            cursor.close();
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void destroy(int i) {
        boolean z;
        try {
            try {
                this.mDbWritable.beginTransaction();
                this.mDbWritable.delete("sdp_info", "user='" + i + "'", null);
                this.mDbWritable.setTransactionSuccessful();
                this.mDbWritable.endTransaction();
                z = true;
            } catch (Exception e) {
                reportError("remove", e);
                this.mDbWritable.endTransaction();
                z = false;
            }
            if (z) {
                synchronized (this.mCache) {
                    Iterator it = this.mCache.keySet().iterator();
                    String valueOf = String.valueOf(i);
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (str.startsWith(valueOf)) {
                            it.remove();
                            LogD("remove - Val of key [ " + str + " ]");
                        }
                    }
                }
            }
        } catch (Throwable th) {
            this.mDbWritable.endTransaction();
            throw th;
        }
    }

    public static String makeTag(int i, String str) {
        return i + "_" + str;
    }

    public static void reportError(String str, Exception exc) {
        SDPLog.d("SdpDatabaseCache", "Error occurred in " + str);
        SDPLog.e(exc);
    }

    public static void LogI(String str) {
        Log.i("SdpDatabaseCache", str);
    }

    /* loaded from: classes2.dex */
    public class DatabaseHelper extends SQLiteOpenHelper {
        public DatabaseHelper(Context context) {
            super(context, "sdp.db", (SQLiteDatabase.CursorFactory) null, 1);
            setWriteAheadLoggingEnabled(true);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            SdpDatabaseCache.LogI("DB created! : " + sQLiteDatabase.getPath());
            sQLiteDatabase.execSQL("CREATE TABLE sdp_info (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            SdpDatabaseCache.LogI("DB upgraded! : " + i + " to " + i2);
        }
    }
}
