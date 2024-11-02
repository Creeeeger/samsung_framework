package com.android.systemui.keyguard.shared.model;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DetectionStatus {
    public final boolean isStrongBiometric;
    public final int sensorId;
    public final int userId;

    public DetectionStatus(int i, int i2, boolean z) {
        this.sensorId = i;
        this.userId = i2;
        this.isStrongBiometric = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DetectionStatus)) {
            return false;
        }
        DetectionStatus detectionStatus = (DetectionStatus) obj;
        if (this.sensorId == detectionStatus.sensorId && this.userId == detectionStatus.userId && this.isStrongBiometric == detectionStatus.isStrongBiometric) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.userId, Integer.hashCode(this.sensorId) * 31, 31);
        boolean z = this.isStrongBiometric;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DetectionStatus(sensorId=");
        sb.append(this.sensorId);
        sb.append(", userId=");
        sb.append(this.userId);
        sb.append(", isStrongBiometric=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isStrongBiometric, ")");
    }
}
