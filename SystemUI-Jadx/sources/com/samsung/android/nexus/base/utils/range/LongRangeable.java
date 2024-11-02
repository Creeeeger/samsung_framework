package com.samsung.android.nexus.base.utils.range;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LongRangeable extends Rangeable {
    public long mDelta;
    public long mMax;
    public long mMin;

    public LongRangeable(long j) {
        this.mMin = j;
        this.mMax = j;
        onRangeUpdated();
    }

    public final Object clone() {
        return new LongRangeable(this);
    }

    public final long get() {
        if (this.mIsSingleValue) {
            return this.mMin;
        }
        return this.mMin + (Rangeable.sRandom.get() * ((float) this.mDelta));
    }

    public final void onRangeUpdated() {
        boolean z;
        long j = this.mMax;
        long j2 = this.mMin;
        this.mDelta = j - j2;
        if (j == j2) {
            z = true;
        } else {
            z = false;
        }
        this.mIsSingleValue = z;
    }

    public final String toString() {
        return "LongRangeable{mMin=" + this.mMin + ", mMax=" + this.mMax + ", mDelta=" + this.mDelta + '}';
    }

    public LongRangeable(long j, long j2) {
        this.mMin = j;
        this.mMax = j2;
        onRangeUpdated();
    }

    public LongRangeable(LongRangeable longRangeable) {
        this.mMin = longRangeable.mMin;
        this.mMax = longRangeable.mMax;
        onRangeUpdated();
    }
}
