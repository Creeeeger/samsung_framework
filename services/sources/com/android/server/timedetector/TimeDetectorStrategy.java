package com.android.server.timedetector;

import android.app.time.ExternalTimeSuggestion;
import android.app.time.TimeCapabilitiesAndConfig;
import android.app.time.TimeConfiguration;
import android.app.time.TimeState;
import android.app.time.UnixEpochTime;
import android.app.timedetector.ManualTimeSuggestion;
import android.app.timedetector.TelephonyTimeSuggestion;
import com.android.server.timezonedetector.Dumpable;
import com.android.server.timezonedetector.StateChangeListener;

/* loaded from: classes3.dex */
public interface TimeDetectorStrategy extends Dumpable {
    void addChangeListener(StateChangeListener stateChangeListener);

    void clearLatestNetworkSuggestion();

    boolean confirmTime(UnixEpochTime unixEpochTime);

    TimeCapabilitiesAndConfig getCapabilitiesAndConfig(int i, boolean z);

    NetworkTimeSuggestion getLatestNetworkSuggestion();

    TimeState getTimeState();

    void setTimeState(TimeState timeState);

    void suggestExternalTime(ExternalTimeSuggestion externalTimeSuggestion);

    void suggestGnssTime(GnssTimeSuggestion gnssTimeSuggestion);

    boolean suggestManualTime(int i, ManualTimeSuggestion manualTimeSuggestion, boolean z);

    void suggestNetworkTime(NetworkTimeSuggestion networkTimeSuggestion);

    void suggestTelephonyTime(TelephonyTimeSuggestion telephonyTimeSuggestion);

    boolean updateConfiguration(int i, TimeConfiguration timeConfiguration, boolean z);

    static String originToString(int i) {
        if (i == 1) {
            return "telephony";
        }
        if (i == 2) {
            return "manual";
        }
        if (i == 3) {
            return "network";
        }
        if (i == 4) {
            return "gnss";
        }
        if (i == 5) {
            return "external";
        }
        throw new IllegalArgumentException("origin=" + i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004f, code lost:
    
        if (r7.equals("external") == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static int stringToOrigin(java.lang.String r7) {
        /*
            r0 = 0
            r1 = 1
            if (r7 == 0) goto L6
            r2 = r1
            goto L7
        L6:
            r2 = r0
        L7:
            com.android.internal.util.Preconditions.checkArgument(r2)
            r7.hashCode()
            int r2 = r7.hashCode()
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = -1
            switch(r2) {
                case -1820761141: goto L49;
                case -1081415738: goto L3d;
                case 3177863: goto L32;
                case 783201304: goto L26;
                case 1843485230: goto L1a;
                default: goto L18;
            }
        L18:
            r0 = r6
            goto L52
        L1a:
            java.lang.String r0 = "network"
            boolean r0 = r7.equals(r0)
            if (r0 != 0) goto L24
            goto L18
        L24:
            r0 = r3
            goto L52
        L26:
            java.lang.String r0 = "telephony"
            boolean r0 = r7.equals(r0)
            if (r0 != 0) goto L30
            goto L18
        L30:
            r0 = r4
            goto L52
        L32:
            java.lang.String r0 = "gnss"
            boolean r0 = r7.equals(r0)
            if (r0 != 0) goto L3b
            goto L18
        L3b:
            r0 = r5
            goto L52
        L3d:
            java.lang.String r0 = "manual"
            boolean r0 = r7.equals(r0)
            if (r0 != 0) goto L47
            goto L18
        L47:
            r0 = r1
            goto L52
        L49:
            java.lang.String r2 = "external"
            boolean r2 = r7.equals(r2)
            if (r2 != 0) goto L52
            goto L18
        L52:
            switch(r0) {
                case 0: goto L71;
                case 1: goto L70;
                case 2: goto L6f;
                case 3: goto L6e;
                case 4: goto L6d;
                default: goto L55;
            }
        L55:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "originString="
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        L6d:
            return r4
        L6e:
            return r1
        L6f:
            return r3
        L70:
            return r5
        L71:
            r7 = 5
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.timedetector.TimeDetectorStrategy.stringToOrigin(java.lang.String):int");
    }
}
