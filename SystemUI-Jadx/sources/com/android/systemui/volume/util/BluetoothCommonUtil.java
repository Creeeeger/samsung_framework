package com.android.systemui.volume.util;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BluetoothCommonUtil {
    public static final BluetoothCommonUtil INSTANCE = new BluetoothCommonUtil();

    private BluetoothCommonUtil() {
    }

    public static List connectedDevices(BluetoothProfile bluetoothProfile) {
        List<BluetoothDevice> connectedDevices = bluetoothProfile.getConnectedDevices();
        if (connectedDevices == null) {
            return EmptyList.INSTANCE;
        }
        return connectedDevices;
    }

    public static List mapNames(List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String semGetAliasName = ((BluetoothDevice) it.next()).semGetAliasName();
            if (semGetAliasName == null) {
                semGetAliasName = "";
            }
            arrayList.add(semGetAliasName);
        }
        return arrayList;
    }
}
