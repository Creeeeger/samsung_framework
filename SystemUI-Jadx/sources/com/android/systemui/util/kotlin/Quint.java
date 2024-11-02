package com.android.systemui.util.kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Quint {
    public final Object fifth;
    public final Object first;
    public final Object fourth;
    public final Object second;
    public final Object third;

    public Quint(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        this.first = obj;
        this.second = obj2;
        this.third = obj3;
        this.fourth = obj4;
        this.fifth = obj5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Quint)) {
            return false;
        }
        Quint quint = (Quint) obj;
        if (Intrinsics.areEqual(this.first, quint.first) && Intrinsics.areEqual(this.second, quint.second) && Intrinsics.areEqual(this.third, quint.third) && Intrinsics.areEqual(this.fourth, quint.fourth) && Intrinsics.areEqual(this.fifth, quint.fifth)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int i = 0;
        Object obj = this.first;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        int i2 = hashCode * 31;
        Object obj2 = this.second;
        if (obj2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = obj2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Object obj3 = this.third;
        if (obj3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = obj3.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Object obj4 = this.fourth;
        if (obj4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = obj4.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        Object obj5 = this.fifth;
        if (obj5 != null) {
            i = obj5.hashCode();
        }
        return i5 + i;
    }

    public final String toString() {
        return "Quint(first=" + this.first + ", second=" + this.second + ", third=" + this.third + ", fourth=" + this.fourth + ", fifth=" + this.fifth + ")";
    }
}
