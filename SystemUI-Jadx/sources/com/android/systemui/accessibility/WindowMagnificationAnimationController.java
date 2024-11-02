package com.android.systemui.accessibility;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import android.view.accessibility.IRemoteMagnificationAnimationCallback;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WindowMagnificationAnimationController implements ValueAnimator.AnimatorUpdateListener, Animator.AnimatorListener {
    public static final boolean DEBUG = Log.isLoggable("WindowMagnificationAnimationController", 3);
    static final int STATE_DISABLED = 0;
    static final int STATE_ENABLED = 1;
    public IRemoteMagnificationAnimationCallback mAnimationCallback;
    public final Context mContext;
    public WindowMagnificationController mController;
    public boolean mEndAnimationCanceled;
    public final AnimationSpec mEndSpec;
    public float mMagnificationFrameOffsetRatioX;
    public float mMagnificationFrameOffsetRatioY;
    public final AnimationSpec mStartSpec;
    public int mState;
    public final ValueAnimator mValueAnimator;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AnimationSpec {
        public float mCenterX;
        public float mCenterY;
        public float mScale;

        public /* synthetic */ AnimationSpec(int i) {
            this();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AnimationSpec.class != obj.getClass()) {
                return false;
            }
            AnimationSpec animationSpec = (AnimationSpec) obj;
            if (this.mScale == animationSpec.mScale && this.mCenterX == animationSpec.mCenterX && this.mCenterY == animationSpec.mCenterY) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int i2;
            float f = this.mScale;
            int i3 = 0;
            if (f != 0.0f) {
                i = Float.floatToIntBits(f);
            } else {
                i = 0;
            }
            int i4 = i * 31;
            float f2 = this.mCenterX;
            if (f2 != 0.0f) {
                i2 = Float.floatToIntBits(f2);
            } else {
                i2 = 0;
            }
            int i5 = (i4 + i2) * 31;
            float f3 = this.mCenterY;
            if (f3 != 0.0f) {
                i3 = Float.floatToIntBits(f3);
            }
            return i5 + i3;
        }

        public final void set(float f, float f2, float f3) {
            this.mScale = f;
            this.mCenterX = f2;
            this.mCenterY = f3;
        }

        public final String toString() {
            return "AnimationSpec{mScale=" + this.mScale + ", mCenterX=" + this.mCenterX + ", mCenterY=" + this.mCenterY + '}';
        }

        private AnimationSpec() {
            this.mScale = Float.NaN;
            this.mCenterX = Float.NaN;
            this.mCenterY = Float.NaN;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public WindowMagnificationAnimationController(android.content.Context r5) {
        /*
            r4 = this;
            android.content.res.Resources r0 = r5.getResources()
            android.animation.ValueAnimator r1 = new android.animation.ValueAnimator
            r1.<init>()
            r2 = 17694722(0x10e0002, float:2.6081287E-38)
            int r0 = r0.getInteger(r2)
            long r2 = (long) r0
            r1.setDuration(r2)
            android.view.animation.AccelerateInterpolator r0 = new android.view.animation.AccelerateInterpolator
            r2 = 1075838976(0x40200000, float:2.5)
            r0.<init>(r2)
            r1.setInterpolator(r0)
            r0 = 2
            float[] r0 = new float[r0]
            r0 = {x002c: FILL_ARRAY_DATA , data: [0, 1065353216} // fill-array
            r1.setFloatValues(r0)
            r4.<init>(r5, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.accessibility.WindowMagnificationAnimationController.<init>(android.content.Context):void");
    }

    public final void enableWindowMagnification(float f, float f2, float f3, float f4, float f5, IRemoteMagnificationAnimationCallback iRemoteMagnificationAnimationCallback) {
        if (this.mController == null) {
            return;
        }
        sendAnimationCallback(false);
        this.mMagnificationFrameOffsetRatioX = f4;
        this.mMagnificationFrameOffsetRatioY = f5;
        if (iRemoteMagnificationAnimationCallback == null) {
            int i = this.mState;
            if (i == 3 || i == 2) {
                this.mValueAnimator.cancel();
            }
            this.mController.enableWindowMagnificationInternal(f, f2, f3, this.mMagnificationFrameOffsetRatioX, this.mMagnificationFrameOffsetRatioY);
            updateState();
            return;
        }
        this.mAnimationCallback = iRemoteMagnificationAnimationCallback;
        setupEnableAnimationSpecs(f, f2, f3);
        if (this.mEndSpec.equals(this.mStartSpec)) {
            int i2 = this.mState;
            if (i2 == 0) {
                this.mController.enableWindowMagnificationInternal(f, f2, f3, this.mMagnificationFrameOffsetRatioX, this.mMagnificationFrameOffsetRatioY);
            } else if (i2 == 3 || i2 == 2) {
                this.mValueAnimator.cancel();
            }
            sendAnimationCallback(true);
            updateState();
            return;
        }
        int i3 = this.mState;
        if (i3 == 2) {
            this.mValueAnimator.reverse();
        } else {
            if (i3 == 3) {
                this.mValueAnimator.cancel();
            }
            this.mValueAnimator.start();
        }
        setState(3);
    }

    public int getState() {
        return this.mState;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.mEndAnimationCanceled = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.mEndAnimationCanceled = false;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.mController == null) {
            return;
        }
        float animatedFraction = valueAnimator.getAnimatedFraction();
        AnimationSpec animationSpec = this.mStartSpec;
        float f = animationSpec.mScale;
        AnimationSpec animationSpec2 = this.mEndSpec;
        float m = DependencyGraph$$ExternalSyntheticOutline0.m(animationSpec2.mScale, f, animatedFraction, f);
        float f2 = animationSpec.mCenterX;
        float m2 = DependencyGraph$$ExternalSyntheticOutline0.m(animationSpec2.mCenterX, f2, animatedFraction, f2);
        float f3 = animationSpec.mCenterY;
        this.mController.enableWindowMagnificationInternal(m, m2, DependencyGraph$$ExternalSyntheticOutline0.m(animationSpec2.mCenterY, f3, animatedFraction, f3), this.mMagnificationFrameOffsetRatioX, this.mMagnificationFrameOffsetRatioY);
    }

    public final void sendAnimationCallback(boolean z) {
        IRemoteMagnificationAnimationCallback iRemoteMagnificationAnimationCallback = this.mAnimationCallback;
        if (iRemoteMagnificationAnimationCallback != null) {
            try {
                iRemoteMagnificationAnimationCallback.onResult(z);
                if (DEBUG) {
                    Log.d("WindowMagnificationAnimationController", "sendAnimationCallback success = " + z);
                }
            } catch (RemoteException e) {
                Log.w("WindowMagnificationAnimationController", "sendAnimationCallback failed : " + e);
            }
            this.mAnimationCallback = null;
        }
    }

    public final void setState(int i) {
        if (DEBUG) {
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("setState from "), this.mState, " to ", i, "WindowMagnificationAnimationController");
        }
        this.mState = i;
    }

    public final void setupEnableAnimationSpecs(float f, float f2, float f3) {
        float f4;
        float f5;
        WindowMagnificationController windowMagnificationController = this.mController;
        if (windowMagnificationController == null) {
            return;
        }
        float f6 = Float.NaN;
        if (windowMagnificationController.isActivated()) {
            f4 = windowMagnificationController.mScale;
        } else {
            f4 = Float.NaN;
        }
        WindowMagnificationController windowMagnificationController2 = this.mController;
        if (windowMagnificationController2.isActivated()) {
            f5 = windowMagnificationController2.mMagnificationFrame.exactCenterX();
        } else {
            f5 = Float.NaN;
        }
        WindowMagnificationController windowMagnificationController3 = this.mController;
        if (windowMagnificationController3.isActivated()) {
            f6 = windowMagnificationController3.mMagnificationFrame.exactCenterY();
        }
        if (this.mState == 0) {
            this.mStartSpec.set(1.0f, f2, f3);
            AnimationSpec animationSpec = this.mEndSpec;
            if (Float.isNaN(f)) {
                f = this.mContext.getResources().getInteger(R.integer.magnification_default_scale);
            }
            animationSpec.set(f, f2, f3);
        } else {
            this.mStartSpec.set(f4, f5, f6);
            int i = this.mState;
            if (i == 3) {
                f4 = this.mEndSpec.mScale;
            }
            if (i == 3) {
                f5 = this.mEndSpec.mCenterX;
            }
            if (i == 3) {
                f6 = this.mEndSpec.mCenterY;
            }
            AnimationSpec animationSpec2 = this.mEndSpec;
            if (Float.isNaN(f)) {
                f = f4;
            }
            if (Float.isNaN(f2)) {
                f2 = f5;
            }
            if (Float.isNaN(f3)) {
                f3 = f6;
            }
            animationSpec2.set(f, f2, f3);
        }
        if (DEBUG) {
            Log.d("WindowMagnificationAnimationController", "SetupEnableAnimationSpecs : mStartSpec = " + this.mStartSpec + ", endSpec = " + this.mEndSpec);
        }
    }

    public final void updateState() {
        float f;
        WindowMagnificationController windowMagnificationController = this.mController;
        if (windowMagnificationController.isActivated()) {
            f = windowMagnificationController.mScale;
        } else {
            f = Float.NaN;
        }
        if (Float.isNaN(f)) {
            setState(0);
        } else {
            setState(1);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        WindowMagnificationController windowMagnificationController;
        if (this.mEndAnimationCanceled || (windowMagnificationController = this.mController) == null) {
            return;
        }
        if (this.mState == 2) {
            windowMagnificationController.deleteWindowMagnification$1();
        }
        updateState();
        sendAnimationCallback(true);
        this.mValueAnimator.setDuration(this.mContext.getResources().getInteger(android.R.integer.config_longAnimTime));
    }

    public WindowMagnificationAnimationController(Context context, ValueAnimator valueAnimator) {
        int i = 0;
        this.mStartSpec = new AnimationSpec(i);
        this.mEndSpec = new AnimationSpec(i);
        this.mMagnificationFrameOffsetRatioX = 0.0f;
        this.mMagnificationFrameOffsetRatioY = 0.0f;
        this.mEndAnimationCanceled = false;
        this.mState = 0;
        this.mContext = context;
        this.mValueAnimator = valueAnimator;
        valueAnimator.addUpdateListener(this);
        valueAnimator.addListener(this);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }
}
