package com.android.keyguard;

import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Debug;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Slog;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.LockscreenCredential;
import com.android.keyguard.AdminSecondaryLockScreenController;
import com.android.keyguard.DualDarInnerLockScreenController;
import com.android.keyguard.KeyguardArrowViewController;
import com.android.keyguard.KeyguardPluginControllerImpl;
import com.android.keyguard.KeyguardSecSecurityContainerController;
import com.android.keyguard.KeyguardSecurityContainer;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardSecurityViewFlipperController;
import com.android.keyguard.biometrics.KeyguardBiometricViewController;
import com.android.keyguard.biometrics.KeyguardUCMBiometricViewController;
import com.android.keyguard.punchhole.KeyguardPunchHoleVIView;
import com.android.keyguard.punchhole.KeyguardPunchHoleVIViewController;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.biometrics.SideFpsController;
import com.android.systemui.classifier.FalsingA11yDelegate;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.KeyguardUnlockAnimationController;
import com.android.systemui.keyguard.KeyguardUnlockInfo;
import com.android.systemui.keyguard.KeyguardViewMediator;
import com.android.systemui.keyguard.Log;
import com.android.systemui.keyguard.SecurityLog;
import com.android.systemui.keyguard.domain.interactor.KeyguardFaceAuthInteractor;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
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
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.settings.GlobalSettings;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.accounts.HostAuth;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.knox.ucm.core.IUcmService;
import com.samsung.android.service.reactive.ReactiveServiceManager;
import com.sec.ims.configuration.DATA;
import java.util.ArrayList;
import java.util.Map;
import java.util.Optional;
import java.util.function.IntConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSecSecurityContainerController extends KeyguardSecurityContainerController {
    public final AlarmManager mAlarmManager;
    public final KeyguardBiometricViewController mBiometricViewController;
    public final AnonymousClass1 mConfigurationListener;
    public final DevicePolicyManager mDpm;
    public final DualDarInnerLockScreenController mDualDarInnerLockScreenController;
    public int mFactoryResetProtectionType;
    public int mImeBottom;
    public final InputMethodManager mImm;
    public boolean mIsDisappearAnimation;
    public boolean mIsImeShown;
    public boolean mIsPassword;
    public boolean mIsResetCredentialShowing;
    public boolean mIsSwipeBouncer;
    public final AnonymousClass2 mKeyguardArrowViewCallback;
    public final KeyguardArrowViewController mKeyguardArrowViewController;
    public final KeyguardCarrierTextViewController mKeyguardCarrierTextViewController;
    public final KeyguardPluginControllerImpl mKeyguardPluginController;
    public final KeyguardPunchHoleVIViewController mKeyguardPunchHoleVIViewController;
    public final KeyguardUpdateMonitorCallback mKeyguardUpdateMonitorCallback;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public int mNavigationBarHeight;
    public boolean mNeedsInput;
    public final KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2 mOnChangedCallback;
    public LockscreenCredential mPrevCredential;
    public int mRemainingBeforeWipe;
    public final KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1 mRotationConsumer;
    public final SecRotationWatcher mRotationWatcher;
    public final SettingsHelper mSettingsHelper;
    public final KeyguardUCMBiometricViewController mUCMBiometricViewController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecSecurityContainerController$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements KeyguardArrowViewCallback {
        public AnonymousClass2() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecSecurityContainerController$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements KeyguardSecurityCallback {
        public AnonymousClass4() {
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void dismiss(int i, KeyguardSecurityModel.SecurityMode securityMode, boolean z) {
            dismiss(z, i, false, securityMode);
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void finish(int i, boolean z) {
            Object[] objArr = new Object[3];
            Map map = LogUtil.beginTimes;
            boolean z2 = false;
            objArr[0] = Integer.valueOf(z ? 1 : 0);
            int i2 = 1;
            objArr[1] = Integer.valueOf(i);
            KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
            if (keyguardSecSecurityContainerController.mDismissAction == null) {
                i2 = 0;
            }
            objArr[2] = Integer.valueOf(i2);
            Log.d("KeyguardUnlockInfo", "finish fromPrimaryAuth=%d, userId=%d, hasDismissAction=%d", objArr);
            ActivityStarter.OnDismissAction onDismissAction = keyguardSecSecurityContainerController.mDismissAction;
            if (onDismissAction != null) {
                z2 = onDismissAction.onDismiss();
                keyguardSecSecurityContainerController.mDismissAction = null;
                keyguardSecSecurityContainerController.mCancelAction = null;
            }
            ViewMediatorCallback viewMediatorCallback = keyguardSecSecurityContainerController.mViewMediatorCallback;
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
            KeyguardSecSecurityContainerController.this.mViewMediatorCallback.onCancelClicked();
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void onSecurityModeChanged(boolean z) {
            KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
            keyguardSecSecurityContainerController.mNeedsInput = z;
            keyguardSecSecurityContainerController.mViewMediatorCallback.setNeedsInput(z);
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void reportUnlockAttempt(int i, int i2, boolean z) {
            String str;
            boolean z2;
            KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
            if (z) {
                int failedUnlockAttempts = keyguardSecSecurityContainerController.mUpdateMonitor.getFailedUnlockAttempts(i);
                int i3 = AnonymousClass5.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[keyguardSecSecurityContainerController.mSecurityModel.getSecurityMode(i).ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            str = null;
                        } else {
                            str = "2";
                        }
                    } else {
                        str = DATA.DM_FIELD_INDEX.PUBLIC_USER_ID;
                    }
                } else {
                    str = "1";
                }
                if (failedUnlockAttempts > 0 && str != null) {
                    SystemUIAnalytics.sendEventCDLog(DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW, "1201", str, String.valueOf(failedUnlockAttempts + 1));
                }
                KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardSecSecurityContainerController.mUpdateMonitor;
                keyguardUpdateMonitor.clearFailedUnlockAttempts(true);
                keyguardSecSecurityContainerController.mLockPatternUtils.reportSuccessfulPasswordAttempt(i);
                PendingIntent broadcast = PendingIntent.getBroadcast(keyguardSecSecurityContainerController.getContext(), 0, new Intent("com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"), 603979776);
                if (broadcast != null) {
                    android.util.Log.d("KeyguardSecSecurityContainer", "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled");
                    keyguardSecSecurityContainerController.mAlarmManager.cancel(broadcast);
                    broadcast.cancel();
                }
                if (((KnoxStateMonitorImpl) keyguardSecSecurityContainerController.mKnoxStateMonitor).mEdmMonitor.mPwdChangeRequest > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    Intent intent = new Intent();
                    intent.setClassName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.password.ChooseLockGeneric$InternalActivity");
                    intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                    intent.addFlags(QuickStepContract.SYSUI_STATE_BACK_DISABLED);
                    intent.addFlags(QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED);
                    keyguardSecSecurityContainerController.getContext().startActivityAsUser(intent, UserHandle.CURRENT);
                }
                if (keyguardUpdateMonitor.isForgotPasswordView()) {
                    Intent intent2 = new Intent();
                    intent2.setClassName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.password.ChooseLockGeneric$RecoveryActivity");
                    intent2.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                    intent2.addFlags(QuickStepContract.SYSUI_STATE_BACK_DISABLED);
                    intent2.addFlags(QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED);
                    intent2.putExtra("hide_insecure_options", true);
                    intent2.putExtra("recover_password", true);
                    LockscreenCredential lockscreenCredential = keyguardSecSecurityContainerController.mPrevCredential;
                    if (lockscreenCredential != null) {
                        intent2.putExtra(HostAuth.PASSWORD, (Parcelable) lockscreenCredential);
                    }
                    keyguardSecSecurityContainerController.mPrevCredential = null;
                    keyguardSecSecurityContainerController.mIsResetCredentialShowing = true;
                    Settings.Secure.putInt(keyguardSecSecurityContainerController.getContext().getContentResolver(), "reset_credential_from_previous", 0);
                    keyguardSecSecurityContainerController.getContext().startActivityAsUser(intent2, UserHandle.CURRENT);
                    return;
                }
                return;
            }
            if (keyguardSecSecurityContainerController.mUpdateMonitor.isForgotPasswordView()) {
                LockPatternUtils lockPatternUtils = keyguardSecSecurityContainerController.mLockPatternUtils;
                if (lockPatternUtils.getCurrentFailedPasswordAttempts(-9998) + 1 < 3) {
                    if (DeviceType.isWeaverDevice()) {
                        i = -9998;
                    }
                    lockPatternUtils.reportFailedPasswordAttempt(i);
                    return;
                } else {
                    lockPatternUtils.expirePreviousData();
                    keyguardSecSecurityContainerController.mViewMediatorCallback.resetKeyguard();
                    return;
                }
            }
            keyguardSecSecurityContainerController.reportFailedUnlockAttempt(i, i2);
            keyguardSecSecurityContainerController.mUpdateMonitor.notifyFailedUnlockAttemptChanged();
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void reset() {
            KeyguardSecSecurityContainerController.this.mViewMediatorCallback.resetKeyguard();
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void setPrevCredential(LockscreenCredential lockscreenCredential) {
            KeyguardSecSecurityContainerController.this.mPrevCredential = lockscreenCredential;
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void showBackupSecurity(KeyguardSecurityModel.SecurityMode securityMode) {
            userActivity();
            KeyguardSecSecurityContainerController.this.showSecurityScreen(securityMode);
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void userActivity() {
            KeyguardSecSecurityContainerController.this.mViewMediatorCallback.userActivity();
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final boolean dismiss(boolean z, int i, boolean z2, KeyguardSecurityModel.SecurityMode securityMode) {
            KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
            boolean z3 = keyguardSecSecurityContainerController.mUpdateMonitor.mKeyguardGoingAway;
            KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardSecSecurityContainerController.mUpdateMonitor;
            if ((z3 || ((KeyguardViewMediator) ((KeyguardUnlockAnimationController) ((KeyguardStateControllerImpl) ((KeyguardStateController) Dependency.get(KeyguardStateController.class))).mUnlockAnimationControllerLazy.get()).keyguardViewMediator.get()).isAnimatingBetweenKeyguardAndSurfaceBehind()) && keyguardUpdateMonitor.isFaceOptionEnabled()) {
                android.util.Log.d("KeyguardSecSecurityContainer", "keyguard is already goingAway and face enabled. cancel dismiss");
                return false;
            }
            if (LsRune.SECURITY_SIM_PERM_DISABLED && keyguardUpdateMonitor.isIccBlockedPermanently()) {
                android.util.Log.d("KeyguardSecSecurityContainer", "dismiss failed. Permanent state.");
                return false;
            }
            if (z) {
                SecurityLog.d("KeyguardSecSecurityContainer", "dismiss caller\n" + Debug.getCallers(10, "  "));
            }
            if (!z) {
                if ((KeyguardUnlockInfo.unlockTrigger == KeyguardUnlockInfo.UnlockTrigger.TRIGGER_UNKNOWN) && DeviceType.getDebugLevel() != 0) {
                    android.util.Log.d("KeyguardUnlockInfo", "unknown trigger caller\n" + Debug.getCallers(15, "  "));
                }
            }
            boolean showNextSecurityScreenOrFinish = keyguardSecSecurityContainerController.showNextSecurityScreenOrFinish(z, i, z2, securityMode);
            if (showNextSecurityScreenOrFinish && z) {
                keyguardUpdateMonitor.setUnlockingKeyguard(true);
            }
            return showNextSecurityScreenOrFinish;
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void onUserInput() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecSecurityContainerController$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass5 {
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
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.FMM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SmartcardPIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Permanent.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.AdminLock.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SKTCarrierLock.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SKTCarrierPassword.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.RMM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.KNOXGUARD.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SimPin.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SimPuk.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.SimPerso.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {
        public /* synthetic */ OnApplyWindowInsetsListener(KeyguardSecSecurityContainerController keyguardSecSecurityContainerController, int i) {
            this();
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            int i;
            int i2;
            boolean z;
            KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
            boolean z2 = true;
            r0 = 1;
            byte b = 1;
            if (keyguardSecSecurityContainerController.isPassword(keyguardSecSecurityContainerController.mCurrentSecurityMode)) {
                if (LsRune.SECURITY_NAVBAR_ENABLED) {
                    i2 = 0;
                } else {
                    i2 = windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.systemBars()).bottom;
                }
                int i3 = windowInsets.getInsets(WindowInsets.Type.ime()).bottom;
                KeyguardSecSecurityContainerController keyguardSecSecurityContainerController2 = KeyguardSecSecurityContainerController.this;
                if (keyguardSecSecurityContainerController2.mImeBottom != i3) {
                    keyguardSecSecurityContainerController2.mImeBottom = i3;
                    if (i3 != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    keyguardSecSecurityContainerController2.mIsImeShown = z;
                    keyguardSecSecurityContainerController2.updateLayoutMargins();
                    Context context = KeyguardSecSecurityContainerController.this.getContext();
                    int i4 = KeyguardSecSecurityContainerController.this.mImeBottom;
                    int rotation = DeviceState.getRotation(context.getResources().getConfiguration().windowConfiguration.getRotation());
                    if (rotation != 1 && rotation != 3) {
                        b = 0;
                    }
                    int[] iArr = SecurityUtils.sImeHeight;
                    int i5 = iArr[b];
                    if (i5 == 0 || i5 != i4) {
                        iArr[b] = i4;
                    }
                    if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
                        KeyguardSecSecurityContainerController keyguardSecSecurityContainerController3 = KeyguardSecSecurityContainerController.this;
                        keyguardSecSecurityContainerController3.mUpdateMonitor.updateSIPShownState(keyguardSecSecurityContainerController3.mIsImeShown);
                    }
                }
                i = Integer.max(i2, i3);
            } else {
                if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
                    int i6 = windowInsets.getInsets(WindowInsets.Type.ime()).bottom;
                    KeyguardSecSecurityContainerController keyguardSecSecurityContainerController4 = KeyguardSecSecurityContainerController.this;
                    if (keyguardSecSecurityContainerController4.mImeBottom != i6) {
                        keyguardSecSecurityContainerController4.mImeBottom = i6;
                        if (i6 == 0) {
                            z2 = false;
                        }
                        keyguardSecSecurityContainerController4.mIsImeShown = z2;
                        keyguardSecSecurityContainerController4.mUpdateMonitor.updateSIPShownState(z2);
                    }
                }
                i = 0;
            }
            View view2 = KeyguardSecSecurityContainerController.this.mView;
            ((KeyguardSecSecurityContainer) view2).setPadding(((KeyguardSecSecurityContainer) view2).getPaddingLeft(), ((KeyguardSecSecurityContainer) KeyguardSecSecurityContainerController.this.mView).getPaddingTop(), ((KeyguardSecSecurityContainer) KeyguardSecSecurityContainerController.this.mView).getPaddingRight(), i);
            return windowInsets.inset(0, 0, 0, i);
        }

        private OnApplyWindowInsetsListener() {
        }
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.android.keyguard.KeyguardSecSecurityContainerController$1] */
    public KeyguardSecSecurityContainerController(KeyguardSecSecurityContainer keyguardSecSecurityContainer, AdminSecondaryLockScreenController.Factory factory, LockPatternUtils lockPatternUtils, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel keyguardSecurityModel, MetricsLogger metricsLogger, UiEventLogger uiEventLogger, KeyguardStateController keyguardStateController, KeyguardSecurityViewFlipperController keyguardSecurityViewFlipperController, ConfigurationController configurationController, FalsingCollector falsingCollector, FalsingManager falsingManager, UserSwitcherController userSwitcherController, DeviceProvisionedController deviceProvisionedController, FeatureFlags featureFlags, GlobalSettings globalSettings, SessionTracker sessionTracker, Optional<SideFpsController> optional, FalsingA11yDelegate falsingA11yDelegate, TelephonyManager telephonyManager, ViewMediatorCallback viewMediatorCallback, AudioManager audioManager, KeyguardFaceAuthInteractor keyguardFaceAuthInteractor, DevicePolicyManager devicePolicyManager, InputMethodManager inputMethodManager, AlarmManager alarmManager, SecRotationWatcher secRotationWatcher, SettingsHelper settingsHelper, KeyguardCarrierTextViewController keyguardCarrierTextViewController, KeyguardPunchHoleVIViewController keyguardPunchHoleVIViewController, KeyguardArrowViewController.Factory factory2, KeyguardBiometricViewController keyguardBiometricViewController, KeyguardPluginControllerImpl.Factory factory3, DualDarInnerLockScreenController.Factory factory4) {
        super(keyguardSecSecurityContainer, factory, lockPatternUtils, keyguardUpdateMonitor, keyguardSecurityModel, metricsLogger, uiEventLogger, keyguardStateController, keyguardSecurityViewFlipperController, configurationController, falsingCollector, falsingManager, userSwitcherController, deviceProvisionedController, featureFlags, globalSettings, sessionTracker, optional, falsingA11yDelegate, telephonyManager, viewMediatorCallback, audioManager, keyguardFaceAuthInteractor);
        int i = 0;
        this.mImeBottom = 0;
        this.mRotationConsumer = new IntConsumer() { // from class: com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                KeyguardSecSecurityContainerController.this.updateLayoutMargins(i2);
            }
        };
        this.mRemainingBeforeWipe = 20;
        this.mFactoryResetProtectionType = 0;
        this.mIsDisappearAnimation = false;
        this.mOnChangedCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                boolean z;
                AlarmManager alarmManager2;
                StringBuilder sb = new StringBuilder("OnChangedCallback() ");
                KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
                ActionBarContextView$$ExternalSyntheticOutline0.m(sb, keyguardSecSecurityContainerController.mIsResetCredentialShowing, "KeyguardSecSecurityContainer");
                SettingsHelper settingsHelper2 = keyguardSecSecurityContainerController.mSettingsHelper;
                if (settingsHelper2 != null) {
                    if (settingsHelper2.mItemLists.get("reset_credential_from_previous").getIntValue() == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z && keyguardSecSecurityContainerController.mIsResetCredentialShowing) {
                        keyguardSecSecurityContainerController.mIsResetCredentialShowing = false;
                        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
                        keyguardSecSecurityContainerController.mUpdateMonitor.clearFailedUnlockAttempts(true);
                        keyguardSecSecurityContainerController.mLockPatternUtils.reportSuccessfulPasswordAttempt(currentUser);
                        PendingIntent broadcast = PendingIntent.getBroadcast(keyguardSecSecurityContainerController.getContext(), 0, new Intent("com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"), 603979776);
                        if (broadcast != null && (alarmManager2 = keyguardSecSecurityContainerController.mAlarmManager) != null) {
                            android.util.Log.d("KeyguardSecSecurityContainer", "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled");
                            alarmManager2.cancel(broadcast);
                            broadcast.cancel();
                        }
                        Settings.Secure.putInt(keyguardSecSecurityContainerController.getContext().getContentResolver(), "reset_credential_from_previous", 0);
                        new KeyguardSecSecurityContainerController.AnonymousClass4().dismiss(true, KeyguardUpdateMonitor.getCurrentUser(), false, keyguardSecSecurityContainerController.mCurrentSecurityMode);
                    }
                }
            }
        };
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.KeyguardSecSecurityContainerController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onDisplayDeviceTypeChanged() {
                KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
                keyguardSecSecurityContainerController.configureMode();
                keyguardSecSecurityContainerController.updateLayoutMargins();
            }
        };
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.mKeyguardArrowViewCallback = anonymousClass2;
        this.mKeyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardSecSecurityContainerController.3
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onDualDarInnerLockScreenStateChanged(boolean z) {
                KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
                keyguardSecSecurityContainerController.configureMode();
                keyguardSecSecurityContainerController.updateLayoutMargins();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onLockModeChanged() {
                KeyguardSecSecurityContainerController.this.updateLayoutMargins();
            }
        };
        this.mDpm = devicePolicyManager;
        this.mImm = inputMethodManager;
        this.mAlarmManager = alarmManager;
        this.mRotationWatcher = secRotationWatcher;
        this.mSettingsHelper = settingsHelper;
        this.mKeyguardCarrierTextViewController = keyguardCarrierTextViewController;
        this.mKeyguardPunchHoleVIViewController = LsRune.SECURITY_PUNCH_HOLE_FACE_VI ? keyguardPunchHoleVIViewController : null;
        this.mKeyguardArrowViewController = LsRune.SECURITY_ARROW_VIEW ? new KeyguardArrowViewController(factory2.mView, anonymousClass2, factory2.mConfigurationController, factory2.mKeyguardUpdateMonitor, factory2.mViewMediatorCallback) : null;
        this.mBiometricViewController = keyguardBiometricViewController;
        this.mUCMBiometricViewController = new KeyguardUCMBiometricViewController((KeyguardSecSecurityContainer) this.mView);
        this.mKeyguardPluginController = new KeyguardPluginControllerImpl(factory3.mContext, factory3.mViewMediatorCallback, factory3.mDesktopManager, factory3.mSubScreenManager, this.mKeyguardSecurityCallback, factory3.mLatencyTracker, factory3.mLockPatternUtils, factory3.mKeyguardUpdateMonitor, 0);
        ((KeyguardSecSecurityContainer) this.mView).setOnApplyWindowInsetsListener(new OnApplyWindowInsetsListener(this, i));
        this.mKnoxStateMonitor = (KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class);
        if (factory4 != null) {
            this.mDualDarInnerLockScreenController = new DualDarInnerLockScreenController(factory4.mContext, factory4.mParent, this, factory4.mUpdateMonitor, this.mKeyguardSecurityCallback, new KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3(this), factory4.mHandler, factory4.mLayoutInflater, factory4.mKeyguardSecurityViewControllerFactory);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r0 != false) goto L13;
     */
    @Override // com.android.keyguard.KeyguardSecurityContainerController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void configureMode() {
        /*
            r9 = this;
            com.android.keyguard.KeyguardSecurityModel$SecurityMode r0 = r9.mCurrentSecurityMode
            boolean r0 = com.android.keyguard.SecurityUtils.isArrowViewSupported(r0)
            r1 = 0
            if (r0 == 0) goto L29
            boolean r0 = com.android.systemui.util.DeviceType.isTablet()
            if (r0 != 0) goto L28
            boolean r0 = com.android.systemui.LsRune.SECURITY_SUB_DISPLAY_LOCK
            if (r0 == 0) goto L29
            android.content.Context r0 = r9.getContext()
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.semDisplayDeviceType
            if (r0 != 0) goto L25
            r0 = 1
            goto L26
        L25:
            r0 = r1
        L26:
            if (r0 == 0) goto L29
        L28:
            r1 = 3
        L29:
            r3 = r1
            android.view.View r0 = r9.mView
            r2 = r0
            com.android.keyguard.KeyguardSecSecurityContainer r2 = (com.android.keyguard.KeyguardSecSecurityContainer) r2
            com.android.systemui.util.settings.GlobalSettings r4 = r9.mGlobalSettings
            com.android.systemui.plugins.FalsingManager r5 = r9.mFalsingManager
            com.android.systemui.statusbar.policy.UserSwitcherController r6 = r9.mUserSwitcherController
            r7 = 0
            com.android.systemui.classifier.FalsingA11yDelegate r8 = r9.mFalsingA11yDelegate
            r2.initMode(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecSecurityContainerController.configureMode():void");
    }

    @Override // com.android.keyguard.KeyguardSecurityContainerController
    public final KeyguardSecurityCallback getSecurityCallback() {
        return new AnonymousClass4();
    }

    public final boolean isPassword(KeyguardSecurityModel.SecurityMode securityMode) {
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        if (keyguardUpdateMonitor.isForgotPasswordView()) {
            if (keyguardUpdateMonitor.getPrevCredentialType() == 4) {
                return true;
            }
            return false;
        }
        if (securityMode == null) {
            return false;
        }
        if (securityMode == KeyguardSecurityModel.SecurityMode.Password || securityMode == KeyguardSecurityModel.SecurityMode.SKTCarrierPassword) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecurityContainerController, com.android.systemui.util.ViewController
    public final void onInit() {
        super.onInit();
        EdmMonitor edmMonitor = ((KnoxStateMonitorImpl) this.mKnoxStateMonitor).mEdmMonitor;
        if (edmMonitor != null) {
            edmMonitor.updateFailedUnlockAttemptForDeviceDisabled();
        }
        this.mKeyguardCarrierTextViewController.init();
        if (LsRune.SECURITY_PUNCH_HOLE_FACE_VI) {
            KeyguardPunchHoleVIViewController keyguardPunchHoleVIViewController = this.mKeyguardPunchHoleVIViewController;
            keyguardPunchHoleVIViewController.mIsBouncerVI = true;
            ((KeyguardPunchHoleVIView) keyguardPunchHoleVIViewController.mView).TAG = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), ((KeyguardPunchHoleVIView) keyguardPunchHoleVIViewController.mView).TAG, "_Bouncer");
            keyguardPunchHoleVIViewController.init();
        }
        if (LsRune.SECURITY_ARROW_VIEW) {
            this.mKeyguardArrowViewController.init();
        }
        this.mBiometricViewController.init();
        if (LsRune.SECURITY_WARNING_WIPE_OUT_MESSAGE) {
            ReactiveServiceManager reactiveServiceManager = new ReactiveServiceManager(getContext());
            if (reactiveServiceManager.isConnected()) {
                this.mFactoryResetProtectionType = reactiveServiceManager.getServiceSupport();
            }
            android.util.Log.d("KeyguardSecSecurityContainer", "updateFactoryResetProtectionType( " + this.mFactoryResetProtectionType + " )");
            int currentUser = KeyguardUpdateMonitor.getCurrentUser();
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
            int failedUnlockAttempts = keyguardUpdateMonitor.getFailedUnlockAttempts(currentUser);
            boolean isAutoWipe = keyguardUpdateMonitor.isAutoWipe();
            int maximumFailedPasswordsForWipe = this.mDpm.getMaximumFailedPasswordsForWipe(null, currentUser);
            if (maximumFailedPasswordsForWipe <= 0) {
                if (isAutoWipe) {
                    maximumFailedPasswordsForWipe = 20;
                } else {
                    maximumFailedPasswordsForWipe = 0;
                }
            }
            android.util.Log.d("KeyguardSecSecurityContainer", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = ", maximumFailedPasswordsForWipe, " , failedAttempts = ", failedUnlockAttempts, " )"));
            if (maximumFailedPasswordsForWipe > 0 && failedUnlockAttempts >= maximumFailedPasswordsForWipe) {
                Slog.e("KeyguardSecSecurityContainer", "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )");
                Context context = getContext();
                if (ResetDeviceUtils.sResetDeviceUtils == null) {
                    ResetDeviceUtils.sResetDeviceUtils = new ResetDeviceUtils(context);
                }
                ResetDeviceUtils.sResetDeviceUtils.wipeOut(failedUnlockAttempts, 1);
            }
        }
    }

    public final void onPause() {
        android.util.Log.d("KeyguardSecurityContainer", String.format("screen off, instance %s at %s", Integer.toHexString(hashCode()), Long.valueOf(SystemClock.uptimeMillis())));
        showPrimarySecurityScreen();
        this.mAdminSecondaryLockScreenController.hide();
        if (this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
            getCurrentSecurityController(new KeyguardSecurityContainerController$$ExternalSyntheticLambda4(3));
        }
        KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) this.mView;
        AlertDialog alertDialog = keyguardSecurityContainer.mAlertDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            keyguardSecurityContainer.mAlertDialog = null;
        }
        keyguardSecurityContainer.mViewMode.reset();
        ((KeyguardSecurityContainer) this.mView).clearFocus();
        this.mDualDarInnerLockScreenController.hide();
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        if (keyguardUpdateMonitor.getMaxFailedUnlockAttempts() != 50) {
            keyguardUpdateMonitor.updatePermanentLock(KeyguardUpdateMonitor.getCurrentUser());
        }
    }

    public final void onResume(int i) {
        int i2;
        boolean z;
        android.util.Log.d("KeyguardSecurityContainer", "screen on, instance " + Integer.toHexString(hashCode()));
        ((KeyguardSecurityContainer) this.mView).requestFocus();
        if (this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
            KeyguardSecurityContainer.ViewMode viewMode = ((KeyguardSecurityContainer) this.mView).mViewMode;
            if (viewMode instanceof KeyguardSecurityContainer.SidedSecurityMode) {
                if ((viewMode instanceof KeyguardSecurityContainer.SidedSecurityMode) && ((KeyguardSecurityContainer.SidedSecurityMode) viewMode).isLeftAligned()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i2 = 3;
                } else {
                    i2 = 4;
                }
            } else {
                i2 = 2;
            }
            SysUiStatsLog.write(63, i2);
            getCurrentSecurityController(new KeyguardSecurityContainerController$$ExternalSyntheticLambda6(1, 0));
        }
        KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) this.mView;
        this.mSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser());
        boolean z2 = ((KeyguardStateControllerImpl) this.mKeyguardStateController).mFaceAuthEnabled;
        keyguardSecurityContainer.getClass();
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            this.mIsDisappearAnimation = false;
        }
        if (LsRune.SECURITY_ARROW_VIEW) {
            configureMode();
        }
        updateLayoutMargins();
    }

    public final void onTrimMemory(int i) {
        KeyguardSecurityViewFlipper keyguardSecurityViewFlipper;
        if (i > 60 && (keyguardSecurityViewFlipper = ((KeyguardSecSecurityContainer) this.mView).mSecurityViewFlipper) != null) {
            keyguardSecurityViewFlipper.removeAllViews();
        }
    }

    @Override // com.android.keyguard.KeyguardSecurityContainerController, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        super.onViewAttached();
        this.mUpdateMonitor.registerCallback(this.mKeyguardUpdateMonitorCallback);
        this.mRotationWatcher.addCallback(this.mRotationConsumer);
        this.mSettingsHelper.registerCallback(this.mOnChangedCallback, Settings.Secure.getUriFor("reset_credential_from_previous"));
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
        }
    }

    @Override // com.android.keyguard.KeyguardSecurityContainerController, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        super.onViewDetached();
        this.mUpdateMonitor.removeCallback(this.mKeyguardUpdateMonitorCallback);
        this.mRotationWatcher.removeCallback(this.mRotationConsumer);
        this.mSettingsHelper.unregisterCallback(this.mOnChangedCallback);
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
        }
    }

    public final void reinflateViewFlipper(KeyguardSecurityViewFlipperController.OnViewInflatedCallback onViewInflatedCallback) {
        if (onViewInflatedCallback == null) {
            KeyguardSecurityViewFlipperController keyguardSecurityViewFlipperController = this.mSecurityViewFlipperController;
            ((KeyguardSecurityViewFlipper) keyguardSecurityViewFlipperController.mView).removeAllViews();
            ((ArrayList) keyguardSecurityViewFlipperController.mChildren).clear();
            keyguardSecurityViewFlipperController.asynchronouslyInflateView(this.mCurrentSecurityMode, this.mKeyguardSecurityCallback, null);
            return;
        }
        getCurrentSecurityController(onViewInflatedCallback);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
    
        if (r5 != (-10000)) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3  */
    @Override // com.android.keyguard.KeyguardSecurityContainerController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void reportFailedUnlockAttempt(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecSecurityContainerController.reportFailedUnlockAttempt(int, int):void");
    }

    public final void setOnDismissAction(ActivityStarter.OnDismissAction onDismissAction, Runnable runnable) {
        boolean z;
        Runnable runnable2 = this.mCancelAction;
        if (runnable2 != null) {
            runnable2.run();
            this.mCancelAction = null;
        }
        this.mDismissAction = onDismissAction;
        this.mCancelAction = runnable;
        if (onDismissAction != null) {
            z = true;
        } else {
            z = false;
        }
        this.mUpdateMonitor.setDismissActionExist(z);
    }

    @Override // com.android.keyguard.KeyguardSecurityContainerController
    public final void showMessage(CharSequence charSequence, ColorStateList colorStateList, boolean z) {
        super.showMessage(charSequence, colorStateList, z);
        if (this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None && AccessibilityManager.getInstance(getContext()).isTouchExplorationEnabled()) {
            ((KeyguardSecSecurityContainer) this.mView).announceForAccessibility(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x017c  */
    @Override // com.android.keyguard.KeyguardSecurityContainerController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean showNextSecurityScreenOrFinish(boolean r12, int r13, boolean r14, com.android.keyguard.KeyguardSecurityModel.SecurityMode r15) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecSecurityContainerController.showNextSecurityScreenOrFinish(boolean, int, boolean, com.android.keyguard.KeyguardSecurityModel$SecurityMode):boolean");
    }

    public final void showPromptReason(int i) {
        if (i == 5) {
            android.util.Log.i("KeyguardSecSecurityContainer", "return, biometric lockout");
        } else if (this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
            if (i != 0) {
                SeslColorSpectrumView$$ExternalSyntheticOutline0.m("Strong auth required, reason: ", i, "KeyguardSecurityContainer");
            }
            getCurrentSecurityController(new KeyguardSecurityContainerController$$ExternalSyntheticLambda6(i, 1));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
    @Override // com.android.keyguard.KeyguardSecurityContainerController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void showSecurityScreen(com.android.keyguard.KeyguardSecurityModel.SecurityMode r11) {
        /*
            r10 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "showSecurityScreen("
            r0.<init>(r1)
            r0.append(r11)
            java.lang.String r1 = ") current = "
            r0.append(r1)
            com.android.keyguard.KeyguardSecurityModel$SecurityMode r1 = r10.mCurrentSecurityMode
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "KeyguardSecSecurityContainer"
            android.util.Log.d(r1, r0)
            com.android.keyguard.KeyguardSecurityModel$SecurityMode r0 = r10.mCurrentSecurityMode
            if (r11 != r0) goto L23
            return
        L23:
            int[] r2 = com.android.keyguard.KeyguardSecSecurityContainerController.AnonymousClass5.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode
            int r0 = r0.ordinal()
            r0 = r2[r0]
            r2 = 12
            if (r0 == r2) goto L31
            goto Lc2
        L31:
            com.android.keyguard.KeyguardSecurityModel$SecurityMode r0 = com.android.keyguard.KeyguardSecurityModel.SecurityMode.None
            if (r11 != r0) goto Lc2
            java.lang.Class<com.android.keyguard.KeyguardUpdateMonitor> r0 = com.android.keyguard.KeyguardUpdateMonitor.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.keyguard.KeyguardUpdateMonitor r0 = (com.android.keyguard.KeyguardUpdateMonitor) r0
            r2 = 2
            int r0 = r0.getNextSubIdForState(r2)
            java.lang.Class<com.android.systemui.knox.KnoxStateMonitor> r3 = com.android.systemui.knox.KnoxStateMonitor.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.systemui.knox.KnoxStateMonitor r3 = (com.android.systemui.knox.KnoxStateMonitor) r3
            com.android.systemui.knox.KnoxStateMonitorImpl r3 = (com.android.systemui.knox.KnoxStateMonitorImpl) r3
            com.android.systemui.knox.EdmMonitor r3 = r3.mEdmMonitor
            r4 = 0
            if (r3 == 0) goto Lb0
            java.lang.String[] r5 = r3.mLockedIccIdList
            r6 = 1
            if (r5 == 0) goto Lac
            boolean r5 = android.telephony.SubscriptionManager.isValidSubscriptionId(r0)
            if (r5 == 0) goto Lac
            com.android.systemui.knox.KnoxStateMonitorImpl r5 = r3.knoxStateMonitor
            android.content.Context r5 = r5.mContext
            java.lang.String r7 = "telephony_subscription_service"
            java.lang.Object r5 = r5.getSystemService(r7)
            android.telephony.SubscriptionManager r5 = (android.telephony.SubscriptionManager) r5
            android.telephony.SubscriptionInfo r5 = r5.getActiveSubscriptionInfo(r0)
            if (r5 == 0) goto L74
            java.lang.String r7 = r5.getIccId()
            goto L75
        L74:
            r7 = 0
        L75:
            r8 = 3
            java.lang.Object[] r8 = new java.lang.Object[r8]
            java.lang.Integer r9 = java.lang.Integer.valueOf(r0)
            r8[r4] = r9
            java.lang.String r9 = ""
            if (r5 == 0) goto L83
            goto L84
        L83:
            r5 = r9
        L84:
            r8[r6] = r5
            if (r7 == 0) goto L89
            r9 = r7
        L89:
            r8[r2] = r9
            java.lang.String r2 = "isSubIdLockedByAdmin subId=%d, subInfo=%s, iccId=%s"
            java.lang.String r2 = java.lang.String.format(r2, r8)
            java.lang.String r5 = "EdmMonitor"
            android.util.Log.d(r5, r2)
            if (r7 != 0) goto L99
            goto La7
        L99:
            java.lang.String[] r2 = r3.mLockedIccIdList
            int r3 = r2.length
            r5 = r4
        L9d:
            if (r5 >= r3) goto Lac
            r8 = r2[r5]
            boolean r8 = r8.equals(r7)
            if (r8 == 0) goto La9
        La7:
            r2 = r6
            goto Lad
        La9:
            int r5 = r5 + 1
            goto L9d
        Lac:
            r2 = r4
        Lad:
            if (r2 == 0) goto Lb0
            r4 = r6
        Lb0:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r4)
            java.lang.Object[] r0 = new java.lang.Object[]{r0, r2}
            java.lang.String r2 = "reportSecurityMode SimPin -> None simPinSubId = %d, isLockedByMDM=%b"
            com.android.systemui.keyguard.Log.d(r1, r2, r0)
        Lc2:
            com.android.keyguard.KeyguardUpdateMonitor r0 = r10.mUpdateMonitor
            r0.dispatchSecurityModeChanged(r11)
            super.showSecurityScreen(r11)
            r10.updateLayoutMargins()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecSecurityContainerController.showSecurityScreen(com.android.keyguard.KeyguardSecurityModel$SecurityMode):void");
    }

    @Override // com.android.keyguard.KeyguardSecurityContainerController
    public final void startAppearAnimation() {
        String str;
        int dimensionPixelSize;
        super.startAppearAnimation();
        KeyguardBiometricViewController keyguardBiometricViewController = this.mBiometricViewController;
        keyguardBiometricViewController.updateBiometricViewLayout();
        keyguardBiometricViewController.startLockIconAnimation(true);
        if (LsRune.SECURITY_ARROW_VIEW) {
            KeyguardArrowViewController keyguardArrowViewController = this.mKeyguardArrowViewController;
            KeyguardArrowViewController.startArrowViewAnimation(keyguardArrowViewController.mLeftArrow);
            KeyguardArrowViewController.startArrowViewAnimation(keyguardArrowViewController.mRightArrow);
            if (!keyguardArrowViewController.isInvalidArrowView()) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - keyguardArrowViewController.mLastUpdateTime > 604800000) {
                    keyguardArrowViewController.mLastUpdateTime = currentTimeMillis;
                    new KeyguardArrowViewController.StatusLoggingTask().execute(new Object[0]);
                }
            }
        }
        if (this.mCurrentSecurityMode == KeyguardSecurityModel.SecurityMode.SmartcardPIN) {
            Context context = getContext();
            KeyguardUCMBiometricViewController keyguardUCMBiometricViewController = this.mUCMBiometricViewController;
            keyguardUCMBiometricViewController.getClass();
            IUcmService asInterface = IUcmService.Stub.asInterface(ServiceManager.getService("com.samsung.ucs.ucsservice"));
            if (asInterface == null) {
                android.util.Log.d("KeyguardUCMBiometricViewController", "failed to get UCM service");
            }
            String str2 = null;
            if (asInterface == null) {
                android.util.Log.d("KeyguardUCMBiometricViewController", "failed to get UCM service");
            } else {
                try {
                    str = asInterface.getKeyguardStorageForCurrentUser(KeyguardUpdateMonitor.getCurrentUser());
                } catch (RemoteException e) {
                    e.printStackTrace();
                    str = null;
                }
                if (str != null && !str.equals("") && !str.equals("none")) {
                    str2 = str;
                }
            }
            if (str2 == null) {
                dimensionPixelSize = 0;
            } else {
                dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.kg_ucm_message_area_padding_top);
            }
            keyguardUCMBiometricViewController.mKeyguardSecSecurityContainer.findViewById(R.id.biometric_timeout_message).setPadding(0, dimensionPixelSize, 0, 0);
        }
    }

    public final boolean startDisappearAnimation(final Runnable runnable) {
        KeyguardSecurityModel.SecurityMode securityMode = this.mCurrentSecurityMode;
        if (securityMode != KeyguardSecurityModel.SecurityMode.None) {
            KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) this.mView;
            keyguardSecurityContainer.mDisappearAnimRunning = true;
            if (securityMode == KeyguardSecurityModel.SecurityMode.Password && (keyguardSecurityContainer.mSecurityViewFlipper.getSecurityView() instanceof KeyguardPasswordView)) {
                ((KeyguardPasswordView) keyguardSecurityContainer.mSecurityViewFlipper.getSecurityView()).mDisappearAnimationListener = new KeyguardSecurityContainer$$ExternalSyntheticLambda0(keyguardSecurityContainer);
            } else {
                keyguardSecurityContainer.mViewMode.startDisappearAnimation(securityMode);
            }
            getCurrentSecurityController(new KeyguardSecurityViewFlipperController.OnViewInflatedCallback() { // from class: com.android.keyguard.KeyguardSecurityContainerController$$ExternalSyntheticLambda8
                @Override // com.android.keyguard.KeyguardSecurityViewFlipperController.OnViewInflatedCallback
                public final void onViewInflated(KeyguardInputViewController keyguardInputViewController) {
                    Runnable runnable2 = runnable;
                    if (!keyguardInputViewController.startDisappearAnimation(runnable2) && runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
        }
        this.mBiometricViewController.startLockIconAnimation(false);
        if (LsRune.SECURITY_ARROW_VIEW) {
            this.mKeyguardArrowViewController.updateArrowVisibility(false);
        }
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            this.mIsDisappearAnimation = true;
        }
        return true;
    }

    public final void updateLayoutMargins() {
        updateLayoutMargins(DeviceState.getRotation(getResources().getConfiguration().windowConfiguration.getRotation()));
    }

    public final void updateLayoutParams(int i, int i2, int i3) {
        boolean z;
        boolean z2;
        int i4;
        int i5;
        int i6;
        KeyguardSecurityViewFlipper keyguardSecurityViewFlipper = ((KeyguardSecSecurityContainer) this.mView).mSecurityViewFlipper;
        if (keyguardSecurityViewFlipper == null) {
            android.util.Log.d("KeyguardSecSecurityContainer", "updateLayoutParams securityViewFlipper is null");
            return;
        }
        Resources resources = getResources();
        ConstraintSet constraintSet = new ConstraintSet();
        boolean z3 = true;
        if (DeviceType.isTablet()) {
            constraintSet.constrainWidth(keyguardSecurityViewFlipper.getId(), resources.getDimensionPixelSize(R.dimen.kg_message_area_width_tablet));
        } else if (LsRune.SECURITY_SUB_DISPLAY_LOCK && !DeviceState.isSmartViewFitToActiveDisplay()) {
            if (getContext().getResources().getConfiguration().semDisplayDeviceType == 0) {
                z = true;
            } else {
                z = false;
            }
            if (this.mCurrentSecurityMode == KeyguardSecurityModel.SecurityMode.KNOXGUARD) {
                z2 = true;
            } else {
                z2 = false;
            }
            int id = keyguardSecurityViewFlipper.getId();
            if (z && !z2) {
                i4 = SecurityUtils.getMainSecurityViewFlipperSize(getContext(), this.mIsPassword);
            } else {
                i4 = 0;
            }
            constraintSet.constrainWidth(id, i4);
        } else {
            constraintSet.constrainWidth(keyguardSecurityViewFlipper.getId(), 0);
        }
        if (getResources().getConfiguration().getLayoutDirection() != 1) {
            z3 = false;
        }
        int id2 = keyguardSecurityViewFlipper.getId();
        if (z3) {
            i5 = i2;
        } else {
            i5 = i;
        }
        constraintSet.connect(id2, 6, 0, 6, i5);
        int id3 = keyguardSecurityViewFlipper.getId();
        if (z3) {
            i6 = i;
        } else {
            i6 = i2;
        }
        constraintSet.connect(id3, 7, 0, 7, i6);
        constraintSet.connect(keyguardSecurityViewFlipper.getId(), 4, 0, 4, i3);
        constraintSet.connect(keyguardSecurityViewFlipper.getId(), 3, 0, 3, 0);
        constraintSet.constrainHeight(keyguardSecurityViewFlipper.getId(), 0);
        constraintSet.applyTo((ConstraintLayout) this.mView);
        if (LsRune.SECURITY_ARROW_VIEW) {
            this.mKeyguardArrowViewController.updateArrowView();
        }
    }

    public final void updateLayoutMargins(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (((KeyguardSecSecurityContainer) this.mView).mSecurityViewFlipper == null) {
            return;
        }
        Resources resources = getResources();
        KeyguardSecurityModel.SecurityMode securityMode = this.mCurrentSecurityMode;
        this.mIsPassword = isPassword(securityMode);
        int i6 = 0;
        this.mNavigationBarHeight = LsRune.SECURITY_NAVBAR_ENABLED ? resources.getDimensionPixelSize(android.R.dimen.text_line_spacing_multiplier_material) : 0;
        boolean z = LsRune.SECURITY_SUB_DISPLAY_LOCK;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        if (z && !DeviceState.isSmartViewFitToActiveDisplay()) {
            boolean z2 = getContext().getResources().getConfiguration().semDisplayDeviceType == 0;
            if (DeviceState.shouldEnableKeyguardScreenRotation(getContext()) || !this.mNeedsInput || this.mCurrentSecurityMode == KeyguardSecurityModel.SecurityMode.KNOXGUARD) {
                i4 = keyguardUpdateMonitor.isHiddenInputContainer() ? 0 : this.mNavigationBarHeight;
                if (i != 1 && i != 3) {
                    i5 = (this.mIsPassword && this.mIsImeShown) ? 0 : this.mNavigationBarHeight;
                    i4 = 0;
                } else {
                    int i7 = z2 ? 0 : i4;
                    if (z2) {
                        i4 = 0;
                    }
                    if (z2 && (!this.mIsPassword || !this.mIsImeShown)) {
                        i6 = this.mNavigationBarHeight;
                    }
                    int i8 = i6;
                    i6 = i7;
                    i5 = i8;
                }
            } else {
                i5 = 0;
                i4 = 0;
            }
            updateLayoutParams(i6, i4, i5);
            return;
        }
        if (DeviceType.isTablet()) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.kg_emergency_button_margin_bottom_for_tablet_fingerprint) + DeviceState.sInDisplayFingerprintHeight;
            boolean z3 = keyguardUpdateMonitor.isInDisplayFingerprintMarginAccepted() && !keyguardUpdateMonitor.isHiddenInputContainer();
            if (i != 1 && i != 2 && i != 3) {
                if (!this.mIsPassword || !this.mIsImeShown) {
                    if (!z3) {
                        dimensionPixelSize = this.mNavigationBarHeight;
                    }
                    updateLayoutParams(0, 0, dimensionPixelSize);
                    return;
                }
                dimensionPixelSize = 0;
                updateLayoutParams(0, 0, dimensionPixelSize);
                return;
            }
            if (!this.mIsPassword || !this.mIsImeShown) {
                dimensionPixelSize = this.mNavigationBarHeight;
                updateLayoutParams(0, 0, dimensionPixelSize);
                return;
            }
            dimensionPixelSize = 0;
            updateLayoutParams(0, 0, dimensionPixelSize);
            return;
        }
        if (DeviceState.shouldEnableKeyguardScreenRotation(getContext()) || LsRune.SECURITY_FINGERPRINT_IN_DISPLAY || !this.mNeedsInput || securityMode == KeyguardSecurityModel.SecurityMode.KNOXGUARD) {
            i2 = DeviceState.sInDisplayFingerprintHeight;
            boolean z4 = keyguardUpdateMonitor.isInDisplayFingerprintMarginAccepted() && !keyguardUpdateMonitor.isHiddenInputContainer();
            int i9 = keyguardUpdateMonitor.isHiddenInputContainer() ? 0 : this.mNavigationBarHeight;
            if (i != 1) {
                if (i != 3) {
                    boolean z5 = (!DeviceState.isInDisplayFpSensorPositionHigh()) & z4;
                    if (this.mIsPassword && this.mIsImeShown) {
                        i2 = 0;
                    } else if (!z5) {
                        i2 = this.mNavigationBarHeight;
                    }
                    i3 = i2;
                    i2 = 0;
                } else {
                    if (!z4) {
                        i2 = i9;
                    }
                    int i10 = i9;
                    i9 = i2;
                    i2 = i10;
                }
            } else if (!z4) {
                i2 = i9;
            }
            i3 = 0;
            i6 = i9;
        } else {
            i3 = 0;
            i2 = 0;
        }
        updateLayoutParams(i6, i2, i3);
    }
}
