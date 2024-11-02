package com.android.systemui.controls.management.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PaddingWrapper extends StructureElementWrapper {
    public final int padding;

    public PaddingWrapper(int i) {
        super(null);
        this.padding = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof PaddingWrapper) && this.padding == ((PaddingWrapper) obj).padding) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.padding);
    }

    public final String toString() {
        return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("PaddingWrapper(padding="), this.padding, ")");
    }
}
