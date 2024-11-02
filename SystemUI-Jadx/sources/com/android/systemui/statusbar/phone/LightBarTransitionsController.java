package com.android.systemui.statusbar.phone;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.util.MathUtils;
import android.util.TimeUtils;
import com.android.app.animation.Interpolators;
import com.android.systemui.BasicRune;
import com.android.systemui.Dumpable;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.LightBarTransitionsController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LightBarTransitionsController implements Dumpable {
    public final DarkIntensityApplier mApplier;
    public final Callback mCallback;
    public final CommandQueue mCommandQueue;
    public float mDarkIntensity;
    public final int mDisplayId;
    public float mDozeAmount;
    public final KeyguardStateController mKeyguardStateController;
    public float mNextDarkIntensity;
    public float mPendingDarkIntensity;
    public final StatusBarStateController mStatusBarStateController;
    public ValueAnimator mTintAnimator;
    public boolean mTintChangePending;
    public boolean mTransitionDeferring;
    public long mTransitionDeferringDuration;
    public long mTransitionDeferringStartTime;
    public boolean mTransitionPending;
    public final AnonymousClass1 mTransitionDeferringDoneRunnable = new Runnable() { // from class: com.android.systemui.statusbar.phone.LightBarTransitionsController.1
        @Override // java.lang.Runnable
        public final void run() {
            LightBarTransitionsController.this.mTransitionDeferring = false;
        }
    };
    public boolean needGrayIcon = false;
    public boolean iconColorChanged = false;
    public final Handler mHandler = new Handler();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Callback implements CommandQueue.Callbacks, StatusBarStateController.StateListener {
        public final WeakReference mSelf;

        public Callback(LightBarTransitionsController lightBarTransitionsController) {
            this.mSelf = new WeakReference(lightBarTransitionsController);
        }

        @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
        public final void appTransitionCancelled(int i) {
            LightBarTransitionsController lightBarTransitionsController = (LightBarTransitionsController) this.mSelf.get();
            if (lightBarTransitionsController != null && lightBarTransitionsController.mDisplayId == i) {
                if (lightBarTransitionsController.mTransitionPending && lightBarTransitionsController.mTintChangePending) {
                    lightBarTransitionsController.mTintChangePending = false;
                    lightBarTransitionsController.animateIconTint(lightBarTransitionsController.mPendingDarkIntensity, 0L, lightBarTransitionsController.mApplier.getTintAnimationDuration());
                }
                lightBarTransitionsController.mTransitionPending = false;
            }
        }

        @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
        public final void appTransitionPending(int i, boolean z) {
            LightBarTransitionsController lightBarTransitionsController = (LightBarTransitionsController) this.mSelf.get();
            if (lightBarTransitionsController != null && lightBarTransitionsController.mDisplayId == i) {
                if (!((KeyguardStateControllerImpl) lightBarTransitionsController.mKeyguardStateController).mKeyguardGoingAway || z) {
                    lightBarTransitionsController.mTransitionPending = true;
                }
            }
        }

        @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
        public final void appTransitionStarting(int i, long j, long j2, boolean z) {
            LightBarTransitionsController lightBarTransitionsController = (LightBarTransitionsController) this.mSelf.get();
            if (lightBarTransitionsController != null && lightBarTransitionsController.mDisplayId == i) {
                if (!((KeyguardStateControllerImpl) lightBarTransitionsController.mKeyguardStateController).mKeyguardGoingAway || z) {
                    boolean z2 = lightBarTransitionsController.mTransitionPending;
                    if (z2 && lightBarTransitionsController.mTintChangePending) {
                        lightBarTransitionsController.mTintChangePending = false;
                        lightBarTransitionsController.animateIconTint(lightBarTransitionsController.mPendingDarkIntensity, Math.max(0L, j - SystemClock.uptimeMillis()), j2);
                    } else if (z2) {
                        lightBarTransitionsController.mTransitionDeferring = true;
                        lightBarTransitionsController.mTransitionDeferringStartTime = j;
                        lightBarTransitionsController.mTransitionDeferringDuration = j2;
                        Handler handler = lightBarTransitionsController.mHandler;
                        AnonymousClass1 anonymousClass1 = lightBarTransitionsController.mTransitionDeferringDoneRunnable;
                        handler.removeCallbacks(anonymousClass1);
                        handler.postAtTime(anonymousClass1, j);
                    }
                    lightBarTransitionsController.mTransitionPending = false;
                }
            }
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onDozeAmountChanged(float f, float f2) {
            LightBarTransitionsController lightBarTransitionsController = (LightBarTransitionsController) this.mSelf.get();
            if (lightBarTransitionsController != null) {
                lightBarTransitionsController.mDozeAmount = f2;
                if (!BasicRune.NAVBAR_ENABLED) {
                    lightBarTransitionsController.mApplier.applyDarkIntensity(MathUtils.lerp(lightBarTransitionsController.mDarkIntensity, 0.0f, f2));
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DarkIntensityApplier {
        void applyDarkIntensity(float f);

        int getTintAnimationDuration();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        LightBarTransitionsController create(DarkIntensityApplier darkIntensityApplier);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.statusbar.phone.LightBarTransitionsController$1] */
    public LightBarTransitionsController(Context context, DarkIntensityApplier darkIntensityApplier, CommandQueue commandQueue, KeyguardStateController keyguardStateController, StatusBarStateController statusBarStateController) {
        this.mApplier = darkIntensityApplier;
        this.mKeyguardStateController = keyguardStateController;
        this.mStatusBarStateController = statusBarStateController;
        this.mCommandQueue = commandQueue;
        Callback callback = new Callback(this);
        this.mCallback = callback;
        commandQueue.addCallback((CommandQueue.Callbacks) callback);
        statusBarStateController.addCallback(callback);
        this.mDozeAmount = statusBarStateController.getDozeAmount();
        this.mDisplayId = context.getDisplayId();
    }

    public final void animateIconTint(float f, long j, long j2) {
        if (this.mNextDarkIntensity == f && !this.iconColorChanged) {
            return;
        }
        ValueAnimator valueAnimator = this.mTintAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mNextDarkIntensity = f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mDarkIntensity, f);
        this.mTintAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.phone.LightBarTransitionsController$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LightBarTransitionsController lightBarTransitionsController = LightBarTransitionsController.this;
                lightBarTransitionsController.getClass();
                float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                lightBarTransitionsController.mDarkIntensity = floatValue;
                boolean z = BasicRune.NAVBAR_LIGHTBAR;
                LightBarTransitionsController.DarkIntensityApplier darkIntensityApplier = lightBarTransitionsController.mApplier;
                if (z) {
                    darkIntensityApplier.applyDarkIntensity(floatValue);
                } else if (!BasicRune.NAVBAR_ENABLED) {
                    darkIntensityApplier.applyDarkIntensity(MathUtils.lerp(floatValue, 0.0f, lightBarTransitionsController.mDozeAmount));
                }
            }
        });
        this.mTintAnimator.setDuration(j2);
        this.mTintAnimator.setStartDelay(j);
        this.mTintAnimator.setInterpolator(Interpolators.LINEAR_OUT_SLOW_IN);
        this.mTintAnimator.start();
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.print("  mTransitionDeferring=");
        printWriter.print(this.mTransitionDeferring);
        if (this.mTransitionDeferring) {
            printWriter.println();
            printWriter.print("   mTransitionDeferringStartTime=");
            printWriter.println(TimeUtils.formatUptime(this.mTransitionDeferringStartTime));
            printWriter.print("   mTransitionDeferringDuration=");
            TimeUtils.formatDuration(this.mTransitionDeferringDuration, printWriter);
            printWriter.println();
        }
        printWriter.print("  mTransitionPending=");
        printWriter.print(this.mTransitionPending);
        printWriter.print(" mTintChangePending=");
        printWriter.println(this.mTintChangePending);
        printWriter.print("  mPendingDarkIntensity=");
        printWriter.print(this.mPendingDarkIntensity);
        printWriter.print(" mDarkIntensity=");
        printWriter.print(this.mDarkIntensity);
        printWriter.print(" mNextDarkIntensity=");
        printWriter.println(this.mNextDarkIntensity);
    }

    public final void setIconsDark(boolean z, boolean z2) {
        float f;
        float f2;
        DarkIntensityApplier darkIntensityApplier = this.mApplier;
        float f3 = 1.0f;
        if (!z2) {
            if (z) {
                f2 = 1.0f;
            } else {
                f2 = 0.0f;
            }
            this.mDarkIntensity = f2;
            if (BasicRune.NAVBAR_LIGHTBAR) {
                darkIntensityApplier.applyDarkIntensity(f2);
            } else if (!BasicRune.NAVBAR_ENABLED) {
                darkIntensityApplier.applyDarkIntensity(MathUtils.lerp(f2, 0.0f, this.mDozeAmount));
            }
            if (!z) {
                f3 = 0.0f;
            }
            this.mNextDarkIntensity = f3;
            return;
        }
        if (this.mTransitionPending) {
            if (!z) {
                f3 = 0.0f;
            }
            if (!this.mTintChangePending || f3 != this.mPendingDarkIntensity) {
                this.mTintChangePending = true;
                this.mPendingDarkIntensity = f3;
                return;
            }
            return;
        }
        if (this.mTransitionDeferring) {
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            animateIconTint(f, Math.max(0L, this.mTransitionDeferringStartTime - SystemClock.uptimeMillis()), this.mTransitionDeferringDuration);
            return;
        }
        if (!z) {
            f3 = 0.0f;
        }
        animateIconTint(f3, 0L, darkIntensityApplier.getTintAnimationDuration());
    }
}
