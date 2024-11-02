package com.android.settingslib.wifi;

import com.android.settingslib.wifi.WifiStatusTracker;
import java.text.SimpleDateFormat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class WifiStatusTracker$1$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WifiStatusTracker.AnonymousClass1 f$0;

    public /* synthetic */ WifiStatusTracker$1$$ExternalSyntheticLambda0(WifiStatusTracker.AnonymousClass1 anonymousClass1, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                WifiStatusTracker wifiStatusTracker = this.f$0.this$0;
                SimpleDateFormat simpleDateFormat = WifiStatusTracker.SSDF;
                wifiStatusTracker.postResults();
                return;
            default:
                WifiStatusTracker wifiStatusTracker2 = this.f$0.this$0;
                SimpleDateFormat simpleDateFormat2 = WifiStatusTracker.SSDF;
                wifiStatusTracker2.postResults();
                return;
        }
    }
}
