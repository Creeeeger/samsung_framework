package com.android.wifitrackerlib;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.text.TextUtils;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return TextUtils.equals((String) this.f$0, PasspointWifiEntry.uniqueIdToPasspointWifiEntryKey(((PasspointConfiguration) obj).getUniqueId()));
            case 1:
                String str = (String) this.f$0;
                WifiConfiguration wifiConfiguration = (WifiConfiguration) obj;
                if (wifiConfiguration.isPasspoint() && TextUtils.equals(str, PasspointWifiEntry.uniqueIdToPasspointWifiEntryKey(wifiConfiguration.getKey()))) {
                    return true;
                }
                return false;
            default:
                PasspointNetworkDetailsTracker passpointNetworkDetailsTracker = (PasspointNetworkDetailsTracker) this.f$0;
                passpointNetworkDetailsTracker.getClass();
                return TextUtils.equals(PasspointWifiEntry.uniqueIdToPasspointWifiEntryKey(((PasspointConfiguration) obj).getUniqueId()), passpointNetworkDetailsTracker.mChosenEntry.mKey);
        }
    }
}
