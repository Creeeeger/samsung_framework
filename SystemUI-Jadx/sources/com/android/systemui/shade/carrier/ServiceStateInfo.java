package com.android.systemui.shade.carrier;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ServiceStateInfo {
    public final boolean connected;
    public final boolean isEmergency;
    public final boolean isRoaming;
    public final int networkType;
    public final int voiceNetworkType;

    public ServiceStateInfo(int i, int i2, boolean z, boolean z2, boolean z3) {
        this.networkType = i;
        this.voiceNetworkType = i2;
        this.isEmergency = z;
        this.isRoaming = z2;
        this.connected = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServiceStateInfo)) {
            return false;
        }
        ServiceStateInfo serviceStateInfo = (ServiceStateInfo) obj;
        if (this.networkType == serviceStateInfo.networkType && this.voiceNetworkType == serviceStateInfo.voiceNetworkType && this.isEmergency == serviceStateInfo.isEmergency && this.isRoaming == serviceStateInfo.isRoaming && this.connected == serviceStateInfo.connected) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.voiceNetworkType, Integer.hashCode(this.networkType) * 31, 31);
        int i = 1;
        boolean z = this.isEmergency;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (m + i2) * 31;
        boolean z2 = this.isRoaming;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.connected;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return i5 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServiceStateInfo(networkType=");
        sb.append(this.networkType);
        sb.append(", voiceNetworkType=");
        sb.append(this.voiceNetworkType);
        sb.append(", isEmergency=");
        sb.append(this.isEmergency);
        sb.append(", isRoaming=");
        sb.append(this.isRoaming);
        sb.append(", connected=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.connected, ")");
    }
}
