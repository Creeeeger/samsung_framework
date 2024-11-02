package com.android.wifitrackerlib;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.util.ArrayMap;
import android.util.Pair;
import com.samsung.android.wifitrackerlib.LogUtils;
import com.samsung.android.wifitrackerlib.SemWifiEntryFilter;
import java.time.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScanResultUpdater {
    public final Clock mClock;
    public final Object mLock;
    public final LogUtils mLog;
    public final long mMaxScanAgeMillis;
    public final Map mScanResultsBySsidAndBssid;
    public final SemWifiEntryFilter mSemFilter;

    public ScanResultUpdater(Clock clock, Context context) {
        this(clock, Long.MAX_VALUE, context);
    }

    public final List getScanResults(long j) {
        ArrayList arrayList;
        if (j <= this.mMaxScanAgeMillis) {
            synchronized (this.mLock) {
                arrayList = new ArrayList();
                for (ScanResult scanResult : ((ArrayMap) this.mScanResultsBySsidAndBssid).values()) {
                    if (this.mClock.millis() - (scanResult.timestamp / 1000) <= j) {
                        arrayList.add(scanResult);
                    }
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("maxScanAgeMillis argument cannot be greater than mMaxScanAgeMillis!");
    }

    public final void update(List list) {
        synchronized (this.mLock) {
            synchronized (this.mLock) {
                ((ArrayMap) this.mScanResultsBySsidAndBssid).entrySet().removeIf(new ScanResultUpdater$$ExternalSyntheticLambda0(this));
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ScanResult scanResult = (ScanResult) it.next();
                Pair pair = new Pair(scanResult.SSID, scanResult.BSSID);
                ScanResult scanResult2 = (ScanResult) ((ArrayMap) this.mScanResultsBySsidAndBssid).get(pair);
                if (scanResult2 == null || scanResult2.timestamp < scanResult.timestamp) {
                    ((ArrayMap) this.mScanResultsBySsidAndBssid).put(pair, scanResult);
                }
            }
        }
    }

    public ScanResultUpdater(Clock clock, long j, Context context) {
        this.mScanResultsBySsidAndBssid = new ArrayMap();
        this.mLock = new Object();
        this.mMaxScanAgeMillis = j;
        this.mClock = clock;
        this.mSemFilter = new SemWifiEntryFilter(context);
        this.mLog = new LogUtils();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void update(java.util.List r8, android.net.wifi.WifiInfo r9) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.mLock
            monitor-enter(r0)
            java.lang.Object r1 = r7.mLock     // Catch: java.lang.Throwable -> Ld1
            monitor-enter(r1)     // Catch: java.lang.Throwable -> Ld1
            java.util.Map r2 = r7.mScanResultsBySsidAndBssid     // Catch: java.lang.Throwable -> Ld3
            android.util.ArrayMap r2 = (android.util.ArrayMap) r2     // Catch: java.lang.Throwable -> Ld3
            java.util.Set r2 = r2.entrySet()     // Catch: java.lang.Throwable -> Ld3
            com.android.wifitrackerlib.ScanResultUpdater$$ExternalSyntheticLambda0 r3 = new com.android.wifitrackerlib.ScanResultUpdater$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> Ld3
            r3.<init>(r7)     // Catch: java.lang.Throwable -> Ld3
            r2.removeIf(r3)     // Catch: java.lang.Throwable -> Ld3
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Ld3
            com.samsung.android.wifitrackerlib.SemWifiEntryFilter r1 = r7.mSemFilter     // Catch: java.lang.Throwable -> Ld1
            r1.updateRssiFilter()     // Catch: java.lang.Throwable -> Ld1
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> Ld1
        L20:
            boolean r1 = r8.hasNext()     // Catch: java.lang.Throwable -> Ld1
            if (r1 == 0) goto Lcf
            java.lang.Object r1 = r8.next()     // Catch: java.lang.Throwable -> Ld1
            android.net.wifi.ScanResult r1 = (android.net.wifi.ScanResult) r1     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r2 = r1.SSID     // Catch: java.lang.Throwable -> Ld1
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> Ld1
            if (r2 == 0) goto L35
            goto L20
        L35:
            android.util.Pair r2 = new android.util.Pair     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r3 = r1.SSID     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r4 = r1.BSSID     // Catch: java.lang.Throwable -> Ld1
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> Ld1
            java.util.Map r3 = r7.mScanResultsBySsidAndBssid     // Catch: java.lang.Throwable -> Ld1
            android.util.ArrayMap r3 = (android.util.ArrayMap) r3     // Catch: java.lang.Throwable -> Ld1
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> Ld1
            android.net.wifi.ScanResult r3 = (android.net.wifi.ScanResult) r3     // Catch: java.lang.Throwable -> Ld1
            if (r3 == 0) goto L52
            long r3 = r3.timestamp     // Catch: java.lang.Throwable -> Ld1
            long r5 = r1.timestamp     // Catch: java.lang.Throwable -> Ld1
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 >= 0) goto L20
        L52:
            com.samsung.android.wifitrackerlib.SemWifiEntryFilter r3 = r7.mSemFilter     // Catch: java.lang.Throwable -> Ld1
            r3.getClass()     // Catch: java.lang.Throwable -> Ld1
            int r4 = r1.level     // Catch: java.lang.Throwable -> Ld1
            int r5 = r3.mWeakSignalRssi     // Catch: java.lang.Throwable -> Ld1
            if (r4 >= r5) goto L5e
            goto L6c
        L5e:
            int r5 = r1.frequency     // Catch: java.lang.Throwable -> Ld1
            r6 = 5000(0x1388, float:7.006E-42)
            if (r5 <= r6) goto L6e
            r6 = 6000(0x1770, float:8.408E-42)
            if (r5 >= r6) goto L6e
            int r3 = r3.mWeakSignalRssi5Ghz     // Catch: java.lang.Throwable -> Ld1
            if (r4 >= r3) goto L6e
        L6c:
            r3 = 0
            goto L6f
        L6e:
            r3 = 1
        L6f:
            if (r3 != 0) goto Lc6
            if (r9 == 0) goto L9a
            java.lang.String r3 = r9.getBSSID()     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r4 = r1.BSSID     // Catch: java.lang.Throwable -> Ld1
            boolean r3 = android.text.TextUtils.equals(r3, r4)     // Catch: java.lang.Throwable -> Ld1
            if (r3 == 0) goto L9a
            java.lang.String r3 = "WifiTracker.ScanResultUpdater"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ld1
            r4.<init>()     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r5 = "it's weak signal network "
            r4.append(r5)     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r5 = r9.getSSID()     // Catch: java.lang.Throwable -> Ld1
            r4.append(r5)     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> Ld1
            android.util.Log.d(r3, r4)     // Catch: java.lang.Throwable -> Ld1
            goto Lc6
        L9a:
            boolean r2 = android.os.Debug.semIsProductDev()     // Catch: java.lang.Throwable -> Ld1
            if (r2 == 0) goto L20
            com.samsung.android.wifitrackerlib.LogUtils r2 = r7.mLog     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r3 = "WifiTracker.ScanResultUpdater"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ld1
            r4.<init>()     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r5 = "filtered scan item: "
            r4.append(r5)     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Ld1
            r4.append(r1)     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Throwable -> Ld1
            boolean r4 = r2.isProductDev     // Catch: java.lang.Throwable -> Ld1
            if (r4 == 0) goto L20
            java.lang.String r1 = r2.getPrintableLog(r1)     // Catch: java.lang.Throwable -> Ld1
            android.util.Log.d(r3, r1)     // Catch: java.lang.Throwable -> Ld1
            goto L20
        Lc6:
            java.util.Map r3 = r7.mScanResultsBySsidAndBssid     // Catch: java.lang.Throwable -> Ld1
            android.util.ArrayMap r3 = (android.util.ArrayMap) r3     // Catch: java.lang.Throwable -> Ld1
            r3.put(r2, r1)     // Catch: java.lang.Throwable -> Ld1
            goto L20
        Lcf:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld1
            return
        Ld1:
            r7 = move-exception
            goto Ld6
        Ld3:
            r7 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Ld3
            throw r7     // Catch: java.lang.Throwable -> Ld1
        Ld6:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld1
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.ScanResultUpdater.update(java.util.List, android.net.wifi.WifiInfo):void");
    }
}
