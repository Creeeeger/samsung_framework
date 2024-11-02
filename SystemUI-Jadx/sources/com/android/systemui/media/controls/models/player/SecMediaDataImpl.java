package com.android.systemui.media.controls.models.player;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecMediaDataImpl {
    public final int uid;

    public SecMediaDataImpl(int i) {
        this.uid = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SecMediaDataImpl)) {
            return false;
        }
        if (this.uid == ((SecMediaDataImpl) obj).uid) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.uid);
    }

    public final String toString() {
        return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("SecMediaDataImpl(uid="), this.uid, ")");
    }
}
