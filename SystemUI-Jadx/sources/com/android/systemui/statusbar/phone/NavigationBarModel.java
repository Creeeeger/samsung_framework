package com.android.systemui.statusbar.phone;

import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NavigationBarModel {
    public final boolean directReplying;
    public final boolean forceDarkForScrim;
    public final boolean hasLightNavigationBarFlag;
    public final boolean isLightOpaque;
    public final String logText;
    public final boolean navbarColorManagedByIme;
    public final String packageName;
    public final boolean panelHasWhiteBg;
    public final boolean qsCustomizing;

    public NavigationBarModel(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str2) {
        this.logText = str;
        this.isLightOpaque = z;
        this.hasLightNavigationBarFlag = z2;
        this.directReplying = z3;
        this.navbarColorManagedByIme = z4;
        this.forceDarkForScrim = z5;
        this.qsCustomizing = z6;
        this.panelHasWhiteBg = z7;
        this.packageName = str2;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof NavigationBarModel) && Intrinsics.areEqual(((NavigationBarModel) obj).logText, this.logText)) {
            return true;
        }
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = this.logText.hashCode() * 31;
        int i = 1;
        boolean z = this.isLightOpaque;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (hashCode + i2) * 31;
        boolean z2 = this.hasLightNavigationBarFlag;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.directReplying;
        int i6 = z3;
        if (z3 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        boolean z4 = this.navbarColorManagedByIme;
        int i8 = z4;
        if (z4 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean z5 = this.forceDarkForScrim;
        int i10 = z5;
        if (z5 != 0) {
            i10 = 1;
        }
        int i11 = (i9 + i10) * 31;
        boolean z6 = this.qsCustomizing;
        int i12 = z6;
        if (z6 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        boolean z7 = this.panelHasWhiteBg;
        if (!z7) {
            i = z7 ? 1 : 0;
        }
        return this.packageName.hashCode() + ((i13 + i) * 31);
    }

    public final String toString() {
        String str = this.packageName;
        if (StringsKt__StringsKt.contains(str, "com.att", false)) {
            str = "";
        }
        return FragmentTransaction$$ExternalSyntheticOutline0.m(new StringBuilder("("), this.logText, ") ", "isLightOpaque:" + this.isLightOpaque + ", hasLightNavigationBarFlag:" + this.hasLightNavigationBarFlag + ", packageName:" + str + ", DirectReplying:" + this.directReplying + ", NavBarColorMangedByIme:" + this.navbarColorManagedByIme + ", ForceDarkForScrim:" + this.forceDarkForScrim + ", QsCustomizing:" + this.qsCustomizing + ", PanelHasWhiteBg:" + this.panelHasWhiteBg);
    }
}
