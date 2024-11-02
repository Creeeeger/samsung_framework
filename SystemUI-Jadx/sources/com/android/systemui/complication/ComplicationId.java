package com.android.systemui.complication;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComplicationId {
    public final int mId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Factory {
        public int mNextId;
    }

    public /* synthetic */ ComplicationId(int i, int i2) {
        this(i);
    }

    public final String toString() {
        return ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder("ComplicationId{mId="), this.mId, "}");
    }

    private ComplicationId(int i) {
        this.mId = i;
    }
}
