package com.android.systemui.statusbar.connectivity;

import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileDataIndicators {
    public final boolean activityIn;
    public final boolean activityOut;
    public final CharSequence qsDescription;
    public final IconState qsIcon;
    public final int qsType;
    public final boolean roaming;
    public final boolean showTriangle;
    public final IconState statusIcon;
    public final int statusType;
    public final int subId;
    public final CharSequence typeContentDescription;
    public final CharSequence typeContentDescriptionHtml;

    public MobileDataIndicators(IconState iconState, IconState iconState2, int i, int i2, boolean z, boolean z2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i3, boolean z3, boolean z4) {
        this.statusIcon = iconState;
        this.qsIcon = iconState2;
        this.statusType = i;
        this.qsType = i2;
        this.activityIn = z;
        this.activityOut = z2;
        this.typeContentDescription = charSequence;
        this.typeContentDescriptionHtml = charSequence2;
        this.qsDescription = charSequence3;
        this.subId = i3;
        this.roaming = z3;
        this.showTriangle = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MobileDataIndicators)) {
            return false;
        }
        MobileDataIndicators mobileDataIndicators = (MobileDataIndicators) obj;
        if (Intrinsics.areEqual(this.statusIcon, mobileDataIndicators.statusIcon) && Intrinsics.areEqual(this.qsIcon, mobileDataIndicators.qsIcon) && this.statusType == mobileDataIndicators.statusType && this.qsType == mobileDataIndicators.qsType && this.activityIn == mobileDataIndicators.activityIn && this.activityOut == mobileDataIndicators.activityOut && Intrinsics.areEqual(this.typeContentDescription, mobileDataIndicators.typeContentDescription) && Intrinsics.areEqual(this.typeContentDescriptionHtml, mobileDataIndicators.typeContentDescriptionHtml) && Intrinsics.areEqual(this.qsDescription, mobileDataIndicators.qsDescription) && this.subId == mobileDataIndicators.subId && this.roaming == mobileDataIndicators.roaming && this.showTriangle == mobileDataIndicators.showTriangle) {
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
        int i = 0;
        IconState iconState = this.statusIcon;
        if (iconState == null) {
            hashCode = 0;
        } else {
            hashCode = iconState.hashCode();
        }
        int i2 = hashCode * 31;
        IconState iconState2 = this.qsIcon;
        if (iconState2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = iconState2.hashCode();
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.qsType, AppInfoViewData$$ExternalSyntheticOutline0.m(this.statusType, (i2 + hashCode2) * 31, 31), 31);
        int i3 = 1;
        boolean z = this.activityIn;
        int i4 = z;
        if (z != 0) {
            i4 = 1;
        }
        int i5 = (m + i4) * 31;
        boolean z2 = this.activityOut;
        int i6 = z2;
        if (z2 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        CharSequence charSequence = this.typeContentDescription;
        if (charSequence == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = charSequence.hashCode();
        }
        int i8 = (i7 + hashCode3) * 31;
        CharSequence charSequence2 = this.typeContentDescriptionHtml;
        if (charSequence2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = charSequence2.hashCode();
        }
        int i9 = (i8 + hashCode4) * 31;
        CharSequence charSequence3 = this.qsDescription;
        if (charSequence3 != null) {
            i = charSequence3.hashCode();
        }
        int m2 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.subId, (i9 + i) * 31, 31);
        boolean z3 = this.roaming;
        int i10 = z3;
        if (z3 != 0) {
            i10 = 1;
        }
        int i11 = (m2 + i10) * 31;
        boolean z4 = this.showTriangle;
        if (!z4) {
            i3 = z4 ? 1 : 0;
        }
        return i11 + i3;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("MobileDataIndicators[statusIcon=");
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
        sb.append(",statusType=");
        sb.append(this.statusType);
        sb.append(",qsType=");
        sb.append(this.qsType);
        sb.append(",activityIn=");
        sb.append(this.activityIn);
        sb.append(",activityOut=");
        sb.append(this.activityOut);
        sb.append(",typeContentDescription=");
        sb.append(this.typeContentDescription);
        sb.append(",typeContentDescriptionHtml=");
        sb.append(this.typeContentDescriptionHtml);
        sb.append(",description=");
        sb.append(this.qsDescription);
        sb.append(",subId=");
        sb.append(this.subId);
        sb.append(",roaming=");
        sb.append(this.roaming);
        sb.append(",showTriangle=");
        sb.append(this.showTriangle);
        sb.append(']');
        return sb.toString();
    }
}
