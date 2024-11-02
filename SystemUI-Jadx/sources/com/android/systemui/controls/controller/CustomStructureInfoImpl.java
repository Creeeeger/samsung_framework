package com.android.systemui.controls.controller;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomStructureInfoImpl {
    public boolean active;

    public CustomStructureInfoImpl(boolean z) {
        this.active = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CustomStructureInfoImpl) && this.active == ((CustomStructureInfoImpl) obj).active) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        boolean z = this.active;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public final String toString() {
        return "CustomStructureInfoImpl(active=" + this.active + ")";
    }
}
