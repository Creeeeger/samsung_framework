package com.android.systemui.statusbar.phone;

import android.view.animation.Interpolator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BounceInterpolator implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2 = f * 1.1f;
        if (f2 < 0.36363637f) {
            return 7.5625f * f2 * f2;
        }
        if (f2 < 0.72727275f) {
            float f3 = f2 - 0.54545456f;
            return (7.5625f * f3 * f3) + 0.75f;
        }
        if (f2 < 0.90909094f) {
            float f4 = f2 - 0.8181818f;
            return (7.5625f * f4 * f4) + 0.9375f;
        }
        return 1.0f;
    }
}
