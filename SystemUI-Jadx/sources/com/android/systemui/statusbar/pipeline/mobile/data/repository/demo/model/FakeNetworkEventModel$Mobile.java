package com.android.systemui.statusbar.pipeline.mobile.data.repository.demo.model;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.settingslib.SignalIcon$MobileIconGroup;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FakeNetworkEventModel$Mobile {
    public final Integer activity;
    public final Integer carrierId;
    public final boolean carrierNetworkChange;
    public final SignalIcon$MobileIconGroup dataType;
    public final Boolean inflateStrength;
    public final Integer level;
    public final String name;
    public final boolean ntn;
    public final boolean roaming;
    public final Integer subId;

    public FakeNetworkEventModel$Mobile(Integer num, SignalIcon$MobileIconGroup signalIcon$MobileIconGroup, Integer num2, Integer num3, Boolean bool, Integer num4, boolean z, boolean z2, String str, boolean z3) {
        this.level = num;
        this.dataType = signalIcon$MobileIconGroup;
        this.subId = num2;
        this.carrierId = num3;
        this.inflateStrength = bool;
        this.activity = num4;
        this.carrierNetworkChange = z;
        this.roaming = z2;
        this.name = str;
        this.ntn = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FakeNetworkEventModel$Mobile)) {
            return false;
        }
        FakeNetworkEventModel$Mobile fakeNetworkEventModel$Mobile = (FakeNetworkEventModel$Mobile) obj;
        if (Intrinsics.areEqual(this.level, fakeNetworkEventModel$Mobile.level) && Intrinsics.areEqual(this.dataType, fakeNetworkEventModel$Mobile.dataType) && Intrinsics.areEqual(this.subId, fakeNetworkEventModel$Mobile.subId) && Intrinsics.areEqual(this.carrierId, fakeNetworkEventModel$Mobile.carrierId) && Intrinsics.areEqual(this.inflateStrength, fakeNetworkEventModel$Mobile.inflateStrength) && Intrinsics.areEqual(this.activity, fakeNetworkEventModel$Mobile.activity) && this.carrierNetworkChange == fakeNetworkEventModel$Mobile.carrierNetworkChange && this.roaming == fakeNetworkEventModel$Mobile.roaming && Intrinsics.areEqual(this.name, fakeNetworkEventModel$Mobile.name) && this.ntn == fakeNetworkEventModel$Mobile.ntn) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int i = 0;
        Integer num = this.level;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i2 = hashCode * 31;
        SignalIcon$MobileIconGroup signalIcon$MobileIconGroup = this.dataType;
        if (signalIcon$MobileIconGroup == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = signalIcon$MobileIconGroup.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Integer num2 = this.subId;
        if (num2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = num2.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Integer num3 = this.carrierId;
        if (num3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num3.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        Boolean bool = this.inflateStrength;
        if (bool == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = bool.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        Integer num4 = this.activity;
        if (num4 != null) {
            i = num4.hashCode();
        }
        int i7 = (i6 + i) * 31;
        int i8 = 1;
        boolean z = this.carrierNetworkChange;
        int i9 = z;
        if (z != 0) {
            i9 = 1;
        }
        int i10 = (i7 + i9) * 31;
        boolean z2 = this.roaming;
        int i11 = z2;
        if (z2 != 0) {
            i11 = 1;
        }
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.name, (i10 + i11) * 31, 31);
        boolean z3 = this.ntn;
        if (!z3) {
            i8 = z3 ? 1 : 0;
        }
        return m + i8;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mobile(level=");
        sb.append(this.level);
        sb.append(", dataType=");
        sb.append(this.dataType);
        sb.append(", subId=");
        sb.append(this.subId);
        sb.append(", carrierId=");
        sb.append(this.carrierId);
        sb.append(", inflateStrength=");
        sb.append(this.inflateStrength);
        sb.append(", activity=");
        sb.append(this.activity);
        sb.append(", carrierNetworkChange=");
        sb.append(this.carrierNetworkChange);
        sb.append(", roaming=");
        sb.append(this.roaming);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", ntn=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.ntn, ")");
    }

    public /* synthetic */ FakeNetworkEventModel$Mobile(Integer num, SignalIcon$MobileIconGroup signalIcon$MobileIconGroup, Integer num2, Integer num3, Boolean bool, Integer num4, boolean z, boolean z2, String str, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, signalIcon$MobileIconGroup, num2, num3, bool, num4, z, z2, str, (i & 512) != 0 ? false : z3);
    }
}
