package com.android.systemui.controls.management.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ReorderWrapper extends StructureElementWrapper {
    public final CharSequence displayName;

    public ReorderWrapper(CharSequence charSequence) {
        super(null);
        this.displayName = charSequence;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ReorderWrapper) && Intrinsics.areEqual(this.displayName, ((ReorderWrapper) obj).displayName)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.displayName.hashCode();
    }

    public final String toString() {
        return "ReorderWrapper(displayName=" + ((Object) this.displayName) + ")";
    }
}
