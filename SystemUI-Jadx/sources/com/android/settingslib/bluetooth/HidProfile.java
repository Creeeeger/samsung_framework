package com.android.settingslib.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHidHost;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HidProfile implements LocalBluetoothProfile {
    public final CachedBluetoothDeviceManager mDeviceManager;
    public boolean mIsProfileReady;
    public final LocalBluetoothProfileManager mProfileManager;
    public BluetoothHidHost mService;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class HidHostServiceListener implements BluetoothProfile.ServiceListener {
        public /* synthetic */ HidHostServiceListener(HidProfile hidProfile, int i) {
            this();
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            BluetoothHidHost bluetoothHidHost = (BluetoothHidHost) bluetoothProfile;
            HidProfile.this.mService = bluetoothHidHost;
            List<BluetoothDevice> connectedDevices = bluetoothHidHost.getConnectedDevices();
            if (!connectedDevices.isEmpty()) {
                for (BluetoothDevice bluetoothDevice : connectedDevices) {
                    CachedBluetoothDevice findDevice = HidProfile.this.mDeviceManager.findDevice(bluetoothDevice);
                    if (findDevice == null) {
                        Log.w("HidProfile", "HidProfile found new device: " + bluetoothDevice.getAddressForLogging());
                        HidProfile hidProfile = HidProfile.this;
                        findDevice = hidProfile.mDeviceManager.addDevice(hidProfile.mProfileManager, bluetoothDevice);
                    }
                    if (findDevice != null) {
                        try {
                            Log.d("HidProfile", "Update cached device : " + findDevice.getNameForLog());
                            findDevice.onProfileStateChanged(HidProfile.this, 2);
                            findDevice.refresh();
                        } catch (NullPointerException unused) {
                            Log.d("HidProfile", "Handle NullPointerException!!!");
                        }
                    } else {
                        Log.d("HidProfile", "Bluetooth device is null");
                    }
                }
            }
            HidProfile hidProfile2 = HidProfile.this;
            hidProfile2.mIsProfileReady = true;
            hidProfile2.mProfileManager.callServiceConnectedListeners();
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceDisconnected(int i) {
            Log.d("HidProfile", "Bluetooth service disconnected");
            HidProfile hidProfile = HidProfile.this;
            hidProfile.mIsProfileReady = false;
            hidProfile.mProfileManager.callServiceDisconnectedListeners();
            HidProfile.this.mService = null;
        }

        private HidHostServiceListener() {
        }
    }

    public HidProfile(Context context, CachedBluetoothDeviceManager cachedBluetoothDeviceManager, LocalBluetoothProfileManager localBluetoothProfileManager) {
        this.mDeviceManager = cachedBluetoothDeviceManager;
        this.mProfileManager = localBluetoothProfileManager;
        BluetoothAdapter.getDefaultAdapter().getProfileProxy(context, new HidHostServiceListener(this, 0), 4);
    }

    public static int getHidClassDrawable(BluetoothClass bluetoothClass) {
        if (bluetoothClass.semGetPeripheralMinorClass() == 1344) {
            return R.drawable.list_ic_keyboard;
        }
        if (bluetoothClass.semGetPeripheralMinorClass() == 1472) {
            return R.drawable.list_ic_input_combo;
        }
        if (bluetoothClass.semGetPeripheralMinorClass() == 1408) {
            return R.drawable.list_ic_mouse;
        }
        if (bluetoothClass.semGetPeripheralMinorSubClass() == 1284 || bluetoothClass.semGetPeripheralMinorSubClass() == 1288 || bluetoothClass.semGetPeripheralMinorSubClass() == 1292) {
            return R.drawable.list_ic_game_device;
        }
        return R.drawable.list_ic_accessory_default;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean accessProfileEnabled() {
        return true;
    }

    public final void finalize() {
        Log.d("HidProfile", "finalize()");
        if (this.mService != null) {
            try {
                BluetoothAdapter.getDefaultAdapter().closeProfileProxy(4, this.mService);
                this.mService = null;
            } catch (Throwable th) {
                Log.w("HidProfile", "Error cleaning up HID proxy", th);
            }
        }
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getConnectionStatus(BluetoothDevice bluetoothDevice) {
        BluetoothHidHost bluetoothHidHost = this.mService;
        if (bluetoothHidHost == null) {
            return 0;
        }
        List connectedDevices = bluetoothHidHost.getConnectedDevices();
        if (!connectedDevices.isEmpty()) {
            Iterator it = connectedDevices.iterator();
            while (it.hasNext()) {
                if (((BluetoothDevice) it.next()).equals(bluetoothDevice)) {
                    int connectionState = this.mService.getConnectionState(bluetoothDevice);
                    ListPopupWindow$$ExternalSyntheticOutline0.m("getConnectionStatus :: ", connectionState, "HidProfile");
                    return connectionState;
                }
            }
        }
        Log.d("HidProfile", "getConnectionStatus :: BluetoothProfile.STATE_DISCONNECTED (cannot find device)");
        return 0;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getDrawableResource(BluetoothClass bluetoothClass) {
        if (bluetoothClass == null) {
            return R.drawable.list_ic_accessory_default;
        }
        return getHidClassDrawable(bluetoothClass);
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getProfileId() {
        return 4;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean isProfileReady() {
        return this.mIsProfileReady;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean setEnabled(BluetoothDevice bluetoothDevice) {
        BluetoothHidHost bluetoothHidHost = this.mService;
        if (bluetoothHidHost == null) {
            return false;
        }
        return bluetoothHidHost.setConnectionPolicy(bluetoothDevice, 0);
    }

    public final String toString() {
        return PeripheralConstants.ConnectionProfile.HID;
    }
}
