package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.graphics.PointF;
import android.view.Choreographer;
import com.airbnb.lottie.LottieComposition;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LottieValueAnimator extends BaseLottieAnimator implements Choreographer.FrameCallback {
    public LottieComposition composition;
    public float speed = 1.0f;
    public boolean speedReversedForRepeatMode = false;
    public long lastFrameTimeNs = 0;
    public float frameRaw = 0.0f;
    public float frame = 0.0f;
    public int repeatCount = 0;
    public float minFrame = -2.14748365E9f;
    public float maxFrame = 2.14748365E9f;
    public boolean running = false;
    public boolean useCompositionFrameRate = false;

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = ((CopyOnWriteArraySet) this.listeners).iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        notifyEnd(isReversed());
        removeFrameCallback(true);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        float minFrame;
        float maxFrame;
        boolean z = false;
        if (this.running) {
            removeFrameCallback(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null && this.running) {
            long j2 = this.lastFrameTimeNs;
            long j3 = 0;
            if (j2 != 0) {
                j3 = j - j2;
            }
            float abs = ((float) j3) / ((1.0E9f / lottieComposition.frameRate) / Math.abs(this.speed));
            float f = this.frameRaw;
            if (isReversed()) {
                abs = -abs;
            }
            float f2 = f + abs;
            float minFrame2 = getMinFrame();
            float maxFrame2 = getMaxFrame();
            PointF pointF = MiscUtils.pathFromDataCurrentPoint;
            if (f2 >= minFrame2 && f2 <= maxFrame2) {
                z = true;
            }
            boolean z2 = !z;
            float f3 = this.frameRaw;
            float clamp = MiscUtils.clamp(f2, getMinFrame(), getMaxFrame());
            this.frameRaw = clamp;
            if (this.useCompositionFrameRate) {
                clamp = (float) Math.floor(clamp);
            }
            this.frame = clamp;
            this.lastFrameTimeNs = j;
            if (!this.useCompositionFrameRate || this.frameRaw != f3) {
                notifyUpdate();
            }
            if (z2) {
                if (getRepeatCount() != -1 && this.repeatCount >= getRepeatCount()) {
                    if (this.speed < 0.0f) {
                        maxFrame = getMinFrame();
                    } else {
                        maxFrame = getMaxFrame();
                    }
                    this.frameRaw = maxFrame;
                    this.frame = maxFrame;
                    removeFrameCallback(true);
                    notifyEnd(isReversed());
                } else {
                    Iterator it = ((CopyOnWriteArraySet) this.listeners).iterator();
                    while (it.hasNext()) {
                        ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                    }
                    this.repeatCount++;
                    if (getRepeatMode() == 2) {
                        this.speedReversedForRepeatMode = !this.speedReversedForRepeatMode;
                        this.speed = -this.speed;
                    } else {
                        if (isReversed()) {
                            minFrame = getMaxFrame();
                        } else {
                            minFrame = getMinFrame();
                        }
                        this.frameRaw = minFrame;
                        this.frame = minFrame;
                    }
                    this.lastFrameTimeNs = j;
                }
            }
            if (this.composition != null) {
                float f4 = this.frame;
                if (f4 >= this.minFrame && f4 <= this.maxFrame) {
                } else {
                    throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.minFrame), Float.valueOf(this.maxFrame), Float.valueOf(this.frame)));
                }
            }
        }
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float minFrame;
        float maxFrame;
        float minFrame2;
        if (this.composition == null) {
            return 0.0f;
        }
        if (isReversed()) {
            minFrame = getMaxFrame() - this.frame;
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        } else {
            minFrame = this.frame - getMinFrame();
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        }
        return minFrame / (maxFrame - minFrame2);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        return Float.valueOf(getAnimatedValueAbsolute());
    }

    public final float getAnimatedValueAbsolute() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return 0.0f;
        }
        float f = this.frame;
        float f2 = lottieComposition.startFrame;
        return (f - f2) / (lottieComposition.endFrame - f2);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        if (this.composition == null) {
            return 0L;
        }
        return r2.getDuration();
    }

    public final float getMaxFrame() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return 0.0f;
        }
        float f = this.maxFrame;
        if (f == 2.14748365E9f) {
            return lottieComposition.endFrame;
        }
        return f;
    }

    public final float getMinFrame() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return 0.0f;
        }
        float f = this.minFrame;
        if (f == -2.14748365E9f) {
            return lottieComposition.startFrame;
        }
        return f;
    }

    public final boolean isReversed() {
        if (this.speed < 0.0f) {
            return true;
        }
        return false;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.running;
    }

    public final void removeFrameCallback(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.running = false;
        }
    }

    public final void setFrame(float f) {
        if (this.frameRaw == f) {
            return;
        }
        float clamp = MiscUtils.clamp(f, getMinFrame(), getMaxFrame());
        this.frameRaw = clamp;
        if (this.useCompositionFrameRate) {
            clamp = (float) Math.floor(clamp);
        }
        this.frame = clamp;
        this.lastFrameTimeNs = 0L;
        notifyUpdate();
    }

    public final void setMinAndMaxFrames(float f, float f2) {
        float f3;
        float f4;
        if (f <= f2) {
            LottieComposition lottieComposition = this.composition;
            if (lottieComposition == null) {
                f3 = -3.4028235E38f;
            } else {
                f3 = lottieComposition.startFrame;
            }
            if (lottieComposition == null) {
                f4 = Float.MAX_VALUE;
            } else {
                f4 = lottieComposition.endFrame;
            }
            float clamp = MiscUtils.clamp(f, f3, f4);
            float clamp2 = MiscUtils.clamp(f2, f3, f4);
            if (clamp != this.minFrame || clamp2 != this.maxFrame) {
                this.minFrame = clamp;
                this.maxFrame = clamp2;
                setFrame((int) MiscUtils.clamp(this.frame, clamp, clamp2));
                return;
            }
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f), Float.valueOf(f2)));
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i != 2 && this.speedReversedForRepeatMode) {
            this.speedReversedForRepeatMode = false;
            this.speed = -this.speed;
        }
    }
}
