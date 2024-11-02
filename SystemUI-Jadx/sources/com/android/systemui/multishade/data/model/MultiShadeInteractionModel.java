package com.android.systemui.multishade.data.model;

import com.android.systemui.multishade.shared.model.ShadeId;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MultiShadeInteractionModel {
    public final boolean isProxied;
    public final ShadeId shadeId;

    public MultiShadeInteractionModel(ShadeId shadeId, boolean z) {
        this.shadeId = shadeId;
        this.isProxied = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MultiShadeInteractionModel)) {
            return false;
        }
        MultiShadeInteractionModel multiShadeInteractionModel = (MultiShadeInteractionModel) obj;
        if (this.shadeId == multiShadeInteractionModel.shadeId && this.isProxied == multiShadeInteractionModel.isProxied) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = this.shadeId.hashCode() * 31;
        boolean z = this.isProxied;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "MultiShadeInteractionModel(shadeId=" + this.shadeId + ", isProxied=" + this.isProxied + ")";
    }
}
