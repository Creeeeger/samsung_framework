package com.android.systemui.biometrics.domain.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricUserInfo {
    public final int deviceCredentialOwnerId;
    public final int userId;

    public BiometricUserInfo(int i, int i2) {
        this.userId = i;
        this.deviceCredentialOwnerId = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiometricUserInfo)) {
            return false;
        }
        BiometricUserInfo biometricUserInfo = (BiometricUserInfo) obj;
        if (this.userId == biometricUserInfo.userId && this.deviceCredentialOwnerId == biometricUserInfo.deviceCredentialOwnerId) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.deviceCredentialOwnerId) + (Integer.hashCode(this.userId) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BiometricUserInfo(userId=");
        sb.append(this.userId);
        sb.append(", deviceCredentialOwnerId=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.deviceCredentialOwnerId, ")");
    }

    public /* synthetic */ BiometricUserInfo(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i3 & 2) != 0 ? i : i2);
    }
}
