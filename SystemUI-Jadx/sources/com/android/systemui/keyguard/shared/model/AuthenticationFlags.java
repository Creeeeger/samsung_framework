package com.android.systemui.keyguard.shared.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthenticationFlags {
    public final int flag;
    public final boolean isInUserLockdown;
    public final boolean isPrimaryAuthRequiredAfterDpmLockdown;
    public final boolean isPrimaryAuthRequiredAfterReboot;
    public final boolean isPrimaryAuthRequiredAfterTimeout;
    public final boolean primaryAuthRequiredForUnattendedUpdate;
    public final boolean someAuthRequiredAfterTrustAgentExpired;
    public final boolean someAuthRequiredAfterUserRequest;
    public final boolean strongerAuthRequiredAfterNonStrongBiometricsTimeout;
    public final int userId;

    public AuthenticationFlags(int i, int i2) {
        this.userId = i;
        this.flag = i2;
        this.isInUserLockdown = AuthenticationFlagsKt.access$containsFlag(i2, 32);
        this.isPrimaryAuthRequiredAfterReboot = AuthenticationFlagsKt.access$containsFlag(i2, 1);
        this.isPrimaryAuthRequiredAfterTimeout = AuthenticationFlagsKt.access$containsFlag(i2, 16);
        this.isPrimaryAuthRequiredAfterDpmLockdown = AuthenticationFlagsKt.access$containsFlag(i2, 2);
        this.someAuthRequiredAfterUserRequest = AuthenticationFlagsKt.access$containsFlag(i2, 4);
        this.someAuthRequiredAfterTrustAgentExpired = AuthenticationFlagsKt.access$containsFlag(i2, 256);
        this.primaryAuthRequiredForUnattendedUpdate = AuthenticationFlagsKt.access$containsFlag(i2, 64);
        this.strongerAuthRequiredAfterNonStrongBiometricsTimeout = AuthenticationFlagsKt.access$containsFlag(i2, 128);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationFlags)) {
            return false;
        }
        AuthenticationFlags authenticationFlags = (AuthenticationFlags) obj;
        if (this.userId == authenticationFlags.userId && this.flag == authenticationFlags.flag) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.flag) + (Integer.hashCode(this.userId) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AuthenticationFlags(userId=");
        sb.append(this.userId);
        sb.append(", flag=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.flag, ")");
    }
}
