package com.samsung.android.sdk.routines.automationservice.data;

import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.samsung.android.sdk.routines.automationservice.interfaces.AutomationService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class RoutineInfo {
    public static final Companion Companion = new Companion(null);
    public final String id;
    public final String name;
    public final AutomationService.SystemRoutineType type;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ RoutineInfo(String str, String str2, AutomationService.SystemRoutineType systemRoutineType, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, systemRoutineType);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoutineInfo)) {
            return false;
        }
        RoutineInfo routineInfo = (RoutineInfo) obj;
        if (Intrinsics.areEqual(this.name, routineInfo.name) && Intrinsics.areEqual(this.id, routineInfo.id) && this.type == routineInfo.type) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.type.hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.id, this.name.hashCode() * 31, 31);
    }

    public final String toString() {
        return "RoutineInfo(name=" + this.name + ", id=" + this.id + ", type=" + this.type + ')';
    }

    private RoutineInfo(String str, String str2, AutomationService.SystemRoutineType systemRoutineType) {
        this.name = str;
        this.id = str2;
        this.type = systemRoutineType;
    }
}
