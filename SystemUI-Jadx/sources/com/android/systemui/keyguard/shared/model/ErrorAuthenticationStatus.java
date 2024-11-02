package com.android.systemui.keyguard.shared.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ErrorAuthenticationStatus extends AuthenticationStatus {
    public final String msg;
    public final int msgId;

    public /* synthetic */ ErrorAuthenticationStatus(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorAuthenticationStatus)) {
            return false;
        }
        ErrorAuthenticationStatus errorAuthenticationStatus = (ErrorAuthenticationStatus) obj;
        if (this.msgId == errorAuthenticationStatus.msgId && Intrinsics.areEqual(this.msg, errorAuthenticationStatus.msg)) {
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
        return "ErrorAuthenticationStatus(msgId=" + this.msgId + ", msg=" + this.msg + ")";
    }

    public ErrorAuthenticationStatus(int i, String str) {
        super(null);
        this.msgId = i;
        this.msg = str;
    }
}
