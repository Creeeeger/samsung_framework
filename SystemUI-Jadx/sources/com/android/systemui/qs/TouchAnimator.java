package com.android.systemui.qs;

import android.util.FloatProperty;
import android.util.MathUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TouchAnimator {
    public static final AnonymousClass1 POSITION = new FloatProperty("position") { // from class: com.android.systemui.qs.TouchAnimator.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((TouchAnimator) obj).mLastT);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f) {
            ((TouchAnimator) obj).setPosition(f);
        }
    };
    public final Interpolator mInterpolator;
    public final KeyframeSet[] mKeyframeSets;
    public float mLastT;
    public final Listener mListener;
    public final float mSpan;
    public final float mStartDelay;
    public final Object[] mTargets;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Builder {
        public float mEndDelay;
        public Interpolator mInterpolator;
        public Listener mListener;
        public float mStartDelay;
        public final List mTargets = new ArrayList();
        public final List mValues = new ArrayList();

        public final void addFloat(Object obj, String str, float... fArr) {
            Property of;
            Class cls = Float.TYPE;
            if (obj instanceof View) {
                char c = 65535;
                switch (str.hashCode()) {
                    case -1225497657:
                        if (str.equals("translationX")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1225497656:
                        if (str.equals("translationY")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1225497655:
                        if (str.equals("translationZ")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -908189618:
                        if (str.equals("scaleX")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -908189617:
                        if (str.equals("scaleY")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -40300674:
                        if (str.equals("rotation")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 120:
                        if (str.equals("x")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 121:
                        if (str.equals("y")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 92909918:
                        if (str.equals("alpha")) {
                            c = '\b';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        of = View.TRANSLATION_X;
                        break;
                    case 1:
                        of = View.TRANSLATION_Y;
                        break;
                    case 2:
                        of = View.TRANSLATION_Z;
                        break;
                    case 3:
                        of = View.SCALE_X;
                        break;
                    case 4:
                        of = View.SCALE_Y;
                        break;
                    case 5:
                        of = View.ROTATION;
                        break;
                    case 6:
                        of = View.X;
                        break;
                    case 7:
                        of = View.Y;
                        break;
                    case '\b':
                        of = View.ALPHA;
                        break;
                }
                FloatKeyframeSet floatKeyframeSet = new FloatKeyframeSet(of, fArr);
                ((ArrayList) this.mTargets).add(obj);
                ((ArrayList) this.mValues).add(floatKeyframeSet);
            }
            if ((obj instanceof TouchAnimator) && "position".equals(str)) {
                of = TouchAnimator.POSITION;
            } else {
                of = Property.of(obj.getClass(), cls, str);
            }
            FloatKeyframeSet floatKeyframeSet2 = new FloatKeyframeSet(of, fArr);
            ((ArrayList) this.mTargets).add(obj);
            ((ArrayList) this.mValues).add(floatKeyframeSet2);
        }

        public final TouchAnimator build() {
            ArrayList arrayList = (ArrayList) this.mTargets;
            Object[] array = arrayList.toArray(new Object[arrayList.size()]);
            ArrayList arrayList2 = (ArrayList) this.mValues;
            return new TouchAnimator(array, (KeyframeSet[]) arrayList2.toArray(new KeyframeSet[arrayList2.size()]), this.mStartDelay, this.mEndDelay, this.mInterpolator, this.mListener, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FloatKeyframeSet extends KeyframeSet {
        public final Property mProperty;
        public final float[] mValues;

        public FloatKeyframeSet(Property<Object, Float> property, float[] fArr) {
            super(fArr.length);
            this.mProperty = property;
            this.mValues = fArr;
        }

        @Override // com.android.systemui.qs.TouchAnimator.KeyframeSet
        public final void interpolate(int i, float f, Object obj) {
            float[] fArr = this.mValues;
            float f2 = fArr[i - 1];
            this.mProperty.set(obj, Float.valueOf(((fArr[i] - f2) * f) + f2));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class KeyframeSet {
        public final float mFrameWidth;
        public final int mSize;

        public KeyframeSet(int i) {
            this.mSize = i;
            this.mFrameWidth = 1.0f / (i - 1);
        }

        public abstract void interpolate(int i, float f, Object obj);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Listener {
        void onAnimationAtEnd();

        void onAnimationAtStart();

        void onAnimationStarted();
    }

    public /* synthetic */ TouchAnimator(Object[] objArr, KeyframeSet[] keyframeSetArr, float f, float f2, Interpolator interpolator, Listener listener, int i) {
        this(objArr, keyframeSetArr, f, f2, interpolator, listener);
    }

    public final void setPosition(float f) {
        if (Float.isNaN(f)) {
            return;
        }
        float constrain = MathUtils.constrain((f - this.mStartDelay) / this.mSpan, 0.0f, 1.0f);
        Interpolator interpolator = this.mInterpolator;
        if (interpolator != null) {
            constrain = interpolator.getInterpolation(constrain);
        }
        float f2 = this.mLastT;
        if (constrain == f2) {
            return;
        }
        Listener listener = this.mListener;
        if (listener != null) {
            if (constrain == 1.0f) {
                listener.onAnimationAtEnd();
            } else if (constrain == 0.0f) {
                listener.onAnimationAtStart();
            } else if (f2 <= 0.0f || f2 == 1.0f) {
                listener.onAnimationStarted();
            }
            this.mLastT = constrain;
        }
        int i = 0;
        while (true) {
            Object[] objArr = this.mTargets;
            if (i < objArr.length) {
                KeyframeSet keyframeSet = this.mKeyframeSets[i];
                Object obj = objArr[i];
                float f3 = keyframeSet.mFrameWidth;
                keyframeSet.interpolate(MathUtils.constrain((int) Math.ceil(constrain / f3), 1, keyframeSet.mSize - 1), (constrain - ((r4 - 1) * f3)) / f3, obj);
                i++;
            } else {
                return;
            }
        }
    }

    private TouchAnimator(Object[] objArr, KeyframeSet[] keyframeSetArr, float f, float f2, Interpolator interpolator, Listener listener) {
        this.mLastT = -1.0f;
        this.mTargets = objArr;
        this.mKeyframeSets = keyframeSetArr;
        this.mStartDelay = f;
        this.mSpan = (1.0f - f2) - f;
        this.mInterpolator = interpolator;
        this.mListener = listener;
    }
}
