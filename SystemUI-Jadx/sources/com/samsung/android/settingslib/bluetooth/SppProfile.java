package com.samsung.android.settingslib.bluetooth;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.android.settingslib.bluetooth.CachedBluetoothDevice;
import com.android.settingslib.bluetooth.CachedBluetoothDeviceManager;
import com.android.settingslib.bluetooth.LocalBluetoothAdapter;
import com.android.settingslib.bluetooth.LocalBluetoothProfile;
import com.android.settingslib.bluetooth.LocalBluetoothProfileManager;
import com.android.systemui.R;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SppProfile implements LocalBluetoothProfile {
    public final Context mContext;
    public final CachedBluetoothDeviceManager mDeviceManager;
    public final AnonymousClass1 mHandler;
    public final boolean mIsProfileReady = true;
    public final LocalBluetoothAdapter mLocalAdapter;

    /* JADX WARN: Type inference failed for: r5v2, types: [com.samsung.android.settingslib.bluetooth.SppProfile$1, android.os.Handler] */
    public SppProfile(Context context, LocalBluetoothAdapter localBluetoothAdapter, CachedBluetoothDeviceManager cachedBluetoothDeviceManager, LocalBluetoothProfileManager localBluetoothProfileManager) {
        ?? r5 = new Handler(Looper.getMainLooper()) { // from class: com.samsung.android.settingslib.bluetooth.SppProfile.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                Set<BluetoothDevice> bondedDevices;
                if (message.what == 0 && (bondedDevices = SppProfile.this.mLocalAdapter.mAdapter.getBondedDevices()) != null && !bondedDevices.isEmpty()) {
                    for (BluetoothDevice bluetoothDevice : bondedDevices) {
                        if (bluetoothDevice.semIsGearConnected()) {
                            CachedBluetoothDevice findDevice = SppProfile.this.mDeviceManager.findDevice(bluetoothDevice);
                            if (findDevice == null) {
                                Log.w("SppProfile", "SppProfile found new device: " + bluetoothDevice.getAddressForLogging());
                                findDevice = SppProfile.this.mDeviceManager.addDevice(bluetoothDevice);
                            }
                            if (findDevice != null) {
                                Log.d("SppProfile", "Update cached device : " + findDevice.getNameForLog());
                                findDevice.onProfileStateChanged(SppProfile.this, 2);
                                findDevice.refresh();
                            } else {
                                Log.d("SppProfile", "Bluetooth device is null");
                            }
                        }
                    }
                }
            }
        };
        this.mHandler = r5;
        this.mContext = context;
        this.mLocalAdapter = localBluetoothAdapter;
        this.mDeviceManager = cachedBluetoothDeviceManager;
        Message message = new Message();
        message.what = 0;
        r5.sendMessageDelayed(message, 300L);
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean accessProfileEnabled() {
        return false;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getConnectionStatus(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice.semIsGearConnected()) {
            return 2;
        }
        return 0;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getDrawableResource(BluetoothClass bluetoothClass) {
        return R.drawable.list_ic_general_device;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getProfileId() {
        return 200;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean isProfileReady() {
        return this.mIsProfileReady;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean setEnabled(BluetoothDevice bluetoothDevice) {
        CachedBluetoothDevice findDevice = this.mDeviceManager.findDevice(bluetoothDevice);
        if (findDevice != null) {
            findDevice.shouldLaunchGM(this.mContext.getPackageName(), false);
            return true;
        }
        Log.d("SppProfile", "disconnect :: Bluetooth device is null");
        return false;
    }

    public final String toString() {
        return PeripheralConstants.ConnectionProfile.SPP;
    }

    public final void finalize() {
    }
}
