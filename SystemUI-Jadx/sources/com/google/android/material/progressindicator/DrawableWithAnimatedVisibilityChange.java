package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.util.Property;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class DrawableWithAnimatedVisibilityChange extends Drawable implements Animatable2Compat {
    public static final AnonymousClass3 GROW_FRACTION = new Property(Float.class, "growFraction") { // from class: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange.3
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Float.valueOf(((DrawableWithAnimatedVisibilityChange) obj).getGrowFraction());
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = (DrawableWithAnimatedVisibilityChange) obj;
            float floatValue = ((Float) obj2).floatValue();
            if (drawableWithAnimatedVisibilityChange.growFraction != floatValue) {
                drawableWithAnimatedVisibilityChange.growFraction = floatValue;
                drawableWithAnimatedVisibilityChange.invalidateSelf();
            }
        }
    };
    public List animationCallbacks;
    public final BaseProgressIndicatorSpec baseSpec;
    public final Context context;
    public float growFraction;
    public ValueAnimator hideAnimator;
    public boolean ignoreCallbacks;
    public float mockGrowFraction;
    public boolean mockHideAnimationRunning;
    public boolean mockShowAnimationRunning;
    public ValueAnimator showAnimator;
    public int totalAlpha;
    public final Paint paint = new Paint();
    public AnimatorDurationScaleProvider animatorDurationScaleProvider = new AnimatorDurationScaleProvider();

    public DrawableWithAnimatedVisibilityChange(Context context, BaseProgressIndicatorSpec baseProgressIndicatorSpec) {
        this.context = context;
        this.baseSpec = baseProgressIndicatorSpec;
        setAlpha(255);
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void clearAnimationCallbacks() {
        this.animationCallbacks.clear();
        this.animationCallbacks = null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.totalAlpha;
    }

    public final float getGrowFraction() {
        boolean z;
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.baseSpec;
        boolean z2 = true;
        if (baseProgressIndicatorSpec.showAnimationBehavior != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if (baseProgressIndicatorSpec.hideAnimationBehavior == 0) {
                z2 = false;
            }
            if (!z2) {
                return 1.0f;
            }
        }
        if (!this.mockHideAnimationRunning && !this.mockShowAnimationRunning) {
            return this.growFraction;
        }
        return this.mockGrowFraction;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final boolean isHiding() {
        ValueAnimator valueAnimator = this.hideAnimator;
        if ((valueAnimator != null && valueAnimator.isRunning()) || this.mockHideAnimationRunning) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        if (!isShowing() && !isHiding()) {
            return false;
        }
        return true;
    }

    public final boolean isShowing() {
        ValueAnimator valueAnimator = this.showAnimator;
        if ((valueAnimator != null && valueAnimator.isRunning()) || this.mockShowAnimationRunning) {
            return true;
        }
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void registerAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        if (this.animationCallbacks == null) {
            this.animationCallbacks = new ArrayList();
        }
        if (!this.animationCallbacks.contains(animationCallback)) {
            this.animationCallbacks.add(animationCallback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.totalAlpha = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setMockHideAnimationRunning(boolean z, float f) {
        this.mockHideAnimationRunning = z;
        this.mockGrowFraction = f;
    }

    public void setMockShowAnimationRunning(boolean z, float f) {
        this.mockShowAnimationRunning = z;
        this.mockGrowFraction = f;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return setVisible(z, z2, true);
    }

    public boolean setVisibleInternal(boolean z, boolean z2, boolean z3) {
        ValueAnimator valueAnimator;
        boolean z4;
        boolean z5;
        if (this.showAnimator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, GROW_FRACTION, 0.0f, 1.0f);
            this.showAnimator = ofFloat;
            ofFloat.setDuration(500L);
            this.showAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            ValueAnimator valueAnimator2 = this.showAnimator;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.showAnimator = valueAnimator2;
            valueAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = DrawableWithAnimatedVisibilityChange.this;
                    List list = drawableWithAnimatedVisibilityChange.animationCallbacks;
                    if (list != null && !drawableWithAnimatedVisibilityChange.ignoreCallbacks) {
                        Iterator it = ((ArrayList) list).iterator();
                        while (it.hasNext()) {
                            ((Animatable2Compat.AnimationCallback) it.next()).onAnimationStart(drawableWithAnimatedVisibilityChange);
                        }
                    }
                }
            });
        }
        if (this.hideAnimator == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, GROW_FRACTION, 1.0f, 0.0f);
            this.hideAnimator = ofFloat2;
            ofFloat2.setDuration(500L);
            this.hideAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            ValueAnimator valueAnimator3 = this.hideAnimator;
            if (valueAnimator3 != null && valueAnimator3.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.hideAnimator = valueAnimator3;
            valueAnimator3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    DrawableWithAnimatedVisibilityChange.super.setVisible(false, false);
                    DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = DrawableWithAnimatedVisibilityChange.this;
                    List list = drawableWithAnimatedVisibilityChange.animationCallbacks;
                    if (list != null && !drawableWithAnimatedVisibilityChange.ignoreCallbacks) {
                        Iterator it = ((ArrayList) list).iterator();
                        while (it.hasNext()) {
                            ((Animatable2Compat.AnimationCallback) it.next()).onAnimationEnd(drawableWithAnimatedVisibilityChange);
                        }
                    }
                }
            });
        }
        if (!isVisible() && !z) {
            return false;
        }
        if (z) {
            valueAnimator = this.showAnimator;
        } else {
            valueAnimator = this.hideAnimator;
        }
        if (!z3) {
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                boolean z6 = this.ignoreCallbacks;
                this.ignoreCallbacks = true;
                for (ValueAnimator valueAnimator4 : new ValueAnimator[]{valueAnimator}) {
                    valueAnimator4.end();
                }
                this.ignoreCallbacks = z6;
            }
            return super.setVisible(z, false);
        }
        if (z3 && valueAnimator.isRunning()) {
            return false;
        }
        if (z && !super.setVisible(z, false)) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (!z ? this.baseSpec.hideAnimationBehavior != 0 : this.baseSpec.showAnimationBehavior != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (!z5) {
            boolean z7 = this.ignoreCallbacks;
            this.ignoreCallbacks = true;
            for (ValueAnimator valueAnimator5 : new ValueAnimator[]{valueAnimator}) {
                valueAnimator5.end();
            }
            this.ignoreCallbacks = z7;
            return z4;
        }
        if (!z2 && valueAnimator.isPaused()) {
            valueAnimator.resume();
        } else {
            valueAnimator.start();
        }
        return z4;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        setVisibleInternal(true, true, false);
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        setVisibleInternal(false, true, false);
    }

    public final boolean unregisterAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        List list = this.animationCallbacks;
        if (list != null && list.contains(animationCallback)) {
            this.animationCallbacks.remove(animationCallback);
            if (this.animationCallbacks.isEmpty()) {
                this.animationCallbacks = null;
                return true;
            }
            return true;
        }
        return false;
    }

    public final boolean setVisible(boolean z, boolean z2, boolean z3) {
        AnimatorDurationScaleProvider animatorDurationScaleProvider = this.animatorDurationScaleProvider;
        ContentResolver contentResolver = this.context.getContentResolver();
        animatorDurationScaleProvider.getClass();
        return setVisibleInternal(z, z2, z3 && Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) > 0.0f);
    }
}
