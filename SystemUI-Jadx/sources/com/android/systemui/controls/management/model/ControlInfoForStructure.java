package com.android.systemui.controls.management.model;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlInfoForStructure {
    public final String controlId;
    public final boolean favorite;
    public final CharSequence structureName;

    public ControlInfoForStructure(CharSequence charSequence, String str, boolean z) {
        this.structureName = charSequence;
        this.controlId = str;
        this.favorite = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlInfoForStructure)) {
            return false;
        }
        ControlInfoForStructure controlInfoForStructure = (ControlInfoForStructure) obj;
        if (Intrinsics.areEqual(this.structureName, controlInfoForStructure.structureName) && Intrinsics.areEqual(this.controlId, controlInfoForStructure.controlId) && this.favorite == controlInfoForStructure.favorite) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.controlId, this.structureName.hashCode() * 31, 31);
        boolean z = this.favorite;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ControlInfoForStructure(structureName=");
        sb.append((Object) this.structureName);
        sb.append(", controlId=");
        sb.append(this.controlId);
        sb.append(", favorite=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.favorite, ")");
    }
}
