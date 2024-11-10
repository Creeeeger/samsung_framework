package com.android.server.location.injector;

import android.util.Log;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.clipboard.ClipboardService;
import com.android.server.display.DisplayPowerController2;
import java.time.Instant;

/* loaded from: classes2.dex */
public class LocationUsageLogger {
    public long mLastApiUsageLogHour = 0;
    public int mApiUsageLogHourlyCount = 0;

    public static int bucketizeDistance(float f) {
        if (f <= DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
            return 1;
        }
        return (f <= DisplayPowerController2.RATE_FROM_DOZE_TO_ON || f > 100.0f) ? 3 : 2;
    }

    public static int bucketizeExpireIn(long j) {
        if (j == Long.MAX_VALUE) {
            return 6;
        }
        if (j < 20000) {
            return 1;
        }
        if (j < 60000) {
            return 2;
        }
        if (j < 600000) {
            return 3;
        }
        return j < ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS ? 4 : 5;
    }

    public static int bucketizeInterval(long j) {
        if (j < 1000) {
            return 1;
        }
        if (j < 5000) {
            return 2;
        }
        if (j < 60000) {
            return 3;
        }
        if (j < 600000) {
            return 4;
        }
        return j < ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS ? 5 : 6;
    }

    public static int bucketizeRadius(float f) {
        if (f < DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
            return 7;
        }
        if (f < 100.0f) {
            return 1;
        }
        if (f < 200.0f) {
            return 2;
        }
        if (f < 300.0f) {
            return 3;
        }
        if (f < 1000.0f) {
            return 4;
        }
        return f < 10000.0f ? 5 : 6;
    }

    public static int categorizeActivityImportance(boolean z) {
        return z ? 1 : 3;
    }

    public static int getCallbackType(int i, boolean z, boolean z2) {
        if (i == 5) {
            return 1;
        }
        if (z2) {
            return 3;
        }
        return z ? 2 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0076 A[Catch: Exception -> 0x008f, TryCatch #0 {Exception -> 0x008f, blocks: (B:2:0x0000, B:28:0x006d, B:31:0x007f, B:34:0x0076, B:35:0x0054, B:37:0x0047, B:38:0x0038, B:39:0x002b, B:40:0x0022, B:41:0x0019), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void logLocationApiUsage(int r20, int r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, android.location.LocationRequest r25, boolean r26, boolean r27, android.location.Geofence r28, boolean r29) {
        /*
            r19 = this;
            boolean r0 = r19.hitApiUsageLogCap()     // Catch: java.lang.Exception -> L8f
            if (r0 == 0) goto L7
            return
        L7:
            r0 = 1
            r1 = 0
            if (r25 != 0) goto Ld
            r2 = r0
            goto Le
        Ld:
            r2 = r1
        Le:
            if (r28 != 0) goto L12
            r3 = r0
            goto L13
        L12:
            r3 = r1
        L13:
            r4 = 210(0xd2, float:2.94E-43)
            if (r2 == 0) goto L19
            r8 = r1
            goto L1e
        L19:
            int r5 = bucketizeProvider(r24)     // Catch: java.lang.Exception -> L8f
            r8 = r5
        L1e:
            if (r2 == 0) goto L22
            r9 = r1
            goto L27
        L22:
            int r5 = r25.getQuality()     // Catch: java.lang.Exception -> L8f
            r9 = r5
        L27:
            if (r2 == 0) goto L2b
            r10 = r1
            goto L34
        L2b:
            long r5 = r25.getIntervalMillis()     // Catch: java.lang.Exception -> L8f
            int r5 = bucketizeInterval(r5)     // Catch: java.lang.Exception -> L8f
            r10 = r5
        L34:
            if (r2 == 0) goto L38
            r11 = r1
            goto L41
        L38:
            float r5 = r25.getMinUpdateDistanceMeters()     // Catch: java.lang.Exception -> L8f
            int r5 = bucketizeDistance(r5)     // Catch: java.lang.Exception -> L8f
            r11 = r5
        L41:
            if (r2 == 0) goto L47
            r5 = 0
        L45:
            r12 = r5
            goto L4d
        L47:
            int r5 = r25.getMaxUpdates()     // Catch: java.lang.Exception -> L8f
            long r5 = (long) r5     // Catch: java.lang.Exception -> L8f
            goto L45
        L4d:
            if (r2 != 0) goto L64
            r2 = r20
            if (r2 != r0) goto L54
            goto L66
        L54:
            long r5 = r25.getDurationMillis()     // Catch: java.lang.Exception -> L8f
            int r0 = bucketizeExpireIn(r5)     // Catch: java.lang.Exception -> L8f
            r5 = r26
            r6 = r27
            r14 = r0
            r0 = r21
            goto L6d
        L64:
            r2 = r20
        L66:
            r0 = r21
            r5 = r26
            r6 = r27
            r14 = r1
        L6d:
            int r15 = getCallbackType(r0, r5, r6)     // Catch: java.lang.Exception -> L8f
            if (r3 == 0) goto L76
        L73:
            r16 = r1
            goto L7f
        L76:
            float r1 = r28.getRadius()     // Catch: java.lang.Exception -> L8f
            int r1 = bucketizeRadius(r1)     // Catch: java.lang.Exception -> L8f
            goto L73
        L7f:
            int r17 = categorizeActivityImportance(r29)     // Catch: java.lang.Exception -> L8f
            r5 = r20
            r6 = r21
            r7 = r22
            r18 = r23
            com.android.internal.util.FrameworkStatsLog.write(r4, r5, r6, r7, r8, r9, r10, r11, r12, r14, r15, r16, r17, r18)     // Catch: java.lang.Exception -> L8f
            goto L97
        L8f:
            r0 = move-exception
            java.lang.String r1 = "LocationManagerService"
            java.lang.String r2 = "Failed to log API usage to statsd."
            android.util.Log.w(r1, r2, r0)
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.location.injector.LocationUsageLogger.logLocationApiUsage(int, int, java.lang.String, java.lang.String, java.lang.String, android.location.LocationRequest, boolean, boolean, android.location.Geofence, boolean):void");
    }

    public void logLocationApiUsage(int i, int i2, String str) {
        try {
            if (hitApiUsageLogCap()) {
                return;
            }
            FrameworkStatsLog.write(210, i, i2, (String) null, bucketizeProvider(str), 0, 0, 0, 0L, 0, getCallbackType(i2, true, true), 0, 0, (String) null);
        } catch (Exception e) {
            Log.w("LocationManagerService", "Failed to log API usage to statsd.", e);
        }
    }

    public synchronized void logLocationEnabledStateChanged(boolean z) {
        FrameworkStatsLog.write(FrameworkStatsLog.LOCATION_ENABLED_STATE_CHANGED, z);
    }

    public static int bucketizeProvider(String str) {
        if ("network".equals(str)) {
            return 1;
        }
        if ("gps".equals(str)) {
            return 2;
        }
        if ("passive".equals(str)) {
            return 3;
        }
        return "fused".equals(str) ? 4 : 0;
    }

    public final synchronized boolean hitApiUsageLogCap() {
        long epochMilli = Instant.now().toEpochMilli() / ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS;
        if (epochMilli > this.mLastApiUsageLogHour) {
            this.mLastApiUsageLogHour = epochMilli;
            this.mApiUsageLogHourlyCount = 0;
            return false;
        }
        int min = Math.min(this.mApiUsageLogHourlyCount + 1, 60);
        this.mApiUsageLogHourlyCount = min;
        return min >= 60;
    }
}
