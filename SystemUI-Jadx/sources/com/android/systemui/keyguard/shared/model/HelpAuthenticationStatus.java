package com.android.systemui.keyguard.shared.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HelpAuthenticationStatus extends AuthenticationStatus {
    public final String msg;
    public final int msgId;

    public HelpAuthenticationStatus(int i, String str) {
        super(null);
        this.msgId = i;
        this.msg = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HelpAuthenticationStatus)) {
            return false;
        }
        HelpAuthenticationStatus helpAuthenticationStatus = (HelpAuthenticationStatus) obj;
        if (this.msgId == helpAuthenticationStatus.msgId && Intrinsics.areEqual(this.msg, helpAuthenticationStatus.msg)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.msgId) * 31;
        String str = this.msg;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "HelpAuthenticationStatus(msgId=" + this.msgId + ", msg=" + this.msg + ")";
    }
}
