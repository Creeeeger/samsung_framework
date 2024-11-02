package com.android.systemui.statusbar.phone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ServiceStateModel {
    public final boolean connected;
    public final boolean roaming;

    public ServiceStateModel(boolean z, boolean z2) {
        this.connected = z;
        this.roaming = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServiceStateModel)) {
            return false;
        }
        ServiceStateModel serviceStateModel = (ServiceStateModel) obj;
        if (this.connected == serviceStateModel.connected && this.roaming == serviceStateModel.roaming) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int i = 1;
        boolean z = this.connected;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        boolean z2 = this.roaming;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return i3 + i;
    }

    public final String toString() {
        return "ServiceStateModel(connected=" + this.connected + ", roaming=" + this.roaming + ")";
    }
}
