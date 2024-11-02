package com.android.systemui.multishade.shared.model;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ShadeModel {
    public final float expansion;
    public final ShadeId id;

    public ShadeModel(ShadeId shadeId, float f) {
        this.id = shadeId;
        this.expansion = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadeModel)) {
            return false;
        }
        ShadeModel shadeModel = (ShadeModel) obj;
        if (this.id == shadeModel.id && Float.compare(this.expansion, shadeModel.expansion) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.expansion) + (this.id.hashCode() * 31);
    }

    public final String toString() {
        return "ShadeModel(id=" + this.id + ", expansion=" + this.expansion + ")";
    }

    public /* synthetic */ ShadeModel(ShadeId shadeId, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(shadeId, (i & 2) != 0 ? 0.0f : f);
    }
}
