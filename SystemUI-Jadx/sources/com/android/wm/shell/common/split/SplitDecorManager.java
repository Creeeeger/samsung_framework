package com.android.wm.shell.common.split;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.IBinder;
import android.view.IWindow;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.WindowManager;
import android.view.WindowlessWindowManager;
import com.android.launcher3.icons.IconProvider;
import com.android.wm.shell.splitscreen.SplitScreenTransitions$$ExternalSyntheticLambda5;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitDecorManager extends WindowlessWindowManager {
    public ValueAnimator mFadeAnimator;
    public SurfaceControl mIconLeash;
    public final Rect mOldBounds;
    public final Rect mResizingBounds;
    public int mRunningAnimationCount;
    public SurfaceControl mScreenshot;
    public ValueAnimator mScreenshotAnimator;

    public SplitDecorManager(Configuration configuration, IconProvider iconProvider, SurfaceSession surfaceSession) {
        super(configuration, (SurfaceControl) null, (IBinder) null);
        this.mOldBounds = new Rect();
        this.mResizingBounds = new Rect();
        new Rect();
        this.mRunningAnimationCount = 0;
    }

    public final SurfaceControl getParentSurface(IWindow iWindow, WindowManager.LayoutParams layoutParams) {
        SurfaceControl build = new SurfaceControl.Builder(new SurfaceSession()).setContainerLayer().setName("SplitDecorManager").setHidden(true).setParent(null).setCallsite("SplitDecorManager#attachToParentSurface").build();
        this.mIconLeash = build;
        return build;
    }

    public final void onResized(SurfaceControl.Transaction transaction, final SplitScreenTransitions$$ExternalSyntheticLambda5 splitScreenTransitions$$ExternalSyntheticLambda5) {
        ValueAnimator valueAnimator = this.mScreenshotAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mScreenshotAnimator.cancel();
        }
        SurfaceControl surfaceControl = this.mScreenshot;
        if (surfaceControl != null) {
            float f = 0;
            transaction.setPosition(surfaceControl, f, f);
            final SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.mScreenshotAnimator = ofFloat;
            ofFloat.setDuration(133L);
            this.mScreenshotAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.common.split.SplitDecorManager$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SplitDecorManager splitDecorManager = SplitDecorManager.this;
                    SurfaceControl.Transaction transaction3 = transaction2;
                    splitDecorManager.getClass();
                    transaction3.setAlpha(splitDecorManager.mScreenshot, ((Float) valueAnimator2.getAnimatedValue()).floatValue());
                    transaction3.apply();
                }
            });
            this.mScreenshotAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.common.split.SplitDecorManager.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    Consumer consumer;
                    r2.mRunningAnimationCount--;
                    transaction2.remove(SplitDecorManager.this.mScreenshot);
                    transaction2.apply();
                    transaction2.close();
                    SplitDecorManager splitDecorManager = SplitDecorManager.this;
                    splitDecorManager.mScreenshot = null;
                    if (splitDecorManager.mRunningAnimationCount == 0 && (consumer = splitScreenTransitions$$ExternalSyntheticLambda5) != null) {
                        consumer.accept(Boolean.TRUE);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    SplitDecorManager.this.mRunningAnimationCount++;
                }
            });
            this.mScreenshotAnimator.start();
        }
        if (this.mRunningAnimationCount == 0 && splitScreenTransitions$$ExternalSyntheticLambda5 != null) {
            splitScreenTransitions$$ExternalSyntheticLambda5.accept(Boolean.FALSE);
        }
    }

    public final void release(SurfaceControl.Transaction transaction) {
        ValueAnimator valueAnimator = this.mFadeAnimator;
        if (valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                this.mFadeAnimator.cancel();
            }
            this.mFadeAnimator = null;
        }
        ValueAnimator valueAnimator2 = this.mScreenshotAnimator;
        if (valueAnimator2 != null) {
            if (valueAnimator2.isRunning()) {
                this.mScreenshotAnimator.cancel();
            }
            this.mScreenshotAnimator = null;
        }
        SurfaceControl surfaceControl = this.mIconLeash;
        if (surfaceControl != null) {
            transaction.remove(surfaceControl);
            this.mIconLeash = null;
        }
        SurfaceControl surfaceControl2 = this.mScreenshot;
        if (surfaceControl2 != null) {
            transaction.remove(surfaceControl2);
            this.mScreenshot = null;
        }
        this.mOldBounds.setEmpty();
        this.mResizingBounds.setEmpty();
    }
}
