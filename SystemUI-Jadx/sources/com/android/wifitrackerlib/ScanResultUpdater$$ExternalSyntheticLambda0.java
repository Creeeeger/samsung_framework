package com.android.wifitrackerlib;

import android.net.wifi.ScanResult;
import java.util.Map;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ScanResultUpdater$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ ScanResultUpdater f$0;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        ScanResultUpdater scanResultUpdater = this.f$0;
        if (scanResultUpdater.mClock.millis() - (((ScanResult) ((Map.Entry) obj).getValue()).timestamp / 1000) > scanResultUpdater.mMaxScanAgeMillis) {
            return true;
        }
        return false;
    }
}
