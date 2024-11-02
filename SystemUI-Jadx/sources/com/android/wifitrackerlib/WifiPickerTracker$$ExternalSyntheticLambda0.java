package com.android.wifitrackerlib;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.text.TextUtils;
import java.util.Map;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WifiPickerTracker$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ WifiPickerTracker$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean isEmpty;
        boolean z;
        boolean z2;
        switch (this.$r8$classId) {
            case 0:
                isEmpty = TextUtils.isEmpty(((ScanResult) obj).SSID);
                break;
            case 1:
                KnownNetworkEntry knownNetworkEntry = (KnownNetworkEntry) obj;
                if (knownNetworkEntry.mLevel != -1 || knownNetworkEntry.getConnectedState() != 0) {
                    return false;
                }
                return true;
            case 2:
                isEmpty = ((WifiConfiguration) obj).isEphemeral();
                break;
            case 3:
                ScanResult scanResult = (ScanResult) obj;
                if (TextUtils.isEmpty(scanResult.SSID) || scanResult.capabilities.contains("[IBSS]")) {
                    return false;
                }
                return true;
            case 4:
                StandardWifiEntry standardWifiEntry = (StandardWifiEntry) obj;
                if (standardWifiEntry.mLevel != -1 || standardWifiEntry.getConnectedState() != 0) {
                    return false;
                }
                return true;
            case 5:
                ScanResult scanResult2 = (ScanResult) obj;
                if (TextUtils.isEmpty(scanResult2.SSID) || scanResult2.capabilities.contains("[IBSS]")) {
                    return false;
                }
                return true;
            case 6:
                StandardWifiEntry standardWifiEntry2 = (StandardWifiEntry) obj;
                if (standardWifiEntry2.mLevel != -1 || standardWifiEntry2.getConnectedState() != 0) {
                    return false;
                }
                return true;
            case 7:
                if (((WifiEntry) obj).getConnectedState() != 0) {
                    return false;
                }
                return true;
            case 8:
                StandardWifiEntry standardWifiEntry3 = (StandardWifiEntry) obj;
                if (standardWifiEntry3.getConnectedState() != 0) {
                    return false;
                }
                synchronized (standardWifiEntry3) {
                    z = standardWifiEntry3.mIsUserShareable;
                }
                if (!z) {
                    return false;
                }
                return true;
            case 9:
                if (((PasspointWifiEntry) obj).getConnectedState() != 0) {
                    return false;
                }
                return true;
            case 10:
                OsuWifiEntry osuWifiEntry = (OsuWifiEntry) obj;
                if (osuWifiEntry.getConnectedState() != 0) {
                    return false;
                }
                synchronized (osuWifiEntry) {
                    z2 = osuWifiEntry.mIsAlreadyProvisioned;
                }
                if (z2) {
                    return false;
                }
                return true;
            case 11:
                if (((WifiEntry) obj).getConnectedState() != 0) {
                    return false;
                }
                return true;
            default:
                if (((OsuWifiEntry) ((Map.Entry) obj).getValue()).mLevel != -1) {
                    return false;
                }
                return true;
        }
        return !isEmpty;
    }
}
