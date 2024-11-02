package com.samsung.android.settingslib.bluetooth.bluetoothcast;

import android.content.Context;
import android.util.Log;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.samsung.android.bluetooth.SemBluetoothCastDevice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CachedBluetoothCastDeviceManager {
    public final LocalBluetoothManager mBtManager;
    public final Context mContext;
    public final String TAG = "CachedBluetoothCastDeviceManager";
    public final List mCachedCastDevices = new ArrayList();

    public CachedBluetoothCastDeviceManager(Context context, LocalBluetoothManager localBluetoothManager) {
        this.mContext = context;
        this.mBtManager = localBluetoothManager;
    }

    public final CachedBluetoothCastDevice addCastDevice(LocalBluetoothCastProfileManager localBluetoothCastProfileManager, SemBluetoothCastDevice semBluetoothCastDevice) {
        CachedBluetoothCastDevice cachedBluetoothCastDevice = new CachedBluetoothCastDevice(this.mContext, localBluetoothCastProfileManager, semBluetoothCastDevice);
        synchronized (this) {
            Log.d(this.TAG, "addCastDevice :: " + cachedBluetoothCastDevice.getName());
            if (((ArrayList) this.mCachedCastDevices).contains(cachedBluetoothCastDevice)) {
                Log.d(this.TAG, "addCastDevice :: newDevice is added already");
                return findCastDevice(semBluetoothCastDevice);
            }
            ((ArrayList) this.mCachedCastDevices).add(cachedBluetoothCastDevice);
            cachedBluetoothCastDevice.mSequence = ((ArrayList) this.mCachedCastDevices).indexOf(cachedBluetoothCastDevice);
            this.mBtManager.mCastEventManager.dispatchCastDeviceAdded();
            return cachedBluetoothCastDevice;
        }
    }

    public final synchronized CachedBluetoothCastDevice findCastDevice(SemBluetoothCastDevice semBluetoothCastDevice) {
        Iterator it = ((ArrayList) this.mCachedCastDevices).iterator();
        while (it.hasNext()) {
            CachedBluetoothCastDevice cachedBluetoothCastDevice = (CachedBluetoothCastDevice) it.next();
            if (cachedBluetoothCastDevice.mCastDevice.equals(semBluetoothCastDevice)) {
                return cachedBluetoothCastDevice;
            }
        }
        return null;
    }
}
