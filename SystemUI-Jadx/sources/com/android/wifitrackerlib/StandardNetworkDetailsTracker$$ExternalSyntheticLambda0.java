package com.android.wifitrackerlib;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import com.android.wifitrackerlib.StandardWifiEntry;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StandardNetworkDetailsTracker$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StandardNetworkDetailsTracker f$0;

    public /* synthetic */ StandardNetworkDetailsTracker$$ExternalSyntheticLambda0(StandardNetworkDetailsTracker standardNetworkDetailsTracker, int i) {
        this.$r8$classId = i;
        this.f$0 = standardNetworkDetailsTracker;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                StandardNetworkDetailsTracker standardNetworkDetailsTracker = this.f$0;
                standardNetworkDetailsTracker.getClass();
                return new StandardWifiEntry.ScanResultKey((ScanResult) obj).equals(standardNetworkDetailsTracker.mKey.mScanResultKey);
            default:
                StandardNetworkDetailsTracker standardNetworkDetailsTracker2 = this.f$0;
                WifiConfiguration wifiConfiguration = (WifiConfiguration) obj;
                standardNetworkDetailsTracker2.getClass();
                if (wifiConfiguration.isPasspoint()) {
                    return false;
                }
                StandardWifiEntry.StandardWifiEntryKey standardWifiEntryKey = standardNetworkDetailsTracker2.mKey;
                return standardWifiEntryKey.equals(new StandardWifiEntry.StandardWifiEntryKey(wifiConfiguration, standardWifiEntryKey.mIsTargetingNewNetworks));
        }
    }
}
