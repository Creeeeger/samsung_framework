package androidx.core.animation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AnticipateOvershootInterpolator implements Interpolator {
    public final float mTension;

    public AnticipateOvershootInterpolator() {
        this.mTension = 3.0f;
    }

    @Override // androidx.core.animation.Interpolator
    public final float getInterpolation(float f) {
        float f2 = this.mTension;
        if (f < 0.5f) {
            float f3 = f * 2.0f;
            return (((1.0f + f2) * f3) - f2) * f3 * f3 * 0.5f;
        }
        float f4 = (f * 2.0f) - 2.0f;
        return (((((1.0f + f2) * f4) + f2) * f4 * f4) + 2.0f) * 0.5f;
    }

    public AnticipateOvershootInterpolator(float f) {
        this.mTension = f * 1.5f;
    }

    public AnticipateOvershootInterpolator(float f, float f2) {
        this.mTension = f * f2;
    }

    public AnticipateOvershootInterpolator(Context context, AttributeSet attributeSet) {
        this(context.getResources(), context.getTheme(), attributeSet);
    }

    public AnticipateOvershootInterpolator(Resources resources, Resources.Theme theme, AttributeSet attributeSet) {
        TypedArray obtainAttributes;
        int[] iArr = AndroidResources.STYLEABLE_ANTICIPATEOVERSHOOT_INTERPOLATOR;
        if (theme != null) {
            obtainAttributes = theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        } else {
            obtainAttributes = resources.obtainAttributes(attributeSet, iArr);
        }
        this.mTension = obtainAttributes.getFloat(1, 1.5f) * obtainAttributes.getFloat(0, 2.0f);
        obtainAttributes.recycle();
    }
}
