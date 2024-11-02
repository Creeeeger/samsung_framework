package com.android.systemui.common.shared.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TintedIcon {
    public final Icon icon;
    public final Integer tint;

    public TintedIcon(Icon icon, Integer num) {
        this.icon = icon;
        this.tint = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TintedIcon)) {
            return false;
        }
        TintedIcon tintedIcon = (TintedIcon) obj;
        if (Intrinsics.areEqual(this.icon, tintedIcon.icon) && Intrinsics.areEqual(this.tint, tintedIcon.tint)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.icon.hashCode() * 31;
        Integer num = this.tint;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "TintedIcon(icon=" + this.icon + ", tint=" + this.tint + ")";
    }
}
