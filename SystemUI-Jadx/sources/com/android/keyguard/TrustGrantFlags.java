package com.android.keyguard;

import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TrustGrantFlags {
    public final int mFlags;

    public TrustGrantFlags(int i) {
        this.mFlags = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TrustGrantFlags) || ((TrustGrantFlags) obj).mFlags != this.mFlags) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.mFlags));
    }

    public final String toString() {
        boolean z;
        boolean z2;
        boolean z3;
        StringBuilder sb = new StringBuilder("[");
        int i = this.mFlags;
        sb.append(i);
        sb.append("]=");
        boolean z4 = false;
        if ((i & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            sb.append("initiatedByUser|");
        }
        if ((i & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            sb.append("dismissKeyguard|");
        }
        if ((i & 4) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            sb.append("temporaryAndRenewable|");
        }
        if ((i & 8) != 0) {
            z4 = true;
        }
        if (z4) {
            sb.append("displayMessage|");
        }
        return sb.toString();
    }
}
