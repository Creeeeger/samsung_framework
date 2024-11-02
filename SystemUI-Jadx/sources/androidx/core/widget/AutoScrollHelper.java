package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    public int mActivationDelay;
    public boolean mAlreadyDelayed;
    public boolean mAnimating;
    public final Interpolator mEdgeInterpolator;
    public int mEdgeType;
    public boolean mEnabled;
    public final float[] mMaximumEdges;
    public final float[] mMaximumVelocity;
    public final float[] mMinimumVelocity;
    public boolean mNeedsCancel;
    public boolean mNeedsReset;
    public final float[] mRelativeEdges;
    public final float[] mRelativeVelocity;
    public ScrollAnimationRunnable mRunnable;
    public final ClampedScroller mScroller;
    public final View mTarget;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ClampedScroller {
        public int mEffectiveRampDown;
        public int mRampDownDuration;
        public int mRampUpDuration;
        public float mStopValue;
        public float mTargetVelocityX;
        public float mTargetVelocityY;
        public long mStartTime = Long.MIN_VALUE;
        public long mStopTime = -1;
        public long mDeltaTime = 0;

        public final float getValueAt(long j) {
            long j2 = this.mStartTime;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.mStopTime;
            if (j3 >= 0 && j >= j3) {
                float f = this.mStopValue;
                return (AutoScrollHelper.constrain(((float) (j - j3)) / this.mEffectiveRampDown, 0.0f, 1.0f) * f) + (1.0f - f);
            }
            return AutoScrollHelper.constrain(((float) (j - j2)) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ScrollAnimationRunnable implements Runnable {
        public ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (!autoScrollHelper.mAnimating) {
                return;
            }
            if (autoScrollHelper.mNeedsReset) {
                autoScrollHelper.mNeedsReset = false;
                ClampedScroller clampedScroller = autoScrollHelper.mScroller;
                clampedScroller.getClass();
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                clampedScroller.mStartTime = currentAnimationTimeMillis;
                clampedScroller.mStopTime = -1L;
                clampedScroller.mDeltaTime = currentAnimationTimeMillis;
                clampedScroller.mStopValue = 0.5f;
            }
            ClampedScroller clampedScroller2 = AutoScrollHelper.this.mScroller;
            if (clampedScroller2.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > clampedScroller2.mStopTime + clampedScroller2.mEffectiveRampDown) {
                z = true;
            } else {
                z = false;
            }
            if (!z && AutoScrollHelper.this.shouldAnimate()) {
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.mNeedsCancel) {
                    autoScrollHelper2.mNeedsCancel = false;
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    autoScrollHelper2.mTarget.onTouchEvent(obtain);
                    obtain.recycle();
                }
                if (clampedScroller2.mDeltaTime != 0) {
                    long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float valueAt = clampedScroller2.getValueAt(currentAnimationTimeMillis2);
                    long j = currentAnimationTimeMillis2 - clampedScroller2.mDeltaTime;
                    clampedScroller2.mDeltaTime = currentAnimationTimeMillis2;
                    AutoScrollHelper.this.scrollTargetBy((int) (((float) j) * ((valueAt * 4.0f) + ((-4.0f) * valueAt * valueAt)) * clampedScroller2.mTargetVelocityY));
                    View view = AutoScrollHelper.this.mTarget;
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api16Impl.postOnAnimation(view, this);
                    return;
                }
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            AutoScrollHelper.this.mAnimating = false;
        }
    }

    public AutoScrollHelper(View view) {
        ClampedScroller clampedScroller = new ClampedScroller();
        this.mScroller = clampedScroller;
        this.mEdgeInterpolator = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.mRelativeEdges = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.mMaximumEdges = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.mRelativeVelocity = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.mMinimumVelocity = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.mMaximumVelocity = fArr5;
        this.mTarget = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        fArr5[0] = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr4[0] = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        this.mEdgeType = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr3[0] = 0.001f;
        this.mActivationDelay = DEFAULT_ACTIVATION_DELAY;
        clampedScroller.mRampUpDuration = 500;
        clampedScroller.mRampDownDuration = 500;
    }

    public static float constrain(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        if (f < f2) {
            return f2;
        }
        return f;
    }

    public abstract void canTargetScrollHorizontally();

    public abstract boolean canTargetScrollVertically(int i);

    /* JADX WARN: Removed duplicated region for block: B:7:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final float computeTargetVelocity(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.mRelativeEdges
            r0 = r0[r4]
            float[] r1 = r3.mMaximumEdges
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = constrain(r0, r2, r1)
            float r1 = r3.constrainEdgeValue(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.constrainEdgeValue(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 >= 0) goto L27
            android.view.animation.Interpolator r6 = r3.mEdgeInterpolator
            float r5 = -r5
            android.view.animation.AccelerateInterpolator r6 = (android.view.animation.AccelerateInterpolator) r6
            float r5 = r6.getInterpolation(r5)
            float r5 = -r5
            goto L33
        L27:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L3c
            android.view.animation.Interpolator r6 = r3.mEdgeInterpolator
            android.view.animation.AccelerateInterpolator r6 = (android.view.animation.AccelerateInterpolator) r6
            float r5 = r6.getInterpolation(r5)
        L33:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = constrain(r5, r6, r0)
            goto L3d
        L3c:
            r5 = r2
        L3d:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L42
            return r2
        L42:
            float[] r0 = r3.mRelativeVelocity
            r0 = r0[r4]
            float[] r1 = r3.mMinimumVelocity
            r1 = r1[r4]
            float[] r3 = r3.mMaximumVelocity
            r3 = r3[r4]
            float r0 = r0 * r7
            if (r6 <= 0) goto L57
            float r5 = r5 * r0
            float r3 = constrain(r5, r1, r3)
            return r3
        L57:
            float r4 = -r5
            float r4 = r4 * r0
            float r3 = constrain(r4, r1, r3)
            float r3 = -r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.computeTargetVelocity(int, float, float, float):float");
    }

    public final float constrainEdgeValue(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.mEdgeType;
        if (i != 0 && i != 1) {
            if (i == 2 && f < 0.0f) {
                return f / (-f2);
            }
        } else if (f < f2) {
            if (f >= 0.0f) {
                return 1.0f - (f / f2);
            }
            if (this.mAnimating && i == 1) {
                return 1.0f;
            }
        }
        return 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        if (r0 != 3) goto L29;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.mEnabled
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L7f
        L16:
            r5.requestStop()
            goto L7f
        L1a:
            r5.mNeedsCancel = r2
            r5.mAlreadyDelayed = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.mTarget
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.computeTargetVelocity(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.mTarget
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.computeTargetVelocity(r2, r7, r6, r3)
            androidx.core.widget.AutoScrollHelper$ClampedScroller r7 = r5.mScroller
            r7.mTargetVelocityX = r0
            r7.mTargetVelocityY = r6
            boolean r6 = r5.mAnimating
            if (r6 != 0) goto L7f
            boolean r6 = r5.shouldAnimate()
            if (r6 == 0) goto L7f
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r6 = r5.mRunnable
            if (r6 != 0) goto L61
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r6 = new androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable
            r6.<init>()
            r5.mRunnable = r6
        L61:
            r5.mAnimating = r2
            r5.mNeedsReset = r2
            boolean r6 = r5.mAlreadyDelayed
            if (r6 != 0) goto L78
            int r6 = r5.mActivationDelay
            if (r6 <= 0) goto L78
            android.view.View r7 = r5.mTarget
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r0 = r5.mRunnable
            long r3 = (long) r6
            java.util.WeakHashMap r6 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            androidx.core.view.ViewCompat.Api16Impl.postOnAnimationDelayed(r7, r0, r3)
            goto L7d
        L78:
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r6 = r5.mRunnable
            r6.run()
        L7d:
            r5.mAlreadyDelayed = r2
        L7f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void requestStop() {
        int i = 0;
        if (this.mNeedsReset) {
            this.mAnimating = false;
            return;
        }
        ClampedScroller clampedScroller = this.mScroller;
        clampedScroller.getClass();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (currentAnimationTimeMillis - clampedScroller.mStartTime);
        int i3 = clampedScroller.mRampDownDuration;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        clampedScroller.mEffectiveRampDown = i;
        clampedScroller.mStopValue = clampedScroller.getValueAt(currentAnimationTimeMillis);
        clampedScroller.mStopTime = currentAnimationTimeMillis;
    }

    public abstract void scrollTargetBy(int i);

    public final boolean shouldAnimate() {
        ClampedScroller clampedScroller = this.mScroller;
        float f = clampedScroller.mTargetVelocityY;
        int abs = (int) (f / Math.abs(f));
        float f2 = clampedScroller.mTargetVelocityX;
        int abs2 = (int) (f2 / Math.abs(f2));
        if (abs != 0 && canTargetScrollVertically(abs)) {
            return true;
        }
        if (abs2 != 0) {
            canTargetScrollHorizontally();
        }
        return false;
    }
}
