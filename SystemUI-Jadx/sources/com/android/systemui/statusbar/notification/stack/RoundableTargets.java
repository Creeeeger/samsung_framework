package com.android.systemui.statusbar.notification.stack;

import com.android.systemui.statusbar.notification.Roundable;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RoundableTargets {
    public final Roundable after;
    public final Roundable before;
    public final ExpandableNotificationRow swiped;

    public RoundableTargets(Roundable roundable, ExpandableNotificationRow expandableNotificationRow, Roundable roundable2) {
        this.before = roundable;
        this.swiped = expandableNotificationRow;
        this.after = roundable2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundableTargets)) {
            return false;
        }
        RoundableTargets roundableTargets = (RoundableTargets) obj;
        if (Intrinsics.areEqual(this.before, roundableTargets.before) && Intrinsics.areEqual(this.swiped, roundableTargets.swiped) && Intrinsics.areEqual(this.after, roundableTargets.after)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 0;
        Roundable roundable = this.before;
        if (roundable == null) {
            hashCode = 0;
        } else {
            hashCode = roundable.hashCode();
        }
        int i2 = hashCode * 31;
        ExpandableNotificationRow expandableNotificationRow = this.swiped;
        if (expandableNotificationRow == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = expandableNotificationRow.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Roundable roundable2 = this.after;
        if (roundable2 != null) {
            i = roundable2.hashCode();
        }
        return i3 + i;
    }

    public final String toString() {
        return "RoundableTargets(before=" + this.before + ", swiped=" + this.swiped + ", after=" + this.after + ")";
    }
}
