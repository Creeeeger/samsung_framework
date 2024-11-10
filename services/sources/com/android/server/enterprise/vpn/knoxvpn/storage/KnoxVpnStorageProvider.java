package com.android.server.enterprise.vpn.knoxvpn.storage;

import android.content.ContentValues;
import android.content.Context;
import com.android.server.enterprise.storage.EdmStorageProvider;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class KnoxVpnStorageProvider {
    public static KnoxVpnStorageProvider mDefaultProvider;
    public static EdmStorageProvider mEDM;
    public static Object mSynObj = new Object();
    public Context mContext;

    public KnoxVpnStorageProvider(Context context) {
        this.mContext = null;
        synchronized (mSynObj) {
            if (mEDM == null) {
                this.mContext = context;
                mEDM = new EdmStorageProvider(context);
            }
        }
    }

    public static synchronized KnoxVpnStorageProvider getInstance(Context context) {
        KnoxVpnStorageProvider knoxVpnStorageProvider;
        synchronized (KnoxVpnStorageProvider.class) {
            if (mDefaultProvider == null) {
                mDefaultProvider = new KnoxVpnStorageProvider(context);
            }
            knoxVpnStorageProvider = mDefaultProvider;
        }
        return knoxVpnStorageProvider;
    }

    public boolean putDataByFields(String str, String[] strArr, String[] strArr2, ContentValues contentValues) {
        return mEDM.putDataByFields(str, strArr, strArr2, contentValues);
    }

    public boolean deleteDataByFields(String str, String[] strArr, String[] strArr2) {
        return mEDM.deleteDataByFields(str, strArr, strArr2);
    }

    public ArrayList getDataByFields(String str, String[] strArr, String[] strArr2, String[] strArr3) {
        return mEDM.getDataByFields(str, strArr, strArr2, strArr3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006b, code lost:
    
        if (r3 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004a, code lost:
    
        if (r3 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004c, code lost:
    
        r3.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getProfileId() {
        /*
            r11 = this;
            com.android.server.enterprise.storage.EdmStorageProvider r0 = com.android.server.enterprise.vpn.knoxvpn.storage.KnoxVpnStorageProvider.mEDM
            java.lang.String r1 = "KnoxVpnStorageProvider"
            r2 = -1
            if (r0 == 0) goto L74
            com.android.server.enterprise.storage.EdmStorageHelper r0 = r0.mEdmDbHelper
            android.database.sqlite.SQLiteDatabase r3 = r0.getReadableDatabase()
            java.lang.String r4 = "VpnAnalyticsTable"
            java.lang.String r0 = "profileCount"
            java.lang.String[] r5 = new java.lang.String[]{r0}
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8, r9, r10)
            r4 = 0
            if (r3 == 0) goto L37
            int r5 = r3.getCount()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            if (r5 > 0) goto L29
            goto L37
        L29:
            int r11 = r3.getCount()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            if (r11 <= 0) goto L4a
            r3.moveToFirst()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            int r2 = r3.getInt(r4)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            goto L4a
        L37:
            android.content.ContentValues r5 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            r5.<init>()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            java.lang.Integer r6 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            java.lang.String r0 = "VpnAnalyticsTable"
            r6 = 0
            r11.putDataByFields(r0, r6, r6, r5)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            r2 = r4
        L4a:
            if (r3 == 0) goto L74
        L4c:
            r3.close()
            goto L74
        L50:
            r11 = move-exception
            goto L6e
        L52:
            r11 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
            r0.<init>()     // Catch: java.lang.Throwable -> L50
            java.lang.String r4 = "Exception = "
            r0.append(r4)     // Catch: java.lang.Throwable -> L50
            java.lang.String r11 = android.util.Log.getStackTraceString(r11)     // Catch: java.lang.Throwable -> L50
            r0.append(r11)     // Catch: java.lang.Throwable -> L50
            java.lang.String r11 = r0.toString()     // Catch: java.lang.Throwable -> L50
            android.util.Log.e(r1, r11)     // Catch: java.lang.Throwable -> L50
            if (r3 == 0) goto L74
            goto L4c
        L6e:
            if (r3 == 0) goto L73
            r3.close()
        L73:
            throw r11
        L74:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r0 = "profile id : "
            r11.append(r0)
            r11.append(r2)
            java.lang.String r11 = r11.toString()
            android.util.Log.d(r1, r11)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.vpn.knoxvpn.storage.KnoxVpnStorageProvider.getProfileId():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0083, code lost:
    
        if (r2 == (-1)) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0085, code lost:
    
        if (r0 < 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0087, code lost:
    
        r9.add(java.lang.String.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0092, code lost:
    
        if (r10.moveToNext() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004e, code lost:
    
        if (r10.getCount() > 0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
    
        r0 = r10.getInt(0);
        android.util.Log.d("KnoxVpnStorageProvider", "getDomainsByProfileName : cid : " + r0);
        r2 = r10.getInt(1);
        android.util.Log.d("KnoxVpnStorageProvider", "getDomainsByProfileName : uid : " + r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.ArrayList getDomainsByProfileName(java.lang.String r10) {
        /*
            r9 = this;
            com.android.server.enterprise.storage.EdmStorageProvider r9 = com.android.server.enterprise.vpn.knoxvpn.storage.KnoxVpnStorageProvider.mEDM
            if (r9 == 0) goto L9e
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            com.android.server.enterprise.storage.EdmStorageProvider r0 = com.android.server.enterprise.vpn.knoxvpn.storage.KnoxVpnStorageProvider.mEDM
            com.android.server.enterprise.storage.EdmStorageHelper r0 = r0.mEdmDbHelper
            android.database.sqlite.SQLiteDatabase r1 = r0.getReadableDatabase()
            java.lang.String r2 = "VpnPackageInfo"
            java.lang.String r0 = "packageCid"
            java.lang.String r3 = "packageUid"
            java.lang.String[] r3 = new java.lang.String[]{r0, r3}
            java.lang.String r4 = "profileName=?"
            java.lang.String[] r5 = new java.lang.String[]{r10}
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)
            if (r10 == 0) goto L9d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "getDomainsByProfileName : cursor.size : "
            r0.append(r1)
            int r1 = r10.getCount()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "KnoxVpnStorageProvider"
            android.util.Log.d(r1, r0)
            r10.moveToFirst()     // Catch: java.lang.Throwable -> L98
            int r0 = r10.getCount()     // Catch: java.lang.Throwable -> L98
            if (r0 <= 0) goto L94
        L50:
            r0 = 0
            int r0 = r10.getInt(r0)     // Catch: java.lang.Throwable -> L98
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L98
            r2.<init>()     // Catch: java.lang.Throwable -> L98
            java.lang.String r3 = "getDomainsByProfileName : cid : "
            r2.append(r3)     // Catch: java.lang.Throwable -> L98
            r2.append(r0)     // Catch: java.lang.Throwable -> L98
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L98
            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L98
            r2 = 1
            int r2 = r10.getInt(r2)     // Catch: java.lang.Throwable -> L98
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L98
            r3.<init>()     // Catch: java.lang.Throwable -> L98
            java.lang.String r4 = "getDomainsByProfileName : uid : "
            r3.append(r4)     // Catch: java.lang.Throwable -> L98
            r3.append(r2)     // Catch: java.lang.Throwable -> L98
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L98
            android.util.Log.d(r1, r3)     // Catch: java.lang.Throwable -> L98
            r3 = -1
            if (r2 == r3) goto L8e
            if (r0 < 0) goto L8e
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L98
            r9.add(r0)     // Catch: java.lang.Throwable -> L98
        L8e:
            boolean r0 = r10.moveToNext()     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto L50
        L94:
            r10.close()
            goto L9d
        L98:
            r9 = move-exception
            r10.close()
            throw r9
        L9d:
            return r9
        L9e:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.vpn.knoxvpn.storage.KnoxVpnStorageProvider.getDomainsByProfileName(java.lang.String):java.util.ArrayList");
    }
}
