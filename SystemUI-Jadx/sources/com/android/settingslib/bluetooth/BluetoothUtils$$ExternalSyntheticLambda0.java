package com.android.settingslib.bluetooth;

import com.samsung.android.bluetooth.SemBluetoothCastDevice;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class BluetoothUtils$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if (((SemBluetoothCastDevice) obj).getAddress() != null) {
                    return true;
                }
                return false;
            case 1:
                if (((SemBluetoothCastDevice) obj).getLocalDeviceRole() == 1) {
                    return true;
                }
                return false;
            case 2:
                if (((SemBluetoothCastDevice) obj).getAddress() != null) {
                    return true;
                }
                return false;
            default:
                if (((SemBluetoothCastDevice) obj).getLocalDeviceRole() == 2) {
                    return true;
                }
                return false;
        }
    }
}
