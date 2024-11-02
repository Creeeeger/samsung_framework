package com.android.systemui.statusbar.connectivity;

import com.samsung.android.knox.accounts.Account;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiState extends ConnectivityState {
    public boolean isCarrierMerged;
    public boolean isDefault;
    public boolean isDefaultConnectionValidated;
    public boolean isTransient;
    public String ssid;
    public String statusLabel;
    public int subId;

    public WifiState() {
        this(null, false, false, null, false, false, 0, 127, null);
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final void copyFrom(ConnectivityState connectivityState) {
        super.copyFrom(connectivityState);
        WifiState wifiState = (WifiState) connectivityState;
        this.ssid = wifiState.ssid;
        this.isTransient = wifiState.isTransient;
        this.isDefault = wifiState.isDefault;
        this.statusLabel = wifiState.statusLabel;
        this.isCarrierMerged = wifiState.isCarrierMerged;
        this.isDefaultConnectionValidated = wifiState.isDefaultConnectionValidated;
        this.subId = wifiState.subId;
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(WifiState.class, cls) || !super.equals(obj)) {
            return false;
        }
        WifiState wifiState = (WifiState) obj;
        if (Intrinsics.areEqual(this.ssid, wifiState.ssid) && this.isTransient == wifiState.isTransient && this.isDefault == wifiState.isDefault && Intrinsics.areEqual(this.statusLabel, wifiState.statusLabel) && this.isCarrierMerged == wifiState.isCarrierMerged && this.isDefaultConnectionValidated == wifiState.isDefaultConnectionValidated && this.subId == wifiState.subId) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final int hashCode() {
        int i;
        int hashCode = super.hashCode() * 31;
        String str = this.ssid;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int hashCode2 = (Boolean.hashCode(this.isDefault) + ((Boolean.hashCode(this.isTransient) + ((hashCode + i) * 31)) * 31)) * 31;
        String str2 = this.statusLabel;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((Boolean.hashCode(this.isDefaultConnectionValidated) + ((Boolean.hashCode(this.isCarrierMerged) + ((hashCode2 + i2) * 31)) * 31)) * 31) + this.subId;
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final List tableColumns() {
        return CollectionsKt___CollectionsKt.plus((Iterable) CollectionsKt__CollectionsKt.listOf("ssid", "isTransient", Account.IS_DEFAULT, "statusLabel", "isCarrierMerged", "isDefaultConnectionValidated", "subId"), (Collection) super.tableColumns());
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final List tableData() {
        List listOf = CollectionsKt__CollectionsKt.listOf(this.ssid, Boolean.valueOf(this.isTransient), Boolean.valueOf(this.isDefault), this.statusLabel, Boolean.valueOf(this.isCarrierMerged), Boolean.valueOf(this.isDefaultConnectionValidated), Integer.valueOf(this.subId));
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10));
        Iterator it = listOf.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next()));
        }
        return CollectionsKt___CollectionsKt.plus((Iterable) arrayList, (Collection) super.tableData());
    }

    @Override // com.android.systemui.statusbar.connectivity.ConnectivityState
    public final void toString(StringBuilder sb) {
        super.toString(sb);
        sb.append(",ssid=");
        sb.append(this.ssid);
        sb.append(",isTransient=");
        sb.append(this.isTransient);
        sb.append(",isDefault=");
        sb.append(this.isDefault);
        sb.append(",statusLabel=");
        sb.append(this.statusLabel);
        sb.append(",isCarrierMerged=");
        sb.append(this.isCarrierMerged);
        sb.append(",isDefaultConnectionValidated=");
        sb.append(this.isDefaultConnectionValidated);
        sb.append(",subId=");
        sb.append(this.subId);
    }

    public /* synthetic */ WifiState(String str, boolean z, boolean z2, String str2, boolean z3, boolean z4, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? 0 : i);
    }

    public WifiState(String str, boolean z, boolean z2, String str2, boolean z3, boolean z4, int i) {
        this.ssid = str;
        this.isTransient = z;
        this.isDefault = z2;
        this.statusLabel = str2;
        this.isCarrierMerged = z3;
        this.isDefaultConnectionValidated = z4;
        this.subId = i;
    }
}
