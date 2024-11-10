package com.android.server.enterprise.application;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.UserHandle;
import android.util.Log;
import com.samsung.android.knox.custom.KnoxCustomManagerService;

/* loaded from: classes2.dex */
public class ApplicationIconDb extends SQLiteOpenHelper {
    public final Context mContext;

    public ApplicationIconDb(Context context) {
        super(context, "dmappmgr.db", (SQLiteDatabase.CursorFactory) null, 3);
        this.mContext = context;
    }

    public boolean updateApplicationIcon(String str, byte[] bArr, int i) {
        int userId = UserHandle.getUserId(i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (writableDatabase == null) {
            Log.e("ApplicationIconDb", "updateApplicationIcon(): null db");
            return false;
        }
        try {
            Cursor query = writableDatabase.query("ApplicationIcon", new String[]{KnoxCustomManagerService.ID, "nameowner"}, "pkgname = ? AND userid= ?", new String[]{str, String.valueOf(userId)}, null, null, null, "1");
            try {
                if (query == null) {
                    Log.e("ApplicationIconDb", "updateApplicationIcon(): null cursor");
                    if (query != null) {
                        query.close();
                    }
                    return false;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("imagedata", bArr);
                contentValues.put("nameowner", Integer.valueOf(i));
                if (query.getCount() == 0) {
                    contentValues.put("userid", Integer.valueOf(userId));
                    contentValues.put("pkgname", str);
                    boolean z = writableDatabase.insert("ApplicationIcon", null, contentValues) > 0;
                    query.close();
                    return z;
                }
                if (!query.moveToFirst()) {
                    Log.e("ApplicationIconDb", "updateApplicationIcon(): moveToFirst error!");
                    query.close();
                    return false;
                }
                int i2 = query.getInt(query.getColumnIndex(KnoxCustomManagerService.ID));
                int i3 = query.getInt(query.getColumnIndex("nameowner"));
                if (i3 == 0 || i3 == i) {
                    boolean z2 = ((long) writableDatabase.update("ApplicationIcon", contentValues, "_id = ?", new String[]{String.valueOf(i2)})) > 0;
                    query.close();
                    return z2;
                }
                Log.e("ApplicationIconDb", "updateApplicationIcon(): invalid ownerUid");
                query.close();
                return false;
            } finally {
            }
        } catch (SQLException e) {
            Log.e("ApplicationIconDb", "updateApplicationIcon(): SQLException - ", e);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00be, code lost:
    
        if (r11.update("ApplicationIcon", r13, "pkgname = '" + r12 + "' AND " + r7 + " = " + r8, null) > 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c0, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e1, code lost:
    
        if (r11.delete("ApplicationIcon", "pkgname = '" + r12 + "' AND " + r7 + " = " + r8, null) > 0) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0095 A[Catch: all -> 0x003d, Exception -> 0x0041, TRY_ENTER, TryCatch #3 {all -> 0x003d, blocks: (B:31:0x0033, B:11:0x0070, B:13:0x0076, B:16:0x0082, B:19:0x0095, B:22:0x00c2, B:27:0x0047, B:10:0x004a), top: B:30:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c2 A[Catch: all -> 0x003d, Exception -> 0x0041, TRY_LEAVE, TryCatch #3 {all -> 0x003d, blocks: (B:31:0x0033, B:11:0x0070, B:13:0x0076, B:16:0x0082, B:19:0x0095, B:22:0x00c2, B:27:0x0047, B:10:0x004a), top: B:30:0x0033 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean deleteApplicationIcon(java.lang.String r12, int r13) {
        /*
            r11 = this;
            java.lang.String r0 = "SELECT * FROM ApplicationIcon WHERE pkgname = '"
            java.lang.String r1 = "nameowner"
            java.lang.String r2 = " = "
            java.lang.String r3 = "' AND "
            r4 = 0
            r5 = 0
            android.database.sqlite.SQLiteDatabase r11 = r11.getWritableDatabase()     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            if (r11 != 0) goto L12
            return r4
        L12:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            r6.<init>()     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            r6.append(r0)     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            r6.append(r12)     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            r6.append(r3)     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            r6.append(r1)     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            r6.append(r2)     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            r6.append(r13)     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            android.database.Cursor r6 = r11.rawQuery(r6, r5)     // Catch: java.lang.Throwable -> Le8 java.lang.Exception -> Lea
            if (r6 == 0) goto L45
            int r7 = r6.getCount()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            if (r7 != 0) goto L3a
            goto L45
        L3a:
            r8 = r13
            r7 = r1
            goto L70
        L3d:
            r11 = move-exception
            r5 = r6
            goto Lf4
        L41:
            r11 = move-exception
            r5 = r6
            goto Leb
        L45:
            if (r6 == 0) goto L4a
            r6.close()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L4a
        L4a:
            java.lang.String r7 = "userid"
            int r8 = android.os.UserHandle.getUserId(r13)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r9.<init>()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r9.append(r0)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r9.append(r12)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r9.append(r3)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r9.append(r7)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r9.append(r2)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r9.append(r8)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            java.lang.String r0 = r9.toString()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            android.database.Cursor r6 = r11.rawQuery(r0, r5)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
        L70:
            boolean r0 = r6.moveToFirst()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            if (r0 == 0) goto Le4
            int r0 = r6.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            int r0 = r6.getInt(r0)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            if (r0 == 0) goto L82
            if (r0 != r13) goto Le4
        L82:
            java.lang.String r13 = "newname"
            int r13 = r6.getColumnIndex(r13)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            java.lang.String r13 = r6.getString(r13)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r0 = 1
            java.lang.String r1 = "pkgname = '"
            java.lang.String r9 = "ApplicationIcon"
            if (r13 == 0) goto Lc2
            android.content.ContentValues r13 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.<init>()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            java.lang.String r10 = "imagedata"
            r13.putNull(r10)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r10.<init>()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r10.append(r1)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r10.append(r12)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r10.append(r3)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r10.append(r7)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r10.append(r2)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r10.append(r8)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            java.lang.String r12 = r10.toString()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            int r11 = r11.update(r9, r13, r12, r5)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            if (r11 <= 0) goto Le4
        Lc0:
            r4 = r0
            goto Le4
        Lc2:
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.<init>()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.append(r1)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.append(r12)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.append(r3)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.append(r7)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.append(r2)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            r13.append(r8)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            java.lang.String r12 = r13.toString()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            int r11 = r11.delete(r9, r12, r5)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            if (r11 <= 0) goto Le4
            goto Lc0
        Le4:
            r6.close()
            goto Lf3
        Le8:
            r11 = move-exception
            goto Lf4
        Lea:
            r11 = move-exception
        Leb:
            r11.printStackTrace()     // Catch: java.lang.Throwable -> Le8
            if (r5 == 0) goto Lf3
            r5.close()
        Lf3:
            return r4
        Lf4:
            if (r5 == 0) goto Lf9
            r5.close()
        Lf9:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.deleteApplicationIcon(java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0081, code lost:
    
        if (r12.update("ApplicationIcon", r7, "pkgname = '" + r13 + "' AND userid = " + r3, null) > 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
    
        if (0 < r12.insert("ApplicationIcon", null, r0)) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean updateApplicationName(java.lang.String r13, java.lang.String r14, int r15) {
        /*
            r12 = this;
            java.lang.String r0 = " = "
            java.lang.String r1 = "' AND "
            java.lang.String r2 = "userid"
            int r3 = android.os.UserHandle.getUserId(r15)
            r4 = 0
            r5 = 0
            android.database.sqlite.SQLiteDatabase r12 = r12.getWritableDatabase()     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            if (r12 != 0) goto L14
            return r4
        L14:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            r6.<init>()     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            java.lang.String r7 = "SELECT * FROM ApplicationIcon WHERE pkgname = '"
            r6.append(r7)     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            r6.append(r13)     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            r6.append(r1)     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            r6.append(r2)     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            r6.append(r0)     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            r6.append(r3)     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            android.database.Cursor r6 = r12.rawQuery(r6, r5)     // Catch: java.lang.Throwable -> Lb6 android.database.sqlite.SQLiteException -> Lb8
            boolean r7 = r6.moveToFirst()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r8 = 1
            java.lang.String r9 = "ApplicationIcon"
            java.lang.String r10 = "newname"
            java.lang.String r11 = "nameowner"
            if (r7 == 0) goto L85
            int r7 = r6.getColumnIndex(r11)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            int r7 = r6.getInt(r7)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            if (r7 == 0) goto L50
            if (r7 != r15) goto Lac
        L50:
            android.content.ContentValues r7 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r7.<init>()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r7.put(r10, r14)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            java.lang.Integer r14 = java.lang.Integer.valueOf(r15)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r7.put(r11, r14)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r14.<init>()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            java.lang.String r15 = "pkgname = '"
            r14.append(r15)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r14.append(r13)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r14.append(r1)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r14.append(r2)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r14.append(r0)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r14.append(r3)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            java.lang.String r13 = r14.toString()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            int r12 = r12.update(r9, r7, r13, r5)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            if (r12 <= 0) goto Lac
        L83:
            r4 = r8
            goto Lac
        L85:
            android.content.ContentValues r0 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r0.<init>()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            java.lang.String r1 = "pkgname"
            r0.put(r1, r13)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r0.put(r10, r14)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            java.lang.Integer r13 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r0.put(r2, r13)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            java.lang.Integer r13 = java.lang.Integer.valueOf(r15)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r0.put(r11, r13)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            long r12 = r12.insert(r9, r5, r0)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb3
            r14 = 0
            int r12 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
            if (r12 >= 0) goto Lac
            goto L83
        Lac:
            r6.close()
            goto Lc1
        Lb0:
            r12 = move-exception
            r5 = r6
            goto Lc2
        Lb3:
            r12 = move-exception
            r5 = r6
            goto Lb9
        Lb6:
            r12 = move-exception
            goto Lc2
        Lb8:
            r12 = move-exception
        Lb9:
            r12.printStackTrace()     // Catch: java.lang.Throwable -> Lb6
            if (r5 == 0) goto Lc1
            r5.close()
        Lc1:
            return r4
        Lc2:
            if (r5 == 0) goto Lc7
            r5.close()
        Lc7:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.updateApplicationName(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0073, code lost:
    
        if (r11.update("ApplicationIcon", r6, "pkgname = '" + r12 + "' AND nameowner = " + r13, null) > 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0096, code lost:
    
        if (r11.delete("ApplicationIcon", "pkgname = '" + r12 + "' AND nameowner = " + r13, null) > 0) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean deleteApplicationName(java.lang.String r12, int r13) {
        /*
            r11 = this;
            java.lang.String r0 = " = "
            java.lang.String r1 = "nameowner"
            java.lang.String r2 = "' AND "
            r3 = 0
            r4 = 0
            android.database.sqlite.SQLiteDatabase r11 = r11.getWritableDatabase()     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            if (r11 != 0) goto L10
            return r3
        L10:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            r5.<init>()     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            java.lang.String r6 = "SELECT * FROM ApplicationIcon WHERE pkgname = '"
            r5.append(r6)     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            r5.append(r12)     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            r5.append(r2)     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            r5.append(r1)     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            r5.append(r0)     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            r5.append(r13)     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            android.database.Cursor r5 = r11.rawQuery(r5, r4)     // Catch: java.lang.Throwable -> La3 android.database.sqlite.SQLiteException -> La5
            boolean r6 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            if (r6 == 0) goto L99
            java.lang.String r6 = "imagedata"
            int r6 = r5.getColumnIndex(r6)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            byte[] r6 = r5.getBlob(r6)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r7 = 1
            java.lang.String r8 = "pkgname = '"
            java.lang.String r9 = "ApplicationIcon"
            if (r6 == 0) goto L77
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.<init>()     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            java.lang.String r10 = "newname"
            r6.putNull(r10)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r10.<init>()     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r10.append(r8)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r10.append(r12)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r10.append(r2)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r10.append(r1)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r10.append(r0)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r10.append(r13)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            java.lang.String r12 = r10.toString()     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            int r11 = r11.update(r9, r6, r12, r4)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            if (r11 <= 0) goto L99
        L75:
            r3 = r7
            goto L99
        L77:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.<init>()     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.append(r8)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.append(r12)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.append(r2)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.append(r1)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.append(r0)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            r6.append(r13)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            java.lang.String r12 = r6.toString()     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            int r11 = r11.delete(r9, r12, r4)     // Catch: java.lang.Throwable -> L9d android.database.sqlite.SQLiteException -> La0
            if (r11 <= 0) goto L99
            goto L75
        L99:
            r5.close()
            goto Lae
        L9d:
            r11 = move-exception
            r4 = r5
            goto Laf
        La0:
            r11 = move-exception
            r4 = r5
            goto La6
        La3:
            r11 = move-exception
            goto Laf
        La5:
            r11 = move-exception
        La6:
            r11.printStackTrace()     // Catch: java.lang.Throwable -> La3
            if (r4 == 0) goto Lae
            r4.close()
        Lae:
            return r3
        Laf:
            if (r4 == 0) goto Lb4
            r4.close()
        Lb4:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.deleteApplicationName(java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        r0.add(r2.getString(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
    
        if (r2.moveToNext() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        r5.delete("ApplicationIcon", null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
    
        if (r1 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003b, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0039, code lost:
    
        if (r1 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        if (r2.moveToFirst() != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.ArrayList clearApplicationData() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r5 = r5.getWritableDatabase()     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            if (r5 == 0) goto L39
            java.lang.String r2 = "SELECT * FROM ApplicationIcon"
            android.database.Cursor r2 = r5.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            java.lang.String r3 = "pkgname"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L33 android.database.sqlite.SQLiteException -> L36
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L33 android.database.sqlite.SQLiteException -> L36
            if (r4 == 0) goto L2c
        L1f:
            java.lang.String r4 = r2.getString(r3)     // Catch: java.lang.Throwable -> L33 android.database.sqlite.SQLiteException -> L36
            r0.add(r4)     // Catch: java.lang.Throwable -> L33 android.database.sqlite.SQLiteException -> L36
            boolean r4 = r2.moveToNext()     // Catch: java.lang.Throwable -> L33 android.database.sqlite.SQLiteException -> L36
            if (r4 != 0) goto L1f
        L2c:
            java.lang.String r3 = "ApplicationIcon"
            r5.delete(r3, r1, r1)     // Catch: java.lang.Throwable -> L33 android.database.sqlite.SQLiteException -> L36
            r1 = r2
            goto L39
        L33:
            r5 = move-exception
            r1 = r2
            goto L49
        L36:
            r5 = move-exception
            r1 = r2
            goto L42
        L39:
            if (r1 == 0) goto L48
        L3b:
            r1.close()
            goto L48
        L3f:
            r5 = move-exception
            goto L49
        L41:
            r5 = move-exception
        L42:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L3f
            if (r1 == 0) goto L48
            goto L3b
        L48:
            return r0
        L49:
            if (r1 == 0) goto L4e
            r1.close()
        L4e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.clearApplicationData():java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
    
        r0.add(r2.getString(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
    
        if (r2.moveToNext() != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
    
        r6.delete("ApplicationIcon", "nameowner = " + r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0066, code lost:
    
        if (r1 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        if (r1 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
    
        if (r2.moveToFirst() != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.ArrayList clearApplicationDataForUid(int r7) {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r6 = r6.getWritableDatabase()     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            if (r6 == 0) goto L5a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            r2.<init>()     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            java.lang.String r3 = "SELECT * FROM ApplicationIcon WHERE nameowner = "
            r2.append(r3)     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            r2.append(r7)     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            android.database.Cursor r2 = r6.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            java.lang.String r3 = "pkgname"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            if (r4 == 0) goto L3b
        L2e:
            java.lang.String r4 = r2.getString(r3)     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            r0.add(r4)     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            boolean r4 = r2.moveToNext()     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            if (r4 != 0) goto L2e
        L3b:
            java.lang.String r3 = "ApplicationIcon"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            r4.<init>()     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            java.lang.String r5 = "nameowner = "
            r4.append(r5)     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            r4.append(r7)     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            r6.delete(r3, r7, r1)     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            r1 = r2
            goto L5a
        L54:
            r6 = move-exception
            r1 = r2
            goto L6a
        L57:
            r6 = move-exception
            r1 = r2
            goto L63
        L5a:
            if (r1 == 0) goto L69
        L5c:
            r1.close()
            goto L69
        L60:
            r6 = move-exception
            goto L6a
        L62:
            r6 = move-exception
        L63:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L69
            goto L5c
        L69:
            return r0
        L6a:
            if (r1 == 0) goto L6f
            r1.close()
        L6f:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.clearApplicationDataForUid(int):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x008d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        if (r1 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.HashMap getApplicationIconChangedMap() {
        /*
            r5 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r5 = r5.getReadableDatabase()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r5 != 0) goto Ld
            return r0
        Ld:
            java.lang.String r2 = "SELECT * FROM ApplicationIcon WHERE imagedata IS NOT NULL"
            android.database.Cursor r1 = r5.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r1 == 0) goto L67
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r5 <= 0) goto L67
        L1b:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r5 == 0) goto L67
            java.lang.String r5 = "imagedata"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            byte[] r5 = r1.getBlob(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r5 == 0) goto L1b
            java.lang.String r5 = "userid"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            int r5 = r1.getInt(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r2 != 0) goto L4e
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            r3.<init>()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            r0.put(r2, r3)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
        L4e:
            java.lang.String r2 = "pkgname"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            java.lang.Object r5 = r0.get(r5)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            java.util.List r5 = (java.util.List) r5     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            r5.add(r2)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            goto L1b
        L67:
            if (r1 == 0) goto L8d
        L69:
            r1.close()
            goto L8d
        L6d:
            r5 = move-exception
            goto L8e
        L6f:
            r5 = move-exception
            java.lang.String r2 = "ApplicationIconDb"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6d
            r3.<init>()     // Catch: java.lang.Throwable -> L6d
            java.lang.String r4 = "getApplicationIconChangedMap  : Exception :"
            r3.append(r4)     // Catch: java.lang.Throwable -> L6d
            java.lang.String r5 = r5.getMessage()     // Catch: java.lang.Throwable -> L6d
            r3.append(r5)     // Catch: java.lang.Throwable -> L6d
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L6d
            android.util.Log.i(r2, r5)     // Catch: java.lang.Throwable -> L6d
            if (r1 == 0) goto L8d
            goto L69
        L8d:
            return r0
        L8e:
            if (r1 == 0) goto L93
            r1.close()
        L93:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.getApplicationIconChangedMap():java.util.HashMap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x008e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
    
        if (r1 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.HashMap getApplicationNameChangedMap() {
        /*
            r5 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r5 = r5.getReadableDatabase()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r5 != 0) goto Ld
            return r0
        Ld:
            java.lang.String r2 = "SELECT * FROM ApplicationIcon WHERE newname IS NOT NULL"
            android.database.Cursor r1 = r5.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r1 == 0) goto L68
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r5 <= 0) goto L68
        L1b:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r5 == 0) goto L68
            java.lang.String r5 = "newname"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.String r5 = r1.getString(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r5 == 0) goto L1b
            java.lang.String r5 = "userid"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            int r5 = r1.getInt(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r2 != 0) goto L4f
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r3.<init>()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r0.put(r2, r3)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
        L4f:
            java.lang.String r2 = "pkgname"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.Object r5 = r0.get(r5)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.util.List r5 = (java.util.List) r5     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r5.add(r2)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            goto L1b
        L68:
            if (r1 == 0) goto L8e
        L6a:
            r1.close()
            goto L8e
        L6e:
            r5 = move-exception
            goto L8f
        L70:
            r5 = move-exception
            java.lang.String r2 = "ApplicationIconDb"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e
            r3.<init>()     // Catch: java.lang.Throwable -> L6e
            java.lang.String r4 = "getApplicationNameChangedMap  : Exception :"
            r3.append(r4)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r5 = r5.getMessage()     // Catch: java.lang.Throwable -> L6e
            r3.append(r5)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L6e
            android.util.Log.i(r2, r5)     // Catch: java.lang.Throwable -> L6e
            if (r1 == 0) goto L8e
            goto L6a
        L8e:
            return r0
        L8f:
            if (r1 == 0) goto L94
            r1.close()
        L94:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.getApplicationNameChangedMap():java.util.HashMap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x006d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        if (r3 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0046, code lost:
    
        if (r3 != null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] getApplicationIcon(java.lang.String r4, int r5) {
        /*
            r3 = this;
            r0 = 0
            android.database.sqlite.SQLiteDatabase r3 = r3.getReadableDatabase()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r3 != 0) goto L8
            return r0
        L8:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r1.<init>()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r2 = "SELECT * FROM ApplicationIcon WHERE pkgname = '"
            r1.append(r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r1.append(r4)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r4 = "' AND "
            r1.append(r4)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r4 = "userid"
            r1.append(r4)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r4 = " = "
            r1.append(r4)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r1.append(r5)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.Cursor r3 = r3.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r3 == 0) goto L46
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L6e
            if (r4 == 0) goto L46
            java.lang.String r4 = "imagedata"
            int r4 = r3.getColumnIndex(r4)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L6e
            byte[] r4 = r3.getBlob(r4)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L6e
            r0 = r4
            goto L46
        L44:
            r4 = move-exception
            goto L50
        L46:
            if (r3 == 0) goto L6d
        L48:
            r3.close()
            goto L6d
        L4c:
            r4 = move-exception
            goto L70
        L4e:
            r4 = move-exception
            r3 = r0
        L50:
            java.lang.String r5 = "ApplicationIconDb"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e
            r1.<init>()     // Catch: java.lang.Throwable -> L6e
            java.lang.String r2 = "getApplicationIcon  : Exception :"
            r1.append(r2)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L6e
            r1.append(r4)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L6e
            android.util.Log.i(r5, r4)     // Catch: java.lang.Throwable -> L6e
            if (r3 == 0) goto L6d
            goto L48
        L6d:
            return r0
        L6e:
            r4 = move-exception
            r0 = r3
        L70:
            if (r0 == 0) goto L75
            r0.close()
        L75:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.getApplicationIcon(java.lang.String, int):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0049, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x006e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
    
        if (r3 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0047, code lost:
    
        if (r3 != null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getApplicationName(java.lang.String r4, int r5) {
        /*
            r3 = this;
            r0 = 0
            android.database.sqlite.SQLiteDatabase r3 = r3.getReadableDatabase()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r3 != 0) goto L8
            return r0
        L8:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r1.<init>()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r2 = "SELECT * FROM ApplicationIcon WHERE pkgname = '"
            r1.append(r2)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r1.append(r4)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r4 = "' AND "
            r1.append(r4)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r4 = "userid"
            r1.append(r4)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r4 = " = "
            r1.append(r4)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r1.append(r5)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            android.database.Cursor r3 = r3.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r3 == 0) goto L47
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6f
            if (r4 == 0) goto L47
            java.lang.String r4 = "newname"
            int r4 = r3.getColumnIndex(r4)     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6f
            java.lang.String r4 = r3.getString(r4)     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6f
            r0 = r4
            goto L47
        L45:
            r4 = move-exception
            goto L51
        L47:
            if (r3 == 0) goto L6e
        L49:
            r3.close()
            goto L6e
        L4d:
            r4 = move-exception
            goto L71
        L4f:
            r4 = move-exception
            r3 = r0
        L51:
            java.lang.String r5 = "ApplicationIconDb"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6f
            r1.<init>()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r2 = "getApplicationName  : Exception :"
            r1.append(r2)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L6f
            r1.append(r4)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L6f
            android.util.Log.i(r5, r4)     // Catch: java.lang.Throwable -> L6f
            if (r3 == 0) goto L6e
            goto L49
        L6e:
            return r0
        L6f:
            r4 = move-exception
            r0 = r3
        L71:
            if (r0 == 0) goto L76
            r0.close()
        L76:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.application.ApplicationIconDb.getApplicationName(java.lang.String, int):java.lang.String");
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
            Log.i("ApplicationIconDb", "::isTableExists:Table Does not exists ");
            return false;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (!isTableExists(sQLiteDatabase, "ApplicationIcon")) {
            try {
                sQLiteDatabase.execSQL("create table ApplicationIcon (_id integer primary key autoincrement, pkgname text, imagedata BLOB, newname text, userid int, nameowner int);");
                Log.i("ApplicationIconDb", "::onCreate: Table is Created ");
                return;
            } catch (SQLException e) {
                Log.i("ApplicationIconDb", "::onCreate: Exception while table is creating ");
                e.printStackTrace();
                return;
            }
        }
        insertNewColumns(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 == 3) {
            updateSecureFolderCustomizedInfo(sQLiteDatabase);
        }
    }

    public final void updateSecureFolderCustomizedInfo(SQLiteDatabase sQLiteDatabase) {
        try {
            int packageUid = this.mContext.getPackageManager().getPackageUid("com.samsung.knox.securefolder", 0);
            sQLiteDatabase.execSQL("update ApplicationIcon set nameowner=" + packageUid + " where pkgname='com.samsung.knox.securefolder' and nameowner=1000");
            StringBuilder sb = new StringBuilder();
            sb.append("securefolder customizedinfo owner updated to ");
            sb.append(packageUid);
            Log.d("ApplicationIconDb", sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void insertNewColumns(SQLiteDatabase sQLiteDatabase) {
        if (isTableExists(sQLiteDatabase, "ApplicationIcon")) {
            try {
                sQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s;", "ApplicationIcon", String.format("%s %s", "newname", "TEXT")));
                sQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s;", "ApplicationIcon", String.format("%s DEFAULT %s", String.format("%s %s", "userid", "INT"), 0)));
                sQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s;", "ApplicationIcon", String.format("%s %s", "nameowner", "INT")));
            } catch (SQLException e) {
                Log.i("ApplicationIconDb", "::insertNewColumns: Exception while table is upgrading ");
                e.printStackTrace();
            }
        }
    }
}
