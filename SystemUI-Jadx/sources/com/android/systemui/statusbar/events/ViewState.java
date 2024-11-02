package com.android.systemui.statusbar.events;

import android.graphics.Rect;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ViewState {
    public final String contentDescription;
    public final int cornerIndex;
    public final View designatedCorner;
    public final Rect landscapeRect;
    public final boolean layoutRtl;
    public final int paddingTop;
    public final Rect portraitRect;
    public final boolean qsExpanded;
    public final int rotation;
    public final Rect seascapeRect;
    public final boolean shadeExpanded;
    public final int stableInsetLeft;
    public final int stableInsetRight;
    public final int statusBarPaddingLeft;
    public final int statusBarPaddingRight;
    public final boolean systemPrivacyEventIsActive;
    public final Rect upsideDownRect;
    public final boolean viewInitialized;

    public ViewState() {
        this(false, false, false, false, null, null, null, null, false, 0, 0, 0, null, null, 0, 0, 0, 0, 262143, null);
    }

    public static ViewState copy$default(ViewState viewState, boolean z, boolean z2, boolean z3, boolean z4, Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z5, int i, int i2, int i3, View view, String str, int i4, int i5, int i6, int i7, int i8) {
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        Rect rect5;
        Rect rect6;
        Rect rect7;
        Rect rect8;
        boolean z10;
        int i9;
        int i10;
        int i11;
        View view2;
        String str2;
        int i12;
        int i13;
        int i14;
        int i15;
        if ((i8 & 1) != 0) {
            z6 = viewState.viewInitialized;
        } else {
            z6 = z;
        }
        if ((i8 & 2) != 0) {
            z7 = viewState.systemPrivacyEventIsActive;
        } else {
            z7 = z2;
        }
        if ((i8 & 4) != 0) {
            z8 = viewState.shadeExpanded;
        } else {
            z8 = z3;
        }
        if ((i8 & 8) != 0) {
            z9 = viewState.qsExpanded;
        } else {
            z9 = z4;
        }
        if ((i8 & 16) != 0) {
            rect5 = viewState.portraitRect;
        } else {
            rect5 = rect;
        }
        if ((i8 & 32) != 0) {
            rect6 = viewState.landscapeRect;
        } else {
            rect6 = rect2;
        }
        if ((i8 & 64) != 0) {
            rect7 = viewState.upsideDownRect;
        } else {
            rect7 = rect3;
        }
        if ((i8 & 128) != 0) {
            rect8 = viewState.seascapeRect;
        } else {
            rect8 = rect4;
        }
        if ((i8 & 256) != 0) {
            z10 = viewState.layoutRtl;
        } else {
            z10 = z5;
        }
        if ((i8 & 512) != 0) {
            i9 = viewState.rotation;
        } else {
            i9 = i;
        }
        if ((i8 & 1024) != 0) {
            i10 = viewState.paddingTop;
        } else {
            i10 = i2;
        }
        if ((i8 & 2048) != 0) {
            i11 = viewState.cornerIndex;
        } else {
            i11 = i3;
        }
        if ((i8 & 4096) != 0) {
            view2 = viewState.designatedCorner;
        } else {
            view2 = view;
        }
        if ((i8 & 8192) != 0) {
            str2 = viewState.contentDescription;
        } else {
            str2 = str;
        }
        String str3 = str2;
        if ((i8 & 16384) != 0) {
            i12 = viewState.statusBarPaddingLeft;
        } else {
            i12 = i4;
        }
        int i16 = i12;
        if ((i8 & 32768) != 0) {
            i13 = viewState.statusBarPaddingRight;
        } else {
            i13 = i5;
        }
        int i17 = i13;
        if ((i8 & 65536) != 0) {
            i14 = viewState.stableInsetLeft;
        } else {
            i14 = i6;
        }
        if ((i8 & 131072) != 0) {
            i15 = viewState.stableInsetRight;
        } else {
            i15 = i7;
        }
        viewState.getClass();
        return new ViewState(z6, z7, z8, z9, rect5, rect6, rect7, rect8, z10, i9, i10, i11, view2, str3, i16, i17, i14, i15);
    }

    public final Rect contentRectForRotation(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        Rect rect = this.seascapeRect;
                        Intrinsics.checkNotNull(rect);
                        return rect;
                    }
                    throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("not a rotation (", i, ")"));
                }
                Rect rect2 = this.upsideDownRect;
                Intrinsics.checkNotNull(rect2);
                return rect2;
            }
            Rect rect3 = this.landscapeRect;
            Intrinsics.checkNotNull(rect3);
            return rect3;
        }
        Rect rect4 = this.portraitRect;
        Intrinsics.checkNotNull(rect4);
        return rect4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewState)) {
            return false;
        }
        ViewState viewState = (ViewState) obj;
        if (this.viewInitialized == viewState.viewInitialized && this.systemPrivacyEventIsActive == viewState.systemPrivacyEventIsActive && this.shadeExpanded == viewState.shadeExpanded && this.qsExpanded == viewState.qsExpanded && Intrinsics.areEqual(this.portraitRect, viewState.portraitRect) && Intrinsics.areEqual(this.landscapeRect, viewState.landscapeRect) && Intrinsics.areEqual(this.upsideDownRect, viewState.upsideDownRect) && Intrinsics.areEqual(this.seascapeRect, viewState.seascapeRect) && this.layoutRtl == viewState.layoutRtl && this.rotation == viewState.rotation && this.paddingTop == viewState.paddingTop && this.cornerIndex == viewState.cornerIndex && Intrinsics.areEqual(this.designatedCorner, viewState.designatedCorner) && Intrinsics.areEqual(this.contentDescription, viewState.contentDescription) && this.statusBarPaddingLeft == viewState.statusBarPaddingLeft && this.statusBarPaddingRight == viewState.statusBarPaddingRight && this.stableInsetLeft == viewState.stableInsetLeft && this.stableInsetRight == viewState.stableInsetRight) {
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
        boolean z3 = this.shadeExpanded;
        int i6 = z3;
        if (z3 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        boolean z4 = this.qsExpanded;
        int i8 = z4;
        if (z4 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        int i10 = 0;
        Rect rect = this.portraitRect;
        if (rect == null) {
            hashCode = 0;
        } else {
            hashCode = rect.hashCode();
        }
        int i11 = (i9 + hashCode) * 31;
        Rect rect2 = this.landscapeRect;
        if (rect2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = rect2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Rect rect3 = this.upsideDownRect;
        if (rect3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = rect3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Rect rect4 = this.seascapeRect;
        if (rect4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = rect4.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        boolean z5 = this.layoutRtl;
        if (!z5) {
            i = z5 ? 1 : 0;
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.cornerIndex, AppInfoViewData$$ExternalSyntheticOutline0.m(this.paddingTop, AppInfoViewData$$ExternalSyntheticOutline0.m(this.rotation, (i14 + i) * 31, 31), 31), 31);
        View view = this.designatedCorner;
        if (view == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = view.hashCode();
        }
        int i15 = (m + hashCode5) * 31;
        String str = this.contentDescription;
        if (str != null) {
            i10 = str.hashCode();
        }
        return Integer.hashCode(this.stableInsetRight) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.stableInsetLeft, AppInfoViewData$$ExternalSyntheticOutline0.m(this.statusBarPaddingRight, AppInfoViewData$$ExternalSyntheticOutline0.m(this.statusBarPaddingLeft, (i15 + i10) * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ViewState(viewInitialized=");
        sb.append(this.viewInitialized);
        sb.append(", systemPrivacyEventIsActive=");
        sb.append(this.systemPrivacyEventIsActive);
        sb.append(", shadeExpanded=");
        sb.append(this.shadeExpanded);
        sb.append(", qsExpanded=");
        sb.append(this.qsExpanded);
        sb.append(", portraitRect=");
        sb.append(this.portraitRect);
        sb.append(", landscapeRect=");
        sb.append(this.landscapeRect);
        sb.append(", upsideDownRect=");
        sb.append(this.upsideDownRect);
        sb.append(", seascapeRect=");
        sb.append(this.seascapeRect);
        sb.append(", layoutRtl=");
        sb.append(this.layoutRtl);
        sb.append(", rotation=");
        sb.append(this.rotation);
        sb.append(", paddingTop=");
        sb.append(this.paddingTop);
        sb.append(", cornerIndex=");
        sb.append(this.cornerIndex);
        sb.append(", designatedCorner=");
        sb.append(this.designatedCorner);
        sb.append(", contentDescription=");
        sb.append(this.contentDescription);
        sb.append(", statusBarPaddingLeft=");
        sb.append(this.statusBarPaddingLeft);
        sb.append(", statusBarPaddingRight=");
        sb.append(this.statusBarPaddingRight);
        sb.append(", stableInsetLeft=");
        sb.append(this.stableInsetLeft);
        sb.append(", stableInsetRight=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.stableInsetRight, ")");
    }

    public ViewState(boolean z, boolean z2, boolean z3, boolean z4, Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z5, int i, int i2, int i3, View view, String str, int i4, int i5, int i6, int i7) {
        this.viewInitialized = z;
        this.systemPrivacyEventIsActive = z2;
        this.shadeExpanded = z3;
        this.qsExpanded = z4;
        this.portraitRect = rect;
        this.landscapeRect = rect2;
        this.upsideDownRect = rect3;
        this.seascapeRect = rect4;
        this.layoutRtl = z5;
        this.rotation = i;
        this.paddingTop = i2;
        this.cornerIndex = i3;
        this.designatedCorner = view;
        this.contentDescription = str;
        this.statusBarPaddingLeft = i4;
        this.statusBarPaddingRight = i5;
        this.stableInsetLeft = i6;
        this.stableInsetRight = i7;
    }

    public /* synthetic */ ViewState(boolean z, boolean z2, boolean z3, boolean z4, Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z5, int i, int i2, int i3, View view, String str, int i4, int i5, int i6, int i7, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        this((i8 & 1) != 0 ? false : z, (i8 & 2) != 0 ? false : z2, (i8 & 4) != 0 ? false : z3, (i8 & 8) != 0 ? false : z4, (i8 & 16) != 0 ? null : rect, (i8 & 32) != 0 ? null : rect2, (i8 & 64) != 0 ? null : rect3, (i8 & 128) != 0 ? null : rect4, (i8 & 256) != 0 ? false : z5, (i8 & 512) != 0 ? 0 : i, (i8 & 1024) != 0 ? 0 : i2, (i8 & 2048) != 0 ? -1 : i3, (i8 & 4096) != 0 ? null : view, (i8 & 8192) == 0 ? str : null, (i8 & 16384) != 0 ? 10 : i4, (i8 & 32768) == 0 ? i5 : 10, (i8 & 65536) != 0 ? 0 : i6, (i8 & 131072) != 0 ? 0 : i7);
    }
}
