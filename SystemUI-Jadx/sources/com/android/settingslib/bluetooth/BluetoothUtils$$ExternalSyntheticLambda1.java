package com.android.settingslib.bluetooth;

import android.util.Log;
import com.samsung.android.bluetooth.SemBluetoothAudioCast;
import com.samsung.android.bluetooth.SemBluetoothCastDevice;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.AudioCastProfile;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class BluetoothUtils$$ExternalSyntheticLambda1 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AudioCastProfile f$0;

    public /* synthetic */ BluetoothUtils$$ExternalSyntheticLambda1(AudioCastProfile audioCastProfile, int i) {
        this.$r8$classId = i;
        this.f$0 = audioCastProfile;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int connectionState;
        int connectionState2;
        switch (this.$r8$classId) {
            case 0:
                AudioCastProfile audioCastProfile = this.f$0;
                SemBluetoothCastDevice semBluetoothCastDevice = (SemBluetoothCastDevice) obj;
                Log.d(audioCastProfile.TAG, "getConnectionState");
                SemBluetoothAudioCast semBluetoothAudioCast = audioCastProfile.mService;
                if (semBluetoothAudioCast == null) {
                    connectionState2 = 0;
                } else {
                    connectionState2 = semBluetoothAudioCast.getConnectionState(semBluetoothCastDevice);
                }
                if (connectionState2 == 2) {
                    return true;
                }
                return false;
            default:
                AudioCastProfile audioCastProfile2 = this.f$0;
                SemBluetoothCastDevice semBluetoothCastDevice2 = (SemBluetoothCastDevice) obj;
                Log.d(audioCastProfile2.TAG, "getConnectionState");
                SemBluetoothAudioCast semBluetoothAudioCast2 = audioCastProfile2.mService;
                if (semBluetoothAudioCast2 == null) {
                    connectionState = 0;
                } else {
                    connectionState = semBluetoothAudioCast2.getConnectionState(semBluetoothCastDevice2);
                }
                if (connectionState == 2) {
                    return true;
                }
                return false;
        }
    }
}
