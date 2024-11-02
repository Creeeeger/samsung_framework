package com.android.systemui.biometrics.ui.viewmodel;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RemainingAttempts {
    public final String message;
    public final Integer remaining;

    public RemainingAttempts() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemainingAttempts)) {
            return false;
        }
        RemainingAttempts remainingAttempts = (RemainingAttempts) obj;
        if (Intrinsics.areEqual(this.remaining, remainingAttempts.remaining) && Intrinsics.areEqual(this.message, remainingAttempts.message)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        Integer num = this.remaining;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return this.message.hashCode() + (hashCode * 31);
    }

    public final String toString() {
        return "RemainingAttempts(remaining=" + this.remaining + ", message=" + this.message + ")";
    }

    public RemainingAttempts(Integer num, String str) {
        this.remaining = num;
        this.message = str;
    }

    public /* synthetic */ RemainingAttempts(Integer num, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? "" : str);
    }
}
