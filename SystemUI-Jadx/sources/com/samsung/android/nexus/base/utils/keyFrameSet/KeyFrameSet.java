package com.samsung.android.nexus.base.utils.keyFrameSet;

import android.view.animation.Interpolator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class KeyFrameSet {
    public final String TAG = getClass().getSimpleName();
    public float[] fractionPositions;
    public Interpolator interpolator;
    public Interpolator[] interpolators;
    public int length;

    public KeyFrameSet() {
    }

    public final void init(float[] fArr, Interpolator interpolator, Interpolator[] interpolatorArr) {
        int length = fArr.length;
        float f = fArr[0];
        int i = 1;
        while (i < length) {
            float f2 = fArr[i];
            if (f <= f2) {
                i++;
                f = f2;
            } else {
                throw new IllegalArgumentException("positions are MUST Ascending");
            }
        }
        int length2 = fArr.length;
        this.length = length2;
        if (length2 >= 2) {
            float[] fArr2 = new float[length2];
            this.fractionPositions = fArr2;
            System.arraycopy(fArr, 0, fArr2, 0, length2);
            if (interpolatorArr != null) {
                if (interpolatorArr.length == this.length - 1) {
                    int length3 = interpolatorArr.length;
                    Interpolator[] interpolatorArr2 = new Interpolator[length3];
                    this.interpolators = interpolatorArr2;
                    System.arraycopy(interpolatorArr, 0, interpolatorArr2, 0, length3);
                } else {
                    throw new IllegalArgumentException("interpolator length MUST be >= 2");
                }
            }
            this.interpolator = interpolator;
            return;
        }
        throw new IllegalArgumentException("position length MUST be >= 2");
    }

    public KeyFrameSet(KeyFrameSet keyFrameSet) {
        int i = keyFrameSet.length;
        this.length = i;
        float[] fArr = new float[i];
        this.fractionPositions = fArr;
        System.arraycopy(keyFrameSet.fractionPositions, 0, fArr, 0, i);
        this.interpolator = keyFrameSet.interpolator;
        Interpolator[] interpolatorArr = keyFrameSet.interpolators;
        if (interpolatorArr != null) {
            Interpolator[] interpolatorArr2 = new Interpolator[interpolatorArr.length];
            this.interpolators = interpolatorArr2;
            System.arraycopy(interpolatorArr2, 0, interpolatorArr2, 0, interpolatorArr2.length);
            return;
        }
        this.interpolators = null;
    }

    public KeyFrameSet(float[] fArr) {
        init(fArr, null, null);
    }

    public KeyFrameSet(float[] fArr, Interpolator interpolator) {
        init(fArr, interpolator, null);
    }

    public KeyFrameSet(float[] fArr, Interpolator[] interpolatorArr) {
        init(fArr, null, interpolatorArr);
    }
}
