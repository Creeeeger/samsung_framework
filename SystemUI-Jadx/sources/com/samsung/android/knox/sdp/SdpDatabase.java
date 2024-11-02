package com.samsung.android.knox.sdp;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Binder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.dar.IDarManagerService;
import com.samsung.android.knox.license.EnterpriseLicenseManager;
import com.samsung.android.knox.sdp.core.SdpEngineInfo;
import com.samsung.android.knox.sdp.core.SdpException;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SdpDatabase {
    private static final String CLASS_NAME = "SdpDatabase";
    private static final boolean DEBUG = false;
    private static final String TAG = "SdpDatabase";
    private static final boolean runAllConvert = false;
    private String mAlias;
    private final ContextInfo mContextInfo;
    private int mEngineId;

    public SdpDatabase(String str) {
        this.mEngineId = -1;
        enforcePermission();
        this.mAlias = str;
        this.mContextInfo = new ContextInfo(Binder.getCallingUid());
        SdpEngineInfo engineInfo = getEngineInfo(this.mAlias);
        if (engineInfo != null) {
            this.mEngineId = engineInfo.getId();
            return;
        }
        throw new SdpException(-5);
    }

    private void enforcePermission() {
        IDarManagerService asInterface = IDarManagerService.Stub.asInterface(ServiceManager.getService("dar"));
        if (asInterface != null) {
            try {
                if (asInterface.isLicensed() != 0) {
                    throw new SdpException(-9);
                }
            } catch (RemoteException e) {
                Log.e("SdpDatabase", "Failed to talk with sdp service...", e);
            }
        }
    }

    private String formSensitiveColumnStmt(int i, String str, String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            return ConstraintWidget$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("table=", str, ";columns=", str2, ";engine_id="), i, ";");
        }
        return null;
    }

    private String formSensitivePolicy(String str, String str2, String str3) {
        String concat;
        String formSensitiveColumnStmt = formSensitiveColumnStmt(this.mEngineId, str2, str3);
        if (formSensitiveColumnStmt == null) {
            return null;
        }
        if (str == null) {
            concat = "";
        } else {
            concat = str.concat(".");
        }
        return MotionLayout$$ExternalSyntheticOutline0.m("pragma ", concat, "set_sensitive_columns(\"", formSensitiveColumnStmt, "\");");
    }

    private SdpEngineInfo getEngineInfo(String str) {
        try {
            IDarManagerService asInterface = IDarManagerService.Stub.asInterface(ServiceManager.getService("dar"));
            if (asInterface == null) {
                return null;
            }
            return asInterface.getEngineInfo(str);
        } catch (RemoteException e) {
            Log.e("SdpDatabase", "Failed to talk with sdp service...", e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        if (r5.moveToFirst() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        if (r9.equals(r5.getString(0)) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
    
        if (r5.moveToNext() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if (r5.isClosed() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0064, code lost:
    
        if (r5.isClosed() != false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isSensitive(android.database.sqlite.SQLiteDatabase r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            r5 = this;
            java.lang.String r0 = "."
            java.lang.String r1 = "pragma "
            java.lang.String r2 = "SdpDatabase"
            r3 = 0
            if (r6 != 0) goto Lf
            java.lang.String r5 = "isSensitive :: invalid DB"
            android.util.Log.d(r2, r5)
            return r3
        Lf:
            int r4 = r5.mEngineId
            if (r4 >= 0) goto L20
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "isSensitive :: invalid engine "
            r6.<init>(r7)
            java.lang.String r5 = r5.mAlias
            androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0.m(r6, r5, r2)
            return r3
        L20:
            r5 = 0
            if (r7 != 0) goto L26
            java.lang.String r7 = ""
            goto L2a
        L26:
            java.lang.String r7 = r7.concat(r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
        L2a:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            r0.append(r7)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            java.lang.String r7 = "get_sensitive_columns("
            r0.append(r7)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            r0.append(r8)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            java.lang.String r7 = ")"
            r0.append(r7)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            java.lang.String r7 = r0.toString()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            android.database.Cursor r5 = r6.rawQuery(r7, r5)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            boolean r6 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            if (r6 == 0) goto L60
        L4d:
            java.lang.String r6 = r5.getString(r3)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            boolean r6 = r9.equals(r6)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            if (r6 == 0) goto L5a
            r6 = 1
            r3 = r6
            goto L60
        L5a:
            boolean r6 = r5.moveToNext()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L69
            if (r6 != 0) goto L4d
        L60:
            boolean r6 = r5.isClosed()
            if (r6 != 0) goto L76
            goto L73
        L67:
            r6 = move-exception
            goto L77
        L69:
            r6 = move-exception
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L67
            boolean r6 = r5.isClosed()
            if (r6 != 0) goto L76
        L73:
            r5.close()
        L76:
            return r3
        L77:
            boolean r7 = r5.isClosed()
            if (r7 != 0) goto L80
            r5.close()
        L80:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.sdp.SdpDatabase.isSensitive(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public boolean setSensitive(SQLiteDatabase sQLiteDatabase, String str, String str2, List<String> list) {
        EnterpriseLicenseManager.log(this.mContextInfo, "SdpDatabase.setSensitive");
        StringBuilder sb = new StringBuilder();
        if (sQLiteDatabase == null) {
            Log.d("SdpDatabase", "setSensitive :: invalid DB");
            return false;
        }
        if (this.mEngineId < 0) {
            ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("setSensitive :: invalid engine "), this.mAlias, "SdpDatabase");
            return false;
        }
        SdpEngineInfo engineInfo = getEngineInfo(this.mAlias);
        if (engineInfo != null && engineInfo.getState() != 1) {
            for (int i = 0; i < list.size(); i++) {
                sb.append(list.get(i));
                if (i < list.size() - 1) {
                    sb.append(",");
                }
            }
            Cursor cursor = null;
            try {
                if (sQLiteDatabase.isReadOnly()) {
                    Log.d("SdpDatabase", "Error : DB is readonly. setSensitiveDBPolicy require write permission for DB");
                    return false;
                }
                sQLiteDatabase.execSQL(formSensitivePolicy(str, str2, sb.toString()));
                Cursor rawQuery = sQLiteDatabase.rawQuery("select count(*) from " + str2, null);
                if (rawQuery.moveToFirst() && rawQuery.getInt(0) > 0) {
                    sQLiteDatabase.execSQL("VACUUM");
                }
                if (!rawQuery.isClosed()) {
                    rawQuery.close();
                }
                sQLiteDatabase.setSdpDatabase();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                if (0 != 0) {
                    cursor.close();
                }
                return false;
            }
        }
        Log.d("SdpDatabase", "setSensitive failed, engine is locked!!! " + this.mAlias);
        throw new SdpException(-6);
    }

    public boolean updateStateToDB(SQLiteDatabase sQLiteDatabase, String str, int i) {
        Cursor cursor;
        Exception e;
        if (sQLiteDatabase == null) {
            Log.d("SdpDatabase", "updateStateToDB :: invalid DB");
            return false;
        }
        SdpEngineInfo engineInfo = getEngineInfo(this.mAlias);
        if (engineInfo == null) {
            ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("updateStateToDB :: can't find engine "), this.mAlias, "SdpDatabase");
            return false;
        }
        if (engineInfo.getState() != i) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateStateToDB :: invalid state : ", i, " (current stat : ");
            m.append(engineInfo.getState());
            m.append(")");
            Log.d("SdpDatabase", m.toString());
            return false;
        }
        try {
            Log.d("SdpDatabase", "updateSDPStateToDB called with dbalias = " + str + " sdpState = " + i);
            String concat = str == null ? "" : str.concat(".");
            if (i == 1) {
                sQLiteDatabase.execSQL("pragma " + concat + "sdp_locked;");
            } else if (i == 2) {
                sQLiteDatabase.execSQL("pragma " + concat + "sdp_unlocked;");
                cursor = null;
                int i2 = 1;
                while (i2 > 0) {
                    try {
                        Log.d("SdpDatabase", "calling next : pragma runoneconvert  in sdpState = " + i);
                        cursor = sQLiteDatabase.rawQuery("pragma " + concat + "sdp_run_one_convert", null);
                        if (cursor != null && cursor.getCount() != 0) {
                            if (cursor.moveToFirst()) {
                                i2 = cursor.getInt(0);
                            }
                            Thread.sleep(30L);
                            cursor.close();
                        }
                        Log.d("SdpDatabase", "Cursor is null or there are no rows after query...");
                        if (cursor != null) {
                            cursor.close();
                        }
                        Log.d("SdpDatabase", "DONE calling all pragma runoneconvert  in sdpState = " + i);
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return false;
                    }
                }
                Log.d("SdpDatabase", "DONE calling all pragma runoneconvert  in sdpState = " + i);
            }
            return true;
        } catch (Exception e3) {
            cursor = null;
            e = e3;
        }
    }

    public boolean updateStateToDB(SQLiteDatabase sQLiteDatabase, int i) {
        return updateStateToDB(sQLiteDatabase, null, i);
    }
}
