package com.airbnb.lottie.network;

import java.io.Closeable;
import java.net.HttpURLConnection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DefaultLottieFetchResult implements Closeable {
    public final HttpURLConnection connection;

    public DefaultLottieFetchResult(HttpURLConnection httpURLConnection) {
        this.connection = httpURLConnection;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.connection.disconnect();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String error() {
        /*
            r3 = this;
            java.net.HttpURLConnection r0 = r3.connection     // Catch: java.io.IOException -> Ld
            int r0 = r0.getResponseCode()     // Catch: java.io.IOException -> Ld
            int r0 = r0 / 100
            r1 = 2
            if (r0 != r1) goto Ld
            r0 = 1
            goto Le
        Ld:
            r0 = 0
        Le:
            if (r0 == 0) goto L12
            r3 = 0
            goto L6a
        L12:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L70
            r0.<init>()     // Catch: java.io.IOException -> L70
            java.lang.String r1 = "Unable to fetch "
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.net.HttpURLConnection r1 = r3.connection     // Catch: java.io.IOException -> L70
            java.net.URL r1 = r1.getURL()     // Catch: java.io.IOException -> L70
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.lang.String r1 = ". Failed with "
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.net.HttpURLConnection r1 = r3.connection     // Catch: java.io.IOException -> L70
            int r1 = r1.getResponseCode()     // Catch: java.io.IOException -> L70
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.lang.String r1 = "\n"
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.net.HttpURLConnection r3 = r3.connection     // Catch: java.io.IOException -> L70
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.io.IOException -> L70
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L70
            java.io.InputStream r3 = r3.getErrorStream()     // Catch: java.io.IOException -> L70
            r2.<init>(r3)     // Catch: java.io.IOException -> L70
            r1.<init>(r2)     // Catch: java.io.IOException -> L70
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L70
            r3.<init>()     // Catch: java.io.IOException -> L70
        L4d:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L6b
            if (r2 == 0) goto L5c
            r3.append(r2)     // Catch: java.lang.Throwable -> L6b
            r2 = 10
            r3.append(r2)     // Catch: java.lang.Throwable -> L6b
            goto L4d
        L5c:
            r1.close()     // Catch: java.lang.Exception -> L5f
        L5f:
            java.lang.String r3 = r3.toString()     // Catch: java.io.IOException -> L70
            r0.append(r3)     // Catch: java.io.IOException -> L70
            java.lang.String r3 = r0.toString()     // Catch: java.io.IOException -> L70
        L6a:
            return r3
        L6b:
            r3 = move-exception
            r1.close()     // Catch: java.lang.Exception -> L6f
        L6f:
            throw r3     // Catch: java.io.IOException -> L70
        L70:
            r3 = move-exception
            java.lang.String r0 = "get error failed "
            com.airbnb.lottie.utils.Logger.warning(r0, r3)
            java.lang.String r3 = r3.getMessage()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.network.DefaultLottieFetchResult.error():java.lang.String");
    }
}
