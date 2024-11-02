package com.android.settingslib.bluetooth;

import android.bluetooth.BluetoothAdapter;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LocalBluetoothAdapter {
    public static LocalBluetoothAdapter sInstance;
    public final BluetoothAdapter mAdapter;
    public long mLastScan;
    public LocalBluetoothProfileManager mProfileManager;
    public int mState = VideoPlayer.MEDIA_ERROR_SYSTEM;

    private LocalBluetoothAdapter(BluetoothAdapter bluetoothAdapter) {
        this.mAdapter = bluetoothAdapter;
    }

    public static synchronized LocalBluetoothAdapter getInstance() {
        LocalBluetoothAdapter localBluetoothAdapter;
        BluetoothAdapter defaultAdapter;
        synchronized (LocalBluetoothAdapter.class) {
            if (sInstance == null && (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) != null) {
                sInstance = new LocalBluetoothAdapter(defaultAdapter);
            }
            localBluetoothAdapter = sInstance;
        }
        return localBluetoothAdapter;
    }

    public final void setBluetoothEnabled(boolean z) {
        boolean disable;
        int i;
        BluetoothAdapter bluetoothAdapter = this.mAdapter;
        if (z) {
            disable = bluetoothAdapter.enable();
        } else {
            disable = bluetoothAdapter.disable();
        }
        if (disable) {
            if (z) {
                i = 11;
            } else {
                i = 13;
            }
            setBluetoothStateInt(i);
            return;
        }
        if (bluetoothAdapter.getState() != this.mState) {
            setBluetoothStateInt(bluetoothAdapter.getState());
        }
    }

    public final synchronized void setBluetoothStateInt(int i) {
        LocalBluetoothProfileManager localBluetoothProfileManager;
        synchronized (this) {
            if (this.mState == i) {
                return;
            }
            this.mState = i;
            if (i == 12 && (localBluetoothProfileManager = this.mProfileManager) != null) {
                localBluetoothProfileManager.updateLocalProfiles();
                BluetoothEventManager bluetoothEventManager = localBluetoothProfileManager.mEventManager;
                bluetoothEventManager.readRestoredDevices();
                bluetoothEventManager.readPairedDevices();
            }
        }
    }
}
