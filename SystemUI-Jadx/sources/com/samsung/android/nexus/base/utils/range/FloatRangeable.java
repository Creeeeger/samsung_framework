package com.samsung.android.nexus.base.utils.range;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class FloatRangeable extends Rangeable {
    public float mDelta;
    public float mMax;
    public float mMin;

    public FloatRangeable(float f) {
        this.mMin = f;
        this.mMax = f;
        onRangeUpdated();
    }

    public final Object clone() {
        return new FloatRangeable(this);
    }

    public final float get() {
        if (this.mIsSingleValue) {
            return this.mMin;
        }
        return (Rangeable.sRandom.get() * this.mDelta) + this.mMin;
    }

    public final void onRangeUpdated() {
        boolean z;
        float f = this.mMax;
        float f2 = this.mMin;
        this.mDelta = f - f2;
        if (f == f2) {
            z = true;
        } else {
            z = false;
        }
        this.mIsSingleValue = z;
    }

    public final void set(FloatRangeable floatRangeable) {
        this.mMin = floatRangeable.mMin;
        this.mMax = floatRangeable.mMax;
        onRangeUpdated();
    }

    public final String toString() {
        return "FloatRangeable{mMin=" + this.mMin + ", mMax=" + this.mMax + ", mDelta=" + this.mDelta + '}';
    }

    public FloatRangeable(float f, float f2) {
        this.mMin = f;
        this.mMax = f2;
        onRangeUpdated();
    }

    public FloatRangeable(FloatRangeable floatRangeable) {
        set(floatRangeable);
    }
}
