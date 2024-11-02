package com.android.systemui.biometrics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.biometrics.BiometricFingerprintConstants;
import android.hardware.display.DisplayManager;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.hardware.fingerprint.IUdfpsOverlayController;
import android.hardware.fingerprint.IUdfpsOverlayControllerCallback;
import android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback;
import android.hardware.input.InputManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.Trace;
import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.util.LatencyTracker;
import com.android.internal.util.Preconditions;
import com.android.keyguard.FaceAuthUiEvent;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.udfps.UdfpsOverlayParams;
import com.android.settingslib.udfps.UdfpsUtils;
import com.android.systemui.Dumpable;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.biometrics.BiometricDisplayListener;
import com.android.systemui.biometrics.UdfpsController;
import com.android.systemui.biometrics.udfps.InteractionEvent;
import com.android.systemui.biometrics.udfps.SinglePointerTouchProcessor;
import com.android.systemui.doze.DozeReceiver;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.flags.ReleasedFlag;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor;
import com.android.systemui.keyguard.domain.interactor.KeyguardFaceAuthInteractor;
import com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor;
import com.android.systemui.keyguard.domain.interactor.SystemUIKeyguardFaceAuthInteractor;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.SessionTracker;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.statusbar.LockscreenShadeTransitionController;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.statusbar.phone.SystemUIDialogManager;
import com.android.systemui.statusbar.phone.UnlockedScreenOffAnimationController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.Execution;
import com.android.systemui.util.concurrency.ExecutionImpl;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.settings.SecureSettings;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsController implements DozeReceiver, Dumpable {
    public final AccessibilityManager mAccessibilityManager;
    public boolean mAcquiredReceived;
    public final ActivityLaunchAnimator mActivityLaunchAnimator;
    public final AlternateBouncerInteractor mAlternateBouncerInteractor;
    public Runnable mAodInterruptRunnable;
    public boolean mAttemptedToDismissKeyguard;
    public Runnable mAuthControllerUpdateUdfpsLocation;
    public final Executor mBiometricExecutor;
    public final AnonymousClass2 mBroadcastReceiver;
    public ExecutorImpl.ExecutionToken mCancelAodFingerUpAction;
    public final ConfigurationController mConfigurationController;
    public final Context mContext;
    public final SystemUIDialogManager mDialogManager;
    public final DumpManager mDumpManager;
    public final Execution mExecution;
    public final FalsingManager mFalsingManager;
    public final FeatureFlags mFeatureFlags;
    public final DelayableExecutor mFgExecutor;
    public final FingerprintManager mFingerprintManager;
    public final boolean mIgnoreRefreshRate;
    public final LayoutInflater mInflater;
    public final InputManager mInputManager;
    public boolean mIsAodInterruptActive;
    public final KeyguardFaceAuthInteractor mKeyguardFaceAuthInteractor;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final StatusBarKeyguardViewManager mKeyguardViewManager;
    public long mLastTouchInteractionTime;
    public final LatencyTracker mLatencyTracker;
    public final LockscreenShadeTransitionController mLockscreenShadeTransitionController;
    public boolean mOnFingerDown;
    final BiometricDisplayListener mOrientationListener;
    public UdfpsControllerOverlay mOverlay;
    public final PowerManager mPowerManager;
    public final PrimaryBouncerInteractor mPrimaryBouncerInteractor;
    public final AnonymousClass1 mScreenObserver;
    public boolean mScreenOn;
    public final SecureSettings mSecureSettings;
    FingerprintSensorPropertiesInternal mSensorProps;
    public final SessionTracker mSessionTracker;
    public final ShadeExpansionStateManager mShadeExpansionStateManager;
    public final StatusBarStateController mStatusBarStateController;
    public final SystemClock mSystemClock;
    public long mTouchLogTime;
    public final SinglePointerTouchProcessor mTouchProcessor;
    public UdfpsDisplayModeProvider mUdfpsDisplayMode;
    public final UdfpsUtils mUdfpsUtils;
    public final UnlockedScreenOffAnimationController mUnlockedScreenOffAnimationController;
    public VelocityTracker mVelocityTracker;
    public final VibratorHelper mVibrator;
    public final WindowManager mWindowManager;
    public static final VibrationAttributes UDFPS_VIBRATION_ATTRIBUTES = new VibrationAttributes.Builder().setUsage(65).build();
    public static final VibrationAttributes LOCK_ICON_VIBRATION_ATTRIBUTES = new VibrationAttributes.Builder().setUsage(18).build();
    public static final VibrationEffect EFFECT_CLICK = VibrationEffect.get(0);
    UdfpsOverlayParams mOverlayParams = new UdfpsOverlayParams();
    public int mActivePointerId = -1;
    public final Set mCallbacks = new HashSet();

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.UdfpsController$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$biometrics$udfps$InteractionEvent;

        static {
            int[] iArr = new int[InteractionEvent.values().length];
            $SwitchMap$com$android$systemui$biometrics$udfps$InteractionEvent = iArr;
            try {
                iArr[InteractionEvent.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$biometrics$udfps$InteractionEvent[InteractionEvent.UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$biometrics$udfps$InteractionEvent[InteractionEvent.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$biometrics$udfps$InteractionEvent[InteractionEvent.UNCHANGED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
        void onFingerDown();

        void onFingerUp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.android.systemui.biometrics.UdfpsController$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.content.BroadcastReceiver, com.android.systemui.biometrics.UdfpsController$2] */
    public UdfpsController(Context context, Execution execution, LayoutInflater layoutInflater, FingerprintManager fingerprintManager, WindowManager windowManager, StatusBarStateController statusBarStateController, DelayableExecutor delayableExecutor, ShadeExpansionStateManager shadeExpansionStateManager, StatusBarKeyguardViewManager statusBarKeyguardViewManager, DumpManager dumpManager, KeyguardUpdateMonitor keyguardUpdateMonitor, FeatureFlags featureFlags, FalsingManager falsingManager, PowerManager powerManager, AccessibilityManager accessibilityManager, LockscreenShadeTransitionController lockscreenShadeTransitionController, ScreenLifecycle screenLifecycle, VibratorHelper vibratorHelper, UdfpsHapticsSimulator udfpsHapticsSimulator, UdfpsShell udfpsShell, KeyguardStateController keyguardStateController, DisplayManager displayManager, Handler handler, ConfigurationController configurationController, SystemClock systemClock, UnlockedScreenOffAnimationController unlockedScreenOffAnimationController, SystemUIDialogManager systemUIDialogManager, LatencyTracker latencyTracker, ActivityLaunchAnimator activityLaunchAnimator, Optional<Provider> optional, Executor executor, PrimaryBouncerInteractor primaryBouncerInteractor, SinglePointerTouchProcessor singlePointerTouchProcessor, SessionTracker sessionTracker, AlternateBouncerInteractor alternateBouncerInteractor, SecureSettings secureSettings, InputManager inputManager, UdfpsUtils udfpsUtils, KeyguardFaceAuthInteractor keyguardFaceAuthInteractor) {
        ?? r5 = new ScreenLifecycle.Observer() { // from class: com.android.systemui.biometrics.UdfpsController.1
            @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
            public final void onScreenTurnedOff() {
                UdfpsController.this.mScreenOn = false;
            }

            @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
            public final void onScreenTurnedOn() {
                UdfpsController udfpsController = UdfpsController.this;
                udfpsController.mScreenOn = true;
                Runnable runnable = udfpsController.mAodInterruptRunnable;
                if (runnable != null) {
                    runnable.run();
                    udfpsController.mAodInterruptRunnable = null;
                }
            }
        };
        this.mScreenObserver = r5;
        ?? r6 = new BroadcastReceiver() { // from class: com.android.systemui.biometrics.UdfpsController.2
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                UdfpsControllerOverlay udfpsControllerOverlay = UdfpsController.this.mOverlay;
                if (udfpsControllerOverlay != null && udfpsControllerOverlay.requestReason != 4 && "android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction())) {
                    String stringExtra = intent.getStringExtra("reason");
                    if (stringExtra == null) {
                        stringExtra = "unknown";
                    }
                    RecyclerView$$ExternalSyntheticOutline0.m(ActivityResultRegistry$$ExternalSyntheticOutline0.m("ACTION_CLOSE_SYSTEM_DIALOGS received, reason: ", stringExtra, ", mRequestReason: "), UdfpsController.this.mOverlay.requestReason, "UdfpsController");
                    UdfpsControllerOverlay udfpsControllerOverlay2 = UdfpsController.this.mOverlay;
                    udfpsControllerOverlay2.getClass();
                    try {
                        udfpsControllerOverlay2.controllerCallback.onUserCanceled();
                    } catch (RemoteException e) {
                        Log.e("UdfpsControllerOverlay", "Remote exception", e);
                    }
                    UdfpsController.this.hideUdfpsOverlay();
                }
            }
        };
        this.mBroadcastReceiver = r6;
        this.mContext = context;
        this.mExecution = execution;
        this.mVibrator = vibratorHelper;
        this.mInflater = layoutInflater;
        this.mIgnoreRefreshRate = context.getResources().getBoolean(17891726);
        FingerprintManager fingerprintManager2 = (FingerprintManager) Preconditions.checkNotNull(fingerprintManager);
        this.mFingerprintManager = fingerprintManager2;
        this.mWindowManager = windowManager;
        this.mFgExecutor = delayableExecutor;
        this.mShadeExpansionStateManager = shadeExpansionStateManager;
        this.mStatusBarStateController = statusBarStateController;
        this.mKeyguardStateController = keyguardStateController;
        this.mKeyguardViewManager = statusBarKeyguardViewManager;
        this.mDumpManager = dumpManager;
        this.mDialogManager = systemUIDialogManager;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mFeatureFlags = featureFlags;
        this.mFalsingManager = falsingManager;
        this.mPowerManager = powerManager;
        this.mAccessibilityManager = accessibilityManager;
        this.mLockscreenShadeTransitionController = lockscreenShadeTransitionController;
        screenLifecycle.addObserver(r5);
        this.mScreenOn = screenLifecycle.mScreenState == 2;
        this.mConfigurationController = configurationController;
        this.mSystemClock = systemClock;
        this.mUnlockedScreenOffAnimationController = unlockedScreenOffAnimationController;
        this.mLatencyTracker = latencyTracker;
        this.mActivityLaunchAnimator = activityLaunchAnimator;
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(optional.map(new UdfpsController$$ExternalSyntheticLambda1()).orElse(null));
        this.mSensorProps = new FingerprintSensorPropertiesInternal(-1, 0, 0, new ArrayList(), 0, false);
        this.mBiometricExecutor = executor;
        this.mPrimaryBouncerInteractor = primaryBouncerInteractor;
        this.mAlternateBouncerInteractor = alternateBouncerInteractor;
        this.mSecureSettings = secureSettings;
        this.mUdfpsUtils = udfpsUtils;
        this.mInputManager = inputManager;
        this.mTouchProcessor = ((FeatureFlagsRelease) featureFlags).isEnabled(Flags.UDFPS_NEW_TOUCH_DETECTION) ? singlePointerTouchProcessor : null;
        this.mSessionTracker = sessionTracker;
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "UdfpsController", this);
        this.mOrientationListener = new BiometricDisplayListener(context, displayManager, handler, BiometricDisplayListener.SensorType.UnderDisplayFingerprint.INSTANCE, new Function0() { // from class: com.android.systemui.biometrics.UdfpsController$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Runnable runnable = UdfpsController.this.mAuthControllerUpdateUdfpsLocation;
                if (runnable != null) {
                    runnable.run();
                }
                return Unit.INSTANCE;
            }
        });
        this.mKeyguardFaceAuthInteractor = keyguardFaceAuthInteractor;
        UdfpsOverlayController udfpsOverlayController = new UdfpsOverlayController();
        fingerprintManager2.setUdfpsOverlayController(udfpsOverlayController);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        context.registerReceiver(r6, intentFilter, 2);
        udfpsHapticsSimulator.udfpsController = this;
        udfpsShell.udfpsOverlayController = udfpsOverlayController;
    }

    public void cancelAodSendFingerUpAction() {
        this.mIsAodInterruptActive = false;
        ExecutorImpl.ExecutionToken executionToken = this.mCancelAodFingerUpAction;
        if (executionToken != null) {
            executionToken.run();
            this.mCancelAodFingerUpAction = null;
        }
    }

    public final void dispatchOnUiReady(long j) {
        this.mFingerprintManager.onUiReady(j, this.mSensorProps.sensorId);
        this.mLatencyTracker.onActionEnd(14);
    }

    @Override // com.android.systemui.doze.DozeReceiver
    public final void dozeTimeTick() {
        UdfpsView udfpsView;
        UdfpsControllerOverlay udfpsControllerOverlay = this.mOverlay;
        if (udfpsControllerOverlay != null && (udfpsView = udfpsControllerOverlay.overlayView) != null) {
            udfpsView.dozeTimeTick();
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("mSensorProps=(" + this.mSensorProps + ")");
        StringBuilder sb = new StringBuilder("Using new touch detection framework: ");
        ReleasedFlag releasedFlag = Flags.UDFPS_NEW_TOUCH_DETECTION;
        FeatureFlags featureFlags = this.mFeatureFlags;
        sb.append(((FeatureFlagsRelease) featureFlags).isEnabled(releasedFlag));
        printWriter.println(sb.toString());
        printWriter.println("Using ellipse touch detection: " + ((FeatureFlagsRelease) featureFlags).isEnabled(Flags.UDFPS_ELLIPSE_DETECTION));
    }

    public final void hideUdfpsOverlay() {
        ((ExecutionImpl) this.mExecution).assertIsMainThread();
        UdfpsControllerOverlay udfpsControllerOverlay = this.mOverlay;
        if (udfpsControllerOverlay != null) {
            UdfpsView udfpsView = udfpsControllerOverlay.overlayView;
            if (udfpsView != null) {
                onFingerUp(udfpsControllerOverlay.requestId, udfpsView);
            }
            UdfpsControllerOverlay udfpsControllerOverlay2 = this.mOverlay;
            UdfpsView udfpsView2 = udfpsControllerOverlay2.overlayView;
            if (udfpsView2 != null) {
                if (udfpsView2.isDisplayConfigured) {
                    udfpsView2.unconfigureDisplay$1();
                }
                udfpsControllerOverlay2.windowManager.removeView(udfpsView2);
                udfpsView2.setOnTouchListener(null);
                udfpsView2.setOnHoverListener(null);
                udfpsView2.animationViewController = null;
                UdfpsControllerOverlay$show$1$1 udfpsControllerOverlay$show$1$1 = udfpsControllerOverlay2.overlayTouchListener;
                if (udfpsControllerOverlay$show$1$1 != null) {
                    udfpsControllerOverlay2.accessibilityManager.removeTouchExplorationStateChangeListener(udfpsControllerOverlay$show$1$1);
                }
            }
            udfpsControllerOverlay2.overlayView = null;
            udfpsControllerOverlay2.overlayTouchListener = null;
            this.mKeyguardViewManager.hideAlternateBouncer(true);
        }
        this.mOverlay = null;
        BiometricDisplayListener biometricDisplayListener = this.mOrientationListener;
        biometricDisplayListener.displayManager.unregisterDisplayListener(biometricDisplayListener);
    }

    public final boolean isWithinSensorArea(UdfpsView udfpsView, float f, float f2, boolean z) {
        UdfpsAnimationViewController udfpsAnimationViewController;
        PointF pointF;
        boolean z2;
        if (z) {
            UdfpsAnimationViewController udfpsAnimationViewController2 = udfpsView.animationViewController;
            if (udfpsAnimationViewController2 == null || (pointF = udfpsAnimationViewController2.touchTranslation) == null) {
                pointF = new PointF(0.0f, 0.0f);
            }
            float centerX = udfpsView.sensorRect.centerX() + pointF.x;
            float centerY = udfpsView.sensorRect.centerY() + pointF.y;
            Rect rect = udfpsView.sensorRect;
            float f3 = (rect.right - rect.left) / 2.0f;
            float f4 = (rect.bottom - rect.top) / 2.0f;
            float f5 = udfpsView.sensorTouchAreaCoefficient;
            float f6 = f3 * f5;
            if (f > centerX - f6 && f < f6 + centerX) {
                float f7 = f4 * f5;
                if (f2 > centerY - f7 && f2 < f7 + centerY) {
                    UdfpsAnimationViewController udfpsAnimationViewController3 = udfpsView.animationViewController;
                    if (udfpsAnimationViewController3 != null) {
                        z2 = udfpsAnimationViewController3.shouldPauseAuth();
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        return true;
                    }
                }
            }
            return false;
        }
        UdfpsControllerOverlay udfpsControllerOverlay = this.mOverlay;
        if (udfpsControllerOverlay != null) {
            UdfpsView udfpsView2 = udfpsControllerOverlay.overlayView;
            UdfpsAnimationViewController udfpsAnimationViewController4 = null;
            if (udfpsView2 != null) {
                udfpsAnimationViewController = udfpsView2.animationViewController;
            } else {
                udfpsAnimationViewController = null;
            }
            if (udfpsAnimationViewController != null) {
                if (udfpsView2 != null) {
                    udfpsAnimationViewController4 = udfpsView2.animationViewController;
                }
                if (!udfpsAnimationViewController4.shouldPauseAuth() && this.mOverlayParams.sensorBounds.contains((int) f, (int) f2)) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public final void onFingerDown(long j, int i, float f, float f2, float f3, float f4, float f5, long j2, long j3, boolean z) {
        boolean z2;
        int i2;
        int i3;
        ((ExecutionImpl) this.mExecution).assertIsMainThread();
        UdfpsControllerOverlay udfpsControllerOverlay = this.mOverlay;
        if (udfpsControllerOverlay == null) {
            Log.w("UdfpsController", "Null request in onFingerDown");
            return;
        }
        if (!udfpsControllerOverlay.matchesRequestId(j)) {
            StringBuilder m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("Mismatched fingerDown: ", j, " current: ");
            m.append(this.mOverlay.requestId);
            Log.w("UdfpsController", m.toString());
            return;
        }
        if (this.mSensorProps.sensorType == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            this.mLatencyTracker.onActionStart(14);
        }
        ((SystemClockImpl) this.mSystemClock).getClass();
        this.mPowerManager.userActivity(android.os.SystemClock.uptimeMillis(), 2, 0);
        if (!this.mOnFingerDown) {
            playStartHaptic();
            SystemUIKeyguardFaceAuthInteractor systemUIKeyguardFaceAuthInteractor = (SystemUIKeyguardFaceAuthInteractor) this.mKeyguardFaceAuthInteractor;
            systemUIKeyguardFaceAuthInteractor.getClass();
            systemUIKeyguardFaceAuthInteractor.runFaceAuth(FaceAuthUiEvent.FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN);
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
            if (!keyguardUpdateMonitor.isFaceDetectionRunning()) {
                keyguardUpdateMonitor.requestFaceAuth("Face auth triggered due to finger down on UDFPS");
            }
        }
        this.mOnFingerDown = true;
        if (((FeatureFlagsRelease) this.mFeatureFlags).isEnabled(Flags.UDFPS_NEW_TOUCH_DETECTION)) {
            i2 = 0;
            this.mFingerprintManager.onPointerDown(j, this.mSensorProps.sensorId, i, f, f2, f3, f4, f5, j2, j3, z);
        } else {
            i2 = 0;
            this.mFingerprintManager.onPointerDown(j, this.mSensorProps.sensorId, (int) f, (int) f2, f3, f4);
        }
        Trace.endAsyncSection("UdfpsController.e2e.onPointerDown", i2);
        UdfpsView udfpsView = this.mOverlay.overlayView;
        if (udfpsView != null) {
            if (this.mSensorProps.sensorType == 3) {
                i3 = 1;
            } else {
                i3 = i2;
            }
            if (i3 != 0) {
                if (this.mIgnoreRefreshRate) {
                    dispatchOnUiReady(j);
                } else {
                    udfpsView.isDisplayConfigured = true;
                    UdfpsAnimationViewController udfpsAnimationViewController = udfpsView.animationViewController;
                    if (udfpsAnimationViewController != null) {
                        udfpsAnimationViewController.getView().onDisplayConfiguring();
                        udfpsAnimationViewController.getView().postInvalidate();
                    }
                    UdfpsDisplayModeProvider udfpsDisplayModeProvider = udfpsView.mUdfpsDisplayMode;
                    if (udfpsDisplayModeProvider != null) {
                        UdfpsDisplayMode udfpsDisplayMode = (UdfpsDisplayMode) udfpsDisplayModeProvider;
                        ((ExecutionImpl) udfpsDisplayMode.execution).mainLooper.isCurrentThread();
                        UdfpsLogger udfpsLogger = udfpsDisplayMode.logger;
                        udfpsLogger.getClass();
                        LogLevel logLevel = LogLevel.VERBOSE;
                        LogBuffer.log$default(udfpsLogger.logBuffer, "UdfpsDisplayMode", logLevel, "enable", null, 8, null);
                        if (udfpsDisplayMode.currentRequest != null) {
                            LogBuffer.log$default(udfpsLogger.logBuffer, "UdfpsDisplayMode", LogLevel.ERROR, "enable | already requested", null, 8, null);
                        } else {
                            AuthController authController = udfpsDisplayMode.authController;
                            if (authController.mUdfpsRefreshRateRequestCallback == null) {
                                LogBuffer.log$default(udfpsLogger.logBuffer, "UdfpsDisplayMode", LogLevel.ERROR, "enable | mDisplayManagerCallback is null", null, 8, null);
                            } else {
                                Trace.beginSection("UdfpsDisplayMode.enable");
                                Request request = new Request(udfpsDisplayMode.context.getDisplayId());
                                udfpsDisplayMode.currentRequest = request;
                                try {
                                    IUdfpsRefreshRateRequestCallback iUdfpsRefreshRateRequestCallback = authController.mUdfpsRefreshRateRequestCallback;
                                    Intrinsics.checkNotNull(iUdfpsRefreshRateRequestCallback);
                                    iUdfpsRefreshRateRequestCallback.onRequestEnabled(request.displayId);
                                    LogBuffer.log$default(udfpsLogger.logBuffer, "UdfpsDisplayMode", logLevel, "enable | requested optimal refresh rate for UDFPS", null, 8, null);
                                } catch (RemoteException e) {
                                    LogLevel logLevel2 = LogLevel.ERROR;
                                    UdfpsLogger$e$2 udfpsLogger$e$2 = new UdfpsLogger$e$2("enable");
                                    LogBuffer logBuffer = udfpsLogger.logBuffer;
                                    logBuffer.commit(logBuffer.obtain("UdfpsDisplayMode", logLevel2, udfpsLogger$e$2, e));
                                }
                                dispatchOnUiReady(j);
                                if (Unit.INSTANCE == null) {
                                    LogBuffer.log$default(udfpsLogger.logBuffer, "UdfpsDisplayMode", LogLevel.WARNING, "enable | onEnabled is null", null, 8, null);
                                }
                                Trace.endSection();
                            }
                        }
                    }
                }
            }
        }
        Iterator it = ((HashSet) this.mCallbacks).iterator();
        while (it.hasNext()) {
            ((Callback) it.next()).onFingerDown();
        }
    }

    public final void onFingerUp(long j, UdfpsView udfpsView) {
        onFingerUp(j, udfpsView, -1, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, 0L, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:238:0x053a, code lost:
    
        if (r6 != 10) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x03cc, code lost:
    
        if (r6 != 4) goto L172;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x03e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(long r36, android.view.MotionEvent r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 1802
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.UdfpsController.onTouch(long, android.view.MotionEvent, boolean):boolean");
    }

    public void playStartHaptic() {
        if (this.mAccessibilityManager.isTouchExplorationEnabled()) {
            this.mVibrator.vibrate(Process.myUid(), this.mContext.getOpPackageName(), EFFECT_CLICK, "udfps-onStart-click", UDFPS_VIBRATION_ATTRIBUTES);
        }
    }

    public final boolean shouldTryToDismissKeyguard() {
        UdfpsAnimationViewController udfpsAnimationViewController;
        UdfpsControllerOverlay udfpsControllerOverlay = this.mOverlay;
        if (udfpsControllerOverlay != null) {
            UdfpsView udfpsView = udfpsControllerOverlay.overlayView;
            if (udfpsView != null) {
                udfpsAnimationViewController = udfpsView.animationViewController;
            } else {
                udfpsAnimationViewController = null;
            }
            if ((udfpsAnimationViewController instanceof UdfpsKeyguardViewControllerLegacy) && ((KeyguardStateControllerImpl) this.mKeyguardStateController).mCanDismissLockScreen && !this.mAttemptedToDismissKeyguard) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005e A[Catch: RuntimeException -> 0x0095, TryCatch #0 {RuntimeException -> 0x0095, blocks: (B:12:0x0033, B:14:0x004b, B:23:0x005e, B:24:0x0061, B:26:0x0083, B:27:0x0086), top: B:11:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0083 A[Catch: RuntimeException -> 0x0095, TryCatch #0 {RuntimeException -> 0x0095, blocks: (B:12:0x0033, B:14:0x004b, B:23:0x005e, B:24:0x0061, B:26:0x0083, B:27:0x0086), top: B:11:0x0033 }] */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener, com.android.systemui.biometrics.UdfpsControllerOverlay$show$1$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void showUdfpsOverlay(final com.android.systemui.biometrics.UdfpsControllerOverlay r9) {
        /*
            r8 = this;
            com.android.systemui.util.concurrency.Execution r0 = r8.mExecution
            com.android.systemui.util.concurrency.ExecutionImpl r0 = (com.android.systemui.util.concurrency.ExecutionImpl) r0
            r0.assertIsMainThread()
            r8.mOverlay = r9
            r0 = 4
            int r1 = r9.requestReason
            if (r1 != r0) goto L1e
            com.android.keyguard.KeyguardUpdateMonitor r0 = r8.mKeyguardUpdateMonitor
            boolean r0 = r0.isFingerprintDetectionRunning()
            if (r0 != 0) goto L1e
            java.lang.String r8 = "UdfpsController"
            java.lang.String r9 = "Attempting to showUdfpsOverlay when fingerprint detection isn't running on keyguard. Skip show."
            android.util.Log.d(r8, r9)
            return
        L1e:
            com.android.settingslib.udfps.UdfpsOverlayParams r0 = r8.mOverlayParams
            android.view.accessibility.AccessibilityManager r2 = r9.accessibilityManager
            com.android.systemui.biometrics.UdfpsView r3 = r9.overlayView
            r4 = 0
            if (r3 != 0) goto L9f
            r9.overlayParams = r0
            android.graphics.Rect r3 = new android.graphics.Rect
            android.graphics.Rect r5 = r0.sensorBounds
            r3.<init>(r5)
            r9.sensorBounds = r3
            r3 = 1
            android.view.LayoutInflater r5 = r9.inflater     // Catch: java.lang.RuntimeException -> L95
            r6 = 0
            r7 = 2131559672(0x7f0d04f8, float:1.8744695E38)
            android.view.View r5 = r5.inflate(r7, r6, r4)     // Catch: java.lang.RuntimeException -> L95
            com.android.systemui.biometrics.UdfpsView r5 = (com.android.systemui.biometrics.UdfpsView) r5     // Catch: java.lang.RuntimeException -> L95
            r5.overlayParams = r0     // Catch: java.lang.RuntimeException -> L95
            com.android.systemui.biometrics.UdfpsDisplayModeProvider r0 = r9.udfpsDisplayModeProvider     // Catch: java.lang.RuntimeException -> L95
            r5.mUdfpsDisplayMode = r0     // Catch: java.lang.RuntimeException -> L95
            com.android.systemui.biometrics.UdfpsAnimationViewController r0 = r9.inflateUdfpsAnimation(r8, r5)     // Catch: java.lang.RuntimeException -> L95
            if (r0 == 0) goto L50
            r0.init()     // Catch: java.lang.RuntimeException -> L95
            r5.animationViewController = r0     // Catch: java.lang.RuntimeException -> L95
        L50:
            r6 = 2
            if (r1 == r3) goto L5b
            if (r1 == r6) goto L5b
            r7 = 3
            if (r1 != r7) goto L59
            goto L5b
        L59:
            r1 = r4
            goto L5c
        L5b:
            r1 = r3
        L5c:
            if (r1 == 0) goto L61
            r5.setImportantForAccessibility(r6)     // Catch: java.lang.RuntimeException -> L95
        L61:
            android.view.WindowManager r1 = r9.windowManager     // Catch: java.lang.RuntimeException -> L95
            android.view.WindowManager$LayoutParams r6 = r9.coreLayoutParams     // Catch: java.lang.RuntimeException -> L95
            r9.updateDimensions(r6, r0)     // Catch: java.lang.RuntimeException -> L95
            r1.addView(r5, r6)     // Catch: java.lang.RuntimeException -> L95
            android.graphics.Rect r0 = r9.sensorBounds     // Catch: java.lang.RuntimeException -> L95
            r5.sensorRect = r0     // Catch: java.lang.RuntimeException -> L95
            boolean r0 = r2.isTouchExplorationEnabled()     // Catch: java.lang.RuntimeException -> L95
            r9.touchExplorationEnabled = r0     // Catch: java.lang.RuntimeException -> L95
            com.android.systemui.biometrics.UdfpsControllerOverlay$show$1$1 r0 = new com.android.systemui.biometrics.UdfpsControllerOverlay$show$1$1     // Catch: java.lang.RuntimeException -> L95
            r0.<init>()     // Catch: java.lang.RuntimeException -> L95
            r9.overlayTouchListener = r0     // Catch: java.lang.RuntimeException -> L95
            r2.addTouchExplorationStateChangeListener(r0)     // Catch: java.lang.RuntimeException -> L95
            com.android.systemui.biometrics.UdfpsControllerOverlay$show$1$1 r0 = r9.overlayTouchListener     // Catch: java.lang.RuntimeException -> L95
            if (r0 == 0) goto L86
            r0.onTouchExplorationStateChanged(r3)     // Catch: java.lang.RuntimeException -> L95
        L86:
            com.android.systemui.flags.FeatureFlags r0 = r9.featureFlags     // Catch: java.lang.RuntimeException -> L95
            com.android.systemui.flags.ReleasedFlag r1 = com.android.systemui.flags.Flags.UDFPS_NEW_TOUCH_DETECTION     // Catch: java.lang.RuntimeException -> L95
            com.android.systemui.flags.FeatureFlagsRelease r0 = (com.android.systemui.flags.FeatureFlagsRelease) r0     // Catch: java.lang.RuntimeException -> L95
            boolean r0 = r0.isEnabled(r1)     // Catch: java.lang.RuntimeException -> L95
            r5.useExpandedOverlay = r0     // Catch: java.lang.RuntimeException -> L95
            r9.overlayView = r5     // Catch: java.lang.RuntimeException -> L95
            goto La0
        L95:
            r9 = move-exception
            java.lang.String r0 = "UdfpsControllerOverlay"
            java.lang.String r1 = "showUdfpsOverlay | failed to add window"
            android.util.Log.e(r0, r1, r9)
            goto La0
        L9f:
            r3 = r4
        La0:
            if (r3 == 0) goto Lab
            r8.mOnFingerDown = r4
            r8.mAttemptedToDismissKeyguard = r4
            com.android.systemui.biometrics.BiometricDisplayListener r8 = r8.mOrientationListener
            r8.enable()
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.UdfpsController.showUdfpsOverlay(com.android.systemui.biometrics.UdfpsControllerOverlay):void");
    }

    public void tryAodSendFingerUp() {
        UdfpsView udfpsView;
        if (!this.mIsAodInterruptActive) {
            return;
        }
        cancelAodSendFingerUpAction();
        UdfpsControllerOverlay udfpsControllerOverlay = this.mOverlay;
        if (udfpsControllerOverlay != null && (udfpsView = udfpsControllerOverlay.overlayView) != null) {
            onFingerUp(udfpsControllerOverlay.requestId, udfpsView);
        }
    }

    public final void tryDismissingKeyguard() {
        if (!this.mOnFingerDown) {
            playStartHaptic();
        }
        this.mKeyguardViewManager.notifyKeyguardAuthenticated(false);
        this.mAttemptedToDismissKeyguard = true;
    }

    public final void onFingerUp(long j, UdfpsView udfpsView, int i, float f, float f2, float f3, float f4, float f5, long j2, long j3, boolean z) {
        ((ExecutionImpl) this.mExecution).assertIsMainThread();
        this.mActivePointerId = -1;
        this.mAcquiredReceived = false;
        if (this.mOnFingerDown) {
            if (((FeatureFlagsRelease) this.mFeatureFlags).isEnabled(Flags.UDFPS_NEW_TOUCH_DETECTION)) {
                this.mFingerprintManager.onPointerUp(j, this.mSensorProps.sensorId, i, f, f2, f3, f4, f5, j2, j3, z);
            } else {
                this.mFingerprintManager.onPointerUp(j, this.mSensorProps.sensorId);
            }
            Iterator it = ((HashSet) this.mCallbacks).iterator();
            while (it.hasNext()) {
                ((Callback) it.next()).onFingerUp();
            }
        }
        this.mOnFingerDown = false;
        if ((this.mSensorProps.sensorType == 3) && udfpsView.isDisplayConfigured) {
            udfpsView.unconfigureDisplay$1();
        }
        cancelAodSendFingerUpAction();
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UdfpsOverlayController extends IUdfpsOverlayController.Stub {
        public UdfpsOverlayController() {
        }

        public final void hideUdfpsOverlay(int i) {
            FeatureFlags featureFlags = UdfpsController.this.mFeatureFlags;
            Flags flags = Flags.INSTANCE;
            featureFlags.getClass();
            ((ExecutorImpl) UdfpsController.this.mFgExecutor).execute(new UdfpsController$$ExternalSyntheticLambda3(this, 2));
        }

        public final void onAcquired(final int i, final int i2) {
            if (BiometricFingerprintConstants.shouldDisableUdfpsDisplayMode(i2)) {
                ((ExecutorImpl) UdfpsController.this.mFgExecutor).execute(new Runnable() { // from class: com.android.systemui.biometrics.UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        UdfpsController.UdfpsOverlayController udfpsOverlayController = UdfpsController.UdfpsOverlayController.this;
                        int i3 = i;
                        int i4 = i2;
                        UdfpsController udfpsController = UdfpsController.this;
                        UdfpsControllerOverlay udfpsControllerOverlay = udfpsController.mOverlay;
                        if (udfpsControllerOverlay == null) {
                            Log.e("UdfpsController", "Null request when onAcquired for sensorId: " + i3 + " acquiredInfo=" + i4);
                            return;
                        }
                        boolean z = true;
                        udfpsController.mAcquiredReceived = true;
                        UdfpsView udfpsView = udfpsControllerOverlay.overlayView;
                        if (udfpsView != null) {
                            if (udfpsController.mSensorProps.sensorType != 3) {
                                z = false;
                            }
                            if (z) {
                                udfpsController.getClass();
                                if (udfpsView.isDisplayConfigured) {
                                    udfpsView.unconfigureDisplay$1();
                                }
                            }
                        }
                        UdfpsController.this.tryAodSendFingerUp();
                    }
                });
            }
        }

        public final void setDebugMessage(int i, String str) {
            ((ExecutorImpl) UdfpsController.this.mFgExecutor).execute(new UdfpsController$$ExternalSyntheticLambda0(1, this, str));
        }

        public final void showUdfpsOverlay(final long j, int i, final int i2, final IUdfpsOverlayControllerCallback iUdfpsOverlayControllerCallback) {
            FeatureFlags featureFlags = UdfpsController.this.mFeatureFlags;
            Flags flags = Flags.INSTANCE;
            featureFlags.getClass();
            ((ExecutorImpl) UdfpsController.this.mFgExecutor).execute(new Runnable() { // from class: com.android.systemui.biometrics.UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    final UdfpsController.UdfpsOverlayController udfpsOverlayController = UdfpsController.UdfpsOverlayController.this;
                    final long j2 = j;
                    int i3 = i2;
                    IUdfpsOverlayControllerCallback iUdfpsOverlayControllerCallback2 = iUdfpsOverlayControllerCallback;
                    UdfpsController udfpsController = UdfpsController.this;
                    udfpsController.showUdfpsOverlay(new UdfpsControllerOverlay(udfpsController.mContext, udfpsController.mFingerprintManager, udfpsController.mInflater, udfpsController.mWindowManager, udfpsController.mAccessibilityManager, udfpsController.mStatusBarStateController, udfpsController.mShadeExpansionStateManager, udfpsController.mKeyguardViewManager, udfpsController.mKeyguardUpdateMonitor, udfpsController.mDialogManager, udfpsController.mDumpManager, udfpsController.mLockscreenShadeTransitionController, udfpsController.mConfigurationController, udfpsController.mKeyguardStateController, udfpsController.mUnlockedScreenOffAnimationController, udfpsController.mUdfpsDisplayMode, udfpsController.mSecureSettings, j2, i3, iUdfpsOverlayControllerCallback2, new Function3() { // from class: com.android.systemui.biometrics.UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            UdfpsController udfpsController2 = UdfpsController.this;
                            boolean booleanValue = ((Boolean) obj3).booleanValue();
                            return Boolean.valueOf(udfpsController2.onTouch(j2, (MotionEvent) obj2, booleanValue));
                        }
                    }, udfpsController.mActivityLaunchAnimator, udfpsController.mFeatureFlags, udfpsController.mPrimaryBouncerInteractor, udfpsController.mAlternateBouncerInteractor, udfpsController.mUdfpsUtils));
                }
            });
        }

        public final void onEnrollmentHelp(int i) {
        }

        public final void onEnrollmentProgress(int i, int i2) {
        }
    }
}
