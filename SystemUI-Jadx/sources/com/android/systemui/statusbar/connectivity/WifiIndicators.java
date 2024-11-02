package com.android.systemui.statusbar.connectivity;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiIndicators {
    public final boolean activityIn;
    public final boolean activityOut;
    public final String description;
    public final boolean enabled;
    public final int inetCondition;
    public final boolean isTransient;
    public final IconState qsIcon;
    public final IconState statusIcon;
    public final String statusLabel;

    public WifiIndicators(boolean z, IconState iconState, IconState iconState2, boolean z2, boolean z3, String str, boolean z4, String str2, int i) {
        this.enabled = z;
        this.statusIcon = iconState;
        this.qsIcon = iconState2;
        this.activityIn = z2;
        this.activityOut = z3;
        this.description = str;
        this.isTransient = z4;
        this.statusLabel = str2;
        this.inetCondition = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WifiIndicators)) {
            return false;
        }
        WifiIndicators wifiIndicators = (WifiIndicators) obj;
        if (this.enabled == wifiIndicators.enabled && Intrinsics.areEqual(this.statusIcon, wifiIndicators.statusIcon) && Intrinsics.areEqual(this.qsIcon, wifiIndicators.qsIcon) && this.activityIn == wifiIndicators.activityIn && this.activityOut == wifiIndicators.activityOut && Intrinsics.areEqual(this.description, wifiIndicators.description) && this.isTransient == wifiIndicators.isTransient && Intrinsics.areEqual(this.statusLabel, wifiIndicators.statusLabel) && this.inetCondition == wifiIndicators.inetCondition) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = 1;
        boolean z = this.enabled;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        int i4 = 0;
        IconState iconState = this.statusIcon;
        if (iconState == null) {
            hashCode = 0;
        } else {
            hashCode = iconState.hashCode();
        }
        int i5 = (i3 + hashCode) * 31;
        IconState iconState2 = this.qsIcon;
        if (iconState2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = iconState2.hashCode();
        }
        int i6 = (i5 + hashCode2) * 31;
        boolean z2 = this.activityIn;
        int i7 = z2;
        if (z2 != 0) {
            i7 = 1;
        }
        int i8 = (i6 + i7) * 31;
        boolean z3 = this.activityOut;
        int i9 = z3;
        if (z3 != 0) {
            i9 = 1;
        }
        int i10 = (i8 + i9) * 31;
        String str = this.description;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i11 = (i10 + hashCode3) * 31;
        boolean z4 = this.isTransient;
        if (!z4) {
            i = z4 ? 1 : 0;
        }
        int i12 = (i11 + i) * 31;
        String str2 = this.statusLabel;
        if (str2 != null) {
            i4 = str2.hashCode();
        }
        return Integer.hashCode(this.inetCondition) + ((i12 + i4) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("WifiIndicators[enabled=");
        sb.append(this.enabled);
        sb.append(",statusIcon=");
        String str2 = "";
        IconState iconState = this.statusIcon;
        if (iconState == null) {
            str = "";
        } else {
            str = iconState.toString();
        }
        sb.append(str);
        sb.append(",qsIcon=");
        IconState iconState2 = this.qsIcon;
        if (iconState2 != null) {
            str2 = iconState2.toString();
        }
        sb.append(str2);
        sb.append(",activityIn=");
        sb.append(this.activityIn);
        sb.append(",activityOut=");
        sb.append(this.activityOut);
        sb.append(",qsDescription=");
        sb.append(this.description);
        sb.append(",isTransient=");
        sb.append(this.isTransient);
        sb.append(",statusLabel=");
        sb.append(this.statusLabel);
        sb.append(",inetcondition=");
        sb.append(this.inetCondition);
        sb.append(']');
        return sb.toString();
    }
}
