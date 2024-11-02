package com.android.wifitrackerlib;

import android.net.wifi.hotspot2.PasspointConfiguration;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SavedNetworkTracker$$ExternalSyntheticLambda2 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Map f$0;

    public /* synthetic */ SavedNetworkTracker$$ExternalSyntheticLambda2(int i, Map map) {
        this.$r8$classId = i;
        this.f$0 = map;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                Map map = this.f$0;
                PasspointWifiEntry passpointWifiEntry = (PasspointWifiEntry) ((Map.Entry) obj).getValue();
                PasspointConfiguration passpointConfiguration = (PasspointConfiguration) map.remove(passpointWifiEntry.mKey);
                if (passpointConfiguration == null) {
                    return true;
                }
                passpointWifiEntry.updatePasspointConfig(passpointConfiguration);
                return false;
            default:
                StandardWifiEntry standardWifiEntry = (StandardWifiEntry) obj;
                standardWifiEntry.updateConfig((List) this.f$0.remove(standardWifiEntry.mKey));
                return !standardWifiEntry.isSaved();
        }
    }
}
