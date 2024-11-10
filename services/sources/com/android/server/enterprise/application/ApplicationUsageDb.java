package com.android.server.enterprise.application;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.samsung.android.knox.application.AppInfoLastUsage;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class ApplicationUsageDb {
    public Context mContext;

    public final long calculateLastUsageTime(long j, long j2, long j3, long j4) {
        if (j3 != 0 && j4 != 0) {
            if (j != 0) {
                if (j2 > j4) {
                    if (j >= j3) {
                        return j2 - j3;
                    }
                } else if (j < j3) {
                    return j4 - j;
                }
            }
            return j4 - j3;
        }
        if (j2 == 0) {
            return 0L;
        }
        return j2 - j;
    }

    public ApplicationUsageDb(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0075, code lost:
    
        if (r4.update("ApplicationControl", r12, "pkgname = '" + r14 + "'", null) > 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0077, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a4, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a1, code lost:
    
        if (0 < r4.insert("ApplicationControl", null, r1)) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean updateForeGroundUsageDetails(java.lang.String r14, int r15, long r16, long r18) {
        /*
            r13 = this;
            r0 = r14
            java.lang.String r1 = "'"
            r2 = 0
            r3 = 0
            r4 = r13
            android.content.Context r4 = r4.mContext     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            android.database.sqlite.SQLiteDatabase r4 = getAppControlDB(r4)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            if (r4 != 0) goto Lf
            return r2
        Lf:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb0
            r5.<init>()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb0
            java.lang.String r6 = "SELECT * FROM ApplicationControl WHERE pkgname = '"
            r5.append(r6)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb0
            r5.append(r14)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb0
            r5.append(r1)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb0
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb0
            android.database.Cursor r5 = r4.rawQuery(r5, r3)     // Catch: java.lang.Exception -> Lae java.lang.Throwable -> Lb0
            boolean r6 = r5.moveToFirst()     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r7 = 1
            java.lang.String r8 = "ApplicationControl"
            java.lang.String r9 = "lastpausetime"
            java.lang.String r10 = "lastlaunchtime"
            java.lang.String r11 = "launchcount"
            if (r6 == 0) goto L79
            int r6 = r5.getColumnIndex(r11)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            int r6 = r5.getInt(r6)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            int r6 = r6 + r15
            android.content.ContentValues r12 = new android.content.ContentValues     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r12.<init>()     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r12.put(r11, r6)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.Long r6 = java.lang.Long.valueOf(r16)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r12.put(r10, r6)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.Long r6 = java.lang.Long.valueOf(r18)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r12.put(r9, r6)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r6.<init>()     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.String r9 = "pkgname = '"
            r6.append(r9)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r6.append(r14)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r6.append(r1)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            int r0 = r4.update(r8, r12, r0, r3)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            if (r0 <= 0) goto La4
        L77:
            r2 = r7
            goto La4
        L79:
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r1.<init>()     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.Integer r6 = java.lang.Integer.valueOf(r15)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r1.put(r11, r6)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.String r6 = "pkgname"
            r1.put(r6, r14)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.Long r0 = java.lang.Long.valueOf(r16)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r1.put(r10, r0)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            java.lang.Long r0 = java.lang.Long.valueOf(r18)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r1.put(r9, r0)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            long r0 = r4.insert(r8, r3, r1)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Lab
            r8 = 0
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 >= 0) goto La4
            goto L77
        La4:
            r5.close()
            goto Lbc
        La8:
            r0 = move-exception
            r3 = r5
            goto Lc2
        Lab:
            r0 = move-exception
            r3 = r5
            goto Lb4
        Lae:
            r0 = move-exception
            goto Lb4
        Lb0:
            r0 = move-exception
            goto Lc2
        Lb2:
            r0 = move-exception
            r4 = r3
        Lb4:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Lb0
            if (r3 == 0) goto Lbc
            r3.close()
        Lbc:
            if (r4 == 0) goto Lc1
            r4.close()
        Lc1:
            return r2
        Lc2:
            if (r3 == 0) goto Lc7
            r3.close()
        Lc7:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationUsageDb.updateForeGroundUsageDetails(java.lang.String, int, long, long):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005e, code lost:
    
        if (r9.update("ApplicationControl", r4, "pkgname = '" + r10 + "'", null) > 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0086, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        if (0 < r9.insert("ApplicationControl", null, r0)) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean updateBackGroundUsageDetails(java.lang.String r10, long r11, long r13) {
        /*
            r9 = this;
            java.lang.String r0 = "'"
            r1 = 0
            r2 = 0
            android.content.Context r9 = r9.mContext     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            android.database.sqlite.SQLiteDatabase r9 = getAppControlDB(r9)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r9 != 0) goto Ld
            return r1
        Ld:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> L92
            r3.<init>()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> L92
            java.lang.String r4 = "SELECT * FROM ApplicationControl WHERE pkgname = '"
            r3.append(r4)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> L92
            r3.append(r10)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> L92
            r3.append(r0)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> L92
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> L92
            android.database.Cursor r3 = r9.rawQuery(r3, r2)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> L92
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r5 = 1
            java.lang.String r6 = "ApplicationControl"
            java.lang.String r7 = "applastservicestoptime"
            java.lang.String r8 = "applastservicestarttime"
            if (r4 == 0) goto L62
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r4.<init>()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r4.put(r8, r11)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.Long r11 = java.lang.Long.valueOf(r13)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r4.put(r7, r11)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r11.<init>()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.String r12 = "pkgname = '"
            r11.append(r12)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r11.append(r10)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r11.append(r0)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.String r10 = r11.toString()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            int r10 = r9.update(r6, r4, r10, r2)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            if (r10 <= 0) goto L86
        L60:
            r1 = r5
            goto L86
        L62:
            android.content.ContentValues r0 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r0.<init>()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.String r4 = "pkgname"
            r0.put(r4, r10)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.Long r10 = java.lang.Long.valueOf(r11)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r0.put(r8, r10)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            java.lang.Long r10 = java.lang.Long.valueOf(r13)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r0.put(r7, r10)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            long r10 = r9.insert(r6, r2, r0)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8d
            r12 = 0
            int r10 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
            if (r10 >= 0) goto L86
            goto L60
        L86:
            r3.close()
            goto L9e
        L8a:
            r9 = move-exception
            r2 = r3
            goto La4
        L8d:
            r10 = move-exception
            r2 = r3
            goto L96
        L90:
            r10 = move-exception
            goto L96
        L92:
            r9 = move-exception
            goto La4
        L94:
            r10 = move-exception
            r9 = r2
        L96:
            r10.printStackTrace()     // Catch: java.lang.Throwable -> L92
            if (r2 == 0) goto L9e
            r2.close()
        L9e:
            if (r9 == 0) goto La3
            r9.close()
        La3:
            return r1
        La4:
            if (r2 == 0) goto La9
            r2.close()
        La9:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationUsageDb.updateBackGroundUsageDetails(java.lang.String, long, long):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x007c, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0021, code lost:
    
        if (r1.moveToFirst() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0023, code lost:
    
        r2.put(r1.getString(r1.getColumnIndex("pkgname")), java.lang.Integer.valueOf(r1.getInt(r1.getColumnIndex("launchcount"))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (r1.moveToNext() != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0079, code lost:
    
        if (r10 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0061, code lost:
    
        if (r10 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0063, code lost:
    
        r10.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.HashMap getLaunchCountOfAllApplication() {
        /*
            r10 = this;
            r0 = 0
            android.content.Context r10 = r10.mContext     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            android.database.sqlite.SQLiteDatabase r10 = getAppControlDB(r10)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            if (r10 == 0) goto L5b
            java.lang.String r2 = "ApplicationControl"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r10
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L56
            if (r1 == 0) goto L4e
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L7d
            r2.<init>()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L7d
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            if (r0 == 0) goto L4f
        L23:
            java.lang.String r0 = "pkgname"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            java.lang.String r3 = "launchcount"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            int r3 = r1.getInt(r3)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            r2.put(r0, r3)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> L7d
            if (r0 != 0) goto L23
            goto L4f
        L47:
            r0 = move-exception
            goto L71
        L49:
            r2 = move-exception
            r9 = r2
            r2 = r0
            r0 = r9
            goto L71
        L4e:
            r2 = r0
        L4f:
            r0 = r1
            goto L5c
        L51:
            r1 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
            goto L7e
        L56:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r2
            goto L71
        L5b:
            r2 = r0
        L5c:
            if (r0 == 0) goto L61
            r0.close()
        L61:
            if (r10 == 0) goto L7c
        L63:
            r10.close()
            goto L7c
        L67:
            r10 = move-exception
            r1 = r0
            r0 = r10
            r10 = r1
            goto L7e
        L6c:
            r10 = move-exception
            r1 = r0
            r2 = r1
            r0 = r10
            r10 = r2
        L71:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L79
            r1.close()
        L79:
            if (r10 == 0) goto L7c
            goto L63
        L7c:
            return r2
        L7d:
            r0 = move-exception
        L7e:
            if (r1 == 0) goto L83
            r1.close()
        L83:
            if (r10 == 0) goto L88
            r10.close()
        L88:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationUsageDb.getLaunchCountOfAllApplication():java.util.HashMap");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r13v6 */
    public HashMap getAppUsageData() {
        SQLiteDatabase sQLiteDatabase;
        HashMap hashMap;
        String[] strArr = {"pkgname", "lastlaunchtime", "lastpausetime", "applastservicestarttime", "applastservicestoptime"};
        ?? r13 = 0;
        r13 = null;
        HashMap hashMap2 = null;
        r13 = null;
        Cursor cursor = null;
        r13 = 0;
        try {
            try {
                sQLiteDatabase = getAppControlDB(this.mContext);
            } catch (Exception e) {
                e = e;
                hashMap = null;
                sQLiteDatabase = null;
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = null;
            }
            if (sQLiteDatabase == null) {
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                return null;
            }
            try {
                Cursor query = sQLiteDatabase.query("ApplicationControl", strArr, null, null, null, null, null);
                if (query != null) {
                    try {
                        try {
                            if (query.moveToFirst()) {
                                hashMap = new HashMap();
                                do {
                                    try {
                                        String string = query.getString(query.getColumnIndex("pkgname"));
                                        long j = query.getLong(query.getColumnIndex("lastlaunchtime"));
                                        long j2 = query.getLong(query.getColumnIndex("lastpausetime"));
                                        long j3 = query.getLong(query.getColumnIndex("applastservicestarttime"));
                                        long calculateLastUsageTime = calculateLastUsageTime(j, j2, j3, query.getLong(query.getColumnIndex("applastservicestoptime")));
                                        if (calculateLastUsageTime != 0) {
                                            AppInfoLastUsage appInfoLastUsage = new AppInfoLastUsage();
                                            appInfoLastUsage.packageName = string;
                                            appInfoLastUsage.lastAppUsage = calculateLastUsageTime;
                                            if (j != 0) {
                                                appInfoLastUsage.lastLaunchTime = j;
                                            } else {
                                                appInfoLastUsage.lastLaunchTime = j3;
                                            }
                                            hashMap.put(string, appInfoLastUsage);
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        cursor = query;
                                        e.printStackTrace();
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        r13 = hashMap;
                                        return r13;
                                    }
                                } while (query.moveToNext());
                                hashMap2 = hashMap;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            r13 = query;
                            if (r13 != 0) {
                                r13.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        hashMap = null;
                    }
                }
                if (query != null) {
                    query.close();
                }
                sQLiteDatabase.close();
                r13 = hashMap2;
            } catch (Exception e4) {
                e = e4;
                hashMap = null;
            }
            return r13;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static SQLiteDatabase getAppControlDB(Context context) {
        SQLiteDatabase sQLiteDatabase = null;
        if (context != null) {
            try {
                sQLiteDatabase = context.openOrCreateDatabase("dmappmgr.db", 0, null);
            } catch (Exception e) {
                Log.i("ApplicationUsageDb", "::getAppControlDB: Exception to create DB");
                e.printStackTrace();
            }
            if (sQLiteDatabase != null && !isTableExists(sQLiteDatabase, "ApplicationControl")) {
                createDmAppMgrTable(sQLiteDatabase);
            }
        }
        return sQLiteDatabase;
    }

    public static void createDmAppMgrTable(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("create table ApplicationControl (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );");
            Log.i("ApplicationUsageDb", "::createDmAppMgrTable: Table is Created ");
        } catch (Exception e) {
            Log.i("ApplicationUsageDb", "::createDmAppMgrTable: Exception while table is creating ");
            e.printStackTrace();
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
            return true;
        } catch (Exception unused) {
            Log.i("ApplicationUsageDb", "::isTableExists:Table Does not exists ");
            return false;
        }
    }
}
