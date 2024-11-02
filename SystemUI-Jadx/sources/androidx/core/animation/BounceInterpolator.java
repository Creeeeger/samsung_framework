package androidx.core.animation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BounceInterpolator implements Interpolator {
    @Override // androidx.core.animation.Interpolator
    public final float getInterpolation(float f) {
        float f2;
        float f3;
        float f4 = f * 1.1226f;
        if (f4 < 0.3535f) {
            return f4 * f4 * 8.0f;
        }
        if (f4 < 0.7408f) {
            float f5 = f4 - 0.54719f;
            f2 = f5 * f5 * 8.0f;
            f3 = 0.7f;
        } else if (f4 < 0.9644f) {
            float f6 = f4 - 0.8526f;
            f2 = f6 * f6 * 8.0f;
            f3 = 0.9f;
        } else {
            float f7 = f4 - 1.0435f;
            f2 = f7 * f7 * 8.0f;
            f3 = 0.95f;
        }
        return f2 + f3;
    }
}
