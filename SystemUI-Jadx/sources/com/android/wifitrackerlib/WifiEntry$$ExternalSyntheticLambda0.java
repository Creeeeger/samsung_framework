package com.android.wifitrackerlib;

import com.samsung.android.wifitrackerlib.SemWifiEntryFlags;
import java.net.InetAddress;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WifiEntry$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i;
        boolean z = false;
        boolean z2 = false;
        r1 = 0;
        r1 = 0;
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        switch (this.$r8$classId) {
            case 0:
                return ((InetAddress) obj).getHostAddress();
            case 1:
                if (((WifiEntry) obj).getConnectedState() != 2) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 2:
                if (((WifiEntry) obj).getConnectedState() != 2) {
                    z7 = true;
                }
                return Boolean.valueOf(z7);
            case 3:
                if (((WifiEntry) obj).mRssi != -127) {
                    z6 = true;
                }
                return Boolean.valueOf(!z6);
            case 4:
                return Integer.valueOf(-((WifiEntry) obj).mRssi);
            case 5:
                if (((WifiEntry) obj).getConnectedState() != 2) {
                    z5 = true;
                }
                return Boolean.valueOf(z5);
            case 6:
                if (((WifiEntry) obj).mRssi != -127) {
                    z4 = true;
                }
                return Boolean.valueOf(!z4);
            case 7:
                return Integer.valueOf(-((WifiEntry) obj).mFrequency);
            case 8:
                return ((WifiEntry) obj).getTitle();
            case 9:
                if (((WifiEntry) obj).mRssi != -127) {
                    z3 = true;
                }
                return Boolean.valueOf(!z3);
            case 10:
                return Boolean.valueOf(!((WifiEntry) obj).isSaved());
            case 11:
                return Boolean.valueOf(!((WifiEntry) obj).isSuggestion());
            case 12:
                WifiEntry wifiEntry = (WifiEntry) obj;
                SemWifiEntryFlags semWifiEntryFlags = wifiEntry.mSemFlags;
                if (semWifiEntryFlags.networkScoringUiEnabled && (i = wifiEntry.mSpeed) >= 20 && semWifiEntryFlags.networkType != 2) {
                    i2 = i;
                }
                return Integer.valueOf(-i2);
            case 13:
                return Integer.valueOf(-((WifiEntry) obj).mLevel);
            case 14:
                return ((WifiEntry) obj).getTitle();
            case 15:
                return Integer.valueOf(((WifiEntry) obj).getSecurity());
            case 16:
                if (((WifiEntry) obj).getConnectedState() != 2) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            default:
                return ((WifiEntry) obj).getTitle();
        }
    }
}
