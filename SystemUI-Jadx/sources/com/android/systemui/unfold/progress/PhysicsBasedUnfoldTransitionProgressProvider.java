package com.android.systemui.unfold.progress;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Trace;
import android.util.FloatProperty;
import android.util.Log;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.systemui.unfold.UnfoldTransitionProgressProvider;
import com.android.systemui.unfold.updates.DeviceFoldStateProvider;
import com.android.systemui.unfold.updates.DeviceFoldStateProviderKt;
import com.android.systemui.unfold.updates.FoldStateProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PhysicsBasedUnfoldTransitionProgressProvider implements UnfoldTransitionProgressProvider, FoldStateProvider.FoldUpdatesListener, DynamicAnimation.OnAnimationEndListener {
    public ValueAnimator cannedAnimator;
    public final Interpolator emphasizedInterpolator;
    public final FoldStateProvider foldStateProvider;
    public boolean isAnimatedCancelRunning;
    public boolean isTransitionRunning;
    public final List listeners;
    public final SpringAnimation springAnimation;
    public float transitionProgress;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AnimationProgressProperty extends FloatProperty {
        public static final AnimationProgressProperty INSTANCE = new AnimationProgressProperty();

        private AnimationProgressProperty() {
            super("animation_progress");
        }

        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((PhysicsBasedUnfoldTransitionProgressProvider) obj).transitionProgress);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f) {
            ((PhysicsBasedUnfoldTransitionProgressProvider) obj).setTransitionProgress(f);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CannedAnimationListener extends AnimatorListenerAdapter {
        public CannedAnimationListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            PhysicsBasedUnfoldTransitionProgressProvider.this.cancelTransition(1.0f, false);
            Trace.endAsyncSection("PhysicsBasedUnfoldTransitionProgressProvider#cannedAnimatorRunning", 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            Trace.beginAsyncSection("PhysicsBasedUnfoldTransitionProgressProvider#cannedAnimatorRunning", 0);
        }
    }

    public PhysicsBasedUnfoldTransitionProgressProvider(Context context, FoldStateProvider foldStateProvider) {
        this.foldStateProvider = foldStateProvider;
        this.emphasizedInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_extra_slow_in);
        AnimationProgressProperty animationProgressProperty = AnimationProgressProperty.INSTANCE;
        SpringAnimation springAnimation = new SpringAnimation(this, new FloatPropertyCompat.AnonymousClass1(animationProgressProperty.getName(), animationProgressProperty));
        springAnimation.addEndListener(this);
        this.springAnimation = springAnimation;
        this.listeners = new ArrayList();
        DeviceFoldStateProvider deviceFoldStateProvider = (DeviceFoldStateProvider) foldStateProvider;
        deviceFoldStateProvider.addCallback(this);
        deviceFoldStateProvider.start();
    }

    @Override // com.android.systemui.unfold.util.CallbackController
    public final void addCallback(Object obj) {
        ((ArrayList) this.listeners).add((UnfoldTransitionProgressProvider.TransitionProgressListener) obj);
    }

    public final void cancelTransition(float f, boolean z) {
        boolean z2;
        boolean z3 = this.isTransitionRunning;
        List list = this.listeners;
        SpringAnimation springAnimation = this.springAnimation;
        if (z3 && z) {
            if (f == 1.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 && !this.isAnimatedCancelRunning) {
                Iterator it = ((ArrayList) list).iterator();
                while (it.hasNext()) {
                    ((UnfoldTransitionProgressProvider.TransitionProgressListener) it.next()).onTransitionFinishing();
                }
            }
            this.isAnimatedCancelRunning = true;
            ValueAnimator valueAnimator = this.cannedAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.cannedAnimator = null;
            springAnimation.removeEndListener(this);
            springAnimation.cancel();
            springAnimation.addEndListener(this);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, AnimationProgressProperty.INSTANCE, this.transitionProgress, 1.0f);
            ofFloat.addListener(new CannedAnimationListener());
            ofFloat.setDuration((1.0f - this.transitionProgress) * 1000.0f);
            ofFloat.setInterpolator(this.emphasizedInterpolator);
            ofFloat.start();
            this.cannedAnimator = ofFloat;
            return;
        }
        setTransitionProgress(f);
        this.isAnimatedCancelRunning = false;
        this.isTransitionRunning = false;
        springAnimation.cancel();
        ValueAnimator valueAnimator2 = this.cannedAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.cannedAnimator;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
        }
        this.cannedAnimator = null;
        Iterator it2 = ((ArrayList) list).iterator();
        while (it2.hasNext()) {
            ((UnfoldTransitionProgressProvider.TransitionProgressListener) it2.next()).onTransitionFinished();
        }
        Log.d("PhysicsBasedUnfoldTransitionProgressProvider", "onTransitionFinished");
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
    public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (this.isAnimatedCancelRunning) {
            cancelTransition(f, false);
        }
    }

    @Override // com.android.systemui.unfold.updates.FoldStateProvider.FoldUpdatesListener
    public final void onFoldUpdate(int i) {
        if (i != 1) {
            if (i != 2 && i != 3) {
                if (i == 4) {
                    cancelTransition(0.0f, false);
                }
            } else if (this.isTransitionRunning) {
                cancelTransition(1.0f, true);
            }
        } else if (this.isTransitionRunning) {
            if (this.isAnimatedCancelRunning) {
                this.isAnimatedCancelRunning = false;
                this.springAnimation.animateToFinalPosition(1.0f);
                ValueAnimator valueAnimator = this.cannedAnimator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllListeners();
                }
                ValueAnimator valueAnimator2 = this.cannedAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.cannedAnimator = null;
            }
        } else {
            startTransition(1.0f);
        }
        Log.d("PhysicsBasedUnfoldTransitionProgressProvider", "onFoldUpdate = ".concat(DeviceFoldStateProviderKt.name(i)));
        Trace.setCounter("fold_update", i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        if (r3 > 1.0f) goto L9;
     */
    @Override // com.android.systemui.unfold.updates.FoldStateProvider.FoldUpdatesListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onHingeAngleUpdate(float r3) {
        /*
            r2 = this;
            boolean r0 = r2.isTransitionRunning
            if (r0 == 0) goto L1f
            boolean r0 = r2.isAnimatedCancelRunning
            if (r0 == 0) goto L9
            goto L1f
        L9:
            r0 = 1126498304(0x43250000, float:165.0)
            float r3 = r3 / r0
            r0 = 0
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 >= 0) goto L13
        L11:
            r3 = r0
            goto L1a
        L13:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 <= 0) goto L1a
            goto L11
        L1a:
            androidx.dynamicanimation.animation.SpringAnimation r2 = r2.springAnimation
            r2.animateToFinalPosition(r3)
        L1f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.unfold.progress.PhysicsBasedUnfoldTransitionProgressProvider.onHingeAngleUpdate(float):void");
    }

    @Override // com.android.systemui.unfold.updates.FoldStateProvider.FoldUpdatesListener
    public final void onUnfoldedScreenAvailable() {
        boolean z;
        Integer num;
        Integer num2;
        startTransition(0.0f);
        DeviceFoldStateProvider deviceFoldStateProvider = (DeviceFoldStateProvider) this.foldStateProvider;
        if (!deviceFoldStateProvider.isFolded && (((num = deviceFoldStateProvider.lastFoldUpdate) != null && num.intValue() == 3) || ((num2 = deviceFoldStateProvider.lastFoldUpdate) != null && num2.intValue() == 2))) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            cancelTransition(1.0f, true);
        }
    }

    @Override // com.android.systemui.unfold.util.CallbackController
    public final void removeCallback(Object obj) {
        ((ArrayList) this.listeners).remove((UnfoldTransitionProgressProvider.TransitionProgressListener) obj);
    }

    public final void setTransitionProgress(float f) {
        if (this.isTransitionRunning) {
            Iterator it = this.listeners.iterator();
            while (it.hasNext()) {
                ((UnfoldTransitionProgressProvider.TransitionProgressListener) it.next()).onTransitionProgress(f);
            }
        }
        this.transitionProgress = f;
    }

    public final void startTransition(float f) {
        if (!this.isTransitionRunning) {
            Trace.beginSection("PhysicsBasedUnfoldTransitionProgressProvider#onStartTransition");
            Iterator it = ((ArrayList) this.listeners).iterator();
            while (it.hasNext()) {
                ((UnfoldTransitionProgressProvider.TransitionProgressListener) it.next()).onTransitionStarted();
            }
            Trace.endSection();
            this.isTransitionRunning = true;
            Log.d("PhysicsBasedUnfoldTransitionProgressProvider", "onTransitionStarted");
        }
        SpringForce springForce = new SpringForce();
        springForce.mFinalPosition = f;
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(600.0f);
        SpringAnimation springAnimation = this.springAnimation;
        springAnimation.mSpring = springForce;
        springAnimation.setMinimumVisibleChange(0.001f);
        springAnimation.setStartValue(f);
        springAnimation.mMinValue = 0.0f;
        springAnimation.mMaxValue = 1.0f;
        springAnimation.start();
    }
}
