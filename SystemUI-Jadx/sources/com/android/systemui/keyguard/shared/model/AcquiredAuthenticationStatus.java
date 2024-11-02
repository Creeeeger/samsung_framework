package com.android.systemui.keyguard.shared.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AcquiredAuthenticationStatus extends AuthenticationStatus {
    public final int acquiredInfo;

    public AcquiredAuthenticationStatus(int i) {
        super(null);
        this.acquiredInfo = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AcquiredAuthenticationStatus) && this.acquiredInfo == ((AcquiredAuthenticationStatus) obj).acquiredInfo) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.acquiredInfo);
    }

    public final String toString() {
        return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("AcquiredAuthenticationStatus(acquiredInfo="), this.acquiredInfo, ")");
    }
}
