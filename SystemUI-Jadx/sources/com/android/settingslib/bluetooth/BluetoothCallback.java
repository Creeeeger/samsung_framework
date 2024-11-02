package com.android.settingslib.bluetooth;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface BluetoothCallback {
    default void onBluetoothStateChanged(int i) {
    }

    default void onDeviceAdded(CachedBluetoothDevice cachedBluetoothDevice) {
    }

    default void onDeviceDeleted(CachedBluetoothDevice cachedBluetoothDevice) {
    }

    default void onScanningStateChanged(boolean z) {
    }

    default void onAudioModeChanged() {
    }

    default void onAclConnectionStateChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
    }

    default void onActiveDeviceChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
    }

    default void onConnectionStateChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
    }

    default void onDeviceBondStateChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
    }

    default void onProfileConnectionStateChanged(CachedBluetoothDevice cachedBluetoothDevice, int i, int i2) {
    }
}
