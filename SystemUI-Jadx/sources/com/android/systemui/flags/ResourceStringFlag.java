package com.android.systemui.flags;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ResourceStringFlag implements Flag {
    public final int id;
    public final String name;
    public final String namespace;
    public final int resourceId;
    public final boolean teamfood;

    public ResourceStringFlag(int i, String str, String str2, int i2, boolean z) {
        this.id = i;
        this.name = str;
        this.namespace = str2;
        this.resourceId = i2;
        this.teamfood = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResourceStringFlag)) {
            return false;
        }
        ResourceStringFlag resourceStringFlag = (ResourceStringFlag) obj;
        if (this.id == resourceStringFlag.id && Intrinsics.areEqual(this.name, resourceStringFlag.name) && Intrinsics.areEqual(this.namespace, resourceStringFlag.namespace) && this.resourceId == resourceStringFlag.resourceId && this.teamfood == resourceStringFlag.teamfood) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.flags.Flag
    public final String getName() {
        return this.name;
    }

    @Override // com.android.systemui.flags.Flag
    public final String getNamespace() {
        return this.namespace;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.resourceId, AppInfo$$ExternalSyntheticOutline0.m(this.namespace, AppInfo$$ExternalSyntheticOutline0.m(this.name, Integer.hashCode(this.id) * 31, 31), 31), 31);
        boolean z = this.teamfood;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ResourceStringFlag(id=");
        sb.append(this.id);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", namespace=");
        sb.append(this.namespace);
        sb.append(", resourceId=");
        sb.append(this.resourceId);
        sb.append(", teamfood=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.teamfood, ")");
    }

    public /* synthetic */ ResourceStringFlag(int i, String str, String str2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, i2, (i3 & 16) != 0 ? false : z);
    }
}
