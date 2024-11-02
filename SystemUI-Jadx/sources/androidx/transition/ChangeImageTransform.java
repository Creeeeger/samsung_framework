package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import androidx.transition.MatrixUtils;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ChangeImageTransform extends Transition {
    public static final String[] sTransitionProperties = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};
    public static final AnonymousClass1 NULL_MATRIX_EVALUATOR = new TypeEvaluator() { // from class: androidx.transition.ChangeImageTransform.1
        @Override // android.animation.TypeEvaluator
        public final /* bridge */ /* synthetic */ Object evaluate(float f, Object obj, Object obj2) {
            return null;
        }
    };
    public static final AnonymousClass2 ANIMATED_TRANSFORM_PROPERTY = new AnonymousClass2(Matrix.class, "animatedTransform");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.transition.ChangeImageTransform$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends Property {
        public AnonymousClass2(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            ((ImageView) obj).animateTransform((Matrix) obj2);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.transition.ChangeImageTransform$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            $SwitchMap$android$widget$ImageView$ScaleType = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public ChangeImageTransform() {
    }

    @Override // androidx.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public final void captureValues(TransitionValues transitionValues) {
        Matrix matrix;
        View view = transitionValues.view;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() == null) {
                return;
            }
            HashMap hashMap = (HashMap) transitionValues.values;
            hashMap.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            Drawable drawable = imageView.getDrawable();
            if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
                int i = AnonymousClass3.$SwitchMap$android$widget$ImageView$ScaleType[imageView.getScaleType().ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        matrix = new Matrix(imageView.getImageMatrix());
                    } else {
                        Drawable drawable2 = imageView.getDrawable();
                        int intrinsicWidth = drawable2.getIntrinsicWidth();
                        float width = imageView.getWidth();
                        float f = intrinsicWidth;
                        int intrinsicHeight = drawable2.getIntrinsicHeight();
                        float height = imageView.getHeight();
                        float f2 = intrinsicHeight;
                        float max = Math.max(width / f, height / f2);
                        int round = Math.round((width - (f * max)) / 2.0f);
                        int round2 = Math.round((height - (f2 * max)) / 2.0f);
                        Matrix matrix2 = new Matrix();
                        matrix2.postScale(max, max);
                        matrix2.postTranslate(round, round2);
                        matrix = matrix2;
                    }
                } else {
                    Drawable drawable3 = imageView.getDrawable();
                    Matrix matrix3 = new Matrix();
                    matrix3.postScale(imageView.getWidth() / drawable3.getIntrinsicWidth(), imageView.getHeight() / drawable3.getIntrinsicHeight());
                    matrix = matrix3;
                }
            } else {
                matrix = new Matrix(imageView.getImageMatrix());
            }
            hashMap.put("android:changeImageTransform:matrix", matrix);
        }
    }

    @Override // androidx.transition.Transition
    public final Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        boolean z;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        HashMap hashMap = (HashMap) transitionValues.values;
        Rect rect = (Rect) hashMap.get("android:changeImageTransform:bounds");
        HashMap hashMap2 = (HashMap) transitionValues2.values;
        Rect rect2 = (Rect) hashMap2.get("android:changeImageTransform:bounds");
        if (rect == null || rect2 == null) {
            return null;
        }
        Matrix matrix = (Matrix) hashMap.get("android:changeImageTransform:matrix");
        Matrix matrix2 = (Matrix) hashMap2.get("android:changeImageTransform:matrix");
        if ((matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2))) {
            z = true;
        } else {
            z = false;
        }
        if (rect.equals(rect2) && z) {
            return null;
        }
        ImageView imageView = (ImageView) transitionValues2.view;
        Drawable drawable = imageView.getDrawable();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            if (matrix == null) {
                matrix = MatrixUtils.IDENTITY_MATRIX;
            }
            if (matrix2 == null) {
                matrix2 = MatrixUtils.IDENTITY_MATRIX;
            }
            AnonymousClass2 anonymousClass2 = ANIMATED_TRANSFORM_PROPERTY;
            anonymousClass2.set(imageView, matrix);
            return ObjectAnimator.ofObject(imageView, anonymousClass2, new TypeEvaluator() { // from class: androidx.transition.TransitionUtils$MatrixEvaluator
                public final float[] mTempStartValues = new float[9];
                public final float[] mTempEndValues = new float[9];
                public final Matrix mTempMatrix = new Matrix();

                @Override // android.animation.TypeEvaluator
                public final Object evaluate(float f, Object obj, Object obj2) {
                    ((Matrix) obj).getValues(this.mTempStartValues);
                    ((Matrix) obj2).getValues(this.mTempEndValues);
                    for (int i = 0; i < 9; i++) {
                        float[] fArr = this.mTempEndValues;
                        float f2 = fArr[i];
                        float f3 = this.mTempStartValues[i];
                        fArr[i] = DependencyGraph$$ExternalSyntheticOutline0.m(f2, f3, f, f3);
                    }
                    this.mTempMatrix.setValues(this.mTempEndValues);
                    return this.mTempMatrix;
                }
            }, matrix, matrix2);
        }
        AnonymousClass2 anonymousClass22 = ANIMATED_TRANSFORM_PROPERTY;
        AnonymousClass1 anonymousClass1 = NULL_MATRIX_EVALUATOR;
        MatrixUtils.AnonymousClass1 anonymousClass12 = MatrixUtils.IDENTITY_MATRIX;
        return ObjectAnimator.ofObject(imageView, anonymousClass22, anonymousClass1, anonymousClass12, anonymousClass12);
    }

    @Override // androidx.transition.Transition
    public final String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
