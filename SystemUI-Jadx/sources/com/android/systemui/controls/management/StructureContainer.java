package com.android.systemui.controls.management;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StructureContainer {
    public final ControlsModel model;
    public final CharSequence structureName;

    public StructureContainer(CharSequence charSequence, ControlsModel controlsModel) {
        this.structureName = charSequence;
        this.model = controlsModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StructureContainer)) {
            return false;
        }
        StructureContainer structureContainer = (StructureContainer) obj;
        if (Intrinsics.areEqual(this.structureName, structureContainer.structureName) && Intrinsics.areEqual(this.model, structureContainer.model)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.model.hashCode() + (this.structureName.hashCode() * 31);
    }

    public final String toString() {
        return "StructureContainer(structureName=" + ((Object) this.structureName) + ", model=" + this.model + ")";
    }
}
