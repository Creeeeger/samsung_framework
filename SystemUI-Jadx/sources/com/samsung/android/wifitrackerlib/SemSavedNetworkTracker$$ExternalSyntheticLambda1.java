package com.samsung.android.wifitrackerlib;

import android.net.wifi.WifiConfiguration;
import com.android.wifitrackerlib.StandardWifiEntry;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final /* synthetic */ class SemSavedNetworkTracker$$ExternalSyntheticLambda1 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new StandardWifiEntry.StandardWifiEntryKey((WifiConfiguration) obj);
    }
}
