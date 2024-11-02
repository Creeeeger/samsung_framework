package androidx.core.animation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FloatEvaluator implements TypeEvaluator {
    public static final FloatEvaluator sInstance = new FloatEvaluator();

    private FloatEvaluator() {
    }

    @Override // androidx.core.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        float floatValue = ((Float) obj).floatValue();
        return Float.valueOf(((((Float) obj2).floatValue() - floatValue) * f) + floatValue);
    }
}
