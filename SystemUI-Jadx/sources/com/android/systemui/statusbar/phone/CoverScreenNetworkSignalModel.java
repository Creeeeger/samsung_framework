package com.android.systemui.statusbar.phone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CoverScreenNetworkSignalModel {
    public final boolean isAirplaneMode;
    public final int noServiceType;

    public CoverScreenNetworkSignalModel(boolean z, int i) {
        this.isAirplaneMode = z;
        this.noServiceType = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CoverScreenNetworkSignalModel)) {
            return false;
        }
        CoverScreenNetworkSignalModel coverScreenNetworkSignalModel = (CoverScreenNetworkSignalModel) obj;
        if (this.isAirplaneMode == coverScreenNetworkSignalModel.isAirplaneMode && this.noServiceType == coverScreenNetworkSignalModel.noServiceType) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final int hashCode() {
        boolean z = this.isAirplaneMode;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return Integer.hashCode(this.noServiceType) + (r0 * 31);
    }

    public final String toString() {
        return "CoverScreenNetworkSignalModel(isAirplaneMode=" + this.isAirplaneMode + ", noServiceType=" + this.noServiceType + ")";
    }
}
