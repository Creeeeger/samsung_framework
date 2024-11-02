package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BluetoothAdapterWrapper {
    private static final BluetoothAdapter sBluetoothAdapter;
    private static final BluetoothManager sBluetoothService;
    private static final BluetoothAdapterWrapper sInstance = new BluetoothAdapterWrapper();

    static {
        BluetoothManager bluetoothManager = (BluetoothManager) AppGlobals.getInitialApplication().getSystemService(BluetoothManager.class);
        sBluetoothService = bluetoothManager;
        sBluetoothAdapter = bluetoothManager.getAdapter();
    }

    private BluetoothAdapterWrapper() {
    }

    public static BluetoothAdapterWrapper getInstance() {
        return sInstance;
    }

    public List<BluetoothDevice> getConnectedDevices() {
        Set<BluetoothDevice> bondedDevices = sBluetoothAdapter.getBondedDevices();
        if (bondedDevices != null) {
            return (List) bondedDevices.stream().filter(new BluetoothAdapterWrapper$$ExternalSyntheticLambda0()).collect(Collectors.toList());
        }
        return null;
    }
}
