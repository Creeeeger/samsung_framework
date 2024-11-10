package com.android.server.location.gnss;

import android.net.TrafficStats;
import android.util.Log;
import java.util.Properties;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class GnssPsdsDownloader {
    public static final int CONNECTION_TIMEOUT_MS;
    public static final int READ_TIMEOUT_MS;
    public int mFailReason = 4;
    public final String[] mLongTermPsdsServers;
    public int mNextServerIndex;
    public final String[] mPsdsServers;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        CONNECTION_TIMEOUT_MS = (int) timeUnit.toMillis(30L);
        READ_TIMEOUT_MS = (int) timeUnit.toMillis(60L);
    }

    public GnssPsdsDownloader(Properties properties) {
        String property = properties.getProperty("LONGTERM_PSDS_SERVER_1");
        String property2 = properties.getProperty("LONGTERM_PSDS_SERVER_2");
        String property3 = properties.getProperty("LONGTERM_PSDS_SERVER_3");
        int i = 1;
        int i2 = property != null ? 1 : 0;
        i2 = property2 != null ? i2 + 1 : i2;
        i2 = property3 != null ? i2 + 1 : i2;
        if (i2 == 0) {
            Log.e("GnssPsdsDownloader", "No Long-Term PSDS servers were specified in the GnssConfiguration");
            this.mLongTermPsdsServers = null;
        } else {
            String[] strArr = new String[i2];
            this.mLongTermPsdsServers = strArr;
            if (property != null) {
                strArr[0] = property;
            } else {
                i = 0;
            }
            if (property2 != null) {
                strArr[i] = property2;
                i++;
            }
            if (property3 != null) {
                strArr[i] = property3;
                i++;
            }
            this.mNextServerIndex = new Random().nextInt(i);
        }
        String property4 = properties.getProperty("NORMAL_PSDS_SERVER");
        String property5 = properties.getProperty("REALTIME_PSDS_SERVER");
        String[] strArr2 = new String[4];
        this.mPsdsServers = strArr2;
        strArr2[2] = property4;
        strArr2[3] = property5;
    }

    public byte[] downloadPsdsData(int i) {
        int i2 = this.mNextServerIndex;
        this.mFailReason = 1;
        byte[] bArr = null;
        if (i == 1 && this.mLongTermPsdsServers == null) {
            return null;
        }
        if (i > 1 && i <= 3 && this.mPsdsServers[i] == null) {
            return null;
        }
        if (i != 1) {
            if (i <= 1 || i > 3) {
                return null;
            }
            return doDownloadWithTrafficAccounted(this.mPsdsServers[i]);
        }
        while (bArr == null) {
            bArr = doDownloadWithTrafficAccounted(this.mLongTermPsdsServers[this.mNextServerIndex]);
            int i3 = this.mNextServerIndex + 1;
            this.mNextServerIndex = i3;
            if (i3 == this.mLongTermPsdsServers.length) {
                this.mNextServerIndex = 0;
            }
            if (this.mNextServerIndex == i2) {
                return bArr;
            }
        }
        return bArr;
    }

    public final byte[] doDownloadWithTrafficAccounted(String str) {
        int andSetThreadStatsTag = TrafficStats.getAndSetThreadStatsTag(-188);
        try {
            return doDownload(str);
        } finally {
            TrafficStats.setThreadStatsTag(andSetThreadStatsTag);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3  */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] doDownload(java.lang.String r10) {
        /*
            r9 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Downloading PSDS data from "
            r0.append(r1)
            r0.append(r10)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "GnssPsdsDownloader"
            android.util.Log.d(r1, r0)
            r0 = 0
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> Lad java.io.IOException -> Laf
            r2.<init>(r10)     // Catch: java.lang.Throwable -> Lad java.io.IOException -> Laf
            java.net.URLConnection r10 = r2.openConnection()     // Catch: java.lang.Throwable -> Lad java.io.IOException -> Laf
            java.net.HttpURLConnection r10 = (java.net.HttpURLConnection) r10     // Catch: java.lang.Throwable -> Lad java.io.IOException -> Laf
            java.lang.String r2 = "Accept"
        */
        //  java.lang.String r3 = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"
        /*
            r10.setRequestProperty(r2, r3)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            java.lang.String r2 = "x-wap-profile"
            java.lang.String r3 = "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"
            r10.setRequestProperty(r2, r3)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            int r2 = com.android.server.location.gnss.GnssPsdsDownloader.CONNECTION_TIMEOUT_MS     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r10.setConnectTimeout(r2)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            int r2 = com.android.server.location.gnss.GnssPsdsDownloader.READ_TIMEOUT_MS     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r10.setReadTimeout(r2)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r10.connect()     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            int r2 = r10.getResponseCode()     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 == r3) goto L61
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r3.<init>()     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            java.lang.String r4 = "HTTP error downloading gnss PSDS: "
            r3.append(r4)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r3.append(r2)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            java.lang.String r2 = r3.toString()     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            android.util.Log.d(r1, r2)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r2 = 2
            r9.mFailReason = r2     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r10.disconnect()
            return r0
        L61:
            java.io.InputStream r2 = r10.getInputStream()     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L9f
            r3.<init>()     // Catch: java.lang.Throwable -> L9f
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L9f
        L6e:
            int r5 = r2.read(r4)     // Catch: java.lang.Throwable -> L9f
            r6 = -1
            if (r5 == r6) goto L94
            r6 = 0
            r3.write(r4, r6, r5)     // Catch: java.lang.Throwable -> L9f
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L9f
            long r5 = (long) r5     // Catch: java.lang.Throwable -> L9f
            r7 = 1000000(0xf4240, double:4.940656E-318)
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 <= 0) goto L6e
            java.lang.String r3 = "PSDS file too large"
            android.util.Log.d(r1, r3)     // Catch: java.lang.Throwable -> L9f
            r3 = 3
            r9.mFailReason = r3     // Catch: java.lang.Throwable -> L9f
            r2.close()     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r10.disconnect()
            return r0
        L94:
            byte[] r3 = r3.toByteArray()     // Catch: java.lang.Throwable -> L9f
            r2.close()     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
            r10.disconnect()
            return r3
        L9f:
            r3 = move-exception
            if (r2 == 0) goto Laa
            r2.close()     // Catch: java.lang.Throwable -> La6
            goto Laa
        La6:
            r2 = move-exception
            r3.addSuppressed(r2)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
        Laa:
            throw r3     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lbf
        Lab:
            r2 = move-exception
            goto Lb1
        Lad:
            r9 = move-exception
            goto Lc1
        Laf:
            r2 = move-exception
            r10 = r0
        Lb1:
            java.lang.String r3 = "Error downloading gnss PSDS: "
            android.util.Log.d(r1, r3, r2)     // Catch: java.lang.Throwable -> Lbf
            if (r10 == 0) goto Lbb
            r10.disconnect()
        Lbb:
            r10 = 4
            r9.mFailReason = r10
            return r0
        Lbf:
            r9 = move-exception
            r0 = r10
        Lc1:
            if (r0 == 0) goto Lc6
            r0.disconnect()
        Lc6:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.location.gnss.GnssPsdsDownloader.doDownload(java.lang.String):byte[]");
    }

    public int getFailReason() {
        return this.mFailReason;
    }
}
