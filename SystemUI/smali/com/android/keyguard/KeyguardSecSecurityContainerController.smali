.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController;
.super Lcom/android/keyguard/KeyguardSecurityContainerController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

.field public mFactoryResetProtectionType:I

.field public mImeBottom:I

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mIsDisappearAnimation:Z

.field public mIsImeShown:Z

.field public mIsPassword:Z

.field public mIsResetCredentialShowing:Z

.field public mIsSwipeBouncer:Z

.field public final mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

.field public final mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

.field public final mKeyguardCarrierTextViewController:Lcom/android/keyguard/KeyguardCarrierTextViewController;

.field public final mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

.field public final mKeyguardPunchHoleVIViewController:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mNavigationBarHeight:I

.field public mNeedsInput:Z

.field public final mOnChangedCallback:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

.field public mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mRemainingBeforeWipe:I

.field public final mRotationConsumer:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mUCMBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardUCMBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;Lcom/android/keyguard/KeyguardArrowViewController$Factory;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
            "Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipperController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/log/SessionTracker;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/SideFpsController;",
            ">;",
            "Lcom/android/systemui/classifier/FalsingA11yDelegate;",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Landroid/media/AudioManager;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/keyguard/SecRotationWatcher;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/keyguard/KeyguardCarrierTextViewController;",
            "Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;",
            "Lcom/android/keyguard/KeyguardArrowViewController$Factory;",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;",
            "Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;",
            "Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p31

    move-object/from16 v2, p33

    move-object/from16 v3, p34

    .line 1
    invoke-direct/range {p0 .. p23}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;)V

    const/4 v4, 0x0

    .line 2
    iput v4, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    .line 3
    new-instance v5, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;

    const/16 v5, 0x14

    .line 4
    iput v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 5
    iput v4, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    .line 6
    iput-boolean v4, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    .line 7
    new-instance v5, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mOnChangedCallback:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    .line 8
    new-instance v5, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    .line 9
    new-instance v5, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    .line 10
    new-instance v6, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v6, p24

    .line 11
    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v6, p25

    .line 12
    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v6, p26

    .line 13
    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v6, p27

    .line 14
    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    move-object/from16 v6, p28

    .line 15
    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v6, p29

    .line 16
    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardCarrierTextViewController:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 17
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object/from16 v6, p30

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 18
    :goto_0
    iput-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPunchHoleVIViewController:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 19
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v6, :cond_1

    .line 20
    new-instance v7, Lcom/android/keyguard/KeyguardArrowViewController;

    .line 21
    iget-object v6, v1, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mView:Lcom/android/keyguard/KeyguardArrowView;

    .line 22
    iget-object v8, v1, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v9, v1, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object p1, v7

    move-object p2, v6

    move-object/from16 p3, v5

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Lcom/android/keyguard/KeyguardArrowViewController;-><init>(Lcom/android/keyguard/KeyguardArrowView;Lcom/android/keyguard/KeyguardArrowViewCallback;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 23
    :cond_1
    iput-object v7, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    move-object/from16 v1, p32

    .line 24
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 25
    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardUCMBiometricViewController;

    iget-object v5, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-direct {v1, v5}, Lcom/android/keyguard/biometrics/KeyguardUCMBiometricViewController;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mUCMBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardUCMBiometricViewController;

    .line 26
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 27
    new-instance v5, Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 28
    iget-object v6, v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mContext:Landroid/content/Context;

    .line 29
    iget-object v7, v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v8, v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iget-object v9, v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v10, v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v11, v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v12, 0x0

    move-object p1, v5

    move-object p2, v6

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v1

    move-object/from16 p7, v10

    move-object/from16 p8, v11

    move-object/from16 p9, v2

    move/from16 p10, v12

    invoke-direct/range {p1 .. p10}, Lcom/android/keyguard/KeyguardPluginControllerImpl;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 30
    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 31
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;

    invoke-direct {v2, p0, v4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 32
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v3, :cond_2

    .line 33
    new-instance v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    .line 34
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 35
    new-instance v4, Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object v5, v3, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v7, v3, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v3, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    iget-object v9, v3, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, v3, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    move-object p1, v4

    move-object p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, p0

    move-object/from16 p5, v7

    move-object/from16 p6, v2

    move-object/from16 p7, v1

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v3

    invoke-direct/range {p1 .. p10}, Lcom/android/keyguard/DualDarInnerLockScreenController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V

    .line 36
    iput-object v4, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    :cond_2
    return-void
.end method


# virtual methods
.method public final configureMode()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v1

    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_1
    const/4 v1, 0x3

    .line 42
    :cond_2
    move v3, v1

    .line 43
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    .line 45
    move-object v2, v0

    .line 46
    check-cast v2, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 51
    .line 52
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    .line 56
    .line 57
    invoke-virtual/range {v2 .. v8}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->initMode(ILcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;Lcom/android/systemui/classifier/FalsingA11yDelegate;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final getSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getPrevCredentialType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 p1, 0x4

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    return v1

    .line 21
    :cond_1
    if-eqz p1, :cond_4

    .line 22
    .line 23
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 24
    .line 25
    if-eq p1, p0, :cond_3

    .line 26
    .line 27
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 28
    .line 29
    if-ne p1, p0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v1, v2

    .line 33
    :cond_3
    :goto_1
    return v1

    .line 34
    :cond_4
    return v2
.end method

.method public final onInit()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onInit()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardCarrierTextViewController:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPunchHoleVIViewController:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 26
    .line 27
    iput-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsBouncerVI:Z

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 39
    .line 40
    check-cast v4, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v5, "_Bouncer"

    .line 45
    .line 46
    invoke-static {v3, v4, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 67
    .line 68
    .line 69
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v0, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    .line 93
    .line 94
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo v2, "updateFactoryResetProtectionType( "

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " )"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v3, "KeyguardSecSecurityContainer"

    .line 117
    .line 118
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 126
    .line 127
    invoke-interface {v4, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAutoWipe()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    invoke-virtual {v6, v7, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-lez v0, :cond_4

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    if-eqz v4, :cond_5

    .line 146
    .line 147
    const/16 v0, 0x14

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const/4 v0, 0x0

    .line 151
    :goto_0
    const-string v4, "doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = "

    .line 152
    .line 153
    const-string v6, " , failedAttempts = "

    .line 154
    .line 155
    invoke-static {v4, v0, v6, v5, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    if-lez v0, :cond_7

    .line 163
    .line 164
    if-lt v5, v0, :cond_7

    .line 165
    .line 166
    const-string v0, "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )"

    .line 167
    .line 168
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    sget-object v0, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    .line 176
    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    new-instance v0, Lcom/android/keyguard/ResetDeviceUtils;

    .line 180
    .line 181
    invoke-direct {v0, p0}, Lcom/android/keyguard/ResetDeviceUtils;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    sput-object v0, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    .line 185
    .line 186
    :cond_6
    sget-object p0, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    .line 187
    .line 188
    invoke-virtual {p0, v5, v1}, Lcom/android/keyguard/ResetDeviceUtils;->wipeOut(II)V

    .line 189
    .line 190
    .line 191
    :cond_7
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string/jumbo v1, "screen off, instance %s at %s"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "KeyguardSecurityContainer"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 42
    .line 43
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 44
    .line 45
    if-eq v0, v1, :cond_0

    .line 46
    .line 47
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 57
    .line 58
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 69
    .line 70
    :cond_1
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->reset()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 76
    .line 77
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->hide()V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getMaxFailedUnlockAttempts()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/16 v1, 0x32

    .line 94
    .line 95
    if-eq v0, v1, :cond_2

    .line 96
    .line 97
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updatePermanentLock(I)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method public final onResume(I)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "screen on, instance "

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "KeyguardSecurityContainer"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 37
    .line 38
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    .line 45
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 48
    .line 49
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    move p1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move p1, v1

    .line 69
    :goto_0
    if-eqz p1, :cond_1

    .line 70
    .line 71
    const/4 p1, 0x3

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 p1, 0x4

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 p1, 0x2

    .line 76
    :goto_1
    const/16 v0, 0x3f

    .line 77
    .line 78
    invoke-static {v0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;

    .line 82
    .line 83
    invoke-direct {p1, v2, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;-><init>(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 90
    .line 91
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 94
    .line 95
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 103
    .line 104
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 105
    .line 106
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceAuthEnabled:Z

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    .line 116
    .line 117
    :cond_4
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->configureMode()V

    .line 122
    .line 123
    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "reset_credential_from_previous"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mOnChangedCallback:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 41
    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mOnChangedCallback:Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 30
    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final reinflateViewFlipper(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->asynchronouslyInflateView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final reportFailedUnlockAttempt(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAutoWipe()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 14
    .line 15
    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    sget-object v6, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    aget v5, v6, v5

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x3

    .line 29
    const/4 v8, 0x2

    .line 30
    const-string v9, "1"

    .line 31
    .line 32
    if-eq v5, v2, :cond_2

    .line 33
    .line 34
    if-eq v5, v8, :cond_1

    .line 35
    .line 36
    if-eq v5, v7, :cond_0

    .line 37
    .line 38
    move-object v5, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v5, "2"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v5, "3"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v5, v9

    .line 47
    :goto_0
    if-eqz v5, :cond_3

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const-string v10, "102"

    .line 54
    .line 55
    const-string v11, "1200"

    .line 56
    .line 57
    invoke-static {v10, v11, v5, v7}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 61
    .line 62
    invoke-virtual {v5, v6, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-lez v6, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    if-eqz v3, :cond_5

    .line 70
    .line 71
    const/16 v6, 0x14

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    const/4 v6, 0x0

    .line 75
    :goto_1
    if-lez v6, :cond_6

    .line 76
    .line 77
    sub-int v7, v6, v1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    const v7, 0x7fffffff

    .line 81
    .line 82
    .line 83
    :goto_2
    iput v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    const/4 v11, 0x5

    .line 94
    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    .line 96
    if-nez v7, :cond_7

    .line 97
    .line 98
    if-eqz v10, :cond_9

    .line 99
    .line 100
    :cond_7
    if-lez v6, :cond_9

    .line 101
    .line 102
    const/16 v7, 0xa

    .line 103
    .line 104
    if-lt v6, v7, :cond_8

    .line 105
    .line 106
    iget v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 107
    .line 108
    if-gt v6, v11, :cond_9

    .line 109
    .line 110
    invoke-virtual {v12, v8, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 111
    .line 112
    .line 113
    if-eqz v10, :cond_9

    .line 114
    .line 115
    sget-object v6, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 116
    .line 117
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_8
    iget v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 122
    .line 123
    if-gt v6, v8, :cond_9

    .line 124
    .line 125
    invoke-virtual {v12, v8, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 126
    .line 127
    .line 128
    if-eqz v10, :cond_9

    .line 129
    .line 130
    sget-object v6, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 131
    .line 132
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 133
    .line 134
    .line 135
    :cond_9
    :goto_3
    iget v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 136
    .line 137
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .line 139
    if-ge v6, v11, :cond_e

    .line 140
    .line 141
    invoke-virtual {v5, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-ne v5, p1, :cond_a

    .line 146
    .line 147
    if-eqz v5, :cond_b

    .line 148
    .line 149
    const/4 v8, 0x3

    .line 150
    goto :goto_4

    .line 151
    :cond_a
    const/16 v6, -0x2710

    .line 152
    .line 153
    if-eq v5, v6, :cond_b

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_b
    move v8, v2

    .line 157
    :goto_4
    iget v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 158
    .line 159
    if-lez v6, :cond_c

    .line 160
    .line 161
    if-nez v3, :cond_e

    .line 162
    .line 163
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    .line 164
    .line 165
    if-nez v5, :cond_e

    .line 166
    .line 167
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 168
    .line 169
    .line 170
    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 171
    .line 172
    check-cast v5, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 173
    .line 174
    iget v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 175
    .line 176
    invoke-virtual {v5, v1, v6, v8}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showAlmostAtWipeDialog(III)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v10, "Too many unlock attempts; user "

    .line 183
    .line 184
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v5, " will be wiped!"

    .line 191
    .line 192
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v6, "KeyguardSecSecurityContainer"

    .line 200
    .line 201
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    sget-object v6, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    .line 209
    .line 210
    if-nez v6, :cond_d

    .line 211
    .line 212
    new-instance v6, Lcom/android/keyguard/ResetDeviceUtils;

    .line 213
    .line 214
    invoke-direct {v6, v5}, Lcom/android/keyguard/ResetDeviceUtils;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    sput-object v6, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    .line 218
    .line 219
    :cond_d
    sget-object v5, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    .line 220
    .line 221
    invoke-virtual {v5, v1, v8}, Lcom/android/keyguard/ResetDeviceUtils;->wipeOut(II)V

    .line 222
    .line 223
    .line 224
    :cond_e
    :goto_5
    invoke-virtual {v12, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 225
    .line 226
    .line 227
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 228
    .line 229
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 230
    .line 231
    iget-object v6, v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 232
    .line 233
    if-eqz v6, :cond_f

    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 236
    .line 237
    .line 238
    :cond_f
    iget-object v5, v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 239
    .line 240
    if-eqz v5, :cond_10

    .line 241
    .line 242
    invoke-virtual {v5}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForProfileDisabled()V

    .line 243
    .line 244
    .line 245
    :cond_10
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    .line 246
    .line 247
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 248
    .line 249
    if-eqz v5, :cond_17

    .line 250
    .line 251
    iget v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 252
    .line 253
    if-eq v5, v2, :cond_11

    .line 254
    .line 255
    if-ne v5, v11, :cond_17

    .line 256
    .line 257
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    if-eqz v3, :cond_18

    .line 270
    .line 271
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_18

    .line 276
    .line 277
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 278
    .line 279
    .line 280
    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-static {v5}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    iget v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    .line 291
    .line 292
    const-string v8, "KeyguardTextBuilder"

    .line 293
    .line 294
    const-string/jumbo v10, "string"

    .line 295
    .line 296
    .line 297
    const-string/jumbo v11, "none"

    .line 298
    .line 299
    .line 300
    if-ne v7, v2, :cond_14

    .line 301
    .line 302
    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    if-ne v3, v2, :cond_12

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_12
    move-object v9, v11

    .line 313
    :goto_6
    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 314
    .line 315
    .line 316
    iget-object v2, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    const v7, 0x7f130804

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    iget-object v7, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    .line 330
    .line 331
    iget-object v5, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    .line 332
    .line 333
    filled-new-array {v7, v5, v9}, [Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-virtual {v5, v4, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    if-eqz v4, :cond_13

    .line 354
    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    goto :goto_9

    .line 368
    :cond_13
    const-string v2, "Can\'t find warning reactivation string id="

    .line 369
    .line 370
    invoke-static {v2, v4, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_14
    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    if-ne v3, v2, :cond_15

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_15
    move-object v9, v11

    .line 385
    :goto_7
    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 386
    .line 387
    .line 388
    iget-object v2, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    const v7, 0x7f130803

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    iget-object v7, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    .line 402
    .line 403
    iget-object v5, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    .line 404
    .line 405
    filled-new-array {v7, v5, v9}, [Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    invoke-virtual {v5, v4, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-eqz v4, :cond_16

    .line 426
    .line 427
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    goto :goto_9

    .line 440
    :cond_16
    const-string v2, "Can\'t find warning frp string id="

    .line 441
    .line 442
    invoke-static {v2, v4, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :goto_8
    const-string v2, ""

    .line 446
    .line 447
    :goto_9
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 448
    .line 449
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 450
    .line 451
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->showWipeWarningDialog(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_17
    if-eqz v3, :cond_18

    .line 459
    .line 460
    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 461
    .line 462
    if-ne v3, v2, :cond_18

    .line 463
    .line 464
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 465
    .line 466
    .line 467
    iget v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 468
    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-static {v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-virtual {v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    if-eqz v2, :cond_18

    .line 482
    .line 483
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 484
    .line 485
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 486
    .line 487
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v6, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->showWipeWarningDialog(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_18
    :goto_a
    if-lez p2, :cond_19

    .line 494
    .line 495
    invoke-virtual {v12, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    .line 496
    .line 497
    .line 498
    :cond_19
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getMaxFailedUnlockAttempts()I

    .line 499
    .line 500
    .line 501
    move-result p0

    .line 502
    if-lt v1, p0, :cond_1a

    .line 503
    .line 504
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updatePermanentLock(I)Z

    .line 505
    .line 506
    .line 507
    :cond_1a
    return-void
.end method

.method public final setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionExist(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 5
    .line 6
    sget-object p3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 7
    .line 8
    if-eq p2, p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 25
    .line 26
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final showNextSecurityScreenOrFinish(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "showNextSecurityScreenOrFinish("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ")"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "KeyguardSecSecurityContainer"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eq p4, v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 32
    .line 33
    if-eq p4, v0, :cond_0

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p2, "Attempted to invoke showNextSecurityScreenOrFinish with securityMode "

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, ", but current mode is "

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :cond_0
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 64
    .line 65
    invoke-interface {p4, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    if-nez p3, :cond_3

    .line 75
    .line 76
    move-object v0, v3

    .line 77
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 78
    .line 79
    iget-object v5, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 80
    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const-string v6, "isVirtualUserId - userId : "

    .line 88
    .line 89
    const-string v7, ", ret : "

    .line 90
    .line 91
    const-string v8, "DualDarMonitor"

    .line 92
    .line 93
    invoke-static {v6, p2, v7, v5, v8}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    move v5, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move v5, v2

    .line 101
    :goto_0
    if-eqz v5, :cond_2

    .line 102
    .line 103
    const-string v5, "Switch targetUserId "

    .line 104
    .line 105
    const-string v6, " to "

    .line 106
    .line 107
    invoke-static {v5, p2, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v0, p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    move v0, v2

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    :goto_1
    move v0, v4

    .line 133
    :goto_2
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const-string p1, "User authentication is blocked by CC mode since it detects the device has been tampered"

    .line 144
    .line 145
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 150
    .line 151
    .line 152
    return v2

    .line 153
    :cond_4
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    .line 154
    .line 155
    const-string v5, "101"

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 162
    .line 163
    if-ne v6, v7, :cond_5

    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_5
    invoke-virtual {p4, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    const-string v7, "1001"

    .line 172
    .line 173
    if-eqz v6, :cond_9

    .line 174
    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    .line 178
    .line 179
    if-eqz v1, :cond_6

    .line 180
    .line 181
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_8

    .line 187
    .line 188
    :cond_6
    invoke-interface {p4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_7

    .line 193
    .line 194
    invoke-virtual {p4, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;->EXTEND_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    .line 201
    .line 202
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetailSkipBouncer(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;)V

    .line 203
    .line 204
    .line 205
    const-string v1, "3"

    .line 206
    .line 207
    invoke-static {v5, v7, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_7
    if-eqz v1, :cond_8

    .line 212
    .line 213
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;->FACE_UNLOCK_LOCK_STAY:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    .line 214
    .line 215
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetailSkipBouncer(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;)V

    .line 216
    .line 217
    .line 218
    :goto_3
    move v1, v2

    .line 219
    goto :goto_4

    .line 220
    :cond_8
    move v1, v4

    .line 221
    :goto_4
    move v3, v2

    .line 222
    goto/16 :goto_9

    .line 223
    .line 224
    :cond_9
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 225
    .line 226
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 227
    .line 228
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 229
    .line 230
    if-ne v6, v8, :cond_c

    .line 231
    .line 232
    invoke-virtual {v9, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    if-eqz v1, :cond_a

    .line 237
    .line 238
    if-ne v6, v3, :cond_a

    .line 239
    .line 240
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    .line 241
    .line 242
    if-eqz v1, :cond_a

    .line 243
    .line 244
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 245
    .line 246
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_a
    if-ne v6, v3, :cond_b

    .line 251
    .line 252
    const-string v1, "2"

    .line 253
    .line 254
    invoke-static {v5, v7, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    move v1, v4

    .line 258
    goto :goto_6

    .line 259
    :cond_b
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 260
    .line 261
    .line 262
    :goto_5
    move v1, v2

    .line 263
    :goto_6
    move v3, v2

    .line 264
    move v10, v4

    .line 265
    move v4, v1

    .line 266
    move v1, v10

    .line 267
    goto :goto_9

    .line 268
    :cond_c
    if-eqz p1, :cond_12

    .line 269
    .line 270
    sget-object v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 271
    .line 272
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    aget v1, v1, v7

    .line 277
    .line 278
    packed-switch v1, :pswitch_data_0

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 282
    .line 283
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    invoke-interface {p4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_11

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :pswitch_0
    invoke-virtual {v9, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 298
    .line 299
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 308
    .line 309
    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isLockScreenDisabledbyKNOX()Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-eqz v3, :cond_d

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_d
    if-eq v1, v6, :cond_e

    .line 317
    .line 318
    if-eqz v7, :cond_f

    .line 319
    .line 320
    :cond_e
    invoke-virtual {p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eqz v3, :cond_10

    .line 325
    .line 326
    if-eqz v7, :cond_10

    .line 327
    .line 328
    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 329
    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_10
    :goto_7
    move v3, v2

    .line 333
    move v1, v4

    .line 334
    goto :goto_9

    .line 335
    :pswitch_1
    move v1, v4

    .line 336
    move v3, v1

    .line 337
    goto :goto_9

    .line 338
    :cond_11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    .line 339
    .line 340
    .line 341
    :cond_12
    :goto_8
    move v3, v2

    .line 342
    move v1, v4

    .line 343
    move v4, v3

    .line 344
    :goto_9
    if-eqz v4, :cond_13

    .line 345
    .line 346
    if-nez v0, :cond_13

    .line 347
    .line 348
    invoke-interface {p4, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 349
    .line 350
    .line 351
    move-result p4

    .line 352
    if-eqz p4, :cond_13

    .line 353
    .line 354
    new-instance p1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;

    .line 355
    .line 356
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    .line 360
    .line 361
    .line 362
    return v2

    .line 363
    :cond_13
    if-eqz v4, :cond_15

    .line 364
    .line 365
    if-nez p3, :cond_15

    .line 366
    .line 367
    if-eqz v1, :cond_14

    .line 368
    .line 369
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 370
    .line 371
    invoke-static {p3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 372
    .line 373
    .line 374
    :cond_14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 375
    .line 376
    invoke-interface {p0, p2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->finish(IZ)V

    .line 377
    .line 378
    .line 379
    if-eqz p1, :cond_15

    .line 380
    .line 381
    const-string p0, "1032"

    .line 382
    .line 383
    const-string p1, "1"

    .line 384
    .line 385
    invoke-static {v5, p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :cond_15
    return v4

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final showPromptReason(I)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "KeyguardSecSecurityContainer"

    .line 5
    .line 6
    const-string/jumbo p1, "return, biometric lockout"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 14
    .line 15
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string v0, "Strong auth required, reason: "

    .line 22
    .line 23
    const-string v1, "KeyguardSecurityContainer"

    .line 24
    .line 25
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "showSecurityScreen("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ") current = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "KeyguardSecSecurityContainer"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 32
    .line 33
    if-ne p1, v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    sget-object v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    aget v0, v2, v0

    .line 43
    .line 44
    const/16 v2, 0xc

    .line 45
    .line 46
    if-eq v0, v2, :cond_1

    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 51
    .line 52
    if-ne p1, v0, :cond_9

    .line 53
    .line 54
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 74
    .line 75
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 76
    .line 77
    iget-object v3, v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    if-eqz v3, :cond_8

    .line 81
    .line 82
    iget-object v5, v3, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    if-eqz v5, :cond_7

    .line 86
    .line 87
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    iget-object v5, v3, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 94
    .line 95
    iget-object v5, v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    const-string/jumbo v7, "telephony_subscription_service"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Landroid/telephony/SubscriptionManager;

    .line 105
    .line 106
    invoke-virtual {v5, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_2

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const/4 v7, 0x0

    .line 118
    :goto_0
    const/4 v8, 0x3

    .line 119
    new-array v8, v8, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    aput-object v9, v8, v4

    .line 126
    .line 127
    const-string v9, ""

    .line 128
    .line 129
    if-eqz v5, :cond_3

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    move-object v5, v9

    .line 133
    :goto_1
    aput-object v5, v8, v6

    .line 134
    .line 135
    if-eqz v7, :cond_4

    .line 136
    .line 137
    move-object v9, v7

    .line 138
    :cond_4
    aput-object v9, v8, v2

    .line 139
    .line 140
    const-string v2, "isSubIdLockedByAdmin subId=%d, subInfo=%s, iccId=%s"

    .line 141
    .line 142
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v5, "EdmMonitor"

    .line 147
    .line 148
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    if-nez v7, :cond_5

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    iget-object v2, v3, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    .line 155
    .line 156
    array-length v3, v2

    .line 157
    move v5, v4

    .line 158
    :goto_2
    if-ge v5, v3, :cond_7

    .line 159
    .line 160
    aget-object v8, v2, v5

    .line 161
    .line 162
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_6

    .line 167
    .line 168
    :goto_3
    move v2, v6

    .line 169
    goto :goto_4

    .line 170
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_7
    move v2, v4

    .line 174
    :goto_4
    if-eqz v2, :cond_8

    .line 175
    .line 176
    move v4, v6

    .line 177
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string/jumbo v2, "reportSecurityMode SimPin -> None simPinSubId = %d, isLockedByMDM=%b"

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 196
    .line 197
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 198
    .line 199
    .line 200
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public final startAppearAnimation()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startAppearAnimation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->startLockIconAnimation(Z)V

    .line 11
    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/keyguard/KeyguardArrowViewController;->startArrowViewAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/android/keyguard/KeyguardArrowViewController;->startArrowViewAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, v0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastUpdateTime:J

    .line 41
    .line 42
    sub-long v4, v2, v4

    .line 43
    .line 44
    const-wide/32 v6, 0x240c8400

    .line 45
    .line 46
    .line 47
    cmp-long v4, v4, v6

    .line 48
    .line 49
    if-lez v4, :cond_0

    .line 50
    .line 51
    iput-wide v2, v0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastUpdateTime:J

    .line 52
    .line 53
    new-instance v0, Lcom/android/keyguard/KeyguardArrowViewController$StatusLoggingTask;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardArrowViewController$StatusLoggingTask;-><init>()V

    .line 56
    .line 57
    .line 58
    new-array v2, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 64
    .line 65
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 66
    .line 67
    if-ne v0, v2, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mUCMBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardUCMBiometricViewController;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string v2, "com.samsung.ucs.ucsservice"

    .line 79
    .line 80
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "failed to get UCM service"

    .line 89
    .line 90
    const-string v4, "KeyguardUCMBiometricViewController"

    .line 91
    .line 92
    if-nez v2, :cond_1

    .line 93
    .line 94
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_1
    const/4 v5, 0x0

    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    move-object v2, v5

    .line 118
    :goto_0
    if-eqz v2, :cond_4

    .line 119
    .line 120
    const-string v3, ""

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_4

    .line 127
    .line 128
    const-string/jumbo v3, "none"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_3

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move-object v5, v2

    .line 139
    :cond_4
    :goto_1
    if-nez v5, :cond_5

    .line 140
    .line 141
    move v0, v1

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const v2, 0x7f070569

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardUCMBiometricViewController;->mKeyguardSecSecurityContainer:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 155
    .line 156
    const v2, 0x7f0a0155

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    .line 165
    .line 166
    :cond_6
    return-void
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    .line 10
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 11
    .line 12
    iput-boolean v2, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    .line 13
    .line 14
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 15
    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    iget-object v3, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    instance-of v3, v3, Lcom/android/keyguard/KeyguardPasswordView;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    .line 35
    .line 36
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    .line 39
    .line 40
    .line 41
    iput-object v3, v0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearAnimationListener:Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 45
    .line 46
    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->startDisappearAnimation(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->startLockIconAnimation(Z)V

    .line 61
    .line 62
    .line 63
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    .line 70
    .line 71
    .line 72
    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    .line 77
    .line 78
    :cond_3
    return v2
.end method

.method public final updateLayoutMargins()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins(I)V

    return-void
.end method

.method public final updateLayoutMargins(I)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    .line 8
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const v2, 0x1050255

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 9
    :goto_0
    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    .line 10
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v2, 0x1

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_b

    .line 11
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNeedsInput:Z

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 16
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v6, :cond_3

    move p1, v3

    move v1, p1

    goto :goto_6

    .line 17
    :cond_3
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_2
    if-eq p1, v2, :cond_6

    if-eq p1, v4, :cond_6

    .line 18
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_3
    move v1, v3

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    move p1, v3

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    if-eqz v0, :cond_8

    move v1, v3

    :cond_8
    if-eqz v0, :cond_a

    .line 19
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :cond_a
    :goto_5
    move v7, v3

    move v3, p1

    move p1, v7

    .line 20
    :goto_6
    invoke-virtual {p0, v3, v1, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(III)V

    return-void

    .line 21
    :cond_b
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 22
    sget v0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0704af

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 24
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v3

    :goto_7
    if-eq p1, v2, :cond_f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_f

    if-eq p1, v4, :cond_f

    .line 26
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    if-eqz v0, :cond_e

    goto :goto_9

    .line 27
    :cond_e
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    goto :goto_9

    .line 28
    :cond_f
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_10

    :goto_8
    move v1, v3

    goto :goto_9

    :cond_10
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    .line 29
    :goto_9
    invoke-virtual {p0, v3, v3, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(III)V

    return-void

    .line 30
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNeedsInput:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v0, :cond_12

    move p1, v3

    move v0, p1

    goto :goto_f

    .line 31
    :cond_12
    sget v0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 32
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 33
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v2

    goto :goto_a

    :cond_13
    move v1, v3

    .line 34
    :goto_a
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_b

    :cond_14
    iget v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_b
    if-eq p1, v2, :cond_19

    if-eq p1, v4, :cond_17

    .line 35
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result p1

    xor-int/2addr p1, v2

    and-int/2addr p1, v1

    .line 36
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz v1, :cond_15

    move v0, v3

    goto :goto_c

    :cond_15
    if-eqz p1, :cond_16

    goto :goto_c

    .line 37
    :cond_16
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_c
    move p1, v0

    move v0, v3

    goto :goto_f

    :cond_17
    if-eqz v1, :cond_18

    goto :goto_d

    :cond_18
    move v0, v5

    :goto_d
    move v7, v5

    move v5, v0

    move v0, v7

    goto :goto_e

    :cond_19
    if-eqz v1, :cond_1a

    goto :goto_e

    :cond_1a
    move v0, v5

    :goto_e
    move p1, v3

    move v3, v5

    .line 38
    :goto_f
    invoke-virtual {p0, v3, v0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(III)V

    return-void
.end method

.method public final updateLayoutParams(III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 7
    .line 8
    iget-object v7, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 9
    .line 10
    if-nez v7, :cond_0

    .line 11
    .line 12
    const-string v0, "KeyguardSecSecurityContainer"

    .line 13
    .line 14
    const-string/jumbo v1, "updateLayoutParams securityViewFlipper is null"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v14, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 26
    .line 27
    invoke-direct {v14}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v15, 0x0

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const v4, 0x7f0704fd

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v14, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    move v1, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v1, v15

    .line 82
    :goto_0
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 83
    .line 84
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 85
    .line 86
    if-ne v2, v4, :cond_3

    .line 87
    .line 88
    move v2, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move v2, v15

    .line 91
    :goto_1
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    .line 104
    .line 105
    invoke-static {v1, v2}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move v1, v15

    .line 111
    :goto_2
    invoke-virtual {v14, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v14, v1, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-ne v1, v3, :cond_6

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    move v3, v15

    .line 138
    :goto_4
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    const/4 v10, 0x6

    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v12, 0x6

    .line 145
    if-eqz v3, :cond_7

    .line 146
    .line 147
    move/from16 v13, p2

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_7
    move/from16 v13, p1

    .line 151
    .line 152
    :goto_5
    move-object v8, v14

    .line 153
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    const/4 v10, 0x7

    .line 161
    const/4 v11, 0x0

    .line 162
    const/4 v12, 0x7

    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    move/from16 v13, p1

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_8
    move/from16 v13, p2

    .line 169
    .line 170
    :goto_6
    move-object v8, v14

    .line 171
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    const/4 v10, 0x4

    .line 179
    const/4 v4, 0x0

    .line 180
    const/4 v12, 0x4

    .line 181
    const/4 v11, 0x0

    .line 182
    move/from16 v13, p3

    .line 183
    .line 184
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/4 v3, 0x3

    .line 192
    const/4 v5, 0x3

    .line 193
    move-object v1, v14

    .line 194
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getId()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {v14, v1, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 205
    .line 206
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 207
    .line 208
    invoke-virtual {v14, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 209
    .line 210
    .line 211
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    .line 212
    .line 213
    if-eqz v1, :cond_9

    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    .line 218
    .line 219
    .line 220
    :cond_9
    return-void
.end method
