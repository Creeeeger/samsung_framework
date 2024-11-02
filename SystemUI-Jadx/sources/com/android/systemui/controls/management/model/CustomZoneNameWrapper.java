package com.android.systemui.controls.management.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomZoneNameWrapper extends CustomElementWrapper {
    public final CharSequence zoneName;

    public CustomZoneNameWrapper(CharSequence charSequence) {
        super(null);
        this.zoneName = charSequence;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CustomZoneNameWrapper) && Intrinsics.areEqual(this.zoneName, ((CustomZoneNameWrapper) obj).zoneName)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.zoneName.hashCode();
    }

    public final String toString() {
        return "CustomZoneNameWrapper(zoneName=" + ((Object) this.zoneName) + ")";
    }
}
