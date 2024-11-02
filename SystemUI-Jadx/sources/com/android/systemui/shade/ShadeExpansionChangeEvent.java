package com.android.systemui.shade;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeExpansionChangeEvent {
    public final float dragDownPxAmount;
    public final boolean expanded;
    public final float fraction;
    public final boolean tracking;

    public ShadeExpansionChangeEvent(float f, boolean z, boolean z2, float f2) {
        this.fraction = f;
        this.expanded = z;
        this.tracking = z2;
        this.dragDownPxAmount = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadeExpansionChangeEvent)) {
            return false;
        }
        ShadeExpansionChangeEvent shadeExpansionChangeEvent = (ShadeExpansionChangeEvent) obj;
        if (Float.compare(this.fraction, shadeExpansionChangeEvent.fraction) == 0 && this.expanded == shadeExpansionChangeEvent.expanded && this.tracking == shadeExpansionChangeEvent.tracking && Float.compare(this.dragDownPxAmount, shadeExpansionChangeEvent.dragDownPxAmount) == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = Float.hashCode(this.fraction) * 31;
        int i = 1;
        boolean z = this.expanded;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (hashCode + i2) * 31;
        boolean z2 = this.tracking;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return Float.hashCode(this.dragDownPxAmount) + ((i3 + i) * 31);
    }

    public final String toString() {
        return "ShadeExpansionChangeEvent(fraction=" + this.fraction + ", expanded=" + this.expanded + ", tracking=" + this.tracking + ", dragDownPxAmount=" + this.dragDownPxAmount + ")";
    }
}
