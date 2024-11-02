package com.android.systemui.biometrics.domain.model;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricOperationInfo {
    public final long gatekeeperChallenge;

    public BiometricOperationInfo() {
        this(0L, 1, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BiometricOperationInfo) && this.gatekeeperChallenge == ((BiometricOperationInfo) obj).gatekeeperChallenge) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.gatekeeperChallenge);
    }

    public final String toString() {
        return "BiometricOperationInfo(gatekeeperChallenge=" + this.gatekeeperChallenge + ")";
    }

    public BiometricOperationInfo(long j) {
        this.gatekeeperChallenge = j;
    }

    public /* synthetic */ BiometricOperationInfo(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? -1L : j);
    }
}
