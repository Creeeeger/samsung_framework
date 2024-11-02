package com.android.settingslib.bluetooth;

import android.util.Log;
import com.android.internal.util.FrameworkStatsLog;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HearingAidStatsLogUtils {
    public static final HashMap sDeviceAddressToBondEntryMap = new HashMap();

    private HearingAidStatsLogUtils() {
    }

    public static HashMap<String, Integer> getDeviceAddressToBondEntryMap() {
        return sDeviceAddressToBondEntryMap;
    }

    public static void logHearingAidInfo(CachedBluetoothDevice cachedBluetoothDevice) {
        int i;
        String address = cachedBluetoothDevice.getAddress();
        HashMap hashMap = sDeviceAddressToBondEntryMap;
        if (hashMap.containsKey(address)) {
            int i2 = -1;
            int intValue = ((Integer) hashMap.getOrDefault(address, -1)).intValue();
            HearingAidInfo hearingAidInfo = cachedBluetoothDevice.mHearingAidInfo;
            if (hearingAidInfo != null) {
                i = hearingAidInfo.mMode;
            } else {
                i = -1;
            }
            if (hearingAidInfo != null) {
                i2 = hearingAidInfo.mSide;
            }
            FrameworkStatsLog.write(513, i, i2, intValue);
            hashMap.remove(address);
            return;
        }
        Log.w("HearingAidStatsLogUtils", "The device address was not found. Hearing aid device info is not logged.");
    }
}
