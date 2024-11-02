package androidx.interpolator.view.animation;

import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LookupTableInterpolator {
    private LookupTableInterpolator() {
    }

    public static float interpolate(float f, float f2, float[] fArr) {
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) ((fArr.length - 1) * f2), fArr.length - 2);
        float f3 = (f2 - (min * f)) / f;
        float f4 = fArr[min];
        return DependencyGraph$$ExternalSyntheticOutline0.m(fArr[min + 1], f4, f3, f4);
    }
}
