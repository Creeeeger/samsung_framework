package com.android.systemui.statusbar.phone.knox.domain.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KnoxStatusBarCustomTextModel {
    public final String customText;
    public final int textSize;
    public final int textStyle;
    public final int width;

    public KnoxStatusBarCustomTextModel() {
        this(null, 0, 0, 0, 15, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KnoxStatusBarCustomTextModel)) {
            return false;
        }
        KnoxStatusBarCustomTextModel knoxStatusBarCustomTextModel = (KnoxStatusBarCustomTextModel) obj;
        if (Intrinsics.areEqual(this.customText, knoxStatusBarCustomTextModel.customText) && this.width == knoxStatusBarCustomTextModel.width && this.textStyle == knoxStatusBarCustomTextModel.textStyle && this.textSize == knoxStatusBarCustomTextModel.textSize) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.customText;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return Integer.hashCode(this.textSize) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.textStyle, AppInfoViewData$$ExternalSyntheticOutline0.m(this.width, hashCode * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KnoxStatusBarCustomTextModel(customText=");
        sb.append(this.customText);
        sb.append(", width=");
        sb.append(this.width);
        sb.append(", textStyle=");
        sb.append(this.textStyle);
        sb.append(", textSize=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.textSize, ")");
    }

    public KnoxStatusBarCustomTextModel(String str, int i, int i2, int i3) {
        this.customText = str;
        this.width = i;
        this.textStyle = i2;
        this.textSize = i3;
    }

    public /* synthetic */ KnoxStatusBarCustomTextModel(String str, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? 0 : i, (i4 & 4) != 0 ? 0 : i2, (i4 & 8) != 0 ? 0 : i3);
    }
}
