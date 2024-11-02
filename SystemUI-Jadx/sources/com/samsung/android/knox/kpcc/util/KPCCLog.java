package com.samsung.android.knox.kpcc.util;

import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KPCCLog {
    public static final String KPCC_TAG = "KPCC:";
    public static final boolean isUserShip;

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0015, code lost:
    
        if (android.os.SemSystemProperties.getBoolean("ro.product_ship", true) != false) goto L8;
     */
    static {
        /*
            java.lang.String r0 = "ro.build.type"
            java.lang.String r1 = "user"
            java.lang.String r0 = android.os.SemSystemProperties.get(r0, r1)
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L18
            java.lang.String r0 = "ro.product_ship"
            r1 = 1
            boolean r0 = android.os.SemSystemProperties.getBoolean(r0, r1)
            if (r0 == 0) goto L18
            goto L19
        L18:
            r1 = 0
        L19:
            com.samsung.android.knox.kpcc.util.KPCCLog.isUserShip = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.kpcc.util.KPCCLog.<clinit>():void");
    }

    public static void d(String str, String str2) {
        if (!isUserShip) {
            Log.d(KPCC_TAG + str, str2);
        }
    }

    public static void e(String str, String str2) {
        Log.e(KPCC_TAG + str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e(KPCC_TAG + str, str2, th);
    }
}
