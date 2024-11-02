package com.android.systemui.statusbar.pipeline.mobile.data.model;

import android.os.ParcelUuid;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscriptionModel {
    public final boolean bootstrap;
    public final boolean embedded;
    public final ParcelUuid groupUuid;
    public final boolean isOpportunistic;
    public final int simSlotId;
    public final int subscriptionId;

    public SubscriptionModel(int i, int i2, boolean z, ParcelUuid parcelUuid, boolean z2, boolean z3) {
        this.subscriptionId = i;
        this.simSlotId = i2;
        this.isOpportunistic = z;
        this.groupUuid = parcelUuid;
        this.bootstrap = z2;
        this.embedded = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubscriptionModel)) {
            return false;
        }
        SubscriptionModel subscriptionModel = (SubscriptionModel) obj;
        if (this.subscriptionId == subscriptionModel.subscriptionId && this.simSlotId == subscriptionModel.simSlotId && this.isOpportunistic == subscriptionModel.isOpportunistic && Intrinsics.areEqual(this.groupUuid, subscriptionModel.groupUuid) && this.bootstrap == subscriptionModel.bootstrap && this.embedded == subscriptionModel.embedded) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.simSlotId, Integer.hashCode(this.subscriptionId) * 31, 31);
        int i = 1;
        boolean z = this.isOpportunistic;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (m + i2) * 31;
        ParcelUuid parcelUuid = this.groupUuid;
        if (parcelUuid == null) {
            hashCode = 0;
        } else {
            hashCode = parcelUuid.hashCode();
        }
        int i4 = (i3 + hashCode) * 31;
        boolean z2 = this.bootstrap;
        int i5 = z2;
        if (z2 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        boolean z3 = this.embedded;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return i6 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SubscriptionModel(subscriptionId=");
        sb.append(this.subscriptionId);
        sb.append(", simSlotId=");
        sb.append(this.simSlotId);
        sb.append(", isOpportunistic=");
        sb.append(this.isOpportunistic);
        sb.append(", groupUuid=");
        sb.append(this.groupUuid);
        sb.append(", bootstrap=");
        sb.append(this.bootstrap);
        sb.append(", embedded=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.embedded, ")");
    }

    public /* synthetic */ SubscriptionModel(int i, int i2, boolean z, ParcelUuid parcelUuid, boolean z2, boolean z3, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i3 & 2) != 0 ? -1 : i2, (i3 & 4) != 0 ? false : z, (i3 & 8) != 0 ? null : parcelUuid, (i3 & 16) != 0 ? false : z2, (i3 & 32) != 0 ? false : z3);
    }
}
