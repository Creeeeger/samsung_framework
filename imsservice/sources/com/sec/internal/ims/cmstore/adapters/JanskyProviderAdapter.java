package com.sec.internal.ims.cmstore.adapters;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class JanskyProviderAdapter {
    public static final Uri AUTHORITY_URI = Uri.parse("content://com.samsung.ims.nsds.provider");
    private static final String LOG_TAG = "JanskyProviderAdapter";
    public static final String PROVIDER_NAME = "com.samsung.ims.nsds.provider";
    private final Context mContext;
    private ContentResolver mResolver;

    public void onTokenExpired() {
    }

    public JanskyProviderAdapter(Context context) {
        this.mResolver = null;
        Log.d(LOG_TAG, "Create JanskyServiceTranslation.");
        this.mContext = context;
        this.mResolver = context.getContentResolver();
    }

    public String getSIT(String str) {
        String str2 = "";
        if (str == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        Uri buildActiveLinesWithServicveUri = NSDSContractExt.Lines.buildActiveLinesWithServicveUri();
        arrayList.clear();
        Cursor query = this.mContext.getContentResolver().query(buildActiveLinesWithServicveUri, null, "status = ?", new String[]{"1"}, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        String string = query.getString(query.getColumnIndex("msisdn"));
                        String string2 = query.getString(query.getColumnIndex(NSDSContractExt.ServiceColumns.SERVICE_INSTANCE_TOKEN));
                        Log.i(LOG_TAG, "line: " + IMSLog.checker(str) + " msisdn " + IMSLog.checker(string) + ", token " + IMSLog.checker(string2));
                        if (str.contains(string)) {
                            str2 = string2;
                        }
                    } while (query.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        return str2;
    }

    public Cursor getActiveLines() {
        return this.mResolver.query(NSDSContractExt.Lines.buildActiveLinesWithServicveUri(), null, null, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getNativeLine() {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.net.Uri r2 = com.sec.internal.constants.ims.entitilement.NSDSContractExt.Lines.buildActiveLinesWithServicveUri()
            r0.clear()
            java.lang.String r4 = "status = ?"
            java.lang.String r0 = "1"
            java.lang.String[] r5 = new java.lang.String[]{r0}
            android.content.Context r7 = r7.mContext
            android.content.ContentResolver r1 = r7.getContentResolver()
            r3 = 0
            r6 = 0
            android.database.Cursor r7 = r1.query(r2, r3, r4, r5, r6)
            if (r7 == 0) goto L6f
            boolean r1 = r7.moveToFirst()     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L6f
        L29:
            java.lang.String r1 = "is_native"
            int r1 = r7.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L65
            java.lang.String r1 = r7.getString(r1)     // Catch: java.lang.Throwable -> L65
            boolean r1 = r0.equals(r1)     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L5e
            java.lang.String r0 = "msisdn"
            int r0 = r7.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L65
            java.lang.String r0 = r7.getString(r0)     // Catch: java.lang.Throwable -> L65
            java.lang.String r1 = com.sec.internal.ims.cmstore.adapters.JanskyProviderAdapter.LOG_TAG     // Catch: java.lang.Throwable -> L65
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L65
            r2.<init>()     // Catch: java.lang.Throwable -> L65
            java.lang.String r3 = "msisdn: "
            r2.append(r3)     // Catch: java.lang.Throwable -> L65
            java.lang.String r3 = com.sec.internal.log.IMSLog.checker(r0)     // Catch: java.lang.Throwable -> L65
            r2.append(r3)     // Catch: java.lang.Throwable -> L65
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L65
            android.util.Log.i(r1, r2)     // Catch: java.lang.Throwable -> L65
            goto L71
        L5e:
            boolean r1 = r7.moveToNext()     // Catch: java.lang.Throwable -> L65
            if (r1 != 0) goto L29
            goto L6f
        L65:
            r0 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L6a
            goto L6e
        L6a:
            r7 = move-exception
            r0.addSuppressed(r7)
        L6e:
            throw r0
        L6f:
            java.lang.String r0 = ""
        L71:
            if (r7 == 0) goto L76
            r7.close()
        L76:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.adapters.JanskyProviderAdapter.getNativeLine():java.lang.String");
    }
}
