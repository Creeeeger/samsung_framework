package com.android.server.display;

import android.util.FloatProperty;
import android.view.Choreographer;
import com.android.server.power.Slog;

/* loaded from: classes2.dex */
public class RampAnimator {
    public float mAnimatedValue;
    public boolean mAnimating;
    public float mAnimationDecreaseMaxTimeSecs;
    public float mAnimationIncreaseMaxTimeSecs;
    public float mCurrentValue;
    public boolean mFirstTime = true;
    public long mLastFrameTimeNanos;
    public final Object mObject;
    public final FloatProperty mProperty;
    public float mRate;
    public float mRateAtHbm;
    public float mTarget;
    public float mTargetValue;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onAnimationEnd();
    }

    public RampAnimator(Object obj, FloatProperty floatProperty) {
        this.mObject = obj;
        this.mProperty = floatProperty;
    }

    public void setAnimationTimeLimits(long j, long j2) {
        float f = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
        this.mAnimationIncreaseMaxTimeSecs = j > 0 ? ((float) j) / 1000.0f : 0.0f;
        if (j2 > 0) {
            f = ((float) j2) / 1000.0f;
        }
        this.mAnimationDecreaseMaxTimeSecs = f;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean setAnimationTarget(float r7, float r8, float r9, long r10) {
        /*
            r6 = this;
            float r0 = r6.mTarget
            int r0 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lc
            r6.mTarget = r7
            r0 = r1
            goto Ld
        Lc:
            r0 = r2
        Ld:
            boolean r3 = r6.mFirstTime
            r4 = 0
            if (r3 != 0) goto L81
            int r5 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r5 > 0) goto L18
            goto L81
        L18:
            float r0 = r6.mCurrentValue
            int r3 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r3 <= 0) goto L2f
            float r3 = r6.mAnimationIncreaseMaxTimeSecs
            int r5 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r5 <= 0) goto L2f
            float r5 = r7 - r0
            float r5 = r5 / r8
            int r5 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r5 <= 0) goto L2f
            float r8 = r7 - r0
        L2d:
            float r8 = r8 / r3
            goto L43
        L2f:
            int r3 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r3 >= 0) goto L43
            float r3 = r6.mAnimationDecreaseMaxTimeSecs
            int r4 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r4 <= 0) goto L43
            float r4 = r0 - r7
            float r4 = r4 / r8
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 <= 0) goto L43
            float r8 = r0 - r7
            goto L2d
        L43:
            boolean r3 = r6.mAnimating
            if (r3 == 0) goto L67
            float r4 = r6.mRate
            int r4 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r4 != 0) goto L67
            float r4 = r6.mRateAtHbm
            int r4 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r4 != 0) goto L67
            int r4 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r4 > 0) goto L5d
            float r4 = r6.mTargetValue
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 <= 0) goto L67
        L5d:
            float r4 = r6.mTargetValue
            int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r4 > 0) goto L6b
            int r4 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r4 > 0) goto L6b
        L67:
            r6.mRate = r8
            r6.mRateAtHbm = r9
        L6b:
            float r8 = r6.mTargetValue
            int r8 = (r8 > r7 ? 1 : (r8 == r7 ? 0 : -1))
            if (r8 == 0) goto L72
            r2 = r1
        L72:
            r6.mTargetValue = r7
            if (r3 != 0) goto L80
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r7 == 0) goto L80
            r6.mAnimating = r1
            r6.mAnimatedValue = r0
            r6.mLastFrameTimeNanos = r10
        L80:
            return r2
        L81:
            if (r3 != 0) goto L8d
            float r8 = r6.mCurrentValue
            int r8 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r8 != 0) goto L8d
            if (r0 == 0) goto L8c
            goto L8d
        L8c:
            return r2
        L8d:
            r6.mFirstTime = r2
            r6.mRate = r4
            r6.mRateAtHbm = r4
            r6.mTargetValue = r7
            r6.mCurrentValue = r7
            r6.setPropertyValue(r7)
            r6.mAnimating = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.RampAnimator.setAnimationTarget(float, float, float, long):boolean");
    }

    public boolean isAnimating() {
        return this.mAnimating;
    }

    public float getTarget() {
        return this.mTarget;
    }

    public float getCurrentValue() {
        return this.mCurrentValue;
    }

    public final void setPropertyValue(float f) {
        this.mProperty.setValue(this.mObject, f);
    }

    public void performNextAnimationStep(long j) {
        float f = ((float) (j - this.mLastFrameTimeNanos)) * 1.0E-9f;
        if (f >= 1.0f) {
            Slog.d("RampAnimator", "Choreographer callback time out: " + f + "s");
        }
        this.mLastFrameTimeNanos = j;
        float f2 = this.mRate;
        if (this.mTargetValue < this.mCurrentValue && this.mAnimatedValue > 1.0f && !Float.isNaN(this.mRateAtHbm)) {
            f2 = this.mRateAtHbm;
        }
        float f3 = (f * f2) / 1.0f;
        float f4 = this.mTargetValue;
        if (f4 > this.mCurrentValue) {
            this.mAnimatedValue = Math.min(this.mAnimatedValue + f3, f4);
        } else {
            this.mAnimatedValue = Math.max(this.mAnimatedValue - f3, f4);
        }
        float f5 = this.mCurrentValue;
        float f6 = this.mAnimatedValue;
        this.mCurrentValue = f6;
        if (f5 != f6) {
            setPropertyValue(f6);
        }
        if (this.mTargetValue == this.mCurrentValue) {
            this.mAnimating = false;
        }
    }

    /* loaded from: classes2.dex */
    public class DualRampAnimator {
        public boolean mAwaitingCallback;
        public final RampAnimator mFirst;
        public Listener mListener;
        public final RampAnimator mSecond;
        public final Runnable mAnimationCallback = new Runnable() { // from class: com.android.server.display.RampAnimator.DualRampAnimator.1
            @Override // java.lang.Runnable
            public void run() {
                long frameTimeNanos = DualRampAnimator.this.mChoreographer.getFrameTimeNanos();
                DualRampAnimator.this.mFirst.performNextAnimationStep(frameTimeNanos);
                DualRampAnimator.this.mSecond.performNextAnimationStep(frameTimeNanos);
                if (DualRampAnimator.this.isAnimating()) {
                    DualRampAnimator.this.postAnimationCallback();
                    return;
                }
                if (DualRampAnimator.this.mListener != null) {
                    DualRampAnimator.this.mListener.onAnimationEnd();
                }
                DualRampAnimator.this.mAwaitingCallback = false;
            }
        };
        public final Choreographer mChoreographer = Choreographer.getInstance();

        public DualRampAnimator(Object obj, FloatProperty floatProperty, FloatProperty floatProperty2) {
            this.mFirst = new RampAnimator(obj, floatProperty);
            this.mSecond = new RampAnimator(obj, floatProperty2);
        }

        public void setAnimationTimeLimits(long j, long j2) {
            this.mFirst.setAnimationTimeLimits(j, j2);
            this.mSecond.setAnimationTimeLimits(j, j2);
        }

        public boolean animateTo(float f, float f2, float f3, float f4) {
            long nanoTime = System.nanoTime();
            boolean animationTarget = this.mFirst.setAnimationTarget(f, f3, f4, nanoTime) | this.mSecond.setAnimationTarget(f2, f3, f4, nanoTime);
            boolean isAnimating = isAnimating();
            boolean z = this.mAwaitingCallback;
            if (isAnimating != z) {
                if (isAnimating) {
                    this.mAwaitingCallback = true;
                    postAnimationCallback();
                } else if (z) {
                    Listener listener = this.mListener;
                    if (listener != null) {
                        listener.onAnimationEnd();
                    }
                    this.mChoreographer.removeCallbacks(1, this.mAnimationCallback, null);
                    this.mAwaitingCallback = false;
                }
            }
            return animationTarget;
        }

        public void setListener(Listener listener) {
            this.mListener = listener;
        }

        public boolean isAnimating() {
            return this.mFirst.isAnimating() || this.mSecond.isAnimating();
        }

        public final void postAnimationCallback() {
            this.mChoreographer.postCallback(1, this.mAnimationCallback, null);
        }

        public float getTarget() {
            return this.mFirst.getTarget();
        }

        public float getCurrentValue() {
            return this.mFirst.getCurrentValue();
        }
    }
}
