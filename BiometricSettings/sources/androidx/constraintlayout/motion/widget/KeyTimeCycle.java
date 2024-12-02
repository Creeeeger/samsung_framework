package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class KeyTimeCycle extends Key {
    private int mCurveFit = -1;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;
    private float mProgress = Float.NaN;
    private int mWaveShape = 0;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;

    private static class Loader {
        private static SparseIntArray sAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sAttrMap = sparseIntArray;
            sparseIntArray.append(0, 1);
            sAttrMap.append(9, 2);
            sAttrMap.append(5, 4);
            sAttrMap.append(6, 5);
            sAttrMap.append(7, 6);
            sAttrMap.append(3, 7);
            sAttrMap.append(15, 8);
            sAttrMap.append(14, 9);
            sAttrMap.append(13, 10);
            sAttrMap.append(11, 12);
            sAttrMap.append(10, 13);
            sAttrMap.append(4, 14);
            sAttrMap.append(1, 15);
            sAttrMap.append(2, 16);
            sAttrMap.append(8, 17);
            sAttrMap.append(12, 18);
            sAttrMap.append(18, 20);
            sAttrMap.append(17, 21);
            sAttrMap.append(20, 19);
        }

        public static void read(KeyTimeCycle keyTimeCycle, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (sAttrMap.get(index)) {
                    case 1:
                        keyTimeCycle.mAlpha = typedArray.getFloat(index, keyTimeCycle.mAlpha);
                        break;
                    case 2:
                        keyTimeCycle.mElevation = typedArray.getDimension(index, keyTimeCycle.mElevation);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + sAttrMap.get(index));
                        break;
                    case 4:
                        keyTimeCycle.mRotation = typedArray.getFloat(index, keyTimeCycle.mRotation);
                        break;
                    case 5:
                        keyTimeCycle.mRotationX = typedArray.getFloat(index, keyTimeCycle.mRotationX);
                        break;
                    case 6:
                        keyTimeCycle.mRotationY = typedArray.getFloat(index, keyTimeCycle.mRotationY);
                        break;
                    case 7:
                        keyTimeCycle.mScaleX = typedArray.getFloat(index, keyTimeCycle.mScaleX);
                        break;
                    case 8:
                        keyTimeCycle.mTransitionPathRotate = typedArray.getFloat(index, keyTimeCycle.mTransitionPathRotate);
                        break;
                    case 9:
                        typedArray.getString(index);
                        keyTimeCycle.getClass();
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyTimeCycle.mTargetId);
                            keyTimeCycle.mTargetId = resourceId;
                            if (resourceId == -1) {
                                keyTimeCycle.mTargetString = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTimeCycle.mTargetString = typedArray.getString(index);
                            break;
                        } else {
                            keyTimeCycle.mTargetId = typedArray.getResourceId(index, keyTimeCycle.mTargetId);
                            break;
                        }
                    case 12:
                        keyTimeCycle.mFramePosition = typedArray.getInt(index, keyTimeCycle.mFramePosition);
                        break;
                    case 13:
                        keyTimeCycle.mCurveFit = typedArray.getInteger(index, keyTimeCycle.mCurveFit);
                        break;
                    case 14:
                        keyTimeCycle.mScaleY = typedArray.getFloat(index, keyTimeCycle.mScaleY);
                        break;
                    case 15:
                        keyTimeCycle.mTranslationX = typedArray.getDimension(index, keyTimeCycle.mTranslationX);
                        break;
                    case 16:
                        keyTimeCycle.mTranslationY = typedArray.getDimension(index, keyTimeCycle.mTranslationY);
                        break;
                    case 17:
                        keyTimeCycle.mTranslationZ = typedArray.getDimension(index, keyTimeCycle.mTranslationZ);
                        break;
                    case 18:
                        keyTimeCycle.mProgress = typedArray.getFloat(index, keyTimeCycle.mProgress);
                        break;
                    case 19:
                        if (typedArray.peekValue(index).type == 3) {
                            typedArray.getString(index);
                            keyTimeCycle.getClass();
                            keyTimeCycle.mWaveShape = 7;
                            break;
                        } else {
                            keyTimeCycle.mWaveShape = typedArray.getInt(index, keyTimeCycle.mWaveShape);
                            break;
                        }
                    case 20:
                        keyTimeCycle.mWavePeriod = typedArray.getFloat(index, keyTimeCycle.mWavePeriod);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            keyTimeCycle.mWaveOffset = typedArray.getDimension(index, keyTimeCycle.mWaveOffset);
                            break;
                        } else {
                            keyTimeCycle.mWaveOffset = typedArray.getFloat(index, keyTimeCycle.mWaveOffset);
                            break;
                        }
                }
            }
        }
    }

    public KeyTimeCycle() {
        this.mCustomConstraints = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0089, code lost:
    
        if (r1.equals("scaleY") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addTimeValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.utils.ViewTimeCycle> r11) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTimeCycle.addTimeValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void addValues(HashMap<String, ViewSpline> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.mProgress)) {
            hashSet.add("progress");
        }
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void setInterpolation(HashMap<String, Integer> hashMap) {
        if (this.mCurveFit == -1) {
            return;
        }
        if (!Float.isNaN(this.mAlpha)) {
            hashMap.put("alpha", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashMap.put("elevation", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashMap.put("rotation", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashMap.put("rotationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashMap.put("rotationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashMap.put("translationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashMap.put("translationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashMap.put("translationZ", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashMap.put("scaleX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashMap.put("scaleY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mProgress)) {
            hashMap.put("progress", Integer.valueOf(this.mCurveFit));
        }
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.keySet().iterator();
            while (it.hasNext()) {
                hashMap.put("CUSTOM," + it.next(), Integer.valueOf(this.mCurveFit));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public final Key mo4clone() {
        KeyTimeCycle keyTimeCycle = new KeyTimeCycle();
        super.copy(this);
        keyTimeCycle.mCurveFit = this.mCurveFit;
        keyTimeCycle.mWaveShape = this.mWaveShape;
        keyTimeCycle.mWavePeriod = this.mWavePeriod;
        keyTimeCycle.mWaveOffset = this.mWaveOffset;
        keyTimeCycle.mProgress = this.mProgress;
        keyTimeCycle.mAlpha = this.mAlpha;
        keyTimeCycle.mElevation = this.mElevation;
        keyTimeCycle.mRotation = this.mRotation;
        keyTimeCycle.mTransitionPathRotate = this.mTransitionPathRotate;
        keyTimeCycle.mRotationX = this.mRotationX;
        keyTimeCycle.mRotationY = this.mRotationY;
        keyTimeCycle.mScaleX = this.mScaleX;
        keyTimeCycle.mScaleY = this.mScaleY;
        keyTimeCycle.mTranslationX = this.mTranslationX;
        keyTimeCycle.mTranslationY = this.mTranslationY;
        keyTimeCycle.mTranslationZ = this.mTranslationZ;
        return keyTimeCycle;
    }
}
