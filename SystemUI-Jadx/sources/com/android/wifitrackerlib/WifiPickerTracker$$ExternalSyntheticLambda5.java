package com.android.wifitrackerlib;

import java.util.Map;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WifiPickerTracker$$ExternalSyntheticLambda5 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WifiPickerTracker f$0;

    public /* synthetic */ WifiPickerTracker$$ExternalSyntheticLambda5(WifiPickerTracker wifiPickerTracker, int i) {
        this.$r8$classId = i;
        this.f$0 = wifiPickerTracker;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                WifiPickerTracker wifiPickerTracker = this.f$0;
                wifiPickerTracker.getClass();
                ((PasspointWifiEntry) ((Map.Entry) obj).getValue()).mSemFlags.networkScoringUiEnabled = wifiPickerTracker.mNetworkScoringUiEnabled;
                return;
            case 1:
                ((StandardWifiEntry) obj).mSemFlags.networkScoringUiEnabled = this.f$0.mNetworkScoringUiEnabled;
                return;
            case 2:
                ((StandardWifiEntry) obj).mSemFlags.networkScoringUiEnabled = this.f$0.mNetworkScoringUiEnabled;
                return;
            default:
                WifiPickerTracker wifiPickerTracker2 = this.f$0;
                wifiPickerTracker2.getClass();
                ((OsuWifiEntry) ((Map.Entry) obj).getValue()).mSemFlags.networkScoringUiEnabled = wifiPickerTracker2.mNetworkScoringUiEnabled;
                return;
        }
    }
}
