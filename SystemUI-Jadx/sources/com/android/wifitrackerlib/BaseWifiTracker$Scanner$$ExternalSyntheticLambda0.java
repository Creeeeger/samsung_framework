package com.android.wifitrackerlib;

import com.android.wifitrackerlib.BaseWifiTracker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BaseWifiTracker$Scanner$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BaseWifiTracker.Scanner f$0;

    public /* synthetic */ BaseWifiTracker$Scanner$$ExternalSyntheticLambda0(BaseWifiTracker.Scanner scanner, int i) {
        this.$r8$classId = i;
        this.f$0 = scanner;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.possiblyStartScanning();
                return;
            case 1:
                this.f$0.stopScanning();
                return;
            default:
                this.f$0.scanLoop();
                return;
        }
    }
}
