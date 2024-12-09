package com.sec.internal.ims.cmstore.utils;

import android.net.Network;
import android.util.Log;

/* loaded from: classes.dex */
public class CheckCaptivePortal {
    private static final int SOCKET_TIMEOUT_MS = 10000;
    private static final int WALLED_GARDEN_RETRY_COUNT = 3;
    private static final int WALLED_GARDEN_RETRY_INTERVAL = 3000;
    private static final String WALLED_GARDEN_URL = "http://clients3.google.com/generate_204";

    public static boolean isGoodWifi(Network network) {
        for (int i = 0; i <= 3; i++) {
            if (!checkWifiWorksFineWithWalledGardenUrl(network)) {
                return false;
            }
            sleepHelper(3000);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean checkWifiWorksFineWithWalledGardenUrl(android.net.Network r5) {
        /*
            r0 = 0
            r1 = 0
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            java.lang.String r3 = "http://clients3.google.com/generate_204"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            java.net.URLConnection r5 = r5.openConnection(r2)     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            java.net.HttpURLConnection r5 = (java.net.HttpURLConnection) r5     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            r5.setInstanceFollowRedirects(r0)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3d
            r2 = 10000(0x2710, float:1.4013E-41)
            r5.setConnectTimeout(r2)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3d
            r5.setReadTimeout(r2)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3d
            r5.setUseCaches(r0)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3d
            java.io.InputStream r1 = r5.getInputStream()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3d
            int r2 = r5.getResponseCode()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3d
            r3 = 204(0xcc, float:2.86E-43)
            if (r2 != r3) goto L2a
            r0 = 1
        L2a:
            r5.disconnect()
            if (r1 == 0) goto L37
            r1.close()     // Catch: java.io.IOException -> L33
            goto L37
        L33:
            r5 = move-exception
            r5.printStackTrace()
        L37:
            return r0
        L38:
            r0 = move-exception
            r4 = r1
            r1 = r5
            r5 = r4
            goto L5b
        L3d:
            r2 = move-exception
            r4 = r1
            r1 = r5
            r5 = r4
            goto L47
        L42:
            r0 = move-exception
            r5 = r1
            goto L5b
        L45:
            r2 = move-exception
            r5 = r1
        L47:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L5a
            if (r1 == 0) goto L4f
            r1.disconnect()
        L4f:
            if (r5 == 0) goto L59
            r5.close()     // Catch: java.io.IOException -> L55
            goto L59
        L55:
            r5 = move-exception
            r5.printStackTrace()
        L59:
            return r0
        L5a:
            r0 = move-exception
        L5b:
            if (r1 == 0) goto L60
            r1.disconnect()
        L60:
            if (r5 == 0) goto L6a
            r5.close()     // Catch: java.io.IOException -> L66
            goto L6a
        L66:
            r5 = move-exception
            r5.printStackTrace()
        L6a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.utils.CheckCaptivePortal.checkWifiWorksFineWithWalledGardenUrl(android.net.Network):boolean");
    }

    private static void sleepHelper(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            Log.e("Utils", "sleepHelper", e);
        }
    }
}
