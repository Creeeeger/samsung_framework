package com.android.systemui.shade.carrier;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NetworkNameInfo {
    public final String dataSpn;
    public final boolean hasVoWifiPLMN;
    public final String plmn;
    public final boolean showPlmn;
    public final boolean showSpn;
    public final String spn;

    public NetworkNameInfo(boolean z, String str, String str2, boolean z2, String str3, boolean z3) {
        this.showSpn = z;
        this.spn = str;
        this.dataSpn = str2;
        this.showPlmn = z2;
        this.plmn = str3;
        this.hasVoWifiPLMN = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkNameInfo)) {
            return false;
        }
        NetworkNameInfo networkNameInfo = (NetworkNameInfo) obj;
        if (this.showSpn == networkNameInfo.showSpn && Intrinsics.areEqual(this.spn, networkNameInfo.spn) && Intrinsics.areEqual(this.dataSpn, networkNameInfo.dataSpn) && this.showPlmn == networkNameInfo.showPlmn && Intrinsics.areEqual(this.plmn, networkNameInfo.plmn) && this.hasVoWifiPLMN == networkNameInfo.hasVoWifiPLMN) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 1;
        boolean z = this.showSpn;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        int i4 = 0;
        String str = this.spn;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i5 = (i3 + hashCode) * 31;
        String str2 = this.dataSpn;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i6 = (i5 + hashCode2) * 31;
        boolean z2 = this.showPlmn;
        int i7 = z2;
        if (z2 != 0) {
            i7 = 1;
        }
        int i8 = (i6 + i7) * 31;
        String str3 = this.plmn;
        if (str3 != null) {
            i4 = str3.hashCode();
        }
        int i9 = (i8 + i4) * 31;
        boolean z3 = this.hasVoWifiPLMN;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return i9 + i;
    }

    public final String toString() {
        return "NetworkNameInfo(showSpn=" + this.showSpn + ", spn=" + this.spn + ", dataSpn=" + this.dataSpn + ", showPlmn=" + this.showPlmn + ", plmn=" + this.plmn + ", hasVoWifiPLMN=" + this.hasVoWifiPLMN + ")";
    }
}
