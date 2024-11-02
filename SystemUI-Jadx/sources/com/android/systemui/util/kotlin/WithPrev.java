package com.android.systemui.util.kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WithPrev {
    public final Object newValue;
    public final Object previousValue;

    public WithPrev(Object obj, Object obj2) {
        this.previousValue = obj;
        this.newValue = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WithPrev)) {
            return false;
        }
        WithPrev withPrev = (WithPrev) obj;
        if (Intrinsics.areEqual(this.previousValue, withPrev.previousValue) && Intrinsics.areEqual(this.newValue, withPrev.newValue)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        Object obj = this.previousValue;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        int i2 = hashCode * 31;
        Object obj2 = this.newValue;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "WithPrev(previousValue=" + this.previousValue + ", newValue=" + this.newValue + ")";
    }
}
