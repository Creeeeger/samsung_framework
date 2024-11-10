package com.android.server.display;

import android.hardware.display.AmbientBrightnessDayStats;
import android.os.SystemClock;
import android.os.UserManager;
import android.util.Xml;
import com.android.internal.util.FrameworkStatsLog;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Deque;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class AmbientBrightnessStatsTracker {
    static final float[] BUCKET_BOUNDARIES_FOR_NEW_STATS = {DisplayPowerController2.RATE_FROM_DOZE_TO_ON, 0.1f, 0.3f, 1.0f, 3.0f, 10.0f, 30.0f, 100.0f, 300.0f, 1000.0f, 3000.0f, 10000.0f};
    static final int MAX_DAYS_TO_TRACK = 7;
    public final AmbientBrightnessStats mAmbientBrightnessStats;
    public float mCurrentAmbientBrightness;
    public int mCurrentUserId;
    public final Injector mInjector;
    public final Timer mTimer;
    public final UserManager mUserManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Clock {
        long elapsedTimeMillis();
    }

    public AmbientBrightnessStatsTracker(UserManager userManager, Injector injector) {
        this.mUserManager = userManager;
        if (injector != null) {
            this.mInjector = injector;
        } else {
            this.mInjector = new Injector();
        }
        this.mAmbientBrightnessStats = new AmbientBrightnessStats();
        this.mTimer = new Timer(new Clock() { // from class: com.android.server.display.AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0
            @Override // com.android.server.display.AmbientBrightnessStatsTracker.Clock
            public final long elapsedTimeMillis() {
                long lambda$new$0;
                lambda$new$0 = AmbientBrightnessStatsTracker.this.lambda$new$0();
                return lambda$new$0;
            }
        });
        this.mCurrentAmbientBrightness = -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ long lambda$new$0() {
        return this.mInjector.elapsedRealtimeMillis();
    }

    public synchronized void start() {
        this.mTimer.reset();
        this.mTimer.start();
    }

    public synchronized void stop() {
        if (this.mTimer.isRunning()) {
            this.mAmbientBrightnessStats.log(this.mCurrentUserId, this.mInjector.getLocalDate(), this.mCurrentAmbientBrightness, this.mTimer.totalDurationSec());
        }
        this.mTimer.reset();
        this.mCurrentAmbientBrightness = -1.0f;
    }

    public synchronized void add(int i, float f) {
        if (this.mTimer.isRunning()) {
            int i2 = this.mCurrentUserId;
            if (i == i2) {
                this.mAmbientBrightnessStats.log(i2, this.mInjector.getLocalDate(), this.mCurrentAmbientBrightness, this.mTimer.totalDurationSec());
            } else {
                this.mCurrentUserId = i;
            }
            this.mTimer.reset();
            this.mTimer.start();
            this.mCurrentAmbientBrightness = f;
        }
    }

    public synchronized void writeStats(OutputStream outputStream) {
        this.mAmbientBrightnessStats.writeToXML(outputStream);
    }

    public synchronized void readStats(InputStream inputStream) {
        this.mAmbientBrightnessStats.readFromXML(inputStream);
    }

    public synchronized ArrayList getUserStats(int i) {
        return this.mAmbientBrightnessStats.getUserStats(i);
    }

    public synchronized void dump(PrintWriter printWriter) {
        printWriter.println("AmbientBrightnessStats:");
        printWriter.print(this.mAmbientBrightnessStats);
    }

    /* loaded from: classes2.dex */
    public class AmbientBrightnessStats {
        public Map mStats = new HashMap();

        public AmbientBrightnessStats() {
        }

        public void log(int i, LocalDate localDate, float f, float f2) {
            getOrCreateDayStats(getOrCreateUserStats(this.mStats, i), localDate).log(f, f2);
        }

        public ArrayList getUserStats(int i) {
            if (this.mStats.containsKey(Integer.valueOf(i))) {
                return new ArrayList((Collection) this.mStats.get(Integer.valueOf(i)));
            }
            return null;
        }

        public void writeToXML(OutputStream outputStream) {
            TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(outputStream);
            resolveSerializer.startDocument((String) null, Boolean.TRUE);
            resolveSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            LocalDate minusDays = AmbientBrightnessStatsTracker.this.mInjector.getLocalDate().minusDays(7L);
            resolveSerializer.startTag((String) null, "ambient-brightness-stats");
            for (Map.Entry entry : this.mStats.entrySet()) {
                for (AmbientBrightnessDayStats ambientBrightnessDayStats : (Deque) entry.getValue()) {
                    int userSerialNumber = AmbientBrightnessStatsTracker.this.mInjector.getUserSerialNumber(AmbientBrightnessStatsTracker.this.mUserManager, ((Integer) entry.getKey()).intValue());
                    if (userSerialNumber != -1 && ambientBrightnessDayStats.getLocalDate().isAfter(minusDays)) {
                        resolveSerializer.startTag((String) null, "ambient-brightness-day-stats");
                        resolveSerializer.attributeInt((String) null, "user", userSerialNumber);
                        resolveSerializer.attribute((String) null, "local-date", ambientBrightnessDayStats.getLocalDate().toString());
                        StringBuilder sb = new StringBuilder();
                        StringBuilder sb2 = new StringBuilder();
                        for (int i = 0; i < ambientBrightnessDayStats.getBucketBoundaries().length; i++) {
                            if (i > 0) {
                                sb.append(",");
                                sb2.append(",");
                            }
                            sb.append(ambientBrightnessDayStats.getBucketBoundaries()[i]);
                            sb2.append(ambientBrightnessDayStats.getStats()[i]);
                        }
                        resolveSerializer.attribute((String) null, "bucket-boundaries", sb.toString());
                        resolveSerializer.attribute((String) null, "bucket-stats", sb2.toString());
                        resolveSerializer.endTag((String) null, "ambient-brightness-day-stats");
                    }
                }
            }
            resolveSerializer.endTag((String) null, "ambient-brightness-stats");
            resolveSerializer.endDocument();
            outputStream.flush();
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x00d0, code lost:
        
            throw new java.io.IOException("Invalid brightness stats string.");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void readFromXML(java.io.InputStream r14) {
            /*
                r13 = this;
                java.lang.String r0 = ","
                java.util.HashMap r1 = new java.util.HashMap     // Catch: java.lang.Throwable -> Leb
                r1.<init>()     // Catch: java.lang.Throwable -> Leb
                com.android.modules.utils.TypedXmlPullParser r14 = android.util.Xml.resolvePullParser(r14)     // Catch: java.lang.Throwable -> Leb
            Lb:
                int r2 = r14.next()     // Catch: java.lang.Throwable -> Leb
                r3 = 1
                if (r2 == r3) goto L16
                r4 = 2
                if (r2 == r4) goto L16
                goto Lb
            L16:
                java.lang.String r2 = r14.getName()     // Catch: java.lang.Throwable -> Leb
                java.lang.String r4 = "ambient-brightness-stats"
                boolean r4 = r4.equals(r2)     // Catch: java.lang.Throwable -> Leb
                if (r4 == 0) goto Ld4
                com.android.server.display.AmbientBrightnessStatsTracker r2 = com.android.server.display.AmbientBrightnessStatsTracker.this     // Catch: java.lang.Throwable -> Leb
                com.android.server.display.AmbientBrightnessStatsTracker$Injector r2 = com.android.server.display.AmbientBrightnessStatsTracker.m5206$$Nest$fgetmInjector(r2)     // Catch: java.lang.Throwable -> Leb
                java.time.LocalDate r2 = r2.getLocalDate()     // Catch: java.lang.Throwable -> Leb
                r4 = 7
                java.time.LocalDate r2 = r2.minusDays(r4)     // Catch: java.lang.Throwable -> Leb
                int r4 = r14.getDepth()     // Catch: java.lang.Throwable -> Leb
            L36:
                int r5 = r14.next()     // Catch: java.lang.Throwable -> Leb
                if (r5 == r3) goto Ld1
                r6 = 3
                if (r5 != r6) goto L45
                int r7 = r14.getDepth()     // Catch: java.lang.Throwable -> Leb
                if (r7 <= r4) goto Ld1
            L45:
                if (r5 == r6) goto L36
                r6 = 4
                if (r5 != r6) goto L4b
                goto L36
            L4b:
                java.lang.String r5 = r14.getName()     // Catch: java.lang.Throwable -> Leb
                java.lang.String r6 = "ambient-brightness-day-stats"
                boolean r5 = r6.equals(r5)     // Catch: java.lang.Throwable -> Leb
                if (r5 == 0) goto L36
                java.lang.String r5 = "user"
                r6 = 0
                int r5 = r14.getAttributeInt(r6, r5)     // Catch: java.lang.Throwable -> Leb
                java.lang.String r7 = "local-date"
                java.lang.String r7 = r14.getAttributeValue(r6, r7)     // Catch: java.lang.Throwable -> Leb
                java.time.LocalDate r7 = java.time.LocalDate.parse(r7)     // Catch: java.lang.Throwable -> Leb
                java.lang.String r8 = "bucket-boundaries"
                java.lang.String r8 = r14.getAttributeValue(r6, r8)     // Catch: java.lang.Throwable -> Leb
                java.lang.String[] r8 = r8.split(r0)     // Catch: java.lang.Throwable -> Leb
                java.lang.String r9 = "bucket-stats"
                java.lang.String r6 = r14.getAttributeValue(r6, r9)     // Catch: java.lang.Throwable -> Leb
                java.lang.String[] r6 = r6.split(r0)     // Catch: java.lang.Throwable -> Leb
                int r9 = r8.length     // Catch: java.lang.Throwable -> Leb
                int r10 = r6.length     // Catch: java.lang.Throwable -> Leb
                if (r9 != r10) goto Lc9
                int r9 = r8.length     // Catch: java.lang.Throwable -> Leb
                if (r9 < r3) goto Lc9
                int r9 = r8.length     // Catch: java.lang.Throwable -> Leb
                float[] r9 = new float[r9]     // Catch: java.lang.Throwable -> Leb
                int r10 = r6.length     // Catch: java.lang.Throwable -> Leb
                float[] r10 = new float[r10]     // Catch: java.lang.Throwable -> Leb
                r11 = 0
            L8c:
                int r12 = r8.length     // Catch: java.lang.Throwable -> Leb
                if (r11 >= r12) goto La2
                r12 = r8[r11]     // Catch: java.lang.Throwable -> Leb
                float r12 = java.lang.Float.parseFloat(r12)     // Catch: java.lang.Throwable -> Leb
                r9[r11] = r12     // Catch: java.lang.Throwable -> Leb
                r12 = r6[r11]     // Catch: java.lang.Throwable -> Leb
                float r12 = java.lang.Float.parseFloat(r12)     // Catch: java.lang.Throwable -> Leb
                r10[r11] = r12     // Catch: java.lang.Throwable -> Leb
                int r11 = r11 + 1
                goto L8c
            La2:
                com.android.server.display.AmbientBrightnessStatsTracker r6 = com.android.server.display.AmbientBrightnessStatsTracker.this     // Catch: java.lang.Throwable -> Leb
                com.android.server.display.AmbientBrightnessStatsTracker$Injector r6 = com.android.server.display.AmbientBrightnessStatsTracker.m5206$$Nest$fgetmInjector(r6)     // Catch: java.lang.Throwable -> Leb
                com.android.server.display.AmbientBrightnessStatsTracker r8 = com.android.server.display.AmbientBrightnessStatsTracker.this     // Catch: java.lang.Throwable -> Leb
                android.os.UserManager r8 = com.android.server.display.AmbientBrightnessStatsTracker.m5207$$Nest$fgetmUserManager(r8)     // Catch: java.lang.Throwable -> Leb
                int r5 = r6.getUserId(r8, r5)     // Catch: java.lang.Throwable -> Leb
                r6 = -1
                if (r5 == r6) goto L36
                boolean r6 = r7.isAfter(r2)     // Catch: java.lang.Throwable -> Leb
                if (r6 == 0) goto L36
                java.util.Deque r5 = r13.getOrCreateUserStats(r1, r5)     // Catch: java.lang.Throwable -> Leb
                android.hardware.display.AmbientBrightnessDayStats r6 = new android.hardware.display.AmbientBrightnessDayStats     // Catch: java.lang.Throwable -> Leb
                r6.<init>(r7, r9, r10)     // Catch: java.lang.Throwable -> Leb
                r5.offer(r6)     // Catch: java.lang.Throwable -> Leb
                goto L36
            Lc9:
                java.io.IOException r13 = new java.io.IOException     // Catch: java.lang.Throwable -> Leb
                java.lang.String r14 = "Invalid brightness stats string."
                r13.<init>(r14)     // Catch: java.lang.Throwable -> Leb
                throw r13     // Catch: java.lang.Throwable -> Leb
            Ld1:
                r13.mStats = r1     // Catch: java.lang.Throwable -> Leb
                return
            Ld4:
                org.xmlpull.v1.XmlPullParserException r13 = new org.xmlpull.v1.XmlPullParserException     // Catch: java.lang.Throwable -> Leb
                java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Leb
                r14.<init>()     // Catch: java.lang.Throwable -> Leb
                java.lang.String r0 = "Ambient brightness stats not found in tracker file "
                r14.append(r0)     // Catch: java.lang.Throwable -> Leb
                r14.append(r2)     // Catch: java.lang.Throwable -> Leb
                java.lang.String r14 = r14.toString()     // Catch: java.lang.Throwable -> Leb
                r13.<init>(r14)     // Catch: java.lang.Throwable -> Leb
                throw r13     // Catch: java.lang.Throwable -> Leb
            Leb:
                r13 = move-exception
                java.io.IOException r14 = new java.io.IOException
                java.lang.String r0 = "Failed to parse brightness stats file."
                r14.<init>(r0, r13)
                throw r14
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.AmbientBrightnessStatsTracker.AmbientBrightnessStats.readFromXML(java.io.InputStream):void");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry entry : this.mStats.entrySet()) {
                for (AmbientBrightnessDayStats ambientBrightnessDayStats : (Deque) entry.getValue()) {
                    sb.append("  ");
                    sb.append(entry.getKey());
                    sb.append(" ");
                    sb.append(ambientBrightnessDayStats);
                    sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
            }
            return sb.toString();
        }

        public final Deque getOrCreateUserStats(Map map, int i) {
            if (!map.containsKey(Integer.valueOf(i))) {
                map.put(Integer.valueOf(i), new ArrayDeque());
            }
            return (Deque) map.get(Integer.valueOf(i));
        }

        public final AmbientBrightnessDayStats getOrCreateDayStats(Deque deque, LocalDate localDate) {
            AmbientBrightnessDayStats ambientBrightnessDayStats = (AmbientBrightnessDayStats) deque.peekLast();
            if (ambientBrightnessDayStats != null && ambientBrightnessDayStats.getLocalDate().equals(localDate)) {
                return ambientBrightnessDayStats;
            }
            if (ambientBrightnessDayStats != null) {
                FrameworkStatsLog.write(FrameworkStatsLog.AMBIENT_BRIGHTNESS_STATS_REPORTED, ambientBrightnessDayStats.getStats(), ambientBrightnessDayStats.getBucketBoundaries());
            }
            AmbientBrightnessDayStats ambientBrightnessDayStats2 = new AmbientBrightnessDayStats(localDate, AmbientBrightnessStatsTracker.BUCKET_BOUNDARIES_FOR_NEW_STATS);
            if (deque.size() == 7) {
                deque.poll();
            }
            deque.offer(ambientBrightnessDayStats2);
            return ambientBrightnessDayStats2;
        }
    }

    /* loaded from: classes2.dex */
    class Timer {
        public final Clock clock;
        public long startTimeMillis;
        public boolean started;

        public Timer(Clock clock) {
            this.clock = clock;
        }

        public void reset() {
            this.started = false;
        }

        public void start() {
            if (this.started) {
                return;
            }
            this.startTimeMillis = this.clock.elapsedTimeMillis();
            this.started = true;
        }

        public boolean isRunning() {
            return this.started;
        }

        public float totalDurationSec() {
            return this.started ? (float) ((this.clock.elapsedTimeMillis() - this.startTimeMillis) / 1000.0d) : DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class Injector {
        public long elapsedRealtimeMillis() {
            return SystemClock.elapsedRealtime();
        }

        public int getUserSerialNumber(UserManager userManager, int i) {
            return userManager.getUserSerialNumber(i);
        }

        public int getUserId(UserManager userManager, int i) {
            return userManager.getUserHandle(i);
        }

        public LocalDate getLocalDate() {
            return LocalDate.now();
        }
    }
}
