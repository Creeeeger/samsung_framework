package com.android.systemui.navigationbar.buttons;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Trace;
import android.view.RenderNodeAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.systemui.navigationbar.BasicRuneWrapper;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.util.ArrayList;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyButtonRipple extends Drawable {
    public static final Interpolator ALPHA_OUT_INTERPOLATOR = new PathInterpolator(0.0f, 0.0f, 0.8f, 1.0f);
    public final float GLOW_MAX_SCALE_FACTOR;
    public final AnonymousClass1 mAnimatorListener;
    public CanvasProperty mBottomProp;
    public boolean mDark;
    public boolean mDrawingHardwareGlow;
    public final TraceAnimatorListener mEnterHwTraceAnimator;
    public final TraceAnimatorListener mExitHwTraceAnimator;
    public float mGlowAlpha;
    public float mGlowScale;
    public final Handler mHandler;
    public final LogInterpolator mInterpolator;
    public boolean mLastDark;
    public CanvasProperty mLeftProp;
    public int mMaxWidth;
    public final int mMaxWidthResource;
    public CanvasProperty mPaintProp;
    public boolean mPressed;
    public CanvasProperty mRightProp;
    public Paint mRipplePaint;
    public final HashSet mRunningAnimations;
    public CanvasProperty mRxProp;
    public CanvasProperty mRyProp;
    public boolean mSupportHardware;
    public final View mTargetView;
    public final ArrayList mTmpArray;
    public CanvasProperty mTopProp;
    public Type mType;
    public boolean mVisible;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class LogInterpolator implements Interpolator {
        private LogInterpolator() {
        }

        public /* synthetic */ LogInterpolator(int i) {
            this();
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return 1.0f - ((float) Math.pow(400.0d, (-f) * 1.4d));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class TraceAnimatorListener extends AnimatorListenerAdapter {
        public final String mName;

        public TraceAnimatorListener(String str) {
            this.mName = str;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            if (Trace.isEnabled()) {
                Trace.instant(4096L, "KeyButtonRipple.cancel." + this.mName);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (Trace.isEnabled()) {
                Trace.instant(4096L, "KeyButtonRipple.end." + this.mName);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (Trace.isEnabled()) {
                Trace.instant(4096L, "KeyButtonRipple.start." + this.mName);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum Type {
        OVAL,
        ROUNDED_RECT
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.systemui.navigationbar.buttons.KeyButtonRipple$1] */
    public KeyButtonRipple(Context context, View view, int i) {
        this.GLOW_MAX_SCALE_FACTOR = 1.35f;
        this.mGlowAlpha = 0.0f;
        this.mGlowScale = 1.0f;
        this.mInterpolator = new LogInterpolator(0);
        this.mHandler = new Handler();
        this.mRunningAnimations = new HashSet();
        this.mTmpArray = new ArrayList();
        this.mExitHwTraceAnimator = new TraceAnimatorListener("exitHardware");
        this.mEnterHwTraceAnimator = new TraceAnimatorListener("enterHardware");
        this.mType = Type.ROUNDED_RECT;
        this.mAnimatorListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.navigationbar.buttons.KeyButtonRipple.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyButtonRipple.this.mRunningAnimations.remove(animator);
                if (KeyButtonRipple.this.mRunningAnimations.isEmpty()) {
                    KeyButtonRipple keyButtonRipple = KeyButtonRipple.this;
                    if (!keyButtonRipple.mPressed) {
                        keyButtonRipple.mVisible = false;
                        keyButtonRipple.mDrawingHardwareGlow = false;
                        keyButtonRipple.invalidateSelf();
                    }
                }
            }
        };
        this.mMaxWidthResource = i;
        this.mMaxWidth = context.getResources().getDimensionPixelSize(i);
        this.mTargetView = view;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        float f;
        float f2;
        boolean isHardwareAccelerated = canvas.isHardwareAccelerated();
        this.mSupportHardware = isHardwareAccelerated;
        if (isHardwareAccelerated) {
            RecordingCanvas recordingCanvas = (RecordingCanvas) canvas;
            if (this.mDrawingHardwareGlow) {
                if (this.mType == Type.ROUNDED_RECT) {
                    recordingCanvas.drawRoundRect(this.mLeftProp, this.mTopProp, this.mRightProp, this.mBottomProp, this.mRxProp, this.mRyProp, this.mPaintProp);
                    return;
                } else {
                    recordingCanvas.drawCircle(CanvasProperty.createFloat(getBounds().width() / 2), CanvasProperty.createFloat(getBounds().height() / 2), CanvasProperty.createFloat((Math.min(getBounds().width(), getBounds().height()) * 1.0f) / 2.0f), this.mPaintProp);
                    return;
                }
            }
            return;
        }
        if (this.mGlowAlpha > 0.0f) {
            Paint ripplePaint = getRipplePaint();
            ripplePaint.setAlpha((int) (this.mGlowAlpha * 255.0f));
            float width = getBounds().width();
            float height = getBounds().height();
            if (width > height) {
                z = true;
            } else {
                z = false;
            }
            float rippleSize = getRippleSize() * this.mGlowScale * 0.5f;
            float f3 = width * 0.5f;
            float f4 = height * 0.5f;
            if (z) {
                f = rippleSize;
            } else {
                f = f3;
            }
            if (z) {
                rippleSize = f4;
            }
            if (z) {
                f2 = f4;
            } else {
                f2 = f3;
            }
            if (this.mType == Type.ROUNDED_RECT) {
                canvas.drawRoundRect(f3 - f, f4 - rippleSize, f + f3, f4 + rippleSize, f2, f2, ripplePaint);
                return;
            }
            canvas.save();
            canvas.translate(f3, f4);
            float min = Math.min(f, rippleSize);
            float f5 = -min;
            canvas.drawOval(f5, f5, min, min, ripplePaint);
            canvas.restore();
        }
    }

    public final void endAnimations(String str, boolean z) {
        if (Trace.isEnabled()) {
            Trace.instant(4096L, "KeyButtonRipple.endAnim: reason=" + str + " cancel=" + z);
        }
        this.mVisible = false;
        this.mTmpArray.addAll(this.mRunningAnimations);
        int size = this.mTmpArray.size();
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) this.mTmpArray.get(i);
            if (z) {
                animator.cancel();
            } else {
                animator.end();
            }
        }
        this.mTmpArray.clear();
        this.mRunningAnimations.clear();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public final void enterHardware() {
        CanvasProperty canvasProperty;
        CanvasProperty canvasProperty2;
        float f;
        endAnimations("enterHardware", true);
        this.mVisible = true;
        this.mDrawingHardwareGlow = true;
        CanvasProperty createFloat = CanvasProperty.createFloat(getExtendSize() / 2);
        if (isHorizontal()) {
            this.mLeftProp = createFloat;
        } else {
            this.mTopProp = createFloat;
        }
        if (isHorizontal()) {
            canvasProperty = this.mLeftProp;
        } else {
            canvasProperty = this.mTopProp;
        }
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(canvasProperty, (getExtendSize() / 2) - ((this.GLOW_MAX_SCALE_FACTOR * getRippleSize()) / 2.0f));
        renderNodeAnimator.setDuration(350L);
        renderNodeAnimator.setInterpolator(this.mInterpolator);
        renderNodeAnimator.addListener(this.mAnimatorListener);
        renderNodeAnimator.setTarget(this.mTargetView);
        CanvasProperty createFloat2 = CanvasProperty.createFloat(getExtendSize() / 2);
        if (isHorizontal()) {
            this.mRightProp = createFloat2;
        } else {
            this.mBottomProp = createFloat2;
        }
        if (isHorizontal()) {
            canvasProperty2 = this.mRightProp;
        } else {
            canvasProperty2 = this.mBottomProp;
        }
        RenderNodeAnimator renderNodeAnimator2 = new RenderNodeAnimator(canvasProperty2, ((this.GLOW_MAX_SCALE_FACTOR * getRippleSize()) / 2.0f) + (getExtendSize() / 2));
        renderNodeAnimator2.setDuration(350L);
        renderNodeAnimator2.setInterpolator(this.mInterpolator);
        renderNodeAnimator2.addListener(this.mAnimatorListener);
        renderNodeAnimator2.addListener(this.mEnterHwTraceAnimator);
        renderNodeAnimator2.setTarget(this.mTargetView);
        if (isHorizontal()) {
            this.mTopProp = CanvasProperty.createFloat(0.0f);
            this.mBottomProp = CanvasProperty.createFloat(getBounds().height());
            this.mRxProp = CanvasProperty.createFloat(getBounds().height() / 2);
            this.mRyProp = CanvasProperty.createFloat(getBounds().height() / 2);
        } else {
            this.mLeftProp = CanvasProperty.createFloat(0.0f);
            this.mRightProp = CanvasProperty.createFloat(getBounds().width());
            this.mRxProp = CanvasProperty.createFloat(getBounds().width() / 2);
            this.mRyProp = CanvasProperty.createFloat(getBounds().width() / 2);
        }
        this.mGlowScale = this.GLOW_MAX_SCALE_FACTOR;
        if (this.mLastDark) {
            f = 0.1f;
        } else {
            f = 0.2f;
        }
        this.mGlowAlpha = f;
        Paint ripplePaint = getRipplePaint();
        this.mRipplePaint = ripplePaint;
        ripplePaint.setAlpha((int) (this.mGlowAlpha * 255.0f));
        this.mPaintProp = CanvasProperty.createPaint(this.mRipplePaint);
        renderNodeAnimator.start();
        renderNodeAnimator2.start();
        this.mRunningAnimations.add(renderNodeAnimator);
        this.mRunningAnimations.add(renderNodeAnimator2);
        invalidateSelf();
    }

    public final void enterSoftware() {
        float f;
        endAnimations("enterSoftware", true);
        this.mVisible = true;
        if (this.mLastDark) {
            f = 0.1f;
        } else {
            f = 0.2f;
        }
        this.mGlowAlpha = f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "glowScale", 0.0f, this.GLOW_MAX_SCALE_FACTOR);
        ofFloat.setInterpolator(this.mInterpolator);
        ofFloat.setDuration(350L);
        ofFloat.addListener(this.mAnimatorListener);
        ofFloat.start();
        this.mRunningAnimations.add(ofFloat);
    }

    public final void exitHardware() {
        this.mPaintProp = CanvasProperty.createPaint(getRipplePaint());
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(this.mPaintProp, 1, 0.0f);
        renderNodeAnimator.setDuration(450L);
        renderNodeAnimator.setInterpolator(ALPHA_OUT_INTERPOLATOR);
        renderNodeAnimator.addListener(this.mAnimatorListener);
        renderNodeAnimator.addListener(this.mExitHwTraceAnimator);
        renderNodeAnimator.setTarget(this.mTargetView);
        renderNodeAnimator.start();
        this.mRunningAnimations.add(renderNodeAnimator);
        invalidateSelf();
    }

    public final void exitSoftware() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "glowAlpha", this.mGlowAlpha, 0.0f);
        ofFloat.setInterpolator(ALPHA_OUT_INTERPOLATOR);
        ofFloat.setDuration(450L);
        ofFloat.addListener(this.mAnimatorListener);
        ofFloat.start();
        this.mRunningAnimations.add(ofFloat);
    }

    public final int getExtendSize() {
        boolean isHorizontal = isHorizontal();
        Rect bounds = getBounds();
        if (isHorizontal) {
            return bounds.width();
        }
        return bounds.height();
    }

    public float getGlowAlpha() {
        return this.mGlowAlpha;
    }

    public float getGlowScale() {
        return this.mGlowScale;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final Paint getRipplePaint() {
        int i;
        if (this.mRipplePaint == null) {
            Paint paint = new Paint();
            this.mRipplePaint = paint;
            paint.setAntiAlias(true);
            Paint paint2 = this.mRipplePaint;
            if (this.mLastDark) {
                i = EmergencyPhoneWidget.BG_COLOR;
            } else {
                i = -1;
            }
            paint2.setColor(i);
        }
        return this.mRipplePaint;
    }

    public final int getRippleSize() {
        int height;
        if (isHorizontal()) {
            height = getBounds().width();
        } else {
            height = getBounds().height();
        }
        if (!BasicRuneWrapper.NAVBAR_ENABLED) {
            return Math.min(height, this.mMaxWidth);
        }
        return height;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean hasFocusStateSpecified() {
        return true;
    }

    public final boolean isHorizontal() {
        if (getBounds().width() > getBounds().height()) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        endAnimations("jumpToCurrentState", false);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        int i = 0;
        while (true) {
            if (i < iArr.length) {
                if (iArr[i] == 16842919) {
                    z = true;
                    break;
                }
                i++;
            } else {
                z = false;
                break;
            }
        }
        if (z == this.mPressed) {
            return false;
        }
        boolean z2 = this.mDark;
        if (z2 != this.mLastDark && z) {
            this.mRipplePaint = null;
            this.mLastDark = z2;
        }
        if (this.mSupportHardware) {
            if (z) {
                enterHardware();
            } else {
                exitHardware();
            }
        } else if (z) {
            enterSoftware();
        } else {
            exitSoftware();
        }
        this.mPressed = z;
        return true;
    }

    public final void setDarkIntensity(float f) {
        boolean z;
        if (f >= 0.5f) {
            z = true;
        } else {
            z = false;
        }
        this.mDark = z;
    }

    public void setGlowAlpha(float f) {
        this.mGlowAlpha = f;
        invalidateSelf();
    }

    public void setGlowScale(float f) {
        this.mGlowScale = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (visible) {
            jumpToCurrentState();
        }
        return visible;
    }

    public KeyButtonRipple(Context context, View view, int i, float f) {
        this(context, view, i);
        this.GLOW_MAX_SCALE_FACTOR = f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
