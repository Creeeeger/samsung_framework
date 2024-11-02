package com.android.systemui.unfold;

import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FoldStateChange {
    public final int current;
    public final long dtMillis;
    public final int previous;

    public FoldStateChange(int i, int i2, long j) {
        this.previous = i;
        this.current = i2;
        this.dtMillis = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FoldStateChange)) {
            return false;
        }
        FoldStateChange foldStateChange = (FoldStateChange) obj;
        if (this.previous == foldStateChange.previous && this.current == foldStateChange.current && this.dtMillis == foldStateChange.dtMillis) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.dtMillis) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.current, Integer.hashCode(this.previous) * 31, 31);
    }

    public final String toString() {
        return "FoldStateChange(previous=" + this.previous + ", current=" + this.current + ", dtMillis=" + this.dtMillis + ")";
    }
}
