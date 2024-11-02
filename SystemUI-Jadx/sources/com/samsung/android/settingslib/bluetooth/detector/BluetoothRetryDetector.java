package com.samsung.android.settingslib.bluetooth.detector;

import android.content.Intent;
import android.util.Log;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class BluetoothRetryDetector {
    public FailCase mFailCase;
    public boolean mIsForRestored;
    public HashMap mRestoredDeviceList;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum FailCase {
        /* JADX INFO: Fake field, exist only in values array */
        SCANNING_FAILURE(2),
        CONNECTION_FAILURE(1),
        PAIRING_FAILURE(1),
        CONNECTION_FAILURE_HOGP(1),
        CONNECTION_FAILURE_LE(1),
        CONNECTION_FAILURE_WATCH(1);

        private final int maxCount;

        FailCase(int i) {
            this.maxCount = i;
        }
    }

    public BluetoothRetryDetector(boolean z) {
        new Intent().setClassName("com.samsung.android.net.wifi.wifiguider", "com.samsung.android.net.wifi.wifiguider.activity.bluetooth.BluetoothGuideActivity");
        this.mIsForRestored = z;
        if (z) {
            this.mRestoredDeviceList = new HashMap();
        }
    }

    public final void setFailCase(FailCase failCase) {
        Log.d("BluetoothRetryDetector", "Setting failcase:" + this.mFailCase.name());
        this.mFailCase = failCase;
    }

    public BluetoothRetryDetector(FailCase failCase, boolean z) {
        new Intent().setClassName("com.samsung.android.net.wifi.wifiguider", "com.samsung.android.net.wifi.wifiguider.activity.bluetooth.BluetoothGuideActivity");
        this.mIsForRestored = z;
        if (z) {
            this.mRestoredDeviceList = new HashMap();
        }
        this.mFailCase = failCase;
        failCase.getClass();
    }
}
