package com.samsung.android.nexus.base.utils.keyFrameSet;

import android.view.animation.Interpolator;
import com.samsung.android.nexus.base.utils.Log;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class FloatKeyFrameSet extends KeyFrameSet {
    public float[] mDeltas;
    public float[] mValues;

    public FloatKeyFrameSet() {
    }

    public final Object clone() {
        return new FloatKeyFrameSet(this);
    }

    public final float get(float f) {
        float f2;
        Interpolator[] interpolatorArr;
        int i = -1;
        for (int i2 = 0; i2 < this.length - 1 && this.fractionPositions[i2] <= f; i2++) {
            i = i2;
        }
        if (i < 0) {
            Log.e(this.TAG, "getSectionIndex: -1 : " + f + " " + this.fractionPositions[0]);
        }
        float f3 = this.mValues[i];
        float f4 = this.mDeltas[i];
        if (i < 0) {
            f2 = 0.0f;
        } else if (i >= this.length - 1) {
            f2 = 1.0f;
        } else {
            float[] fArr = this.fractionPositions;
            float f5 = fArr[i];
            float f6 = (f - f5) / (fArr[i + 1] - f5);
            Interpolator interpolator = this.interpolator;
            if (interpolator == null && (interpolatorArr = this.interpolators) != null) {
                interpolator = interpolatorArr[i];
            }
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f6);
            } else {
                f2 = f6;
            }
        }
        return (f4 * f2) + f3;
    }

    public final void init(float[] fArr) {
        int i = this.length - 1;
        this.mValues = new float[i];
        this.mDeltas = new float[i];
        int i2 = 0;
        float f = fArr[0];
        while (i2 < i) {
            int i3 = i2 + 1;
            float f2 = fArr[i3];
            this.mValues[i2] = f;
            this.mDeltas[i2] = f2 - f;
            i2 = i3;
            f = f2;
        }
    }

    public final String toString() {
        return "FloatKeyFrameSet{mValues=" + Arrays.toString(this.mValues) + ", mDeltas=" + Arrays.toString(this.mDeltas) + ", length=" + this.length + ", fractionPositions=" + Arrays.toString(this.fractionPositions) + ", interpolators=" + Arrays.toString(this.interpolators) + ", interpolator=" + this.interpolator + '}';
    }

    public FloatKeyFrameSet(FloatKeyFrameSet floatKeyFrameSet) {
        super(floatKeyFrameSet);
        if (floatKeyFrameSet == null) {
            return;
        }
        int length = floatKeyFrameSet.mValues.length;
        float[] fArr = new float[length];
        this.mValues = fArr;
        this.mDeltas = new float[floatKeyFrameSet.mDeltas.length];
        System.arraycopy(floatKeyFrameSet.mValues, 0, fArr, 0, length);
        float[] fArr2 = floatKeyFrameSet.mDeltas;
        float[] fArr3 = this.mDeltas;
        System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
    }

    public FloatKeyFrameSet(float[] fArr, float[] fArr2) {
        super(fArr);
        init(fArr2);
    }

    public FloatKeyFrameSet(float[] fArr, Interpolator interpolator, float[] fArr2) {
        super(fArr, interpolator);
        init(fArr2);
    }

    public FloatKeyFrameSet(float[] fArr, Interpolator[] interpolatorArr, float[] fArr2) {
        super(fArr, interpolatorArr);
        init(fArr2);
    }
}
