package com.android.systemui.statusbar.phone.knox.data.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KnoxStatusBarControlModel {
    public final int customTextSize;
    public final int customTextStyle;
    public final int customTextWidth;
    public final String knoxStatusBarCustomText;
    public final boolean statusBarHidden;
    public final boolean statusBarIconsEnabled;

    public KnoxStatusBarControlModel(boolean z, boolean z2, String str, int i, int i2, int i3) {
        this.statusBarHidden = z;
        this.statusBarIconsEnabled = z2;
        this.knoxStatusBarCustomText = str;
        this.customTextStyle = i;
        this.customTextSize = i2;
        this.customTextWidth = i3;
    }

    public static KnoxStatusBarControlModel copy$default(KnoxStatusBarControlModel knoxStatusBarControlModel, boolean z, boolean z2, String str, int i, int i2, int i3, int i4) {
        if ((i4 & 1) != 0) {
            z = knoxStatusBarControlModel.statusBarHidden;
        }
        boolean z3 = z;
        if ((i4 & 2) != 0) {
            z2 = knoxStatusBarControlModel.statusBarIconsEnabled;
        }
        boolean z4 = z2;
        if ((i4 & 4) != 0) {
            str = knoxStatusBarControlModel.knoxStatusBarCustomText;
        }
        String str2 = str;
        if ((i4 & 8) != 0) {
            i = knoxStatusBarControlModel.customTextStyle;
        }
        int i5 = i;
        if ((i4 & 16) != 0) {
            i2 = knoxStatusBarControlModel.customTextSize;
        }
        int i6 = i2;
        if ((i4 & 32) != 0) {
            i3 = knoxStatusBarControlModel.customTextWidth;
        }
        knoxStatusBarControlModel.getClass();
        return new KnoxStatusBarControlModel(z3, z4, str2, i5, i6, i3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KnoxStatusBarControlModel)) {
            return false;
        }
        KnoxStatusBarControlModel knoxStatusBarControlModel = (KnoxStatusBarControlModel) obj;
        if (this.statusBarHidden == knoxStatusBarControlModel.statusBarHidden && this.statusBarIconsEnabled == knoxStatusBarControlModel.statusBarIconsEnabled && Intrinsics.areEqual(this.knoxStatusBarCustomText, knoxStatusBarControlModel.knoxStatusBarCustomText) && this.customTextStyle == knoxStatusBarControlModel.customTextStyle && this.customTextSize == knoxStatusBarControlModel.customTextSize && this.customTextWidth == knoxStatusBarControlModel.customTextWidth) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int i = 1;
        boolean z = this.statusBarHidden;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        boolean z2 = this.statusBarIconsEnabled;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        int i4 = (i3 + i) * 31;
        String str = this.knoxStatusBarCustomText;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return Integer.hashCode(this.customTextWidth) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.customTextSize, AppInfoViewData$$ExternalSyntheticOutline0.m(this.customTextStyle, (i4 + hashCode) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KnoxStatusBarControlModel(statusBarHidden=");
        sb.append(this.statusBarHidden);
        sb.append(", statusBarIconsEnabled=");
        sb.append(this.statusBarIconsEnabled);
        sb.append(", knoxStatusBarCustomText=");
        sb.append(this.knoxStatusBarCustomText);
        sb.append(", customTextStyle=");
        sb.append(this.customTextStyle);
        sb.append(", customTextSize=");
        sb.append(this.customTextSize);
        sb.append(", customTextWidth=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.customTextWidth, ")");
    }

    public /* synthetic */ KnoxStatusBarControlModel(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? false : z, (i4 & 2) != 0 ? false : z2, str, i, i2, i3);
    }
}
