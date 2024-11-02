package com.android.systemui.decor;

import android.view.View;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverViewState {
    public final String contentDescription;
    public final int cornerIndex;
    public final View designatedCorner;
    public final boolean isDotBlocked;
    public final boolean layoutRtl;
    public final int rotation;
    public final boolean systemPrivacyEventIsActive;
    public final boolean viewInitialized;

    public CoverViewState() {
        this(false, false, false, false, 0, 0, null, null, 255, null);
    }

    public static CoverViewState copy$default(CoverViewState coverViewState, boolean z, boolean z2, boolean z3, boolean z4, int i, int i2, View view, String str, int i3) {
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        int i4;
        int i5;
        View view2;
        String str2;
        if ((i3 & 1) != 0) {
            z5 = coverViewState.viewInitialized;
        } else {
            z5 = z;
        }
        if ((i3 & 2) != 0) {
            z6 = coverViewState.systemPrivacyEventIsActive;
        } else {
            z6 = z2;
        }
        if ((i3 & 4) != 0) {
            z7 = coverViewState.isDotBlocked;
        } else {
            z7 = z3;
        }
        if ((i3 & 8) != 0) {
            z8 = coverViewState.layoutRtl;
        } else {
            z8 = z4;
        }
        if ((i3 & 16) != 0) {
            i4 = coverViewState.rotation;
        } else {
            i4 = i;
        }
        if ((i3 & 32) != 0) {
            i5 = coverViewState.cornerIndex;
        } else {
            i5 = i2;
        }
        if ((i3 & 64) != 0) {
            view2 = coverViewState.designatedCorner;
        } else {
            view2 = view;
        }
        if ((i3 & 128) != 0) {
            str2 = coverViewState.contentDescription;
        } else {
            str2 = str;
        }
        coverViewState.getClass();
        return new CoverViewState(z5, z6, z7, z8, i4, i5, view2, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CoverViewState)) {
            return false;
        }
        CoverViewState coverViewState = (CoverViewState) obj;
        if (this.viewInitialized == coverViewState.viewInitialized && this.systemPrivacyEventIsActive == coverViewState.systemPrivacyEventIsActive && this.isDotBlocked == coverViewState.isDotBlocked && this.layoutRtl == coverViewState.layoutRtl && this.rotation == coverViewState.rotation && this.cornerIndex == coverViewState.cornerIndex && Intrinsics.areEqual(this.designatedCorner, coverViewState.designatedCorner) && Intrinsics.areEqual(this.contentDescription, coverViewState.contentDescription)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int i = 1;
        boolean z = this.viewInitialized;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        boolean z2 = this.systemPrivacyEventIsActive;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.isDotBlocked;
        int i6 = z3;
        if (z3 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        boolean z4 = this.layoutRtl;
        if (!z4) {
            i = z4 ? 1 : 0;
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.cornerIndex, AppInfoViewData$$ExternalSyntheticOutline0.m(this.rotation, (i7 + i) * 31, 31), 31);
        int i8 = 0;
        View view = this.designatedCorner;
        if (view == null) {
            hashCode = 0;
        } else {
            hashCode = view.hashCode();
        }
        int i9 = (m + hashCode) * 31;
        String str = this.contentDescription;
        if (str != null) {
            i8 = str.hashCode();
        }
        return i9 + i8;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CoverViewState(viewInitialized=");
        sb.append(this.viewInitialized);
        sb.append(", systemPrivacyEventIsActive=");
        sb.append(this.systemPrivacyEventIsActive);
        sb.append(", isDotBlocked=");
        sb.append(this.isDotBlocked);
        sb.append(", layoutRtl=");
        sb.append(this.layoutRtl);
        sb.append(", rotation=");
        sb.append(this.rotation);
        sb.append(", cornerIndex=");
        sb.append(this.cornerIndex);
        sb.append(", designatedCorner=");
        sb.append(this.designatedCorner);
        sb.append(", contentDescription=");
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.contentDescription, ")");
    }

    public CoverViewState(boolean z, boolean z2, boolean z3, boolean z4, int i, int i2, View view, String str) {
        this.viewInitialized = z;
        this.systemPrivacyEventIsActive = z2;
        this.isDotBlocked = z3;
        this.layoutRtl = z4;
        this.rotation = i;
        this.cornerIndex = i2;
        this.designatedCorner = view;
        this.contentDescription = str;
    }

    public /* synthetic */ CoverViewState(boolean z, boolean z2, boolean z3, boolean z4, int i, int i2, View view, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? false : z2, (i3 & 4) != 0 ? false : z3, (i3 & 8) != 0 ? false : z4, (i3 & 16) != 0 ? 0 : i, (i3 & 32) != 0 ? -1 : i2, (i3 & 64) != 0 ? null : view, (i3 & 128) != 0 ? null : str);
    }
}
