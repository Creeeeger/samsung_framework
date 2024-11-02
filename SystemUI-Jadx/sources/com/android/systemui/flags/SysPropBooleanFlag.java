package com.android.systemui.flags;

import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SysPropBooleanFlag implements Flag {

    /* renamed from: default, reason: not valid java name */
    public final boolean f4default;
    public final int id;
    public final String name;
    public final String namespace;

    public SysPropBooleanFlag(int i, String str, String str2, boolean z) {
        this.id = i;
        this.name = str;
        this.namespace = str2;
        this.f4default = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SysPropBooleanFlag)) {
            return false;
        }
        SysPropBooleanFlag sysPropBooleanFlag = (SysPropBooleanFlag) obj;
        if (this.id == sysPropBooleanFlag.id && Intrinsics.areEqual(this.name, sysPropBooleanFlag.name) && Intrinsics.areEqual(this.namespace, sysPropBooleanFlag.namespace) && getDefault().booleanValue() == sysPropBooleanFlag.getDefault().booleanValue()) {
            return true;
        }
        return false;
    }

    public final Boolean getDefault() {
        return Boolean.valueOf(this.f4default);
    }

    @Override // com.android.systemui.flags.Flag
    public final String getName() {
        return this.name;
    }

    @Override // com.android.systemui.flags.Flag
    public final String getNamespace() {
        return this.namespace;
    }

    public final int hashCode() {
        return getDefault().hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.namespace, AppInfo$$ExternalSyntheticOutline0.m(this.name, Integer.hashCode(this.id) * 31, 31), 31);
    }

    public final String toString() {
        return "SysPropBooleanFlag(id=" + this.id + ", name=" + this.name + ", namespace=" + this.namespace + ", default=" + getDefault() + ")";
    }

    public /* synthetic */ SysPropBooleanFlag(int i, String str, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, (i2 & 8) != 0 ? false : z);
    }
}
