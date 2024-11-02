package com.android.systemui.statusbar.pipeline.mobile.ui.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeXStatusBarIconModel {
    public final int activityId;
    public final boolean isVisible;
    public final int netwotkTypeId;
    public final int roamingId;
    public final boolean showTriangle;
    public final int slotId;
    public final int strengthId;
    public final int subId;

    public DeXStatusBarIconModel(boolean z, int i, int i2, int i3, int i4, boolean z2, int i5, int i6) {
        this.isVisible = z;
        this.slotId = i;
        this.subId = i2;
        this.strengthId = i3;
        this.netwotkTypeId = i4;
        this.showTriangle = z2;
        this.activityId = i5;
        this.roamingId = i6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeXStatusBarIconModel)) {
            return false;
        }
        DeXStatusBarIconModel deXStatusBarIconModel = (DeXStatusBarIconModel) obj;
        if (this.isVisible == deXStatusBarIconModel.isVisible && this.slotId == deXStatusBarIconModel.slotId && this.subId == deXStatusBarIconModel.subId && this.strengthId == deXStatusBarIconModel.strengthId && this.netwotkTypeId == deXStatusBarIconModel.netwotkTypeId && this.showTriangle == deXStatusBarIconModel.showTriangle && this.activityId == deXStatusBarIconModel.activityId && this.roamingId == deXStatusBarIconModel.roamingId) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public final int hashCode() {
        int i = 1;
        boolean z = this.isVisible;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.netwotkTypeId, AppInfoViewData$$ExternalSyntheticOutline0.m(this.strengthId, AppInfoViewData$$ExternalSyntheticOutline0.m(this.subId, AppInfoViewData$$ExternalSyntheticOutline0.m(this.slotId, r1 * 31, 31), 31), 31), 31);
        boolean z2 = this.showTriangle;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return Integer.hashCode(this.roamingId) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.activityId, (m + i) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeXStatusBarIconModel(isVisible=");
        sb.append(this.isVisible);
        sb.append(", slotId=");
        sb.append(this.slotId);
        sb.append(", subId=");
        sb.append(this.subId);
        sb.append(", strengthId=");
        sb.append(this.strengthId);
        sb.append(", netwotkTypeId=");
        sb.append(this.netwotkTypeId);
        sb.append(", showTriangle=");
        sb.append(this.showTriangle);
        sb.append(", activityId=");
        sb.append(this.activityId);
        sb.append(", roamingId=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.roamingId, ")");
    }

    public /* synthetic */ DeXStatusBarIconModel(boolean z, int i, int i2, int i3, int i4, boolean z2, int i5, int i6, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i, i2, i3, (i7 & 16) != 0 ? 0 : i4, z2, (i7 & 64) != 0 ? 0 : i5, (i7 & 128) != 0 ? 0 : i6);
    }
}
