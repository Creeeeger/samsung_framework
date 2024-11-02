package com.android.keyguard;

import android.app.admin.DevicePolicyManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.media.AudioManager;
import android.metrics.LogMaker;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.Slog;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.AdminSecondaryLockScreenController;
import com.android.keyguard.KeyguardSecurityContainer;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardSecurityViewFlipperController;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.DejankUtils;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.R;
import com.android.systemui.biometrics.SideFpsController;
import com.android.systemui.classifier.FalsingA11yDelegate;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl;
import com.android.systemui.keyguard.domain.interactor.KeyguardFaceAuthInteractor;
import com.android.systemui.keyguard.domain.interactor.SystemUIKeyguardFaceAuthInteractor;
import com.android.systemui.log.SessionTracker;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.policy.UserSwitcherController;
import com.android.systemui.util.ViewController;
import com.android.systemui.util.settings.GlobalSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardSecurityContainerController extends ViewController implements KeyguardSecurityView {
    public final AdminSecondaryLockScreenController mAdminSecondaryLockScreenController;
    public final AudioManager mAudioManager;
    public Runnable mCancelAction;
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass4 mConfigurationListener;
    public KeyguardSecurityModel.SecurityMode mCurrentSecurityMode;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public ActivityStarter.OnDismissAction mDismissAction;
    public final FalsingA11yDelegate mFalsingA11yDelegate;
    public final FalsingCollector mFalsingCollector;
    public final FalsingManager mFalsingManager;
    public final FeatureFlags mFeatureFlags;
    public final GlobalSettings mGlobalSettings;
    final Gefingerpoken mGlobalTouchListener;
    public final KeyguardFaceAuthInteractor mKeyguardFaceAuthInteractor;
    public final KeyguardSecurityCallback mKeyguardSecurityCallback;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitorCallback mKeyguardUpdateMonitorCallback;
    public int mLastOrientation;
    public final LockPatternUtils mLockPatternUtils;
    public final MetricsLogger mMetricsLogger;
    public final KeyguardSecurityContainerController$$ExternalSyntheticLambda2 mOnKeyListener;
    public final KeyguardSecurityModel mSecurityModel;
    public final KeyguardSecurityViewFlipperController mSecurityViewFlipperController;
    public final SessionTracker mSessionTracker;
    public final Optional mSideFpsController;
    public final TelephonyManager mTelephonyManager;
    public int mTranslationY;
    public final UiEventLogger mUiEventLogger;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public final KeyguardSecurityContainerController$$ExternalSyntheticLambda3 mUserSwitchCallback;
    public final UserSwitcherController mUserSwitcherController;
    public final ViewMediatorCallback mViewMediatorCallback;
    public boolean mWillRunDismissFromKeyguard;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecurityContainerController$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass7 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode;

        static {
            int[] iArr = new int[KeyguardSecurityModel.SecurityMode.values().length];
            $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode = iArr;
            try {
                iArr[KeyguardSecurityModel.SecurityMode.Pattern.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Password.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.PIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SimPin.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SimPuk.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda2] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda3] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.keyguard.KeyguardSecurityContainerController$4] */
    public KeyguardSecurityContainerController(KeyguardSecurityContainer keyguardSecurityContainer, AdminSecondaryLockScreenController.Factory factory, LockPatternUtils lockPatternUtils, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel keyguardSecurityModel, MetricsLogger metricsLogger, UiEventLogger uiEventLogger, KeyguardStateController keyguardStateController, KeyguardSecurityViewFlipperController keyguardSecurityViewFlipperController, ConfigurationController configurationController, FalsingCollector falsingCollector, FalsingManager falsingManager, UserSwitcherController userSwitcherController, DeviceProvisionedController deviceProvisionedController, FeatureFlags featureFlags, GlobalSettings globalSettings, SessionTracker sessionTracker, Optional<SideFpsController> optional, FalsingA11yDelegate falsingA11yDelegate, TelephonyManager telephonyManager, ViewMediatorCallback viewMediatorCallback, AudioManager audioManager, KeyguardFaceAuthInteractor keyguardFaceAuthInteractor) {
        super(keyguardSecurityContainer);
        this.mOnKeyListener = new View.OnKeyListener() { // from class: com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda2
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return KeyguardSecurityContainerController.this.interceptMediaKey(keyEvent);
            }
        };
        this.mLastOrientation = 0;
        this.mCurrentSecurityMode = KeyguardSecurityModel.SecurityMode.Invalid;
        this.mUserSwitchCallback = new UserSwitcherController.UserSwitchCallback() { // from class: com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda3
            @Override // com.android.systemui.statusbar.policy.UserSwitcherController.UserSwitchCallback
            public final void onUserSwitched() {
                KeyguardSecurityContainerController.this.showPrimarySecurityScreen();
            }
        };
        this.mGlobalTouchListener = new Gefingerpoken() { // from class: com.android.keyguard.KeyguardSecurityContainerController.1
            public MotionEvent mTouchDown;

            @Override // com.android.systemui.Gefingerpoken
            public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
            
                if (r4.isTouchOnTheOtherSideOfSecurity(r7, r4.isLeftAligned()) != false) goto L10;
             */
            @Override // com.android.systemui.Gefingerpoken
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean onTouchEvent(android.view.MotionEvent r7) {
                /*
                    r6 = this;
                    int r0 = r7.getActionMasked()
                    r1 = 0
                    r2 = 1
                    r3 = 0
                    if (r0 != 0) goto L3c
                    com.android.keyguard.KeyguardSecurityContainerController r0 = com.android.keyguard.KeyguardSecurityContainerController.this
                    android.view.View r4 = r0.mView
                    com.android.keyguard.KeyguardSecurityContainer r4 = (com.android.keyguard.KeyguardSecurityContainer) r4
                    com.android.keyguard.KeyguardSecurityContainer$ViewMode r4 = r4.mViewMode
                    boolean r5 = r4 instanceof com.android.keyguard.KeyguardSecurityContainer.SidedSecurityMode
                    if (r5 == 0) goto L22
                    com.android.keyguard.KeyguardSecurityContainer$SidedSecurityMode r4 = (com.android.keyguard.KeyguardSecurityContainer.SidedSecurityMode) r4
                    boolean r5 = r4.isLeftAligned()
                    boolean r4 = r4.isTouchOnTheOtherSideOfSecurity(r7, r5)
                    if (r4 == 0) goto L22
                    goto L23
                L22:
                    r2 = r3
                L23:
                    if (r2 == 0) goto L2c
                    com.android.systemui.classifier.FalsingCollector r0 = r0.mFalsingCollector
                    com.android.systemui.classifier.FalsingCollectorImpl r0 = (com.android.systemui.classifier.FalsingCollectorImpl) r0
                    r0.avoidGesture()
                L2c:
                    android.view.MotionEvent r0 = r6.mTouchDown
                    if (r0 == 0) goto L35
                    r0.recycle()
                    r6.mTouchDown = r1
                L35:
                    android.view.MotionEvent r7 = android.view.MotionEvent.obtain(r7)
                    r6.mTouchDown = r7
                    goto L54
                L3c:
                    android.view.MotionEvent r0 = r6.mTouchDown
                    if (r0 == 0) goto L54
                    int r0 = r7.getActionMasked()
                    if (r0 == r2) goto L4d
                    int r7 = r7.getActionMasked()
                    r0 = 3
                    if (r7 != r0) goto L54
                L4d:
                    android.view.MotionEvent r7 = r6.mTouchDown
                    r7.recycle()
                    r6.mTouchDown = r1
                L54:
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecurityContainerController.AnonymousClass1.onTouchEvent(android.view.MotionEvent):boolean");
            }
        };
        KeyguardSecurityCallback securityCallback = getSecurityCallback();
        this.mKeyguardSecurityCallback = securityCallback;
        new Object(this) { // from class: com.android.keyguard.KeyguardSecurityContainerController.3
        };
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.KeyguardSecurityContainerController.4
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onDensityOrFontScaleChanged() {
                KeyguardSecurityContainerController.this.getClass();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onThemeChanged() {
                KeyguardSecurityContainerController keyguardSecurityContainerController = KeyguardSecurityContainerController.this;
                keyguardSecurityContainerController.getClass();
                keyguardSecurityContainerController.reset();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onUiModeChanged() {
                KeyguardSecurityContainerController.this.getClass();
            }
        };
        this.mKeyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardSecurityContainerController.5
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onDevicePolicyManagerStateChanged() {
                KeyguardSecurityContainerController.this.showPrimarySecurityScreen();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onTrustGrantedForCurrentUser(boolean z, TrustGrantFlags trustGrantFlags, String str) {
                boolean z2;
                boolean z3 = false;
                KeyguardSecurityContainerController keyguardSecurityContainerController = KeyguardSecurityContainerController.this;
                if (z) {
                    if (!((KeyguardSecurityContainer) keyguardSecurityContainerController.mView).isVisibleToUser()) {
                        Log.i("KeyguardSecurityContainer", "TrustAgent dismissed Keyguard.");
                    }
                    keyguardSecurityContainerController.mKeyguardSecurityCallback.dismiss(false, KeyguardUpdateMonitor.getCurrentUser(), false, KeyguardSecurityModel.SecurityMode.Invalid);
                    return;
                }
                int i = trustGrantFlags.mFlags;
                if ((i & 1) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    if ((i & 2) != 0) {
                        z3 = true;
                    }
                    if (!z3) {
                        return;
                    }
                }
                keyguardSecurityContainerController.mViewMediatorCallback.playTrustedSound();
            }
        };
        this.mLockPatternUtils = lockPatternUtils;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        this.mSecurityModel = keyguardSecurityModel;
        this.mMetricsLogger = metricsLogger;
        this.mUiEventLogger = uiEventLogger;
        this.mKeyguardStateController = keyguardStateController;
        this.mSecurityViewFlipperController = keyguardSecurityViewFlipperController;
        this.mAdminSecondaryLockScreenController = new AdminSecondaryLockScreenController(factory.mContext, factory.mParent, factory.mUpdateMonitor, securityCallback, factory.mHandler, 0);
        this.mConfigurationController = configurationController;
        this.mLastOrientation = getResources().getConfiguration().orientation;
        this.mFalsingCollector = falsingCollector;
        this.mFalsingManager = falsingManager;
        this.mUserSwitcherController = userSwitcherController;
        this.mFeatureFlags = featureFlags;
        this.mGlobalSettings = globalSettings;
        this.mSessionTracker = sessionTracker;
        this.mSideFpsController = optional;
        this.mFalsingA11yDelegate = falsingA11yDelegate;
        this.mTelephonyManager = telephonyManager;
        this.mViewMediatorCallback = viewMediatorCallback;
        this.mAudioManager = audioManager;
        this.mKeyguardFaceAuthInteractor = keyguardFaceAuthInteractor;
        this.mDeviceProvisionedController = deviceProvisionedController;
    }

    public void configureMode() {
        boolean z;
        boolean z2;
        int i;
        KeyguardSecurityModel.SecurityMode securityMode = this.mCurrentSecurityMode;
        int i2 = 1;
        if (securityMode != KeyguardSecurityModel.SecurityMode.SimPin && securityMode != KeyguardSecurityModel.SecurityMode.SimPuk) {
            z = false;
        } else {
            z = true;
        }
        if (((FeatureFlagsRelease) this.mFeatureFlags).isEnabled(Flags.BOUNCER_USER_SWITCHER) && !z) {
            i2 = 2;
        } else {
            KeyguardSecurityModel.SecurityMode securityMode2 = this.mCurrentSecurityMode;
            if (securityMode2 != KeyguardSecurityModel.SecurityMode.Pattern && securityMode2 != KeyguardSecurityModel.SecurityMode.PIN) {
                z2 = false;
            } else {
                z2 = getResources().getBoolean(R.bool.can_use_one_handed_bouncer);
            }
            if (!z2) {
                i = 0;
                ((KeyguardSecurityContainer) this.mView).initMode(i, this.mGlobalSettings, this.mFalsingManager, this.mUserSwitcherController, new KeyguardSecurityContainerController$$ExternalSyntheticLambda0(this), this.mFalsingA11yDelegate);
            }
        }
        i = i2;
        ((KeyguardSecurityContainer) this.mView).initMode(i, this.mGlobalSettings, this.mFalsingManager, this.mUserSwitcherController, new KeyguardSecurityContainerController$$ExternalSyntheticLambda0(this), this.mFalsingA11yDelegate);
    }

    public final void getCurrentSecurityController(KeyguardSecurityViewFlipperController.OnViewInflatedCallback onViewInflatedCallback) {
        this.mSecurityViewFlipperController.getSecurityView(this.mCurrentSecurityMode, this.mKeyguardSecurityCallback, onViewInflatedCallback);
    }

    public KeyguardSecurityCallback getSecurityCallback() {
        return new KeyguardSecurityCallback() { // from class: com.android.keyguard.KeyguardSecurityContainerController.2
            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void dismiss(int i, KeyguardSecurityModel.SecurityMode securityMode, boolean z) {
                dismiss(z, i, false, securityMode);
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void finish(int i, boolean z) {
                KeyguardSecurityContainerController keyguardSecurityContainerController = KeyguardSecurityContainerController.this;
                if (!((KeyguardStateControllerImpl) keyguardSecurityContainerController.mKeyguardStateController).mCanDismissLockScreen && !z) {
                    Log.e("KeyguardSecurityContainer", "Tried to dismiss keyguard when lockscreen is not dismissible and user was not authenticated with a primary security method (pin/password/pattern).");
                    return;
                }
                boolean z2 = false;
                keyguardSecurityContainerController.mWillRunDismissFromKeyguard = false;
                ActivityStarter.OnDismissAction onDismissAction = keyguardSecurityContainerController.mDismissAction;
                if (onDismissAction != null) {
                    z2 = onDismissAction.onDismiss();
                    keyguardSecurityContainerController.mWillRunDismissFromKeyguard = keyguardSecurityContainerController.mDismissAction.willRunAnimationOnKeyguard();
                    keyguardSecurityContainerController.mDismissAction = null;
                    keyguardSecurityContainerController.mCancelAction = null;
                }
                ViewMediatorCallback viewMediatorCallback = keyguardSecurityContainerController.mViewMediatorCallback;
                if (viewMediatorCallback != null) {
                    if (z2) {
                        viewMediatorCallback.keyguardDonePending(i);
                    } else {
                        viewMediatorCallback.keyguardDone(i);
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void onCancelClicked() {
                KeyguardSecurityContainerController.this.mViewMediatorCallback.onCancelClicked();
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void onSecurityModeChanged(boolean z) {
                KeyguardSecurityContainerController.this.mViewMediatorCallback.setNeedsInput(z);
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void onUserInput() {
                KeyguardSecurityContainerController keyguardSecurityContainerController = KeyguardSecurityContainerController.this;
                ((DeviceEntryFaceAuthRepositoryImpl) ((SystemUIKeyguardFaceAuthInteractor) keyguardSecurityContainerController.mKeyguardFaceAuthInteractor).repository).cancel();
                KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardSecurityContainerController.mUpdateMonitor;
                keyguardUpdateMonitor.getClass();
                keyguardUpdateMonitor.stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER);
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void reportUnlockAttempt(int i, int i2, boolean z) {
                int i3;
                KeyguardSecurityContainer.BouncerUiEvent bouncerUiEvent;
                KeyguardSecurityContainerController keyguardSecurityContainerController = KeyguardSecurityContainerController.this;
                KeyguardSecurityContainer.ViewMode viewMode = ((KeyguardSecurityContainer) keyguardSecurityContainerController.mView).mViewMode;
                int i4 = 0;
                if (viewMode instanceof KeyguardSecurityContainer.SidedSecurityMode) {
                    if ((viewMode instanceof KeyguardSecurityContainer.SidedSecurityMode) && ((KeyguardSecurityContainer.SidedSecurityMode) viewMode).isLeftAligned()) {
                        i4 = 1;
                    }
                    if (i4 != 0) {
                        i4 = 1;
                    } else {
                        i4 = 2;
                    }
                }
                if (z) {
                    SysUiStatsLog.write(64, 2, i4);
                    keyguardSecurityContainerController.mLockPatternUtils.reportSuccessfulPasswordAttempt(i);
                    ThreadUtils.postOnBackgroundThread(new KeyguardSecurityContainerController$2$$ExternalSyntheticLambda0());
                } else {
                    SysUiStatsLog.write(64, 1, i4);
                    keyguardSecurityContainerController.reportFailedUnlockAttempt(i, i2);
                }
                LogMaker logMaker = new LogMaker(197);
                if (z) {
                    i3 = 10;
                } else {
                    i3 = 11;
                }
                keyguardSecurityContainerController.mMetricsLogger.write(logMaker.setType(i3));
                if (z) {
                    bouncerUiEvent = KeyguardSecurityContainer.BouncerUiEvent.BOUNCER_PASSWORD_SUCCESS;
                } else {
                    bouncerUiEvent = KeyguardSecurityContainer.BouncerUiEvent.BOUNCER_PASSWORD_FAILURE;
                }
                keyguardSecurityContainerController.mUiEventLogger.log(bouncerUiEvent, keyguardSecurityContainerController.mSessionTracker.getSessionId(1));
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void reset() {
                KeyguardSecurityContainerController.this.mViewMediatorCallback.resetKeyguard();
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final void userActivity() {
                KeyguardSecurityContainerController.this.mViewMediatorCallback.userActivity();
            }

            @Override // com.android.keyguard.KeyguardSecurityCallback
            public final boolean dismiss(boolean z, int i, boolean z2, KeyguardSecurityModel.SecurityMode securityMode) {
                return KeyguardSecurityContainerController.this.showNextSecurityScreenOrFinish(z, i, z2, securityMode);
            }
        };
    }

    public final CharSequence getTitle() {
        KeyguardInputView securityView = ((KeyguardSecurityContainer) this.mView).mSecurityViewFlipper.getSecurityView();
        if (securityView != null) {
            return securityView.getTitle();
        }
        return "";
    }

    public final boolean interceptMediaKey(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        AudioManager audioManager = this.mAudioManager;
        if (action == 0) {
            if (keyCode != 79 && keyCode != 130 && keyCode != 222) {
                if (keyCode != 126 && keyCode != 127) {
                    switch (keyCode) {
                    }
                }
                TelephonyManager telephonyManager = this.mTelephonyManager;
                if (telephonyManager == null || telephonyManager.getCallState() == 0) {
                    return false;
                }
                return true;
            }
            audioManager.dispatchMediaKeyEvent(keyEvent);
            return true;
        }
        if (keyEvent.getAction() == 1) {
            if (keyCode != 79 && keyCode != 130 && keyCode != 222 && keyCode != 126 && keyCode != 127) {
                switch (keyCode) {
                }
            }
            audioManager.dispatchMediaKeyEvent(keyEvent);
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecurityView
    public final boolean needsInput() {
        return false;
    }

    @Override // com.android.systemui.util.ViewController
    public void onInit() {
        this.mSecurityViewFlipperController.init();
        updateResources();
        configureMode();
    }

    @Override // com.android.keyguard.KeyguardSecurityView
    public final void onStartingToHide() {
        if (this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
            getCurrentSecurityController(new KeyguardSecurityContainerController$$ExternalSyntheticLambda4(2));
        }
    }

    @Override // com.android.systemui.util.ViewController
    public void onViewAttached() {
        this.mUpdateMonitor.registerCallback(this.mKeyguardUpdateMonitorCallback);
        ((KeyguardSecurityContainer) this.mView).getClass();
        KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) this.mView;
        ((ArrayList) keyguardSecurityContainer.mMotionEventListeners).add(this.mGlobalTouchListener);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
        this.mUserSwitcherController.addUserSwitchCallback(this.mUserSwitchCallback);
        KeyguardSecurityContainer keyguardSecurityContainer2 = (KeyguardSecurityContainer) this.mView;
        ViewMediatorCallback viewMediatorCallback = this.mViewMediatorCallback;
        keyguardSecurityContainer2.mViewMediatorCallback = viewMediatorCallback;
        viewMediatorCallback.setNeedsInput(false);
        ((KeyguardSecurityContainer) this.mView).setOnKeyListener(this.mOnKeyListener);
        showPrimarySecurityScreen();
    }

    @Override // com.android.systemui.util.ViewController
    public void onViewDetached() {
        this.mUpdateMonitor.removeCallback(this.mKeyguardUpdateMonitorCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
        KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) this.mView;
        ((ArrayList) keyguardSecurityContainer.mMotionEventListeners).remove(this.mGlobalTouchListener);
        this.mUserSwitcherController.removeUserSwitchCallback(this.mUserSwitchCallback);
    }

    public void reportFailedUnlockAttempt(int i, int i2) {
        int i3;
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        int i4 = 1;
        int currentFailedPasswordAttempts = lockPatternUtils.getCurrentFailedPasswordAttempts(i) + 1;
        Log.d("KeyguardSecurityContainer", "reportFailedPatternAttempt: #" + currentFailedPasswordAttempts);
        DevicePolicyManager devicePolicyManager = lockPatternUtils.getDevicePolicyManager();
        int maximumFailedPasswordsForWipe = devicePolicyManager.getMaximumFailedPasswordsForWipe(null, i);
        if (maximumFailedPasswordsForWipe > 0) {
            i3 = maximumFailedPasswordsForWipe - currentFailedPasswordAttempts;
        } else {
            i3 = Integer.MAX_VALUE;
        }
        if (i3 < 5) {
            int profileWithMinimumFailedPasswordsForWipe = devicePolicyManager.getProfileWithMinimumFailedPasswordsForWipe(i);
            if (profileWithMinimumFailedPasswordsForWipe == i) {
                if (profileWithMinimumFailedPasswordsForWipe != 0) {
                    i4 = 3;
                }
            } else if (profileWithMinimumFailedPasswordsForWipe != -10000) {
                i4 = 2;
            }
            if (i3 > 0) {
                ((KeyguardSecurityContainer) this.mView).showAlmostAtWipeDialog(currentFailedPasswordAttempts, i3, i4);
            } else {
                Slog.i("KeyguardSecurityContainer", "Too many unlock attempts; user " + profileWithMinimumFailedPasswordsForWipe + " will be wiped!");
                ((KeyguardSecurityContainer) this.mView).showWipeDialog(currentFailedPasswordAttempts, i4);
            }
        }
        lockPatternUtils.reportFailedPasswordAttempt(i);
        if (i2 > 0) {
            lockPatternUtils.reportPasswordLockout(i2, i);
            ((KeyguardSecurityContainer) this.mView).showTimeoutDialog(i, i2, lockPatternUtils, this.mSecurityModel.getSecurityMode(i));
        }
    }

    public final void reset() {
        KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) this.mView;
        keyguardSecurityContainer.mViewMode.reset();
        keyguardSecurityContainer.mDisappearAnimRunning = false;
        KeyguardSecurityViewFlipperController keyguardSecurityViewFlipperController = this.mSecurityViewFlipperController;
        Iterator it = ((ArrayList) keyguardSecurityViewFlipperController.mChildren).iterator();
        while (it.hasNext()) {
            KeyguardInputViewController keyguardInputViewController = (KeyguardInputViewController) it.next();
            if (((KeyguardSecurityViewFlipper) keyguardSecurityViewFlipperController.mView).indexOfChild(keyguardInputViewController.mView) == ((KeyguardSecurityViewFlipper) keyguardSecurityViewFlipperController.mView).getDisplayedChild()) {
                keyguardInputViewController.reset();
            }
        }
    }

    public void showMessage(final CharSequence charSequence, final ColorStateList colorStateList, final boolean z) {
        if (this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
            getCurrentSecurityController(new KeyguardSecurityViewFlipperController.OnViewInflatedCallback() { // from class: com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda7
                @Override // com.android.keyguard.KeyguardSecurityViewFlipperController.OnViewInflatedCallback
                public final void onViewInflated(KeyguardInputViewController keyguardInputViewController) {
                    keyguardInputViewController.showMessage(charSequence, colorStateList, z);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean showNextSecurityScreenOrFinish(boolean r12, int r13, boolean r14, com.android.keyguard.KeyguardSecurityModel.SecurityMode r15) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecurityContainerController.showNextSecurityScreenOrFinish(boolean, int, boolean, com.android.keyguard.KeyguardSecurityModel$SecurityMode):boolean");
    }

    public final void showPrimarySecurityScreen() {
        Log.d("KeyguardSecurityContainer", "show()");
        showSecurityScreen((KeyguardSecurityModel.SecurityMode) DejankUtils.whitelistIpcs(new Supplier() { // from class: com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                return KeyguardSecurityContainerController.this.mSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser());
            }
        }));
    }

    public void showSecurityScreen(final KeyguardSecurityModel.SecurityMode securityMode) {
        Log.d("KeyguardSecurityContainer", "showSecurityScreen(" + securityMode + ")");
        if (securityMode != KeyguardSecurityModel.SecurityMode.Invalid && securityMode != this.mCurrentSecurityMode) {
            getCurrentSecurityController(new KeyguardSecurityContainerController$$ExternalSyntheticLambda4(0));
            this.mCurrentSecurityMode = securityMode;
            getCurrentSecurityController(new KeyguardSecurityViewFlipperController.OnViewInflatedCallback() { // from class: com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda5
                @Override // com.android.keyguard.KeyguardSecurityViewFlipperController.OnViewInflatedCallback
                public final void onViewInflated(KeyguardInputViewController keyguardInputViewController) {
                    KeyguardSecurityContainerController keyguardSecurityContainerController = KeyguardSecurityContainerController.this;
                    keyguardSecurityContainerController.getClass();
                    keyguardInputViewController.onResume(2);
                    KeyguardSecurityViewFlipperController keyguardSecurityViewFlipperController = keyguardSecurityContainerController.mSecurityViewFlipperController;
                    int indexOfChild = ((KeyguardSecurityViewFlipper) keyguardSecurityViewFlipperController.mView).indexOfChild(keyguardInputViewController.mView);
                    if (indexOfChild != -1) {
                        ((KeyguardSecurityViewFlipper) keyguardSecurityViewFlipperController.mView).setDisplayedChild(indexOfChild);
                    }
                    keyguardSecurityContainerController.configureMode();
                    keyguardSecurityContainerController.mKeyguardSecurityCallback.onSecurityModeChanged(keyguardInputViewController.needsInput());
                }
            });
        }
    }

    public void startAppearAnimation() {
        KeyguardSecurityModel.SecurityMode securityMode = this.mCurrentSecurityMode;
        if (securityMode != KeyguardSecurityModel.SecurityMode.None) {
            KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) this.mView;
            keyguardSecurityContainer.setTranslationY(0.0f);
            keyguardSecurityContainer.updateChildren(1.0f, 0);
            keyguardSecurityContainer.mViewMode.startAppearAnimation(securityMode);
            getCurrentSecurityController(new KeyguardSecurityContainerController$$ExternalSyntheticLambda4(1));
        }
    }

    public final void updateResources() {
        int integer;
        Resources resources = ((KeyguardSecurityContainer) this.mView).getResources();
        if (resources.getBoolean(R.bool.can_use_one_handed_bouncer)) {
            integer = resources.getInteger(R.integer.keyguard_host_view_one_handed_gravity);
        } else {
            integer = resources.getInteger(R.integer.keyguard_host_view_gravity);
        }
        this.mTranslationY = resources.getDimensionPixelSize(R.dimen.keyguard_host_view_translation_y);
        if (((KeyguardSecurityContainer) this.mView).getLayoutParams() instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ((KeyguardSecurityContainer) this.mView).getLayoutParams();
            if (layoutParams.gravity != integer) {
                layoutParams.gravity = integer;
                ((KeyguardSecurityContainer) this.mView).setLayoutParams(layoutParams);
            }
        }
        int i = getResources().getConfiguration().orientation;
        if (i != this.mLastOrientation) {
            this.mLastOrientation = i;
            configureMode();
        }
    }
}
