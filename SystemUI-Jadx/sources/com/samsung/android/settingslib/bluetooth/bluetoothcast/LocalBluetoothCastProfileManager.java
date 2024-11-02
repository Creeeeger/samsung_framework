package com.samsung.android.settingslib.bluetooth.bluetoothcast;

import android.content.Context;
import android.util.Log;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.BluetoothCastEventManager;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LocalBluetoothCastProfileManager {
    public final String TAG = "LocalBluetoothCastProfileManager";
    public AudioCastProfile mAudioCastProfile;
    public final CachedBluetoothCastDeviceManager mCastDeviceManager;
    public final BluetoothCastEventManager mCastEventManager;
    public final LocalBluetoothCastAdapter mLocalCastAdapter;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class StateChangedHandler implements BluetoothCastEventManager.Handler {
        public final LocalBluetoothCastProfile mBluetoothCastProfile;

        public StateChangedHandler(LocalBluetoothCastProfile localBluetoothCastProfile) {
            this.mBluetoothCastProfile = localBluetoothCastProfile;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b1  */
        @Override // com.samsung.android.settingslib.bluetooth.bluetoothcast.BluetoothCastEventManager.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onReceive(android.content.Context r9, android.content.Intent r10, com.samsung.android.bluetooth.SemBluetoothCastDevice r11) {
            /*
                Method dump skipped, instructions count: 406
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.settingslib.bluetooth.bluetoothcast.LocalBluetoothCastProfileManager.StateChangedHandler.onReceive(android.content.Context, android.content.Intent, com.samsung.android.bluetooth.SemBluetoothCastDevice):void");
        }
    }

    public LocalBluetoothCastProfileManager(Context context, LocalBluetoothCastAdapter localBluetoothCastAdapter, CachedBluetoothCastDeviceManager cachedBluetoothCastDeviceManager, BluetoothCastEventManager bluetoothCastEventManager) {
        HashMap hashMap = new HashMap();
        Log.d("LocalBluetoothCastProfileManager", "LocalBluetoothCastProfileManager ");
        this.mLocalCastAdapter = localBluetoothCastAdapter;
        this.mCastDeviceManager = cachedBluetoothCastDeviceManager;
        this.mCastEventManager = bluetoothCastEventManager;
        localBluetoothCastAdapter.mCastProfileManager = this;
        if (localBluetoothCastAdapter.mCastAdapter == null) {
            Log.d(localBluetoothCastAdapter.TAG, "Cannot set BluetoothCastStateOn");
        }
        bluetoothCastEventManager.mBluetoothCastProfileManager = this;
        Log.d("LocalBluetoothCastProfileManager", "updateLocalCastProfiles");
        if (this.mAudioCastProfile == null) {
            Log.d("LocalBluetoothCastProfileManager", "updateLocalCastProfiles mAudioCastProfile");
            AudioCastProfile audioCastProfile = new AudioCastProfile(context, cachedBluetoothCastDeviceManager, this);
            this.mAudioCastProfile = audioCastProfile;
            ((HashMap) bluetoothCastEventManager.mHandlerMap).put("com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED", new StateChangedHandler(audioCastProfile));
            bluetoothCastEventManager.mCastProfileFilter.addAction("com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED");
            hashMap.put("AudioCast", audioCastProfile);
            synchronized (bluetoothCastEventManager.mReceivers) {
                if (bluetoothCastEventManager.mReceivers.contains(bluetoothCastEventManager.mCastProfileReceiver)) {
                    bluetoothCastEventManager.mContext.unregisterReceiver(bluetoothCastEventManager.mCastProfileReceiver);
                    bluetoothCastEventManager.mReceivers.remove(bluetoothCastEventManager.mCastProfileReceiver);
                    Log.e(bluetoothCastEventManager.TAG, "registerCastProfileIntentReceiver :: mProfileConnectionReceiver was registered already. Receiver will refresh.");
                }
                bluetoothCastEventManager.mContext.registerReceiver(bluetoothCastEventManager.mCastProfileReceiver, bluetoothCastEventManager.mCastProfileFilter);
                bluetoothCastEventManager.mReceivers.add(bluetoothCastEventManager.mCastProfileReceiver);
            }
        }
    }
}
