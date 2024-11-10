package com.android.server.knox.dar;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.android.server.knox.dar.sdp.SDPLog;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class DarDatabaseCache {
    public final HashMap mCache = new LinkedHashMap(10, 0.75f, true) { // from class: com.android.server.knox.dar.DarDatabaseCache.1
        private static final long serialVersionUID = 6754995611664672888L;

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            return size() >= 30;
        }
    };
    public final DatabaseHelper mDatabaseHelper;

    public static void LogD(String str) {
    }

    public DarDatabaseCache(Context context) {
        this.mDatabaseHelper = new DatabaseHelper(context);
    }

    public void putInt(int i, String str, int i2) {
        putInternal(i, str, String.valueOf(i2));
    }

    public void putLong(int i, String str, long j) {
        putInternal(i, str, String.valueOf(j));
    }

    public void putString(int i, String str, String str2) {
        putInternal(i, str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void putInternal(int r10, java.lang.String r11, java.lang.String r12) {
        /*
            r9 = this;
            java.lang.String r0 = "dar_info"
            if (r11 == 0) goto L73
            if (r12 != 0) goto L7
            goto L73
        L7:
            android.content.ContentValues r1 = new android.content.ContentValues
            r1.<init>()
            java.lang.String r2 = "name"
            r1.put(r2, r11)
            java.lang.String r2 = "user"
            java.lang.Integer r3 = java.lang.Integer.valueOf(r10)
            r1.put(r2, r3)
            java.lang.String r2 = "value"
            r1.put(r2, r12)
            r2 = 0
            r3 = 0
            com.android.server.knox.dar.DarDatabaseCache$DatabaseHelper r4 = r9.mDatabaseHelper     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            android.database.sqlite.SQLiteDatabase r4 = r4.getWritableDatabase()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r4.beginTransaction()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            java.lang.String r5 = "name=? AND user=?"
            r6 = 2
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r6[r3] = r11     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            java.lang.String r7 = java.lang.Integer.toString(r10)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r8 = 1
            r6[r8] = r7     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r4.delete(r0, r5, r6)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r4.insert(r0, r2, r1)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r4.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r4.endTransaction()
            r4.close()
            r3 = r8
            goto L64
        L4d:
            r9 = move-exception
            r2 = r4
            goto L6a
        L50:
            r0 = move-exception
            r2 = r4
            goto L56
        L53:
            r9 = move-exception
            goto L6a
        L55:
            r0 = move-exception
        L56:
            java.lang.String r1 = "put"
            reportError(r1, r0)     // Catch: java.lang.Throwable -> L53
            if (r2 == 0) goto L64
            r2.endTransaction()
            r2.close()
        L64:
            if (r3 == 0) goto L69
            r9.cache(r10, r11, r12)
        L69:
            return
        L6a:
            if (r2 == 0) goto L72
            r2.endTransaction()
            r2.close()
        L72:
            throw r9
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.DarDatabaseCache.putInternal(int, java.lang.String, java.lang.String):void");
    }

    public int getInt(int i, String str, int i2) {
        try {
            String internal = getInternal(i, str);
            return internal != null ? Integer.parseInt(internal) : i2;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public long getLong(int i, String str, long j) {
        try {
            String internal = getInternal(i, str);
            return internal != null ? Long.parseLong(internal) : j;
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public String getString(int i, String str, String str2) {
        String internal = getInternal(i, str);
        return internal != null ? internal : str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
    
        if (r1 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
    
        cache(r13, r14, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
    
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
            com.android.server.knox.dar.DarDatabaseCache$DatabaseHelper r3 = r12.mDatabaseHelper     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            android.database.sqlite.SQLiteDatabase r4 = r3.getReadableDatabase()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.lang.String r5 = "dar_info"
            r3 = 1
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.lang.String r7 = "value"
            r6[r1] = r7     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.lang.String r7 = "name=? AND user=?"
            r8 = 2
            java.lang.String[] r8 = new java.lang.String[r8]     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            r8[r1] = r14     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.lang.String r9 = java.lang.Integer.toString(r13)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            r8[r3] = r9     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            r9 = 0
            r10 = 0
            r11 = 0
            android.database.Cursor r2 = r4.query(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r2 == 0) goto L3d
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r4 == 0) goto L3d
            java.lang.String r0 = r2.getString(r1)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r0 == 0) goto L3d
            r1 = r3
        L3d:
            if (r2 == 0) goto L4e
        L3f:
            r2.close()
            goto L4e
        L43:
            r12 = move-exception
            goto L54
        L45:
            r3 = move-exception
            java.lang.String r4 = "get"
            reportError(r4, r3)     // Catch: java.lang.Throwable -> L43
            if (r2 == 0) goto L4e
            goto L3f
        L4e:
            if (r1 == 0) goto L53
            r12.cache(r13, r14, r0)
        L53:
            return r0
        L54:
            if (r2 == 0) goto L59
            r2.close()
        L59:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.DarDatabaseCache.getInternal(int, java.lang.String):java.lang.String");
    }

    public void delete(int i, String str) {
        boolean z = false;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = this.mDatabaseHelper.getWritableDatabase();
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.delete("dar_info", "name=? AND user=?", new String[]{str, Integer.toString(i)});
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
                sQLiteDatabase.close();
                z = true;
            } catch (Exception e) {
                reportError("del", e);
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                    sQLiteDatabase.close();
                }
            }
            if (z) {
                decache(i, str);
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null) {
                sQLiteDatabase.endTransaction();
                sQLiteDatabase.close();
            }
            throw th;
        }
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

    public final void decache(int i, String str) {
        String makeTag = makeTag(i, str);
        synchronized (this.mCache) {
            if (this.mCache.containsKey(makeTag)) {
                LogD("decache - [ Tag : " + makeTag + " ]");
                this.mCache.remove(makeTag);
            }
        }
    }

    public static String makeTag(int i, String str) {
        return i + "_" + str;
    }

    public static void reportError(String str, Exception exc) {
        SDPLog.d("DarDatabaseCache", "Error occurred in " + str);
        SDPLog.e(exc);
    }

    public static void LogI(String str) {
        Log.i("DarDatabaseCache", str);
    }

    /* loaded from: classes2.dex */
    public class DatabaseHelper extends SQLiteOpenHelper {
        public DatabaseHelper(Context context) {
            super(context, "dar.db", (SQLiteDatabase.CursorFactory) null, 1);
            setWriteAheadLoggingEnabled(true);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            DarDatabaseCache.LogI("DB created! : " + sQLiteDatabase.getPath());
            sQLiteDatabase.execSQL("CREATE TABLE dar_info (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            DarDatabaseCache.LogI("DB upgraded! : " + i + " to " + i2);
        }
    }
}
