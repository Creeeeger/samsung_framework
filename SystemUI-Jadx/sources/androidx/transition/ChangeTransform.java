package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import com.android.systemui.R;
import java.util.HashMap;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ChangeTransform extends Transition {
    public final boolean mReparent;
    public final Matrix mTempMatrix;
    public final boolean mUseOverlay;
    public static final String[] sTransitionProperties = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};
    public static final AnonymousClass1 NON_TRANSLATIONS_PROPERTY = new Property(float[].class, "nonTranslations") { // from class: androidx.transition.ChangeTransform.1
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            PathAnimatorMatrix pathAnimatorMatrix = (PathAnimatorMatrix) obj;
            float[] fArr = (float[]) obj2;
            pathAnimatorMatrix.getClass();
            System.arraycopy(fArr, 0, pathAnimatorMatrix.mValues, 0, fArr.length);
            pathAnimatorMatrix.setAnimationMatrix();
        }
    };
    public static final AnonymousClass2 TRANSLATIONS_PROPERTY = new Property(PointF.class, "translations") { // from class: androidx.transition.ChangeTransform.2
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            PathAnimatorMatrix pathAnimatorMatrix = (PathAnimatorMatrix) obj;
            PointF pointF = (PointF) obj2;
            pathAnimatorMatrix.getClass();
            pathAnimatorMatrix.mTranslationX = pointF.x;
            pathAnimatorMatrix.mTranslationY = pointF.y;
            pathAnimatorMatrix.setAnimationMatrix();
        }
    };
    public static final boolean SUPPORTS_VIEW_REMOVAL_SUPPRESSION = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class GhostListener extends TransitionListenerAdapter {
        public final GhostView mGhostView;
        public final View mView;

        public GhostListener(View view, GhostView ghostView) {
            this.mView = view;
            this.mGhostView = ghostView;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            int i = GhostViewPort.$r8$clinit;
            View view = this.mView;
            GhostViewPort ghostViewPort = (GhostViewPort) view.getTag(R.id.ghost_view);
            if (ghostViewPort != null) {
                int i2 = ghostViewPort.mReferences - 1;
                ghostViewPort.mReferences = i2;
                if (i2 <= 0) {
                    ((GhostViewHolder) ghostViewPort.getParent()).removeView(ghostViewPort);
                }
            }
            view.setTag(R.id.transition_transform, null);
            view.setTag(R.id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void onTransitionPause() {
            this.mGhostView.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void onTransitionResume() {
            this.mGhostView.setVisibility(0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PathAnimatorMatrix {
        public final Matrix mMatrix = new Matrix();
        public float mTranslationX;
        public float mTranslationY;
        public final float[] mValues;
        public final View mView;

        public PathAnimatorMatrix(View view, float[] fArr) {
            this.mView = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.mValues = fArr2;
            this.mTranslationX = fArr2[2];
            this.mTranslationY = fArr2[5];
            setAnimationMatrix();
        }

        public final void setAnimationMatrix() {
            float f = this.mTranslationX;
            float[] fArr = this.mValues;
            fArr[2] = f;
            fArr[5] = this.mTranslationY;
            Matrix matrix = this.mMatrix;
            matrix.setValues(fArr);
            ViewUtils.IMPL.getClass();
            this.mView.setAnimationMatrix(matrix);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Transforms {
        public final float mRotationX;
        public final float mRotationY;
        public final float mRotationZ;
        public final float mScaleX;
        public final float mScaleY;
        public final float mTranslationX;
        public final float mTranslationY;
        public final float mTranslationZ;

        public Transforms(View view) {
            this.mTranslationX = view.getTranslationX();
            this.mTranslationY = view.getTranslationY();
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            this.mTranslationZ = ViewCompat.Api21Impl.getTranslationZ(view);
            this.mScaleX = view.getScaleX();
            this.mScaleY = view.getScaleY();
            this.mRotationX = view.getRotationX();
            this.mRotationY = view.getRotationY();
            this.mRotationZ = view.getRotation();
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Transforms)) {
                return false;
            }
            Transforms transforms = (Transforms) obj;
            if (transforms.mTranslationX != this.mTranslationX || transforms.mTranslationY != this.mTranslationY || transforms.mTranslationZ != this.mTranslationZ || transforms.mScaleX != this.mScaleX || transforms.mScaleY != this.mScaleY || transforms.mRotationX != this.mRotationX || transforms.mRotationY != this.mRotationY || transforms.mRotationZ != this.mRotationZ) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            float f = this.mTranslationX;
            int i8 = 0;
            if (f != 0.0f) {
                i = Float.floatToIntBits(f);
            } else {
                i = 0;
            }
            int i9 = i * 31;
            float f2 = this.mTranslationY;
            if (f2 != 0.0f) {
                i2 = Float.floatToIntBits(f2);
            } else {
                i2 = 0;
            }
            int i10 = (i9 + i2) * 31;
            float f3 = this.mTranslationZ;
            if (f3 != 0.0f) {
                i3 = Float.floatToIntBits(f3);
            } else {
                i3 = 0;
            }
            int i11 = (i10 + i3) * 31;
            float f4 = this.mScaleX;
            if (f4 != 0.0f) {
                i4 = Float.floatToIntBits(f4);
            } else {
                i4 = 0;
            }
            int i12 = (i11 + i4) * 31;
            float f5 = this.mScaleY;
            if (f5 != 0.0f) {
                i5 = Float.floatToIntBits(f5);
            } else {
                i5 = 0;
            }
            int i13 = (i12 + i5) * 31;
            float f6 = this.mRotationX;
            if (f6 != 0.0f) {
                i6 = Float.floatToIntBits(f6);
            } else {
                i6 = 0;
            }
            int i14 = (i13 + i6) * 31;
            float f7 = this.mRotationY;
            if (f7 != 0.0f) {
                i7 = Float.floatToIntBits(f7);
            } else {
                i7 = 0;
            }
            int i15 = (i14 + i7) * 31;
            float f8 = this.mRotationZ;
            if (f8 != 0.0f) {
                i8 = Float.floatToIntBits(f8);
            }
            return i15 + i8;
        }
    }

    public ChangeTransform() {
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
    }

    @Override // androidx.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
        if (!SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            View view = transitionValues.view;
            ((ViewGroup) view.getParent()).startViewTransition(view);
        }
    }

    public final void captureValues(TransitionValues transitionValues) {
        Matrix matrix;
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        HashMap hashMap = (HashMap) transitionValues.values;
        hashMap.put("android:changeTransform:parent", view.getParent());
        hashMap.put("android:changeTransform:transforms", new Transforms(view));
        Matrix matrix2 = view.getMatrix();
        if (matrix2 != null && !matrix2.isIdentity()) {
            matrix = new Matrix(matrix2);
        } else {
            matrix = null;
        }
        hashMap.put("android:changeTransform:matrix", matrix);
        if (this.mReparent) {
            Matrix matrix3 = new Matrix();
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            ViewUtils.IMPL.getClass();
            viewGroup.transformMatrixToGlobal(matrix3);
            matrix3.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
            hashMap.put("android:changeTransform:parentMatrix", matrix3);
            hashMap.put("android:changeTransform:intermediateMatrix", view.getTag(R.id.transition_transform));
            hashMap.put("android:changeTransform:intermediateParentMatrix", view.getTag(R.id.parent_matrix));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x029c, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0299, code lost:
    
        if (r3.size() == r14) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02a7  */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.animation.Animator createAnimator(android.view.ViewGroup r23, androidx.transition.TransitionValues r24, androidx.transition.TransitionValues r25) {
        /*
            Method dump skipped, instructions count: 791
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.createAnimator(android.view.ViewGroup, androidx.transition.TransitionValues, androidx.transition.TransitionValues):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_TRANSFORM);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.mUseOverlay = !TypedArrayUtils.hasAttribute(xmlPullParser, "reparentWithOverlay") ? true : obtainStyledAttributes.getBoolean(1, true);
        this.mReparent = TypedArrayUtils.hasAttribute(xmlPullParser, "reparent") ? obtainStyledAttributes.getBoolean(0, true) : true;
        obtainStyledAttributes.recycle();
    }
}
