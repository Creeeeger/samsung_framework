package com.android.server.am.mars.database;

import android.content.Context;
import android.database.Cursor;
import android.util.Slog;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class FASDataManager {
    public final String TAG;
    public Context context;
    public Boolean mIsDisableReasonColumnExist;
    public Boolean mIsPreBatteryUsageColumnExist;

    /* loaded from: classes.dex */
    public abstract class FASDataManagerHolder {
        public static final FASDataManager INSTANCE = new FASDataManager();
    }

    public FASDataManager() {
        this.TAG = FASDataManager.class.getSimpleName();
        this.context = null;
        this.mIsPreBatteryUsageColumnExist = null;
        this.mIsDisableReasonColumnExist = null;
    }

    public static FASDataManager getInstance() {
        return FASDataManagerHolder.INSTANCE;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return this.context;
    }

    public void init(Context context) {
        setContext(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        if (r0 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        if (r0 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Boolean checkPreBatteryUsageColumnExist() {
        /*
            r8 = this;
            java.lang.Boolean r0 = r8.mIsPreBatteryUsageColumnExist
            if (r0 == 0) goto L5
            return r0
        L5:
            java.lang.Boolean r0 = new java.lang.Boolean
            r1 = 0
            r0.<init>(r1)
            r8.mIsPreBatteryUsageColumnExist = r0
            r0 = 0
            android.content.Context r1 = r8.getContext()     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            android.content.ContentResolver r2 = r1.getContentResolver()     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            android.net.Uri r3 = com.android.server.am.mars.database.FASTableContract.SMART_MGR_FORCED_APP_STANDBY_URI     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            java.lang.String[] r4 = com.android.server.am.mars.database.FASTableContract.preBattetyUsageProjection     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            java.lang.Boolean r1 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            r8.mIsPreBatteryUsageColumnExist = r1     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            if (r0 == 0) goto L40
            goto L3d
        L28:
            r8 = move-exception
            goto L43
        L2a:
            java.lang.String r1 = r8.TAG     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "checkPreBatteryUsageColumnExist-sql, catch no column exception!"
            android.util.Slog.e(r1, r2)     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L40
            goto L3d
        L34:
            java.lang.String r1 = r8.TAG     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "checkPreBatteryUsageColumnExist, catch no column exception!"
            android.util.Slog.e(r1, r2)     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L40
        L3d:
            r0.close()
        L40:
            java.lang.Boolean r8 = r8.mIsPreBatteryUsageColumnExist
            return r8
        L43:
            if (r0 == 0) goto L48
            r0.close()
        L48:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.mars.database.FASDataManager.checkPreBatteryUsageColumnExist():java.lang.Boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        if (r0 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        if (r0 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Boolean checkDisableReasonColumnExist() {
        /*
            r8 = this;
            java.lang.Boolean r0 = r8.mIsDisableReasonColumnExist
            if (r0 == 0) goto L5
            return r0
        L5:
            java.lang.Boolean r0 = new java.lang.Boolean
            r1 = 0
            r0.<init>(r1)
            r8.mIsDisableReasonColumnExist = r0
            r0 = 0
            android.content.Context r1 = r8.getContext()     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            android.content.ContentResolver r2 = r1.getContentResolver()     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            android.net.Uri r3 = com.android.server.am.mars.database.FASTableContract.SMART_MGR_FORCED_APP_STANDBY_URI     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            java.lang.String[] r4 = com.android.server.am.mars.database.FASTableContract.disableReasonProjection     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            java.lang.Boolean r1 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            r8.mIsDisableReasonColumnExist = r1     // Catch: java.lang.Throwable -> L28 android.database.sqlite.SQLiteException -> L2a java.lang.IllegalArgumentException -> L34
            if (r0 == 0) goto L40
            goto L3d
        L28:
            r8 = move-exception
            goto L43
        L2a:
            java.lang.String r1 = r8.TAG     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "checkDisableReasonColumnExist-sql, catch no column exception!"
            android.util.Slog.e(r1, r2)     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L40
            goto L3d
        L34:
            java.lang.String r1 = r8.TAG     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "checkDisableReasonColumnExist, catch no column exception!"
            android.util.Slog.e(r1, r2)     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L40
        L3d:
            r0.close()
        L40:
            java.lang.Boolean r8 = r8.mIsDisableReasonColumnExist
            return r8
        L43:
            if (r0 == 0) goto L48
            r0.close()
        L48:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.mars.database.FASDataManager.checkDisableReasonColumnExist():java.lang.Boolean");
    }

    public ArrayList getFASDataFromDB() {
        String[] strArr;
        Cursor cursor;
        FASEntity build;
        if (checkDisableReasonColumnExist().booleanValue() && checkPreBatteryUsageColumnExist().booleanValue()) {
            strArr = FASTableContract.FASQueryProjectionV3;
        } else {
            strArr = checkPreBatteryUsageColumnExist().booleanValue() ? FASTableContract.FASQueryProjectionV2 : FASTableContract.FASQueryProjectionV1;
        }
        try {
            cursor = getContext().getContentResolver().query(FASTableContract.SMART_MGR_FORCED_APP_STANDBY_URI, strArr, null, null, null);
        } catch (Exception e) {
            Slog.e(this.TAG, "Exception with contentResolver : " + e.getMessage());
            e.printStackTrace();
            cursor = null;
        }
        if (cursor != null) {
            ArrayList arrayList = new ArrayList();
            while (cursor.moveToNext()) {
                if (cursor.getString(0) != null) {
                    if (checkDisableReasonColumnExist().booleanValue() && checkPreBatteryUsageColumnExist().booleanValue()) {
                        build = new FASEntityBuilder().setStrPkgName(cursor.getString(0)).setStrUid(cursor.getString(1)).setStrMode(cursor.getString(2)).setStrNew(cursor.getString(3)).setStrFasReason(cursor.getString(4)).setStrExtras(cursor.getString(5)).setStrResetTime(cursor.getString(6)).setStrPackageType(cursor.getString(7)).setStrLevel(cursor.getString(8)).setStrDisableType(cursor.getString(9)).setStrDisableResetTime(cursor.getString(10)).setStrPreBatteryUsage(cursor.getString(11)).setStrDisableReason(cursor.getString(12)).build();
                    } else if (checkPreBatteryUsageColumnExist().booleanValue()) {
                        build = new FASEntityBuilder().setStrPkgName(cursor.getString(0)).setStrUid(cursor.getString(1)).setStrMode(cursor.getString(2)).setStrNew(cursor.getString(3)).setStrFasReason(cursor.getString(4)).setStrExtras(cursor.getString(5)).setStrResetTime(cursor.getString(6)).setStrPackageType(cursor.getString(7)).setStrLevel(cursor.getString(8)).setStrDisableType(cursor.getString(9)).setStrDisableResetTime(cursor.getString(10)).setStrPreBatteryUsage(cursor.getString(11)).build();
                    } else {
                        build = new FASEntityBuilder().setStrPkgName(cursor.getString(0)).setStrUid(cursor.getString(1)).setStrMode(cursor.getString(2)).setStrNew(cursor.getString(3)).setStrFasReason(cursor.getString(4)).setStrExtras(cursor.getString(5)).setStrResetTime(cursor.getString(6)).setStrPackageType(cursor.getString(7)).setStrLevel(cursor.getString(8)).setStrDisableType(cursor.getString(9)).setStrDisableResetTime(cursor.getString(10)).build();
                    }
                    if (build != null) {
                        arrayList.add(build);
                    }
                }
            }
            Slog.d(this.TAG, "getFASDataFromDB fasEntityList size : " + arrayList.size());
            cursor.close();
            return arrayList;
        }
        Slog.e(this.TAG, "getFASDataFromDB no database!");
        return null;
    }
}
