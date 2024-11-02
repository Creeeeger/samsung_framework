package com.android.systemui.statusbar.phone;

import android.graphics.Rect;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BoundsPair {
    public final Rect end;
    public final Rect start;

    public BoundsPair(Rect rect, Rect rect2) {
        this.start = rect;
        this.end = rect2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoundsPair)) {
            return false;
        }
        BoundsPair boundsPair = (BoundsPair) obj;
        if (Intrinsics.areEqual(this.start, boundsPair.start) && Intrinsics.areEqual(this.end, boundsPair.end)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.end.hashCode() + (this.start.hashCode() * 31);
    }

    public final String toString() {
        return "BoundsPair(start=" + this.start + ", end=" + this.end + ")";
    }
}
