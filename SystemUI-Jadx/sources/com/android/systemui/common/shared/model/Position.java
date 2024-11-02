package com.android.systemui.common.shared.model;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Position {
    public final int x;
    public final int y;

    public Position(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Position)) {
            return false;
        }
        Position position = (Position) obj;
        if (this.x == position.x && this.y == position.y) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.y) + (Integer.hashCode(this.x) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Position(x=");
        sb.append(this.x);
        sb.append(", y=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.y, ")");
    }
}
