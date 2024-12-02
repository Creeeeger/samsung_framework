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

/* loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    private static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    private int mActivationDelay;
    private boolean mAlreadyDelayed;
    boolean mAnimating;
    private final Interpolator mEdgeInterpolator;
    private int mEdgeType;
    private boolean mEnabled;
    private float[] mMaximumEdges;
    private float[] mMaximumVelocity;
    private float[] mMinimumVelocity;
    boolean mNeedsCancel;
    boolean mNeedsReset;
    private float[] mRelativeEdges;
    private float[] mRelativeVelocity;
    private Runnable mRunnable;
    final ClampedScroller mScroller;
    final View mTarget;

    private static class ClampedScroller {
        private int mEffectiveRampDown;
        private int mRampDownDuration;
        private int mRampUpDuration;
        private float mStopValue;
        private float mTargetVelocityX;
        private float mTargetVelocityY;
        private long mStartTime = Long.MIN_VALUE;
        private long mStopTime = -1;
        private long mDeltaTime = 0;
        private int mDeltaX = 0;
        private int mDeltaY = 0;

        ClampedScroller() {
        }

        private float getValueAt(long j) {
            if (j < this.mStartTime) {
                return 0.0f;
            }
            long j2 = this.mStopTime;
            if (j2 < 0 || j < j2) {
                return AutoScrollHelper.constrain((j - r0) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.mStopValue;
            return (f * AutoScrollHelper.constrain((j - j2) / this.mEffectiveRampDown, 0.0f, 1.0f)) + (1.0f - f);
        }

        public final void computeScrollDelta() {
            if (this.mDeltaTime == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float valueAt = getValueAt(currentAnimationTimeMillis);
            long j = currentAnimationTimeMillis - this.mDeltaTime;
            this.mDeltaTime = currentAnimationTimeMillis;
            float f = j * ((valueAt * 4.0f) + ((-4.0f) * valueAt * valueAt));
            this.mDeltaX = (int) (this.mTargetVelocityX * f);
            this.mDeltaY = (int) (f * this.mTargetVelocityY);
        }

        public final int getDeltaY() {
            return this.mDeltaY;
        }

        public final int getHorizontalDirection() {
            float f = this.mTargetVelocityX;
            return (int) (f / Math.abs(f));
        }

        public final int getVerticalDirection() {
            float f = this.mTargetVelocityY;
            return (int) (f / Math.abs(f));
        }

        public final boolean isFinished() {
            return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
        }

        public final void requestStop() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            int i = (int) (currentAnimationTimeMillis - this.mStartTime);
            int i2 = this.mRampDownDuration;
            if (i > i2) {
                i = i2;
            } else if (i < 0) {
                i = 0;
            }
            this.mEffectiveRampDown = i;
            this.mStopValue = getValueAt(currentAnimationTimeMillis);
            this.mStopTime = currentAnimationTimeMillis;
        }

        public final void setRampDownDuration() {
            this.mRampDownDuration = 500;
        }

        public final void setRampUpDuration() {
            this.mRampUpDuration = 500;
        }

        public final void setTargetVelocity(float f, float f2) {
            this.mTargetVelocityX = f;
            this.mTargetVelocityY = f2;
        }

        public final void start() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mStartTime = currentAnimationTimeMillis;
            this.mStopTime = -1L;
            this.mDeltaTime = currentAnimationTimeMillis;
            this.mStopValue = 0.5f;
            this.mDeltaX = 0;
            this.mDeltaY = 0;
        }
    }

    private class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.mAnimating) {
                if (autoScrollHelper.mNeedsReset) {
                    autoScrollHelper.mNeedsReset = false;
                    autoScrollHelper.mScroller.start();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.mScroller;
                if (!clampedScroller.isFinished()) {
                    AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                    ClampedScroller clampedScroller2 = autoScrollHelper2.mScroller;
                    int verticalDirection = clampedScroller2.getVerticalDirection();
                    clampedScroller2.getHorizontalDirection();
                    if (verticalDirection != 0 && autoScrollHelper2.canTargetScrollVertically(verticalDirection)) {
                        AutoScrollHelper autoScrollHelper3 = AutoScrollHelper.this;
                        if (autoScrollHelper3.mNeedsCancel) {
                            autoScrollHelper3.mNeedsCancel = false;
                            long uptimeMillis = SystemClock.uptimeMillis();
                            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                            autoScrollHelper3.mTarget.onTouchEvent(obtain);
                            obtain.recycle();
                        }
                        clampedScroller.computeScrollDelta();
                        AutoScrollHelper.this.scrollTargetBy(clampedScroller.getDeltaY());
                        ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
                        return;
                    }
                }
                AutoScrollHelper.this.mAnimating = false;
            }
        }
    }

    public AutoScrollHelper(View view) {
        ClampedScroller clampedScroller = new ClampedScroller();
        this.mScroller = clampedScroller;
        this.mEdgeInterpolator = new AccelerateInterpolator();
        this.mRelativeEdges = new float[]{0.0f, 0.0f};
        this.mMaximumEdges = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.mRelativeVelocity = new float[]{0.0f, 0.0f};
        this.mMinimumVelocity = new float[]{0.0f, 0.0f};
        this.mMaximumVelocity = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.mTarget = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.mMaximumVelocity;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr[0] = f2;
        fArr[1] = f2;
        float[] fArr2 = this.mMinimumVelocity;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr2[0] = f3;
        fArr2[1] = f3;
        this.mEdgeType = 1;
        float[] fArr3 = this.mMaximumEdges;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.mRelativeEdges;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.mRelativeVelocity;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.mActivationDelay = DEFAULT_ACTIVATION_DELAY;
        clampedScroller.setRampUpDuration();
        clampedScroller.setRampDownDuration();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float computeTargetVelocity(int r4, float r5, float r6, float r7) {
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

    static float constrain(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    private float constrainEdgeValue(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.mEdgeType;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.mAnimating && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    public abstract boolean canTargetScrollVertically(int i);

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        if (r0 != 3) goto L38;
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
            if (r0 == 0) goto L26
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L2a
            r6 = 3
            if (r0 == r6) goto L17
            goto L9b
        L17:
            boolean r6 = r5.mNeedsReset
            if (r6 == 0) goto L1f
            r5.mAnimating = r1
            goto L9b
        L1f:
            androidx.core.widget.AutoScrollHelper$ClampedScroller r5 = r5.mScroller
            r5.requestStop()
            goto L9b
        L26:
            r5.mNeedsCancel = r2
            r5.mAlreadyDelayed = r1
        L2a:
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
            r7.setTargetVelocity(r0, r6)
            boolean r6 = r5.mAnimating
            if (r6 != 0) goto L9b
            androidx.core.widget.AutoScrollHelper$ClampedScroller r6 = r5.mScroller
            int r7 = r6.getVerticalDirection()
            r6.getHorizontalDirection()
            if (r7 == 0) goto L6f
            boolean r6 = r5.canTargetScrollVertically(r7)
            if (r6 != 0) goto L6d
            goto L6f
        L6d:
            r6 = r2
            goto L70
        L6f:
            r6 = r1
        L70:
            if (r6 == 0) goto L9b
            java.lang.Runnable r6 = r5.mRunnable
            if (r6 != 0) goto L7d
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r6 = new androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable
            r6.<init>()
            r5.mRunnable = r6
        L7d:
            r5.mAnimating = r2
            r5.mNeedsReset = r2
            boolean r6 = r5.mAlreadyDelayed
            if (r6 != 0) goto L92
            int r6 = r5.mActivationDelay
            if (r6 <= 0) goto L92
            android.view.View r7 = r5.mTarget
            java.lang.Runnable r0 = r5.mRunnable
            long r3 = (long) r6
            androidx.core.view.ViewCompat.postOnAnimationDelayed(r7, r0, r3)
            goto L99
        L92:
            java.lang.Runnable r6 = r5.mRunnable
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r6 = (androidx.core.widget.AutoScrollHelper.ScrollAnimationRunnable) r6
            r6.run()
        L99:
            r5.mAlreadyDelayed = r2
        L9b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void scrollTargetBy(int i);

    public final void setEnabled(boolean z) {
        if (this.mEnabled && !z) {
            if (this.mNeedsReset) {
                this.mAnimating = false;
            } else {
                this.mScroller.requestStop();
            }
        }
        this.mEnabled = z;
    }
}
