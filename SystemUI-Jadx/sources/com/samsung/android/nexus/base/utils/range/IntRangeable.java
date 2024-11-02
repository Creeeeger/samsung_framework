package com.samsung.android.nexus.base.utils.range;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class IntRangeable extends Rangeable {
    public int mDelta;
    public int mMax;
    public int mMin;

    public IntRangeable(int i) {
        this.mMin = i;
        this.mMax = i;
        onRangeUpdated();
    }

    public final Object clone() {
        return new IntRangeable(this);
    }

    public final void onRangeUpdated() {
        boolean z;
        int i = this.mMax;
        int i2 = this.mMin;
        this.mDelta = i - i2;
        if (i == i2) {
            z = true;
        } else {
            z = false;
        }
        this.mIsSingleValue = z;
    }

    public IntRangeable(int i, int i2) {
        this.mMin = i;
        this.mMax = i2;
        onRangeUpdated();
    }

    public IntRangeable(IntRangeable intRangeable) {
        this.mMin = intRangeable.mMin;
        this.mMax = intRangeable.mMax;
        onRangeUpdated();
    }
}
