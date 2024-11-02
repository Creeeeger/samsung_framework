package com.android.systemui.statusbar.policy.bluetooth;

import com.android.settingslib.bluetooth.CachedBluetoothDevice;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConnectionStatusModel {
    public final List connectedDevices;
    public final int maxConnectionState;

    public ConnectionStatusModel(int i, List<? extends CachedBluetoothDevice> list) {
        this.maxConnectionState = i;
        this.connectedDevices = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConnectionStatusModel)) {
            return false;
        }
        ConnectionStatusModel connectionStatusModel = (ConnectionStatusModel) obj;
        if (this.maxConnectionState == connectionStatusModel.maxConnectionState && Intrinsics.areEqual(this.connectedDevices, connectionStatusModel.connectedDevices)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.connectedDevices.hashCode() + (Integer.hashCode(this.maxConnectionState) * 31);
    }

    public final String toString() {
        return "ConnectionStatusModel(maxConnectionState=" + this.maxConnectionState + ", connectedDevices=" + this.connectedDevices + ")";
    }
}
