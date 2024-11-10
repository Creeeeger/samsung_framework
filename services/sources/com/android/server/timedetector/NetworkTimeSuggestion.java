package com.android.server.timedetector;

import android.app.time.UnixEpochTime;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class NetworkTimeSuggestion {
    public ArrayList mDebugInfo;
    public final int mUncertaintyMillis;
    public final UnixEpochTime mUnixEpochTime;

    public NetworkTimeSuggestion(UnixEpochTime unixEpochTime, int i) {
        Objects.requireNonNull(unixEpochTime);
        this.mUnixEpochTime = unixEpochTime;
        if (i < 0) {
            throw new IllegalArgumentException("uncertaintyMillis < 0");
        }
        this.mUncertaintyMillis = i;
    }

    public UnixEpochTime getUnixEpochTime() {
        return this.mUnixEpochTime;
    }

    public int getUncertaintyMillis() {
        return this.mUncertaintyMillis;
    }

    public void addDebugInfo(String... strArr) {
        if (this.mDebugInfo == null) {
            this.mDebugInfo = new ArrayList();
        }
        this.mDebugInfo.addAll(Arrays.asList(strArr));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkTimeSuggestion)) {
            return false;
        }
        NetworkTimeSuggestion networkTimeSuggestion = (NetworkTimeSuggestion) obj;
        return this.mUnixEpochTime.equals(networkTimeSuggestion.mUnixEpochTime) && this.mUncertaintyMillis == networkTimeSuggestion.mUncertaintyMillis;
    }

    public int hashCode() {
        return Objects.hash(this.mUnixEpochTime, Integer.valueOf(this.mUncertaintyMillis));
    }

    public String toString() {
        return "NetworkTimeSuggestion{mUnixEpochTime=" + this.mUnixEpochTime + ", mUncertaintyMillis=" + this.mUncertaintyMillis + ", mDebugInfo=" + this.mDebugInfo + '}';
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0057 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.server.timedetector.NetworkTimeSuggestion parseCommandLineArg(android.os.ShellCommand r6) {
        /*
            r0 = 0
            r1 = r0
            r2 = r1
        L3:
            java.lang.String r3 = r6.getNextArg()
            if (r3 == 0) goto L7e
            int r4 = r3.hashCode()
            r5 = -1
            switch(r4) {
                case 16142561: goto L33;
                case 48316014: goto L28;
                case 410278458: goto L1d;
                case 1387445527: goto L12;
                default: goto L11;
            }
        L11:
            goto L3d
        L12:
            java.lang.String r4 = "--uncertainty_millis"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L1b
            goto L3d
        L1b:
            r5 = 3
            goto L3d
        L1d:
            java.lang.String r4 = "--unix_epoch_time"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L26
            goto L3d
        L26:
            r5 = 2
            goto L3d
        L28:
            java.lang.String r4 = "--elapsed_realtime"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L31
            goto L3d
        L31:
            r5 = 1
            goto L3d
        L33:
            java.lang.String r4 = "--reference_time"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L3c
            goto L3d
        L3c:
            r5 = 0
        L3d:
            switch(r5) {
                case 0: goto L71;
                case 1: goto L71;
                case 2: goto L64;
                case 3: goto L57;
                default: goto L40;
            }
        L40:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unknown option: "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            r6.<init>(r0)
            throw r6
        L57:
            java.lang.String r2 = r6.getNextArgRequired()
            int r2 = java.lang.Integer.parseInt(r2)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            goto L3
        L64:
            java.lang.String r1 = r6.getNextArgRequired()
            long r3 = java.lang.Long.parseLong(r1)
            java.lang.Long r1 = java.lang.Long.valueOf(r3)
            goto L3
        L71:
            java.lang.String r0 = r6.getNextArgRequired()
            long r3 = java.lang.Long.parseLong(r0)
            java.lang.Long r0 = java.lang.Long.valueOf(r3)
            goto L3
        L7e:
            if (r0 == 0) goto Lb4
            if (r1 == 0) goto Lac
            if (r2 == 0) goto La4
            android.app.time.UnixEpochTime r6 = new android.app.time.UnixEpochTime
            long r3 = r0.longValue()
            long r0 = r1.longValue()
            r6.<init>(r3, r0)
            com.android.server.timedetector.NetworkTimeSuggestion r0 = new com.android.server.timedetector.NetworkTimeSuggestion
            int r1 = r2.intValue()
            r0.<init>(r6, r1)
            java.lang.String r6 = "Command line injection"
            java.lang.String[] r6 = new java.lang.String[]{r6}
            r0.addDebugInfo(r6)
            return r0
        La4:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "No uncertaintyMillis specified."
            r6.<init>(r0)
            throw r6
        Lac:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "No unixEpochTimeMillis specified."
            r6.<init>(r0)
            throw r6
        Lb4:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "No elapsedRealtimeMillis specified."
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.timedetector.NetworkTimeSuggestion.parseCommandLineArg(android.os.ShellCommand):com.android.server.timedetector.NetworkTimeSuggestion");
    }

    public static void printCommandLineOpts(PrintWriter printWriter) {
        printWriter.printf("%s suggestion options:\n", "Network");
        printWriter.println("  --elapsed_realtime <elapsed realtime millis> - the elapsed realtime millis when unix epoch time was read");
        printWriter.println("  --unix_epoch_time <Unix epoch time millis>");
        printWriter.println("  --uncertainty_millis <Uncertainty millis> - a positive error bound (+/-) estimate for unix epoch time");
        printWriter.println();
        printWriter.println("See " + NetworkTimeSuggestion.class.getName() + " for more information");
    }
}
