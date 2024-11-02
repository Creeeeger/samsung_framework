.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final adminSecondaryLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

.field public final alarmManagerProvider:Ljavax/inject/Provider;

.field public final audioManagerProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final devicePolicyManagerProvider:Ljavax/inject/Provider;

.field public final deviceProvisionedControllerProvider:Ljavax/inject/Provider;

.field public final dualDarInnerLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

.field public final falsingA11yDelegateProvider:Ljavax/inject/Provider;

.field public final falsingCollectorProvider:Ljavax/inject/Provider;

.field public final falsingManagerProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final globalSettingsProvider:Ljavax/inject/Provider;

.field public final inputMethodManagerProvider:Ljavax/inject/Provider;

.field public final keyguardArrowViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardBiometricViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardCarrierTextViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

.field public final keyguardPluginControllerFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardPunchHoleVIViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardSecurityModelProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final lockPatternUtilsProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final rotationWatcherProvider:Ljavax/inject/Provider;

.field public final securityViewFlipperControllerProvider:Ljavax/inject/Provider;

.field public final sessionTrackerProvider:Ljavax/inject/Provider;

.field public final settingsHelperProvider:Ljavax/inject/Provider;

.field public final sideFpsControllerProvider:Ljavax/inject/Provider;

.field public final telephonyManagerProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;

.field public final userSwitcherControllerProvider:Ljavax/inject/Provider;

.field public final viewMediatorCallbackProvider:Ljavax/inject/Provider;

