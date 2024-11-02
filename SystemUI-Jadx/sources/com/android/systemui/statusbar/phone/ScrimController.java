package com.android.systemui.statusbar.phone;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.AlarmManager;
import android.graphics.Color;
import android.os.Handler;
import android.os.Trace;
import android.util.Log;
import android.util.MathUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.internal.colorextraction.ColorExtractor;
import com.android.internal.graphics.ColorUtils;
import com.android.internal.util.ContrastColorUtil;
import com.android.keyguard.BouncerPanelExpansionCalculator;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.settingslib.Utils;
import com.android.systemui.BasicRune;
import com.android.systemui.DejankUtils;
import com.android.systemui.Dumpable;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.animation.ShadeInterpolation;
import com.android.systemui.aod.AODAmbientWallpaperHelper;
import com.android.systemui.dock.DockManager;
import com.android.systemui.doze.PluginAODManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.KeyguardUnlockAnimationController;
import com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor;
import com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel;
import com.android.systemui.scrim.ScrimView;
import com.android.systemui.scrim.ScrimView$$ExternalSyntheticLambda4;
import com.android.systemui.scrim.ScrimViewBase;
import com.android.systemui.shade.transition.LargeScreenShadeInterpolator;
import com.android.systemui.statusbar.notification.stack.ViewState;
import com.android.systemui.statusbar.phone.QSScrimViewSwitch;
import com.android.systemui.statusbar.phone.ScrimStateLogger;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.AlarmTimeout;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.wakelock.DelayedWakeLock;
import com.android.systemui.util.wakelock.WakeLock;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScrimController implements ViewTreeObserver.OnPreDrawListener, Dumpable {
    public AODAmbientWallpaperHelper mAODAmbientWallpaperHelper;
    public boolean mAnimateChange;
    public boolean mAnimatingPanelExpansionOnUnlock;
    public long mAnimationDelay;
    public Animator.AnimatorListener mAnimatorListener;
    public int mBehindTint;
    public boolean mBlankScreen;
    public ScrimController$$ExternalSyntheticLambda0 mBlankingTransitionRunnable;
    public Callback mCallback;
    public final ColorExtractor.GradientColors mColors;
    public boolean mDarkenWhileDragging;
    public final float mDefaultScrimAlpha;
    public final DockManager mDockManager;
    public final DozeParameters mDozeParameters;
    public final FeatureFlags mFeatureFlags;
    public final Handler mHandler;
    public int mInFrontTint;
    public boolean mKeyguardOccluded;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardTransitionInteractor mKeyguardTransitionInteractor;
    public final KeyguardUnlockAnimationController mKeyguardUnlockAnimationController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final KeyguardVisibilityCallback mKeyguardVisibilityCallback;
    public final LargeScreenShadeInterpolator mLargeScreenShadeInterpolator;
    public final CoroutineDispatcher mMainDispatcher;
    public final Executor mMainExecutor;
    public boolean mNeedsDrawableColorUpdate;
    public ScrimView mNotificationsScrim;
    public int mNotificationsTint;
    public float mPanelScrimMinFraction;
    public ScrimController$$ExternalSyntheticLambda0 mPendingFrameCallback;
    public ScrimController$$ExternalSyntheticLambda2 mPrimaryBouncerToGoneTransition;
    public final PrimaryBouncerToGoneTransitionViewModel mPrimaryBouncerToGoneTransitionViewModel;
    public boolean mQsBottomVisible;
    public float mQsExpansion;
    public float mRawPanelExpansionFraction;
    public boolean mScreenBlankingCallbackCalled;
    public final ScreenOffAnimationController mScreenOffAnimationController;
    public boolean mScreenOn;
    public final ScrimController$$ExternalSyntheticLambda2 mScrimAlphaConsumer;
    public ScrimView mScrimBehind;
    public Runnable mScrimBehindChangeRunnable;
    public ScrimStateLogger mScrimColorState;
    public ScrimView mScrimInFront;
    public QSScrimViewSwitch.AnonymousClass1 mScrimStateCallback;
    public final ScrimController$$ExternalSyntheticLambda3 mScrimStateListener;
    public Consumer mScrimVisibleListener;
    public int mScrimsVisibility;
    public SecLsScrimControlHelper mSecLsScrimControlHelper;
    public final StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final AlarmTimeout mTimeTicker;
    public float mTransitionToFullShadeProgress;
    public float mTransitionToLockScreenFullShadeNotificationsProgress;
    public boolean mTransitioningToFullShade;
    public boolean mTransparentScrimBackground;
    public boolean mUpdatePending;
    public final boolean mUseNewLightBarLogic;
    public final DelayedWakeLock mWakeLock;
    public boolean mWakeLockHeld;
    public boolean mWallpaperSupportsAmbientMode;
    public boolean mWallpaperVisibilityTimedOut;
    public static final boolean DEBUG = Log.isLoggable("ScrimController", 3);
    public static final int TAG_KEY_ANIM = R.id.scrim;
    public static final int TAG_START_ALPHA = R.id.scrim_alpha_start;
    public static final int TAG_END_ALPHA = R.id.scrim_alpha_end;
    public boolean mOccludeAnimationPlaying = false;
    public float mBouncerHiddenFraction = 1.0f;
    public ScrimState mState = ScrimState.UNINITIALIZED;
    public float mScrimBehindAlphaKeyguard = 0.2f;
    public float mPanelExpansionFraction = 1.0f;
    public boolean mExpansionAffectsAlpha = true;
    public long mAnimationDuration = -1;
    public final Interpolator mInterpolator = new DecelerateInterpolator();
    public float mInFrontAlpha = -1.0f;
    public float mBehindAlpha = -1.0f;
    public float mNotificationsAlpha = -1.0f;
    public boolean mIsBouncerToGoneTransitionRunning = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimController$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements ScrimStateLogger.Callback {
        public AnonymousClass3() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class KeyguardVisibilityCallback extends KeyguardUpdateMonitorCallback {
        public /* synthetic */ KeyguardVisibilityCallback(ScrimController scrimController, int i) {
            this();
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onKeyguardVisibilityChanged(boolean z) {
            ScrimController scrimController = ScrimController.this;
            scrimController.mNeedsDrawableColorUpdate = true;
            scrimController.scheduleUpdate();
        }

        private KeyguardVisibilityCallback() {
        }
    }

    public ScrimController(LightBarController lightBarController, DozeParameters dozeParameters, AlarmManager alarmManager, final KeyguardStateController keyguardStateController, DelayedWakeLock.Builder builder, Handler handler, KeyguardUpdateMonitor keyguardUpdateMonitor, DockManager dockManager, ConfigurationController configurationController, Executor executor, ScreenOffAnimationController screenOffAnimationController, KeyguardUnlockAnimationController keyguardUnlockAnimationController, StatusBarKeyguardViewManager statusBarKeyguardViewManager, PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel, KeyguardTransitionInteractor keyguardTransitionInteractor, CoroutineDispatcher coroutineDispatcher, LargeScreenShadeInterpolator largeScreenShadeInterpolator, FeatureFlags featureFlags) {
        boolean z;
        int i = 0;
        this.mScrimAlphaConsumer = new ScrimController$$ExternalSyntheticLambda2(this, i);
        Objects.requireNonNull(lightBarController);
        this.mScrimStateListener = new ScrimController$$ExternalSyntheticLambda3(lightBarController);
        this.mLargeScreenShadeInterpolator = largeScreenShadeInterpolator;
        this.mFeatureFlags = featureFlags;
        if (((FeatureFlagsRelease) featureFlags).isEnabled(Flags.NEW_LIGHT_BAR_LOGIC) && !BasicRune.NAVBAR_LIGHTBAR) {
            z = true;
        } else {
            z = false;
        }
        this.mUseNewLightBarLogic = z;
        this.mDefaultScrimAlpha = 1.0f;
        this.mKeyguardStateController = keyguardStateController;
        this.mDarkenWhileDragging = !r4.mCanDismissLockScreen;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardVisibilityCallback = new KeyguardVisibilityCallback(this, i);
        this.mHandler = handler;
        this.mMainExecutor = executor;
        this.mScreenOffAnimationController = screenOffAnimationController;
        this.mTimeTicker = new AlarmTimeout(alarmManager, new AlarmManager.OnAlarmListener() { // from class: com.android.systemui.statusbar.phone.ScrimController$$ExternalSyntheticLambda4
            @Override // android.app.AlarmManager.OnAlarmListener
            public final void onAlarm() {
                ScrimController.this.onHideWallpaperTimeout();
            }
        }, "hide_aod_wallpaper", handler);
        builder.mHandler = handler;
        builder.mTag = "Scrims";
        this.mWakeLock = new DelayedWakeLock(handler, WakeLock.createPartial(builder.mContext, builder.mLogger, "Scrims"));
        this.mDozeParameters = dozeParameters;
        this.mDockManager = dockManager;
        this.mKeyguardUnlockAnimationController = keyguardUnlockAnimationController;
        ((KeyguardStateControllerImpl) keyguardStateController).addCallback(new KeyguardStateController.Callback() { // from class: com.android.systemui.statusbar.phone.ScrimController.1
            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onKeyguardFadingAwayChanged() {
                KeyguardStateController keyguardStateController2 = keyguardStateController;
                boolean z2 = ((KeyguardStateControllerImpl) keyguardStateController2).mKeyguardFadingAway;
                long j = ((KeyguardStateControllerImpl) keyguardStateController2).mKeyguardFadingAwayDuration;
                boolean z3 = ScrimController.DEBUG;
                ScrimController.this.getClass();
                for (ScrimState scrimState : ScrimState.values()) {
                    scrimState.mKeyguardFadingAway = z2;
                    scrimState.mKeyguardFadingAwayDuration = j;
                }
            }
        });
        this.mStatusBarKeyguardViewManager = statusBarKeyguardViewManager;
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.phone.ScrimController.2
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onThemeChanged() {
                boolean z2 = ScrimController.DEBUG;
                ScrimController scrimController = ScrimController.this;
                scrimController.updateThemeColors();
                scrimController.scheduleUpdate();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onUiModeChanged() {
                boolean z2 = ScrimController.DEBUG;
                ScrimController scrimController = ScrimController.this;
                scrimController.updateThemeColors();
                scrimController.scheduleUpdate();
            }
        });
        this.mColors = new ColorExtractor.GradientColors();
        this.mPrimaryBouncerToGoneTransitionViewModel = primaryBouncerToGoneTransitionViewModel;
        this.mKeyguardTransitionInteractor = keyguardTransitionInteractor;
        this.mMainDispatcher = coroutineDispatcher;
    }

    public final void applyAndDispatchState() {
        applyState();
        if (this.mUpdatePending) {
            return;
        }
        setOrAdaptCurrentAnimation(this.mScrimBehind);
        setOrAdaptCurrentAnimation(this.mNotificationsScrim);
        setOrAdaptCurrentAnimation(this.mScrimInFront);
        dispatchBackScrimState(this.mScrimBehind.mViewAlpha);
        if (this.mWallpaperVisibilityTimedOut) {
            this.mWallpaperVisibilityTimedOut = false;
            DejankUtils.postAfterTraversal(new ScrimController$$ExternalSyntheticLambda0(this, 2));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void applyState() {
        /*
            Method dump skipped, instructions count: 443
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ScrimController.applyState():void");
    }

    public final void assertAlphasValid() {
        if (!Float.isNaN(this.mBehindAlpha) && !Float.isNaN(this.mInFrontAlpha) && !Float.isNaN(this.mNotificationsAlpha)) {
            return;
        }
        throw new IllegalStateException("Scrim opacity is NaN for state: " + this.mState + ", front: " + this.mInFrontAlpha + ", back: " + this.mBehindAlpha + ", notif: " + this.mNotificationsAlpha);
    }

    public final void calculateAndUpdatePanelExpansion() {
        float f = this.mRawPanelExpansionFraction;
        float f2 = this.mPanelScrimMinFraction;
        if (f2 < 1.0f) {
            f = Math.max((f - f2) / (1.0f - f2), 0.0f);
        }
        if (this.mPanelExpansionFraction != f) {
            boolean z = true;
            if (f != 0.0f && this.mKeyguardUnlockAnimationController.playingCannedUnlockAnimation) {
                this.mAnimatingPanelExpansionOnUnlock = true;
            } else if (f == 0.0f) {
                this.mAnimatingPanelExpansionOnUnlock = false;
            }
            this.mPanelExpansionFraction = f;
            ScrimState scrimState = this.mState;
            if (scrimState != ScrimState.UNLOCKED && scrimState != ScrimState.KEYGUARD && scrimState != ScrimState.DREAMING && scrimState != ScrimState.SHADE_LOCKED && scrimState != ScrimState.PULSING) {
                z = false;
            }
            if (z && this.mExpansionAffectsAlpha && !this.mAnimatingPanelExpansionOnUnlock) {
                applyAndDispatchState();
            }
        }
    }

    public final Pair calculateBackStateForState(ScrimState scrimState) {
        float lerp;
        float interpolatedFraction = getInterpolatedFraction();
        float f = scrimState.mBehindAlpha;
        int i = scrimState.mBehindTint;
        float f2 = 0.0f;
        if (this.mDarkenWhileDragging) {
            lerp = MathUtils.lerp(this.mDefaultScrimAlpha, f, interpolatedFraction);
        } else {
            lerp = MathUtils.lerp(0.0f, f, interpolatedFraction);
        }
        if (this.mStatusBarKeyguardViewManager.isPrimaryBouncerInTransit()) {
            i = ColorUtils.blendARGB(ScrimState.BOUNCER.mBehindTint, scrimState.mBehindTint, interpolatedFraction);
        }
        float f3 = this.mQsExpansion;
        if (f3 > 0.0f) {
            lerp = MathUtils.lerp(lerp, this.mDefaultScrimAlpha, f3);
            float f4 = this.mQsExpansion;
            if (this.mStatusBarKeyguardViewManager.isPrimaryBouncerInTransit()) {
                f4 = BouncerPanelExpansionCalculator.showBouncerProgress(this.mPanelExpansionFraction);
            }
            i = ColorUtils.blendARGB(i, ScrimState.SHADE_LOCKED.mBehindTint, f4);
        }
        if (!((KeyguardStateControllerImpl) this.mKeyguardStateController).mKeyguardGoingAway) {
            f2 = lerp;
        }
        return new Pair(Integer.valueOf(i), Float.valueOf(f2));
    }

    public final void dispatchBackScrimState(float f) {
        if (this.mUseNewLightBarLogic) {
            this.mScrimStateListener.accept(this.mState, Float.valueOf(f), this.mColors);
            return;
        }
        ScrimController$$ExternalSyntheticLambda3 scrimController$$ExternalSyntheticLambda3 = this.mScrimStateListener;
        ScrimState scrimState = this.mState;
        Float valueOf = Float.valueOf(f);
        ScrimView scrimView = this.mScrimInFront;
        synchronized (scrimView.mColorLock) {
            scrimView.mTmpColors.set(scrimView.mColors);
        }
        scrimController$$ExternalSyntheticLambda3.accept(scrimState, valueOf, scrimView.mTmpColors);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dispatchScrimsVisible() {
        /*
            r6 = this;
            com.android.systemui.scrim.ScrimView r0 = r6.mScrimBehind
            com.android.systemui.scrim.ScrimView r1 = r6.mScrimInFront
            float r1 = r1.mViewAlpha
            r2 = 1065353216(0x3f800000, float:1.0)
            int r3 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r4 = 0
            r5 = 2
            if (r3 == 0) goto L22
            float r0 = r0.mViewAlpha
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 != 0) goto L15
            goto L22
        L15:
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 != 0) goto L20
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L20
            r0 = r4
            goto L23
        L20:
            r0 = 1
            goto L23
        L22:
            r0 = r5
        L23:
            int r1 = r6.mScrimsVisibility
            if (r1 == r0) goto L63
            r6.mScrimsVisibility = r0
            com.android.systemui.statusbar.phone.SecLsScrimControlHelper r1 = r6.mSecLsScrimControlHelper
            boolean r2 = r6.mScreenOn
            r1.getClass()
            if (r2 != 0) goto L3b
            if (r0 != r5) goto L3b
            com.android.systemui.scrim.ScrimView r2 = r1.mScrimInFront
            android.view.ViewRootImpl r2 = r2.getViewRootImpl()
            goto L3c
        L3b:
            r2 = 0
        L3c:
            boolean r3 = com.android.systemui.LsRune.AOD_SUB_DISPLAY_COVER
            if (r3 == 0) goto L52
            java.lang.Class<com.android.systemui.keyguard.DisplayLifecycle> r3 = com.android.systemui.keyguard.DisplayLifecycle.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.systemui.keyguard.DisplayLifecycle r3 = (com.android.systemui.keyguard.DisplayLifecycle) r3
            boolean r3 = r3.mIsFolderOpened
            if (r3 != 0) goto L52
            com.android.systemui.scrim.ScrimView r1 = r1.mScrimBehind
            android.view.ViewRootImpl r2 = r1.getViewRootImpl()
        L52:
            if (r2 == 0) goto L5a
            java.lang.String r1 = "scrim"
            r2.setReportNextDraw(r4, r1)
        L5a:
            java.util.function.Consumer r6 = r6.mScrimVisibleListener
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6.accept(r0)
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ScrimController.dispatchScrimsVisible():void");
    }

    public void doOnTheNextFrame(Runnable runnable) {
        this.mScrimBehind.postOnAnimationDelayed(runnable, 32L);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println(" ScrimController: ");
        printWriter.print("  state: ");
        printWriter.println(this.mState);
        printWriter.println("    mClipQsScrim = " + this.mState.mClipQsScrim);
        printWriter.print("  frontScrim:");
        printWriter.print(" viewAlpha=");
        printWriter.print(this.mScrimInFront.mViewAlpha);
        printWriter.print(" alpha=");
        printWriter.print(this.mInFrontAlpha);
        printWriter.print(" tint=0x");
        printWriter.println(Integer.toHexString(this.mScrimInFront.mTintColor));
        printWriter.print("  behindScrim:");
        printWriter.print(" viewAlpha=");
        printWriter.print(this.mScrimBehind.mViewAlpha);
        printWriter.print(" alpha=");
        printWriter.print(this.mBehindAlpha);
        printWriter.print(" tint=0x");
        printWriter.println(Integer.toHexString(this.mScrimBehind.mTintColor));
        printWriter.print("  notificationsScrim:");
        printWriter.print(" viewAlpha=");
        printWriter.print(this.mNotificationsScrim.mViewAlpha);
        printWriter.print(" alpha=");
        printWriter.print(this.mNotificationsAlpha);
        printWriter.print(" tint=0x");
        printWriter.println(Integer.toHexString(this.mNotificationsScrim.mTintColor));
        printWriter.print(" expansionProgress=");
        printWriter.println(this.mTransitionToLockScreenFullShadeNotificationsProgress);
        printWriter.print("  mDefaultScrimAlpha=");
        printWriter.println(this.mDefaultScrimAlpha);
        printWriter.print("  mPanelExpansionFraction=");
        printWriter.println(this.mPanelExpansionFraction);
        printWriter.print("  mExpansionAffectsAlpha=");
        printWriter.println(this.mExpansionAffectsAlpha);
        printWriter.print("  mState.getMaxLightRevealScrimAlpha=");
        printWriter.println(this.mState.getMaxLightRevealScrimAlpha());
        SecLsScrimControlHelper secLsScrimControlHelper = this.mSecLsScrimControlHelper;
        secLsScrimControlHelper.getClass();
        printWriter.print("  mState.mWallpaperSupportsAmbientMode=");
        printWriter.println(secLsScrimControlHelper.mState.mWallpaperSupportsAmbientMode);
        printWriter.print("  mState.mHasBackdrop=");
        printWriter.println(secLsScrimControlHelper.mState.mHasBackdrop);
    }

    public boolean getClipQsScrim() {
        return false;
    }

    public final float getCurrentScrimAlpha(View view) {
        if (view == this.mScrimInFront) {
            return this.mInFrontAlpha;
        }
        if (view == this.mScrimBehind) {
            return this.mBehindAlpha;
        }
        if (view == this.mNotificationsScrim) {
            return this.mNotificationsAlpha;
        }
        throw new IllegalArgumentException("Unknown scrim view");
    }

    public final int getCurrentScrimTint(View view) {
        if (view == this.mScrimInFront) {
            return this.mInFrontTint;
        }
        if (view == this.mScrimBehind) {
            return this.mBehindTint;
        }
        if (view == this.mNotificationsScrim) {
            return this.mNotificationsTint;
        }
        throw new IllegalArgumentException("Unknown scrim view");
    }

    public final float getInterpolatedFraction() {
        if (this.mStatusBarKeyguardViewManager.isPrimaryBouncerInTransit()) {
            return BouncerPanelExpansionCalculator.aboutToShowBouncerProgress(this.mPanelExpansionFraction);
        }
        return ShadeInterpolation.getNotificationScrimAlpha(this.mPanelExpansionFraction);
    }

    public final String getScrimName(ScrimView scrimView) {
        if (scrimView == this.mScrimInFront) {
            return "front_scrim";
        }
        if (scrimView == this.mScrimBehind) {
            return "behind_scrim";
        }
        if (scrimView == this.mNotificationsScrim) {
            return "notifications_scrim";
        }
        return "unknown_scrim";
    }

    public final boolean isAnimating(View view) {
        if (view != null && view.getTag(TAG_KEY_ANIM) != null) {
            return true;
        }
        return false;
    }

    public final void onFinished(Callback callback, ScrimState scrimState) {
        if (this.mPendingFrameCallback != null) {
            return;
        }
        if (!isAnimating(this.mScrimBehind) && !isAnimating(this.mNotificationsScrim) && !isAnimating(this.mScrimInFront)) {
            if (this.mWakeLockHeld) {
                this.mWakeLock.release("ScrimController");
                this.mWakeLockHeld = false;
            }
            if (callback != null) {
                callback.onFinished();
                if (callback == this.mCallback) {
                    this.mCallback = null;
                }
            }
            if (scrimState == ScrimState.UNLOCKED) {
                this.mInFrontTint = 0;
                ScrimState scrimState2 = this.mState;
                this.mBehindTint = scrimState2.mBehindTint;
                this.mNotificationsTint = scrimState2.mNotifTint;
                updateScrimColor(this.mInFrontAlpha, 0, this.mScrimInFront);
                updateScrimColor(this.mBehindAlpha, this.mBehindTint, this.mScrimBehind);
                updateScrimColor(this.mNotificationsAlpha, this.mNotificationsTint, this.mNotificationsScrim);
                return;
            }
            return;
        }
        if (callback != null && callback != this.mCallback) {
            callback.onFinished();
        }
    }

    public void onHideWallpaperTimeout() {
        ScrimState scrimState = this.mState;
        if (scrimState != ScrimState.AOD && scrimState != ScrimState.PULSING) {
            return;
        }
        boolean z = true;
        if (!this.mWakeLockHeld) {
            DelayedWakeLock delayedWakeLock = this.mWakeLock;
            if (delayedWakeLock != null) {
                this.mWakeLockHeld = true;
                delayedWakeLock.acquire("ScrimController");
            } else {
                Log.w("ScrimController", "Cannot hold wake lock, it has not been set yet");
            }
        }
        this.mWallpaperVisibilityTimedOut = true;
        if (this.mScrimsVisibility == 0) {
            z = false;
        }
        this.mAnimateChange = z;
        this.mAnimationDuration = this.mDozeParameters.mAlwaysOnPolicy.wallpaperFadeOutDuration;
        scheduleUpdate();
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        this.mScrimBehind.getViewTreeObserver().removeOnPreDrawListener(this);
        this.mUpdatePending = false;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.getClass();
        }
        updateScrims();
        return true;
    }

    public final void onScreenTurnedOn() {
        this.mScreenOn = true;
        if (this.mHandler.hasCallbacks(this.mBlankingTransitionRunnable)) {
            if (DEBUG) {
                Log.d("ScrimController", "Shorter blanking because screen turned on. All good.");
            }
            this.mHandler.removeCallbacks(this.mBlankingTransitionRunnable);
            this.mBlankingTransitionRunnable.run();
        }
    }

    public final void scheduleUpdate() {
        ScrimView scrimView;
        if (!this.mUpdatePending && (scrimView = this.mScrimBehind) != null) {
            scrimView.invalidate();
            this.mScrimBehind.getViewTreeObserver().addOnPreDrawListener(this);
            this.mUpdatePending = true;
        }
    }

    public void setAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mAnimatorListener = animatorListener;
    }

    public final void setOccludeAnimationPlaying(boolean z) {
        this.mOccludeAnimationPlaying = z;
        for (ScrimState scrimState : ScrimState.values()) {
            scrimState.mOccludeAnimationPlaying = z;
        }
        applyAndDispatchState();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setOrAdaptCurrentAnimation(com.android.systemui.scrim.ScrimView r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L3
            return
        L3:
            com.android.systemui.statusbar.phone.SecLsScrimControlHelper r0 = r5.mSecLsScrimControlHelper
            boolean r1 = r5.mBlankScreen
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1b
            com.android.systemui.statusbar.phone.ScrimState r1 = r0.mState
            com.android.systemui.statusbar.phone.ScrimState r4 = com.android.systemui.statusbar.phone.ScrimState.UNLOCKED
            if (r1 != r4) goto L1e
            com.android.systemui.scrim.ScrimView r1 = r0.mScrimInFront
            if (r6 == r1) goto L19
            com.android.systemui.scrim.ScrimView r0 = r0.mScrimBehind
            if (r6 != r0) goto L1e
        L19:
            r0 = r2
            goto L1f
        L1b:
            r0.getClass()
        L1e:
            r0 = r3
        L1f:
            if (r0 == 0) goto L2a
            java.lang.String r5 = "ScrimController"
            java.lang.String r6 = "skip setOrAdaptCurrentAnimation"
            android.util.Log.i(r5, r6)
            return
        L2a:
            float r0 = r5.getCurrentScrimAlpha(r6)
            com.android.systemui.scrim.ScrimView r1 = r5.mScrimBehind
            if (r6 != r1) goto L37
            boolean r1 = r5.mQsBottomVisible
            if (r1 == 0) goto L37
            goto L38
        L37:
            r2 = r3
        L38:
            boolean r1 = r5.isAnimating(r6)
            if (r1 == 0) goto L79
            if (r2 != 0) goto L79
            int r5 = com.android.systemui.statusbar.phone.ScrimController.TAG_KEY_ANIM
            java.lang.Object r5 = r6.getTag(r5)
            android.animation.ValueAnimator r5 = (android.animation.ValueAnimator) r5
            int r1 = com.android.systemui.statusbar.phone.ScrimController.TAG_END_ALPHA
            java.lang.Object r2 = r6.getTag(r1)
            java.lang.Float r2 = (java.lang.Float) r2
            float r2 = r2.floatValue()
            int r3 = com.android.systemui.statusbar.phone.ScrimController.TAG_START_ALPHA
            java.lang.Object r4 = r6.getTag(r3)
            java.lang.Float r4 = (java.lang.Float) r4
            float r4 = r4.floatValue()
            float r2 = r0 - r2
            float r2 = r2 + r4
            java.lang.Float r2 = java.lang.Float.valueOf(r2)
            r6.setTag(r3, r2)
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            r6.setTag(r1, r0)
            long r0 = r5.getCurrentPlayTime()
            r5.setCurrentPlayTime(r0)
            goto L80
        L79:
            int r1 = r5.getCurrentScrimTint(r6)
            r5.updateScrimColor(r0, r1, r6)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ScrimController.setOrAdaptCurrentAnimation(com.android.systemui.scrim.ScrimView):void");
    }

    public final void setScrimAlpha(float f, final ScrimView scrimView) {
        boolean z;
        boolean z2;
        Callback callback;
        int i = 1;
        if (f == 0.0f) {
            scrimView.setClickable(false);
        } else {
            if (this.mState != ScrimState.AOD) {
                z = true;
            } else {
                z = false;
            }
            scrimView.setClickable(z);
        }
        float f2 = scrimView.mViewAlpha;
        int i2 = TAG_KEY_ANIM;
        ViewState.AnonymousClass1 anonymousClass1 = ViewState.NO_NEW_ANIMATIONS;
        ValueAnimator valueAnimator = (ValueAnimator) scrimView.getTag(i2);
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.mPendingFrameCallback == null) {
            if (this.mBlankScreen) {
                updateScrimColor(1.0f, EmergencyPhoneWidget.BG_COLOR, this.mScrimInFront);
                ScrimController$$ExternalSyntheticLambda0 scrimController$$ExternalSyntheticLambda0 = new ScrimController$$ExternalSyntheticLambda0(this, i);
                this.mPendingFrameCallback = scrimController$$ExternalSyntheticLambda0;
                doOnTheNextFrame(scrimController$$ExternalSyntheticLambda0);
                return;
            }
            if (!this.mScreenBlankingCallbackCalled && (callback = this.mCallback) != null) {
                callback.onDisplayBlanked();
                this.mScreenBlankingCallbackCalled = true;
            }
            if (scrimView == this.mScrimBehind) {
                dispatchBackScrimState(f);
            }
            if (f != f2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (scrimView.mTintColor == getCurrentScrimTint(scrimView)) {
                i = 0;
            }
            if (z2 || i != 0) {
                if (this.mAnimateChange) {
                    if (DEBUG) {
                        LogUtil.d("ScrimController", "startScrimAnimation %s %f %d %d", getScrimName(scrimView), Float.valueOf(f2), Long.valueOf(this.mAnimationDelay), Long.valueOf(this.mAnimationDuration));
                    }
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    Animator.AnimatorListener animatorListener = this.mAnimatorListener;
                    if (animatorListener != null) {
                        ofFloat.addListener(animatorListener);
                    }
                    final int i3 = scrimView.mTintColor;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.phone.ScrimController$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            ScrimController scrimController = ScrimController.this;
                            View view = scrimView;
                            int i4 = i3;
                            scrimController.getClass();
                            float floatValue = ((Float) view.getTag(ScrimController.TAG_START_ALPHA)).floatValue();
                            float floatValue2 = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            scrimController.updateScrimColor(MathUtils.constrain(MathUtils.lerp(floatValue, scrimController.getCurrentScrimAlpha(view), floatValue2), 0.0f, 1.0f), ColorUtils.blendARGB(i4, scrimController.getCurrentScrimTint(view), floatValue2), view);
                            scrimController.dispatchScrimsVisible();
                        }
                    });
                    ofFloat.setInterpolator(this.mInterpolator);
                    ofFloat.setStartDelay(this.mAnimationDelay);
                    ofFloat.setDuration(this.mAnimationDuration);
                    ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.phone.ScrimController.4
                        public final Callback mLastCallback;
                        public final ScrimState mLastState;

                        {
                            this.mLastState = ScrimController.this.mState;
                            this.mLastCallback = ScrimController.this.mCallback;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            String view;
                            StringBuilder sb = new StringBuilder("onAnimationEnd ");
                            ScrimController scrimController = ScrimController.this;
                            View view2 = scrimView;
                            boolean z3 = ScrimController.DEBUG;
                            scrimController.getClass();
                            if (view2 instanceof ScrimView) {
                                view = scrimController.getScrimName((ScrimView) view2);
                            } else {
                                view = view2.toString();
                            }
                            ExifInterface$$ExternalSyntheticOutline0.m(sb, view, "ScrimController");
                            ScrimStateLogger scrimStateLogger = ScrimController.this.mScrimColorState;
                            if (scrimStateLogger != null) {
                                scrimStateLogger.logScrimColor(true);
                            }
                            scrimView.setTag(ScrimController.TAG_KEY_ANIM, null);
                            ScrimController.this.onFinished(this.mLastCallback, this.mLastState);
                            ScrimController.this.dispatchScrimsVisible();
                            SecLsScrimControlHelper secLsScrimControlHelper = ScrimController.this.mSecLsScrimControlHelper;
                            View view3 = scrimView;
                            ScrimView scrimView2 = secLsScrimControlHelper.mScrimBehind;
                            if (view3 == scrimView2) {
                                ScrimState scrimState = secLsScrimControlHelper.mState;
                                if (scrimState == ScrimState.AOD) {
                                    ((PluginAODManager) secLsScrimControlHelper.mPluginAODManagerLazy.get()).onAodTransitionEnd();
                                } else if (scrimState == ScrimState.UNLOCKED) {
                                    secLsScrimControlHelper.mProvider.mDispatchBackScrimStateConsumer.accept(Float.valueOf(scrimView2.mViewAlpha));
                                }
                            }
                        }
                    });
                    scrimView.setTag(TAG_START_ALPHA, Float.valueOf(f2));
                    scrimView.setTag(TAG_END_ALPHA, Float.valueOf(getCurrentScrimAlpha(scrimView)));
                    scrimView.setTag(i2, ofFloat);
                    ofFloat.start();
                    return;
                }
                updateScrimColor(f, getCurrentScrimTint(scrimView), scrimView);
            }
        }
    }

    public final void setWakeLockScreenSensorActive(boolean z) {
        for (ScrimState scrimState : ScrimState.values()) {
            scrimState.mWakeLockScreenSensorActive = z;
        }
        ScrimState scrimState2 = this.mState;
        if (scrimState2 == ScrimState.PULSING) {
            float f = scrimState2.mBehindAlpha;
            if (this.mBehindAlpha != f) {
                this.mBehindAlpha = f;
                if (!Float.isNaN(f)) {
                    updateScrims();
                    return;
                }
                throw new IllegalStateException("Scrim opacity is NaN for state: " + this.mState + ", back: " + this.mBehindAlpha);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x025e, code lost:
    
        if (r16.mKeyguardUpdateMonitor.hasLockscreenWallpaper() != false) goto L120;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void transitionTo(com.android.systemui.statusbar.phone.ScrimController.Callback r17, com.android.systemui.statusbar.phone.ScrimState r18) {
        /*
            Method dump skipped, instructions count: 720
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ScrimController.transitionTo(com.android.systemui.statusbar.phone.ScrimController$Callback, com.android.systemui.statusbar.phone.ScrimState):void");
    }

    public final void updateScrimColor(float f, int i, View view) {
        ScrimStateLogger scrimStateLogger = this.mScrimColorState;
        boolean z = false;
        if (scrimStateLogger != null) {
            int i2 = this.mScrimsVisibility;
            int i3 = 0;
            for (ScrimViewBase scrimViewBase : scrimStateLogger.mScrimViews) {
                ScrimView scrimView = (ScrimView) scrimViewBase;
                scrimStateLogger.mColors[i3] = scrimView.getMainColor();
                scrimStateLogger.mAlphas[i3] = scrimView.mViewAlpha;
                i3++;
            }
            scrimStateLogger.mScrimVisibility = i2;
        }
        float max = Math.max(0.0f, Math.min(1.0f, f));
        if (view instanceof ScrimView) {
            ScrimView scrimView2 = (ScrimView) view;
            Trace.traceCounter(4096L, getScrimName(scrimView2).concat("_alpha"), (int) (255.0f * max));
            Trace.traceCounter(4096L, getScrimName(scrimView2).concat("_tint"), Color.alpha(i));
            SecLsScrimControlHelper secLsScrimControlHelper = this.mSecLsScrimControlHelper;
            if (scrimView2 == secLsScrimControlHelper.mScrimInFront && (secLsScrimControlHelper.mState == ScrimState.BOUNCER_SCRIMMED || secLsScrimControlHelper.needUpdateScrimColor())) {
                z = true;
            }
            if (z) {
                SecLsScrimControlHelper secLsScrimControlHelper2 = this.mSecLsScrimControlHelper;
                int i4 = secLsScrimControlHelper2.mScrimBouncerColor;
                scrimView2.getClass();
                scrimView2.executeOnExecutor(new ScrimView$$ExternalSyntheticLambda4(scrimView2, i4));
                if (secLsScrimControlHelper2.needUpdateScrimColor()) {
                    scrimView2.setViewAlpha(0.0f);
                } else {
                    scrimView2.setViewAlpha(max);
                }
            } else {
                scrimView2.getClass();
                scrimView2.executeOnExecutor(new ScrimView$$ExternalSyntheticLambda4(scrimView2, i));
                if (!this.mIsBouncerToGoneTransitionRunning) {
                    scrimView2.setViewAlpha(max);
                }
            }
        } else {
            view.setAlpha(max);
        }
        dispatchScrimsVisible();
        ScrimStateLogger scrimStateLogger2 = this.mScrimColorState;
        if (scrimStateLogger2 != null) {
            scrimStateLogger2.logScrimColor(DEBUG);
        }
    }

    public final void updateScrims() {
        boolean z;
        ScrimState scrimState;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6 = true;
        if (this.mNeedsDrawableColorUpdate) {
            this.mNeedsDrawableColorUpdate = false;
            if (this.mScrimInFront.mViewAlpha != 0.0f && !this.mBlankScreen) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.mScrimBehind.mViewAlpha != 0.0f && !this.mBlankScreen) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (this.mNotificationsScrim.mViewAlpha != 0.0f && !this.mBlankScreen) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (this.mSecLsScrimControlHelper.mKeyguardFastBioUnlockController.isEnabled()) {
                z2 = false;
                z3 = false;
            }
            SecLsScrimControlHelper secLsScrimControlHelper = this.mSecLsScrimControlHelper;
            ScrimState scrimState2 = secLsScrimControlHelper.mState;
            if (scrimState2 != ScrimState.BOUNCER_SCRIMMED && scrimState2 != ScrimState.BOUNCER) {
                z5 = false;
            } else {
                z5 = true;
            }
            if (z5) {
                ScrimView scrimView = secLsScrimControlHelper.mScrimInFront;
                ColorExtractor.GradientColors gradientColors = secLsScrimControlHelper.mBouncerColors;
                scrimView.setColors(gradientColors, false);
                secLsScrimControlHelper.mScrimBehind.setColors(gradientColors, false);
            } else {
                this.mScrimInFront.setColors(this.mColors, z2);
                this.mScrimBehind.setColors(this.mColors, z3);
                this.mNotificationsScrim.setColors(this.mColors, z4);
            }
            dispatchBackScrimState(this.mScrimBehind.mViewAlpha);
        }
        ScrimState scrimState3 = this.mState;
        ScrimState scrimState4 = ScrimState.AOD;
        if ((scrimState3 == scrimState4 || scrimState3 == ScrimState.PULSING) && this.mWallpaperVisibilityTimedOut) {
            z = true;
        } else {
            z = false;
        }
        if ((scrimState3 != ScrimState.PULSING && scrimState3 != scrimState4) || !this.mKeyguardOccluded) {
            z6 = false;
        }
        if ((z || z6) && (!LsRune.AOD_FULLSCREEN || !this.mAODAmbientWallpaperHelper.isAODFullScreenMode())) {
            this.mBehindAlpha = 1.0f;
        }
        if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mKeyguardGoingAway) {
            this.mNotificationsAlpha = 0.0f;
        }
        if (this.mKeyguardOccluded && ((scrimState = this.mState) == ScrimState.KEYGUARD || scrimState == ScrimState.SHADE_LOCKED)) {
            this.mBehindAlpha = 0.0f;
            this.mNotificationsAlpha = 0.0f;
        }
        setScrimAlpha(this.mInFrontAlpha, this.mScrimInFront);
        setScrimAlpha(this.mBehindAlpha, this.mScrimBehind);
        setScrimAlpha(this.mNotificationsAlpha, this.mNotificationsScrim);
        onFinished(this.mCallback, this.mState);
        dispatchScrimsVisible();
    }

    public final void updateThemeColors() {
        boolean z;
        ScrimView scrimView = this.mScrimBehind;
        if (scrimView == null) {
            return;
        }
        int defaultColor = Utils.getColorAttr(android.R.attr.colorBackgroundFloating, scrimView.getContext()).getDefaultColor();
        int defaultColor2 = Utils.getColorAttr(android.R.attr.colorAccent, this.mScrimBehind.getContext()).getDefaultColor();
        this.mColors.setMainColor(defaultColor);
        this.mColors.setSecondaryColor(defaultColor2);
        if (this.mUseNewLightBarLogic) {
            this.mColors.setSupportsDarkText(!ContrastColorUtil.isColorDark(defaultColor));
        } else {
            ColorExtractor.GradientColors gradientColors = this.mColors;
            if (ColorUtils.calculateContrast(gradientColors.getMainColor(), -1) > 4.5d) {
                z = true;
            } else {
                z = false;
            }
            gradientColors.setSupportsDarkText(z);
        }
        int defaultColor3 = Utils.getColorAttr(android.R.^attr-private.popupPromptView, this.mScrimBehind.getContext()).getDefaultColor();
        for (ScrimState scrimState : ScrimState.values()) {
            scrimState.setSurfaceColor(defaultColor3);
        }
        this.mNeedsDrawableColorUpdate = true;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        void onFinished();

        default void onCancelled() {
        }

        default void onDisplayBlanked() {
        }
    }
}
