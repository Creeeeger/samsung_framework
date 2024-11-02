package com.android.systemui.keyguard.shared.model;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TrustManagedModel extends TrustMessage {
    public final boolean isTrustManaged;
    public final int userId;

    public TrustManagedModel(int i, boolean z) {
        super(null);
        this.userId = i;
        this.isTrustManaged = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrustManagedModel)) {
            return false;
        }
        TrustManagedModel trustManagedModel = (TrustManagedModel) obj;
        if (this.userId == trustManagedModel.userId && this.isTrustManaged == trustManagedModel.isTrustManaged) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = Integer.hashCode(this.userId) * 31;
        boolean z = this.isTrustManaged;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "TrustManagedModel(userId=" + this.userId + ", isTrustManaged=" + this.isTrustManaged + ")";
    }
}
