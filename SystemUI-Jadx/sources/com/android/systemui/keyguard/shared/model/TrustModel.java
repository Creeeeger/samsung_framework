package com.android.systemui.keyguard.shared.model;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TrustModel extends TrustMessage {
    public final boolean isTrusted;
    public final int userId;

    public TrustModel(boolean z, int i) {
        super(null);
        this.isTrusted = z;
        this.userId = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrustModel)) {
            return false;
        }
        TrustModel trustModel = (TrustModel) obj;
        if (this.isTrusted == trustModel.isTrusted && this.userId == trustModel.userId) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final int hashCode() {
        boolean z = this.isTrusted;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return Integer.hashCode(this.userId) + (r0 * 31);
    }

    public final String toString() {
        return "TrustModel(isTrusted=" + this.isTrusted + ", userId=" + this.userId + ")";
    }
}
