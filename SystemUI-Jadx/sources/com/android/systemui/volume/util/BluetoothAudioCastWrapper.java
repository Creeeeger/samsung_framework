package com.android.systemui.volume.util;

import android.content.Context;
import com.samsung.android.bluetooth.SemBluetoothAudioCast;
import com.samsung.android.bluetooth.SemBluetoothCastDevice;
import com.samsung.android.bluetooth.SemBluetoothCastProfile;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BluetoothAudioCastWrapper {
    public final BluetoothAudioCastWrapper$audioCastProfileListener$1 audioCastProfileListener;
    public SemBluetoothAudioCast service;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.samsung.android.bluetooth.SemBluetoothCastProfile$BluetoothCastProfileListener, com.android.systemui.volume.util.BluetoothAudioCastWrapper$audioCastProfileListener$1] */
    public BluetoothAudioCastWrapper(Context context) {
        ?? r0 = new SemBluetoothCastProfile.BluetoothCastProfileListener() { // from class: com.android.systemui.volume.util.BluetoothAudioCastWrapper$audioCastProfileListener$1
            public final void onServiceConnected(SemBluetoothCastProfile semBluetoothCastProfile) {
                BluetoothAudioCastWrapper.this.service = (SemBluetoothAudioCast) semBluetoothCastProfile;
            }

            public final void onServiceDisconnected() {
                BluetoothAudioCastWrapper bluetoothAudioCastWrapper = BluetoothAudioCastWrapper.this;
                SemBluetoothAudioCast semBluetoothAudioCast = bluetoothAudioCastWrapper.service;
                if (semBluetoothAudioCast != null) {
                    semBluetoothAudioCast.closeProxy();
                    bluetoothAudioCastWrapper.service = null;
                }
            }
        };
        this.audioCastProfileListener = r0;
        SemBluetoothAudioCast.getProxy(context, (SemBluetoothCastProfile.BluetoothCastProfileListener) r0);
    }

    public final String getCastDeviceConnectedName() {
        String str;
        List connectedDevices;
        SemBluetoothCastDevice semBluetoothCastDevice;
        SemBluetoothAudioCast semBluetoothAudioCast = this.service;
        if (semBluetoothAudioCast != null && (connectedDevices = semBluetoothAudioCast.getConnectedDevices()) != null && (semBluetoothCastDevice = (SemBluetoothCastDevice) CollectionsKt___CollectionsKt.firstOrNull(connectedDevices)) != null) {
            str = semBluetoothCastDevice.getDeviceName();
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }
}
