package com.android.settingslib.bluetooth;

import android.R;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHapClient;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.util.Log;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HapClientProfile implements LocalBluetoothProfile {
    public final BluetoothAdapter mBluetoothAdapter;
    public final CachedBluetoothDeviceManager mDeviceManager;
    public boolean mIsProfileReady;
    public final LocalBluetoothProfileManager mProfileManager;
    public BluetoothHapClient mService;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class HapClientServiceListener implements BluetoothProfile.ServiceListener {
        public /* synthetic */ HapClientServiceListener(HapClientProfile hapClientProfile, int i) {
            this();
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            BluetoothHapClient bluetoothHapClient = (BluetoothHapClient) bluetoothProfile;
            HapClientProfile.this.mService = bluetoothHapClient;
            List connectedDevices = bluetoothHapClient.getConnectedDevices();
            while (!connectedDevices.isEmpty()) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) connectedDevices.remove(0);
                CachedBluetoothDevice findDevice = HapClientProfile.this.mDeviceManager.findDevice(bluetoothDevice);
                if (findDevice == null) {
                    Log.w("HapClientProfile", "HapClient profile found new device: " + bluetoothDevice);
                    findDevice = HapClientProfile.this.mDeviceManager.addDevice(bluetoothDevice);
                }
                findDevice.onProfileStateChanged(HapClientProfile.this, 2);
                findDevice.refresh();
            }
            HapClientProfile hapClientProfile = HapClientProfile.this;
            hapClientProfile.mIsProfileReady = true;
            hapClientProfile.mProfileManager.callServiceConnectedListeners();
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceDisconnected(int i) {
            HapClientProfile hapClientProfile = HapClientProfile.this;
            hapClientProfile.mIsProfileReady = false;
            hapClientProfile.mProfileManager.callServiceDisconnectedListeners();
        }

        private HapClientServiceListener() {
        }
    }

    public HapClientProfile(Context context, CachedBluetoothDeviceManager cachedBluetoothDeviceManager, LocalBluetoothProfileManager localBluetoothProfileManager) {
        this.mDeviceManager = cachedBluetoothDeviceManager;
        this.mProfileManager = localBluetoothProfileManager;
        BluetoothManager bluetoothManager = (BluetoothManager) context.getSystemService(BluetoothManager.class);
        if (bluetoothManager != null) {
            BluetoothAdapter adapter = bluetoothManager.getAdapter();
            this.mBluetoothAdapter = adapter;
            adapter.getProfileProxy(context, new HapClientServiceListener(this, 0), 28);
            return;
        }
        this.mBluetoothAdapter = null;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean accessProfileEnabled() {
        return false;
    }

    public final void finalize() {
        Log.d("HapClientProfile", "finalize()");
        BluetoothProfile bluetoothProfile = this.mService;
        if (bluetoothProfile != null) {
            try {
                this.mBluetoothAdapter.closeProfileProxy(28, bluetoothProfile);
                this.mService = null;
            } catch (Throwable th) {
                Log.w("HapClientProfile", "Error cleaning up HAP Client proxy", th);
            }
        }
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getConnectionStatus(BluetoothDevice bluetoothDevice) {
        BluetoothHapClient bluetoothHapClient = this.mService;
        if (bluetoothHapClient == null) {
            return 0;
        }
        return bluetoothHapClient.getConnectionState(bluetoothDevice);
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getDrawableResource(BluetoothClass bluetoothClass) {
        return R.drawable.ic_corp_statusbar_icon;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final int getProfileId() {
        return 28;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean isProfileReady() {
        return this.mIsProfileReady;
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfile
    public final boolean setEnabled(BluetoothDevice bluetoothDevice) {
        BluetoothHapClient bluetoothHapClient = this.mService;
        if (bluetoothHapClient == null || bluetoothDevice == null) {
            return false;
        }
        return bluetoothHapClient.setConnectionPolicy(bluetoothDevice, 0);
    }

    public final String toString() {
        return "HapClient";
    }
}
