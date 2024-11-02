package com.android.wifitrackerlib;

import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WifiPickerTracker$$ExternalSyntheticLambda4 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Set f$0;

    public /* synthetic */ WifiPickerTracker$$ExternalSyntheticLambda4(int i, Set set) {
        this.$r8$classId = i;
        this.f$0 = set;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                Set set = this.f$0;
                Map.Entry entry = (Map.Entry) obj;
                if (((PasspointWifiEntry) entry.getValue()).mLevel != -1 && (set.contains(entry.getKey()) || ((PasspointWifiEntry) entry.getValue()).getConnectedState() != 0)) {
                    return false;
                }
                return true;
            case 1:
                Set set2 = this.f$0;
                WifiEntry wifiEntry = (WifiEntry) obj;
                if (!(wifiEntry instanceof StandardWifiEntry) || !set2.contains(((StandardWifiEntry) wifiEntry).mKey.mScanResultKey)) {
                    return false;
                }
                return true;
            default:
                return !this.f$0.contains(Long.valueOf(((HotspotNetworkEntry) obj).mKey.mDeviceId));
        }
    }
}
