package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.LinkedHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MotionPaths implements Comparable {
    public static final String[] names = {"position", "x", "y", "width", "height", "pathRotate"};
    public final LinkedHashMap attributes;
    public float height;
    public int mAnimateRelativeTo;
    public int mDrawPath;
    public Easing mKeyFrameEasing;
    public int mMode;
    public int mPathMotionArc;
    public float mPathRotate;
    public float mRelativeAngle;
    public MotionController mRelativeToController;
    public double[] mTempDelta;
    public double[] mTempValue;
    public float position;
    public float time;
    public float width;
    public float x;
    public float y;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    public static boolean diff(float f, float f2) {
        if (!Float.isNaN(f) && !Float.isNaN(f2)) {
            if (Math.abs(f - f2) > 1.0E-6f) {
                return true;
            }
            return false;
        }
        if (Float.isNaN(f) != Float.isNaN(f2)) {
            return true;
        }
        return false;
    }

    public static void setDpDt(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            f5 = f7;
                        }
                    } else {
                        f3 = f7;
                    }
                } else {
                    f6 = f7;
                }
            } else {
                f4 = f7;
            }
        }
        float f8 = f4 - ((0.0f * f3) / 2.0f);
        float f9 = f6 - ((0.0f * f5) / 2.0f);
        fArr[0] = MotionPaths$$ExternalSyntheticOutline0.m((f3 * 1.0f) + f8, f, (1.0f - f) * f8, 0.0f);
        fArr[1] = MotionPaths$$ExternalSyntheticOutline0.m((f5 * 1.0f) + f9, f2, (1.0f - f2) * f9, 0.0f);
    }

    public final void applyParameters(ConstraintSet.Constraint constraint) {
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        float f = constraint.propertySet.mProgress;
        this.mRelativeAngle = constraint.layout.circleAngle;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) constraint.mCustomConstraints.get(str);
            if (constraintAttribute != null) {
                int i = ConstraintAttribute.AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[constraintAttribute.mType.ordinal()];
                boolean z = true;
                if (i == 1 || i == 2 || i == 3) {
                    z = false;
                }
                if (z) {
                    this.attributes.put(str, constraintAttribute);
                }
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Float.compare(this.position, ((MotionPaths) obj).position);
    }

    public final void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.x;
        float f2 = this.y;
        float f3 = this.width;
        float f4 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 == 4) {
                            f4 = f5;
                        }
                    } else {
                        f3 = f5;
                    }
                } else {
                    f2 = f5;
                }
            } else {
                f = f5;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.getCenter(d, fArr2, new float[2]);
            float f6 = fArr2[0];
            float f7 = fArr2[1];
            double d2 = f;
            double d3 = f2;
            double sin = Math.sin(d3) * d2;
            f2 = (float) ((f7 - (Math.cos(d3) * d2)) - (f4 / 2.0f));
            f = (float) ((sin + f6) - (f3 / 2.0f));
        }
        fArr[i] = (f3 / 2.0f) + f + 0.0f;
        fArr[i + 1] = (f4 / 2.0f) + f2 + 0.0f;
    }

    public final void setBounds(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
    }

    public final void setupRelative(MotionController motionController, MotionPaths motionPaths) {
        double d = (((this.width / 2.0f) + this.x) - motionPaths.x) - (motionPaths.width / 2.0f);
        double d2 = (((this.height / 2.0f) + this.y) - motionPaths.y) - (motionPaths.height / 2.0f);
        this.mRelativeToController = motionController;
        this.x = (float) Math.hypot(d2, d);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.y = (float) (Math.atan2(d2, d) + 1.5707963267948966d);
        } else {
            this.y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    public MotionPaths(int i, int i2, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f;
        int i3;
        float min;
        float f2;
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != -1) {
            float f3 = keyPosition.mFramePosition / 100.0f;
            this.time = f3;
            this.mDrawPath = keyPosition.mDrawPath;
            this.mMode = keyPosition.mPositionType;
            float f4 = Float.isNaN(keyPosition.mPercentWidth) ? f3 : keyPosition.mPercentWidth;
            float f5 = Float.isNaN(keyPosition.mPercentHeight) ? f3 : keyPosition.mPercentHeight;
            float f6 = motionPaths2.width;
            float f7 = motionPaths.width;
            float f8 = motionPaths2.height;
            float f9 = motionPaths.height;
            this.position = this.time;
            this.width = (int) (((f6 - f7) * f4) + f7);
            this.height = (int) (((f8 - f9) * f5) + f9);
            int i4 = keyPosition.mPositionType;
            if (i4 == 1) {
                float f10 = Float.isNaN(keyPosition.mPercentX) ? f3 : keyPosition.mPercentX;
                float f11 = motionPaths2.x;
                float f12 = motionPaths.x;
                this.x = DependencyGraph$$ExternalSyntheticOutline0.m(f11, f12, f10, f12);
                f3 = Float.isNaN(keyPosition.mPercentY) ? f3 : keyPosition.mPercentY;
                float f13 = motionPaths2.y;
                float f14 = motionPaths.y;
                this.y = DependencyGraph$$ExternalSyntheticOutline0.m(f13, f14, f3, f14);
            } else if (i4 != 2) {
                float f15 = Float.isNaN(keyPosition.mPercentX) ? f3 : keyPosition.mPercentX;
                float f16 = motionPaths2.x;
                float f17 = motionPaths.x;
                this.x = DependencyGraph$$ExternalSyntheticOutline0.m(f16, f17, f15, f17);
                f3 = Float.isNaN(keyPosition.mPercentY) ? f3 : keyPosition.mPercentY;
                float f18 = motionPaths2.y;
                float f19 = motionPaths.y;
                this.y = DependencyGraph$$ExternalSyntheticOutline0.m(f18, f19, f3, f19);
            } else {
                if (Float.isNaN(keyPosition.mPercentX)) {
                    float f20 = motionPaths2.x;
                    float f21 = motionPaths.x;
                    min = DependencyGraph$$ExternalSyntheticOutline0.m(f20, f21, f3, f21);
                } else {
                    min = keyPosition.mPercentX * Math.min(f5, f4);
                }
                this.x = min;
                if (Float.isNaN(keyPosition.mPercentY)) {
                    float f22 = motionPaths2.y;
                    float f23 = motionPaths.y;
                    f2 = DependencyGraph$$ExternalSyntheticOutline0.m(f22, f23, f3, f23);
                } else {
                    f2 = keyPosition.mPercentY;
                }
                this.y = f2;
            }
            this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
            this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
            this.mPathMotionArc = keyPosition.mPathMotionArc;
            return;
        }
        int i5 = keyPosition.mPositionType;
        if (i5 == 1) {
            float f24 = keyPosition.mFramePosition / 100.0f;
            this.time = f24;
            this.mDrawPath = keyPosition.mDrawPath;
            float f25 = Float.isNaN(keyPosition.mPercentWidth) ? f24 : keyPosition.mPercentWidth;
            float f26 = Float.isNaN(keyPosition.mPercentHeight) ? f24 : keyPosition.mPercentHeight;
            float f27 = motionPaths2.width - motionPaths.width;
            float f28 = motionPaths2.height - motionPaths.height;
            this.position = this.time;
            f24 = Float.isNaN(keyPosition.mPercentX) ? f24 : keyPosition.mPercentX;
            float f29 = motionPaths.x;
            float f30 = motionPaths.width;
            float f31 = motionPaths.y;
            float f32 = motionPaths.height;
            float f33 = ((motionPaths2.width / 2.0f) + motionPaths2.x) - ((f30 / 2.0f) + f29);
            float f34 = ((motionPaths2.height / 2.0f) + motionPaths2.y) - ((f32 / 2.0f) + f31);
            float f35 = f33 * f24;
            float f36 = (f27 * f25) / 2.0f;
            this.x = (int) ((f29 + f35) - f36);
            float f37 = f24 * f34;
            float f38 = (f28 * f26) / 2.0f;
            this.y = (int) ((f31 + f37) - f38);
            this.width = (int) (f30 + r8);
            this.height = (int) (f32 + r9);
            float f39 = Float.isNaN(keyPosition.mPercentY) ? 0.0f : keyPosition.mPercentY;
            this.mMode = 1;
            float f40 = (int) ((motionPaths.x + f35) - f36);
            float f41 = (int) ((motionPaths.y + f37) - f38);
            this.x = f40 + ((-f34) * f39);
            this.y = f41 + (f33 * f39);
            this.mAnimateRelativeTo = this.mAnimateRelativeTo;
            this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
            this.mPathMotionArc = keyPosition.mPathMotionArc;
            return;
        }
        if (i5 != 2) {
            float f42 = keyPosition.mFramePosition / 100.0f;
            this.time = f42;
            this.mDrawPath = keyPosition.mDrawPath;
            float f43 = Float.isNaN(keyPosition.mPercentWidth) ? f42 : keyPosition.mPercentWidth;
            float f44 = Float.isNaN(keyPosition.mPercentHeight) ? f42 : keyPosition.mPercentHeight;
            float f45 = motionPaths2.width;
            float f46 = motionPaths.width;
            float f47 = f45 - f46;
            float f48 = motionPaths2.height;
            float f49 = motionPaths.height;
            float f50 = f48 - f49;
            this.position = this.time;
            float f51 = motionPaths.x;
            float f52 = motionPaths.y;
            float f53 = ((f45 / 2.0f) + motionPaths2.x) - ((f46 / 2.0f) + f51);
            float f54 = ((f48 / 2.0f) + motionPaths2.y) - ((f49 / 2.0f) + f52);
            float f55 = (f47 * f43) / 2.0f;
            this.x = (int) (((f53 * f42) + f51) - f55);
            float f56 = (f54 * f42) + f52;
            float f57 = (f50 * f44) / 2.0f;
            this.y = (int) (f56 - f57);
            this.width = (int) (f46 + r10);
            this.height = (int) (f49 + r13);
            float f58 = Float.isNaN(keyPosition.mPercentX) ? f42 : keyPosition.mPercentX;
            float f59 = Float.isNaN(keyPosition.mAltPercentY) ? 0.0f : keyPosition.mAltPercentY;
            f42 = Float.isNaN(keyPosition.mPercentY) ? f42 : keyPosition.mPercentY;
            if (Float.isNaN(keyPosition.mAltPercentX)) {
                i3 = 0;
                f = 0.0f;
            } else {
                f = keyPosition.mAltPercentX;
                i3 = 0;
            }
            this.mMode = i3;
            this.x = (int) (((f * f54) + ((f58 * f53) + motionPaths.x)) - f55);
            this.y = (int) (((f54 * f42) + ((f53 * f59) + motionPaths.y)) - f57);
            this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
            this.mPathMotionArc = keyPosition.mPathMotionArc;
            return;
        }
        float f60 = keyPosition.mFramePosition / 100.0f;
        this.time = f60;
        this.mDrawPath = keyPosition.mDrawPath;
        float f61 = Float.isNaN(keyPosition.mPercentWidth) ? f60 : keyPosition.mPercentWidth;
        float f62 = Float.isNaN(keyPosition.mPercentHeight) ? f60 : keyPosition.mPercentHeight;
        float f63 = motionPaths2.width;
        float f64 = f63 - motionPaths.width;
        float f65 = motionPaths2.height;
        float f66 = f65 - motionPaths.height;
        this.position = this.time;
        float f67 = motionPaths.x;
        float f68 = motionPaths.y;
        float f69 = (f63 / 2.0f) + motionPaths2.x;
        float f70 = (f65 / 2.0f) + motionPaths2.y;
        float f71 = f64 * f61;
        this.x = (int) ((((f69 - ((r9 / 2.0f) + f67)) * f60) + f67) - (f71 / 2.0f));
        float f72 = f66 * f62;
        this.y = (int) ((((f70 - ((r12 / 2.0f) + f68)) * f60) + f68) - (f72 / 2.0f));
        this.width = (int) (r9 + f71);
        this.height = (int) (r12 + f72);
        this.mMode = 2;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            this.x = (int) (keyPosition.mPercentX * ((int) (i - this.width)));
        }
        if (!Float.isNaN(keyPosition.mPercentY)) {
            this.y = (int) (keyPosition.mPercentY * ((int) (i2 - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }
}
