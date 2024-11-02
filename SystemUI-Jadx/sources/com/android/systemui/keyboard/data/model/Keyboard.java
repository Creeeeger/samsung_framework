package com.android.systemui.keyboard.data.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Keyboard {
    public final int productId;
    public final int vendorId;

    public Keyboard(int i, int i2) {
        this.vendorId = i;
        this.productId = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Keyboard)) {
            return false;
        }
        Keyboard keyboard = (Keyboard) obj;
        if (this.vendorId == keyboard.vendorId && this.productId == keyboard.productId) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.productId) + (Integer.hashCode(this.vendorId) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Keyboard(vendorId=");
        sb.append(this.vendorId);
        sb.append(", productId=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.productId, ")");
    }
}
