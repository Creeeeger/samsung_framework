package androidx.core.animation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class IntEvaluator implements TypeEvaluator {
    public static final IntEvaluator sInstance = new IntEvaluator();

    private IntEvaluator() {
    }

    @Override // androidx.core.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        return Integer.valueOf((int) ((f * (((Integer) obj2).intValue() - r0)) + ((Integer) obj).intValue()));
    }
}
