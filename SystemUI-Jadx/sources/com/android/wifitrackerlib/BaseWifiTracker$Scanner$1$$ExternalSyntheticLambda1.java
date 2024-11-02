package com.android.wifitrackerlib;

import android.content.Intent;
import android.net.wifi.WifiScanner;
import com.android.wifitrackerlib.BaseWifiTracker;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BaseWifiTracker.Scanner.AnonymousClass1 f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda1(BaseWifiTracker.Scanner.AnonymousClass1 anonymousClass1, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass1;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        int i = 1;
        switch (this.$r8$classId) {
            case 0:
                BaseWifiTracker.Scanner.AnonymousClass1 anonymousClass1 = this.f$0;
                WifiScanner.ScanData[] scanDataArr = (WifiScanner.ScanData[]) this.f$1;
                BaseWifiTracker.Scanner scanner = anonymousClass1.this$1;
                int i2 = BaseWifiTracker.Scanner.$r8$clinit;
                if (scanner.mIsWifiEnabled && scanner.mIsStartedState) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    String str = scanner.this$0.mTag;
                    ArrayList arrayList = new ArrayList();
                    if (scanDataArr != null) {
                        for (WifiScanner.ScanData scanData : scanDataArr) {
                            arrayList.addAll(List.of((Object[]) scanData.getResults()));
                        }
                    }
                    anonymousClass1.this$1.this$0.mWorkerHandler.post(new BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda1(anonymousClass1, arrayList, i));
                    anonymousClass1.this$1.scanLoop();
                    return;
                }
                return;
            default:
                BaseWifiTracker.Scanner.AnonymousClass1 anonymousClass12 = this.f$0;
                anonymousClass12.this$1.this$0.mScanResultUpdater.update((List) this.f$1);
                anonymousClass12.this$1.this$0.handleScanResultsAvailableAction(new Intent("android.net.wifi.SCAN_RESULTS").putExtra("resultsUpdated", true));
                return;
        }
    }
}