.field public final viewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->viewProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->adminSecondaryLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->securityViewFlipperControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->globalSettingsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->sessionTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->sideFpsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->falsingA11yDelegateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->telephonyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->audioManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->rotationWatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardCarrierTextViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardPunchHoleVIViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardArrowViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardBiometricViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardPluginControllerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->dualDarInnerLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static newInstance(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;Ljava/lang/Object;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)Lcom/android/keyguard/KeyguardSecSecurityContainerController;
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    .line 1
    new-instance v35, Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    move-object/from16 v0, v35

    move-object/from16 v31, p30

    check-cast v31, Lcom/android/keyguard/KeyguardArrowViewController$Factory;

    invoke-direct/range {v0 .. v34}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;Lcom/android/keyguard/KeyguardArrowViewController$Factory;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)V

    return-object v35
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 4
    .line 5
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->adminSecondaryLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Lcom/android/internal/widget/LockPatternUtils;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v6, v1

    .line 46
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    .line 49
    .line 50
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v7, v1

    .line 55
    check-cast v7, Lcom/android/internal/logging/MetricsLogger;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 58
    .line 59
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v8, v1

    .line 64
    check-cast v8, Lcom/android/internal/logging/UiEventLogger;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v9, v1

    .line 73
    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->securityViewFlipperControllerProvider:Ljavax/inject/Provider;

    .line 76
    .line 77
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v10, v1

    .line 82
    check-cast v10, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 85
    .line 86
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v11, v1

    .line 91
    check-cast v11, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    .line 94
    .line 95
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v12, v1

    .line 100
    check-cast v12, Lcom/android/systemui/classifier/FalsingCollector;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    .line 103
    .line 104
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object v13, v1

    .line 109
    check-cast v13, Lcom/android/systemui/plugins/FalsingManager;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 112
    .line 113
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move-object v14, v1

    .line 118
    check-cast v14, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 121
    .line 122
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object v15, v1

    .line 127
    check-cast v15, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 130
    .line 131
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object/from16 v16, v1

    .line 136
    .line 137
    check-cast v16, Lcom/android/systemui/flags/FeatureFlags;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->globalSettingsProvider:Ljavax/inject/Provider;

    .line 140
    .line 141
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    move-object/from16 v17, v1

    .line 146
    .line 147
    check-cast v17, Lcom/android/systemui/util/settings/GlobalSettings;

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->sessionTrackerProvider:Ljavax/inject/Provider;

    .line 150
    .line 151
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    move-object/from16 v18, v1

    .line 156
    .line 157
    check-cast v18, Lcom/android/systemui/log/SessionTracker;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->sideFpsControllerProvider:Ljavax/inject/Provider;

    .line 160
    .line 161
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move-object/from16 v19, v1

    .line 166
    .line 167
    check-cast v19, Ljava/util/Optional;

    .line 168
    .line 169
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->falsingA11yDelegateProvider:Ljavax/inject/Provider;

    .line 170
    .line 171
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object/from16 v20, v1

    .line 176
    .line 177
    check-cast v20, Lcom/android/systemui/classifier/FalsingA11yDelegate;

    .line 178
    .line 179
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->telephonyManagerProvider:Ljavax/inject/Provider;

    .line 180
    .line 181
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    move-object/from16 v21, v1

    .line 186
    .line 187
    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 188
    .line 189
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    .line 190
    .line 191
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    move-object/from16 v22, v1

    .line 196
    .line 197
    check-cast v22, Lcom/android/keyguard/ViewMediatorCallback;

    .line 198
    .line 199
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->audioManagerProvider:Ljavax/inject/Provider;

    .line 200
    .line 201
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    move-object/from16 v23, v1

    .line 206
    .line 207
    check-cast v23, Landroid/media/AudioManager;

    .line 208
    .line 209
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

    .line 210
    .line 211
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    move-object/from16 v24, v1

    .line 216
    .line 217
    check-cast v24, Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    .line 220
    .line 221
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    move-object/from16 v25, v1

    .line 226
    .line 227
    check-cast v25, Landroid/app/admin/DevicePolicyManager;

    .line 228
    .line 229
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    .line 230
    .line 231
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    move-object/from16 v26, v1

    .line 236
    .line 237
    check-cast v26, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .line 239
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    .line 240
    .line 241
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    move-object/from16 v27, v1

    .line 246
    .line 247
    check-cast v27, Landroid/app/AlarmManager;

    .line 248
    .line 249
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->rotationWatcherProvider:Ljavax/inject/Provider;

    .line 250
    .line 251
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    move-object/from16 v28, v1

    .line 256
    .line 257
    check-cast v28, Lcom/android/keyguard/SecRotationWatcher;

    .line 258
    .line 259
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 260
    .line 261
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    move-object/from16 v29, v1

    .line 266
    .line 267
    check-cast v29, Lcom/android/systemui/util/SettingsHelper;

    .line 268
    .line 269
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardCarrierTextViewControllerProvider:Ljavax/inject/Provider;

    .line 270
    .line 271
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    move-object/from16 v30, v1

    .line 276
    .line 277
    check-cast v30, Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 278
    .line 279
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardPunchHoleVIViewControllerProvider:Ljavax/inject/Provider;

    .line 280
    .line 281
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    move-object/from16 v31, v1

    .line 286
    .line 287
    check-cast v31, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 288
    .line 289
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardArrowViewControllerProvider:Ljavax/inject/Provider;

    .line 290
    .line 291
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v32

    .line 295
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardBiometricViewControllerProvider:Ljavax/inject/Provider;

    .line 296
    .line 297
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    move-object/from16 v33, v1

    .line 302
    .line 303
    check-cast v33, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 304
    .line 305
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->keyguardPluginControllerFactoryProvider:Ljavax/inject/Provider;

    .line 306
    .line 307
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    move-object/from16 v34, v1

    .line 312
    .line 313
    check-cast v34, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;

    .line 314
    .line 315
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->dualDarInnerLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    .line 316
    .line 317
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    move-object/from16 v35, v0

    .line 322
    .line 323
    check-cast v35, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;

    .line 324
    .line 325
    invoke-static/range {v2 .. v35}, Lcom/android/keyguard/KeyguardSecSecurityContainerController_Factory;->newInstance(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;Ljava/lang/Object;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    return-object v0
.end method
