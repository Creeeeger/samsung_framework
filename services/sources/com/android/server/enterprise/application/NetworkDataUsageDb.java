package com.android.server.enterprise.application;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

/* loaded from: classes2.dex */
public class NetworkDataUsageDb {
    public Context mContext;

    public NetworkDataUsageDb(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0146 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r20v0, types: [java.util.Hashtable] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean updateDataUsage(java.util.Hashtable r20) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.NetworkDataUsageDb.updateDataUsage(java.util.Hashtable):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0029, code lost:
    
        if (r2.moveToFirst() != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x002b, code lost:
    
        r1 = new com.samsung.android.knox.application.NetworkStats();
        r1.uid = r2.getInt(r2.getColumnIndex(com.samsung.android.knox.custom.KnoxCustomManagerService.ID));
        r1.mobileTxBytes = r2.getLong(r2.getColumnIndex("mobiledatausagesend"));
        r1.mobileRxBytes = r2.getLong(r2.getColumnIndex("mobiledatausagercv"));
        r1.wifiTxBytes = r2.getLong(r2.getColumnIndex("wifidatausagesend"));
        r1.wifiRxBytes = r2.getLong(r2.getColumnIndex("wifidatausagesendrcv"));
        r3.put(java.lang.Integer.valueOf(r2.getInt(r2.getColumnIndex(com.samsung.android.knox.custom.KnoxCustomManagerService.ID))), r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
    
        if (r2.moveToNext() != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0083, code lost:
    
        r1 = r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.android.server.enterprise.application.NetworkDataUsageDb] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v8, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.Hashtable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Hashtable getMobileDataUsage() {
        /*
            r10 = this;
            java.lang.String r0 = "_id"
            r1 = 0
            android.content.Context r10 = r10.mContext     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> L9d
            android.database.sqlite.SQLiteDatabase r10 = getAppControlDB(r10)     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> L9d
            if (r10 != 0) goto L11
            if (r10 == 0) goto L10
            r10.close()
        L10:
            return r1
        L11:
            java.lang.String r3 = "NetworkDataUsage"
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r10
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> Lc2
            if (r2 == 0) goto L8e
            java.util.Hashtable r3 = new java.util.Hashtable     // Catch: java.lang.Throwable -> L87 java.lang.Exception -> L8a
            r3.<init>()     // Catch: java.lang.Throwable -> L87 java.lang.Exception -> L8a
            boolean r1 = r2.moveToFirst()     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            if (r1 == 0) goto L83
        L2b:
            com.samsung.android.knox.application.NetworkStats r1 = new com.samsung.android.knox.application.NetworkStats     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            r1.<init>()     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            int r4 = r2.getColumnIndex(r0)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            int r4 = r2.getInt(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            r1.uid = r4     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            java.lang.String r4 = "mobiledatausagesend"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            long r4 = r2.getLong(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            r1.mobileTxBytes = r4     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            java.lang.String r4 = "mobiledatausagercv"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            long r4 = r2.getLong(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            r1.mobileRxBytes = r4     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            java.lang.String r4 = "wifidatausagesend"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            long r4 = r2.getLong(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            r1.wifiTxBytes = r4     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            java.lang.String r4 = "wifidatausagesendrcv"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            long r4 = r2.getLong(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            r1.wifiRxBytes = r4     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            int r4 = r2.getColumnIndex(r0)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            int r4 = r2.getInt(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            r3.put(r4, r1)     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            boolean r1 = r2.moveToNext()     // Catch: java.lang.Exception -> L85 java.lang.Throwable -> L87
            if (r1 != 0) goto L2b
        L83:
            r1 = r3
            goto L8e
        L85:
            r0 = move-exception
            goto L8c
        L87:
            r0 = move-exception
            r1 = r2
            goto Lc3
        L8a:
            r0 = move-exception
            r3 = r1
        L8c:
            r1 = r2
            goto La0
        L8e:
            if (r2 == 0) goto L93
            r2.close()
        L93:
            r10.close()
            goto Lc1
        L97:
            r0 = move-exception
            r3 = r1
            goto La0
        L9a:
            r0 = move-exception
            r10 = r1
            goto Lc3
        L9d:
            r0 = move-exception
            r10 = r1
            r3 = r10
        La0:
            java.lang.String r2 = "NetworkDataUsageDb"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc2
            r4.<init>()     // Catch: java.lang.Throwable -> Lc2
            java.lang.String r5 = "getMobileDataUsage "
            r4.append(r5)     // Catch: java.lang.Throwable -> Lc2
            r4.append(r0)     // Catch: java.lang.Throwable -> Lc2
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> Lc2
            android.util.Log.i(r2, r0)     // Catch: java.lang.Throwable -> Lc2
            if (r1 == 0) goto Lbb
            r1.close()
        Lbb:
            if (r10 == 0) goto Lc0
            r10.close()
        Lc0:
            r1 = r3
        Lc1:
            return r1
        Lc2:
            r0 = move-exception
        Lc3:
            if (r1 == 0) goto Lc8
            r1.close()
        Lc8:
            if (r10 == 0) goto Lcd
            r10.close()
        Lcd:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.NetworkDataUsageDb.getMobileDataUsage():java.util.Hashtable");
    }

    public static SQLiteDatabase getAppControlDB(Context context) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = context.openOrCreateDatabase("dmappmgr.db", 0, null);
            Log.i("NetworkDataUsageDb", "::getAppControlDB: DB is Created ");
        } catch (Exception unused) {
            Log.i("NetworkDataUsageDb", "::getAppControlDB: Exception to create DB");
        }
        if (sQLiteDatabase != null && !isTableExists(sQLiteDatabase, "NetworkDataUsage")) {
            createDmAppMgrTable(sQLiteDatabase);
        }
        return sQLiteDatabase;
    }

    public static void createDmAppMgrTable(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("create table NetworkDataUsage (_id integer primary key , mobiledatausagercv long, wifidatausagesendrcv long, mobiledatausagesend long, wifidatausagesend long );");
            Log.i("NetworkDataUsageDb", "::createDmAppMgrTable: Table is Created ");
        } catch (Exception unused) {
            Log.i("NetworkDataUsageDb", "::createDmAppMgrTable: Exception while table is creating ");
        }
    }

    public static boolean isTableExists(SQLiteDatabase sQLiteDatabase, String str) {
        if (sQLiteDatabase == null || str == null) {
            return false;
        }
        String trim = str.trim();
        if (trim.length() <= 0) {
            return false;
        }
        try {
            sQLiteDatabase.execSQL("SELECT 1 FROM " + trim + " WHERE 1=0");
            Log.i("NetworkDataUsageDb", "::isTableExists: Table exists ");
            return true;
        } catch (Exception unused) {
            Log.i("NetworkDataUsageDb", "::isTableExists:Table Does not exists ");
            return false;
        }
    }
}
