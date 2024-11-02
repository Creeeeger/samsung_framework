package com.android.systemui.volume.util;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothDevice;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BluetoothA2dpUtil {
    public static final BluetoothA2dpUtil INSTANCE = new BluetoothA2dpUtil();

    private BluetoothA2dpUtil() {
    }

    public static List getOrderConnectedDevices(BluetoothA2dp bluetoothA2dp) {
        BluetoothCommonUtil.INSTANCE.getClass();
        List connectedDevices = BluetoothCommonUtil.connectedDevices(bluetoothA2dp);
        BluetoothDevice activeDevice = bluetoothA2dp.getActiveDevice();
        if (activeDevice == null) {
            return connectedDevices;
        }
        ArrayList arrayList = new ArrayList(connectedDevices);
        if (arrayList.contains(activeDevice)) {
            arrayList.remove(arrayList.indexOf(activeDevice));
            arrayList.add(0, activeDevice);
        }
        return CollectionsKt___CollectionsKt.toList(arrayList);
    }
}
