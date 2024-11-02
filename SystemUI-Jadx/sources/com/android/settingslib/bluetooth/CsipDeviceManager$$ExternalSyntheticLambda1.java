package com.android.settingslib.bluetooth;

import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class CsipDeviceManager$$ExternalSyntheticLambda1 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ CsipDeviceManager$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((CachedBluetoothDevice) obj).getConnectableProfiles().stream().anyMatch(new CsipDeviceManager$$ExternalSyntheticLambda1(4));
            case 1:
                return ((CachedBluetoothDevice) obj).getConnectableProfiles().stream().anyMatch(new CsipDeviceManager$$ExternalSyntheticLambda1(3));
            case 2:
                return ((CachedBluetoothDevice) obj).isConnected();
            case 3:
                LocalBluetoothProfile localBluetoothProfile = (LocalBluetoothProfile) obj;
                if (!(localBluetoothProfile instanceof A2dpProfile) && !(localBluetoothProfile instanceof HeadsetProfile)) {
                    return false;
                }
                return true;
            default:
                return ((LocalBluetoothProfile) obj) instanceof LeAudioProfile;
        }
    }
}
