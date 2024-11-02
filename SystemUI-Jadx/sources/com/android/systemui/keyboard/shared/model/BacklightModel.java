package com.android.systemui.keyboard.shared.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BacklightModel {
    public final int level;
    public final int maxLevel;

    public BacklightModel(int i, int i2) {
        this.level = i;
        this.maxLevel = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BacklightModel)) {
            return false;
        }
        BacklightModel backlightModel = (BacklightModel) obj;
        if (this.level == backlightModel.level && this.maxLevel == backlightModel.maxLevel) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.maxLevel) + (Integer.hashCode(this.level) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BacklightModel(level=");
        sb.append(this.level);
        sb.append(", maxLevel=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.maxLevel, ")");
    }
}
