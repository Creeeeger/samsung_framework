package com.samsung.android.sdk.routines.automationservice.data;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class RoutineDetail {
    public final List actions;
    public final List conditions;
    public final RoutineInfo info;

    public RoutineDetail(RoutineInfo routineInfo, List<ConditionStatus> list, List<ActionStatus> list2) {
        this.info = routineInfo;
        this.conditions = list;
        this.actions = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoutineDetail)) {
            return false;
        }
        RoutineDetail routineDetail = (RoutineDetail) obj;
        if (Intrinsics.areEqual(this.info, routineDetail.info) && Intrinsics.areEqual(this.conditions, routineDetail.conditions) && Intrinsics.areEqual(this.actions, routineDetail.actions)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.actions.hashCode() + ((this.conditions.hashCode() + (this.info.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "RoutineDetail(info=" + this.info + ", conditions=" + this.conditions + ", actions=" + this.actions + ')';
    }
}
