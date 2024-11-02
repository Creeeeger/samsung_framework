package com.android.systemui.util.kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Quad {
    public final Object first;
    public final Object fourth;
    public final Object second;
    public final Object third;

    public Quad(Object obj, Object obj2, Object obj3, Object obj4) {
        this.first = obj;
        this.second = obj2;
        this.third = obj3;
        this.fourth = obj4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Quad)) {
            return false;
        }
        Quad quad = (Quad) obj;
        if (Intrinsics.areEqual(this.first, quad.first) && Intrinsics.areEqual(this.second, quad.second) && Intrinsics.areEqual(this.third, quad.third) && Intrinsics.areEqual(this.fourth, quad.fourth)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
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
        if (obj4 != null) {
            i = obj4.hashCode();
        }
        return i4 + i;
    }

    public final String toString() {
        return "Quad(first=" + this.first + ", second=" + this.second + ", third=" + this.third + ", fourth=" + this.fourth + ")";
    }
}
