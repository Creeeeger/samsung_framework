.class public final Lcom/android/keyguard/SecLockIconViewController;
.super Lcom/android/keyguard/LockIconViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$5;

.field public mCurrentOrientation:I

.field public mDisplayType:I

.field public mIsDefaultLockViewMode:Z

.field public mIsLockStarEnabled:Z

.field public final mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$4;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockStarCallback:Lcom/android/keyguard/SecLockIconViewController$1;

.field public final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public mRunningFace:Z

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;

.field public final mViewMediatorCallbackLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/AuthRippleController;Landroid/content/res/Resources;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/SecLockIconView;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/biometrics/AuthRippleController;",
            "Landroid/content/res/Resources;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move-object/from16 v19, p25

    .line 1
    invoke-direct/range {v0 .. v19}, Lcom/android/keyguard/LockIconViewController;-><init>(Lcom/android/keyguard/LockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/AuthRippleController;Landroid/content/res/Resources;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V

    .line 2
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    .line 4
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$1;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$1;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mLockStarCallback:Lcom/android/keyguard/SecLockIconViewController$1;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    .line 6
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$3;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$3;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$4;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$4;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$4;

    .line 8
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$5;

    invoke-direct {v0, v1}, Lcom/android/keyguard/SecLockIconViewController$5;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$5;

    move-object/from16 v0, p15

    .line 9
    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p16

    .line 10
    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v0, p21

    .line 11
    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    .line 12
    move-object/from16 v0, p22

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    move-object/from16 v0, p23

    .line 13
    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    move-object/from16 v0, p24

    .line 14
    iput-object v0, v1, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method


# virtual methods
.method public final acceptModifier(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_7

    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 28
    .line 29
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 32
    .line 33
    const-string v2, "lockIconVisibility"

    .line 34
    .line 35
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "lockIconAlpha"

    .line 40
    .line 41
    invoke-interface {v0, v3}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "lockIconColor"

    .line 46
    .line 47
    invoke-interface {v0, v4}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "lockIconDrawable"

    .line 52
    .line 53
    invoke-interface {v0, v5}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string/jumbo v6, "unlockIconDrawable"

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v6}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 67
    .line 68
    invoke-interface {v2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    if-eqz v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    const/high16 v2, 0x3f800000    # 1.0f

    .line 78
    .line 79
    cmpl-float p0, p0, v2

    .line 80
    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    if-eqz v4, :cond_5

    .line 90
    .line 91
    invoke-interface {v4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    if-eqz p1, :cond_6

    .line 95
    .line 96
    if-eqz v5, :cond_7

    .line 97
    .line 98
    invoke-interface {v5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    if-eqz v0, :cond_7

    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    :goto_1
    return-void
.end method

.method public final onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->shouldShowLockIcon()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    new-instance p1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x4

    .line 15
    :goto_0
    const-string v0, "lock_icon_visibility"

    .line 16
    .line 17
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final onViewAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/LockIconViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$5;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$4;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "any_screen_running"

    .line 30
    .line 31
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    .line 48
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 49
    .line 50
    new-instance v1, Lcom/android/keyguard/SecLockIconViewController$2;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/android/keyguard/SecLockIconViewController$2;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 67
    .line 68
    iput v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mDisplayType:I

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 71
    .line 72
    const-string v1, "SecLockIconViewController"

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mLockStarCallback:Lcom/android/keyguard/SecLockIconViewController$1;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/LockIconViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/keyguard/SecLockIconViewController$5;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/keyguard/SecLockIconViewController$4;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 37
    .line 38
    const-string v0, "SecLockIconViewController"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onViewModeChanged mode: "

    .line 2
    .line 3
    .line 4
    const-string v1, "LockIconViewController"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    .line 15
    .line 16
    if-eq v0, p1, :cond_1

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final shouldShowLockIcon()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 21
    .line 22
    move-object v3, p0

    .line 23
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockDataImpl;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isAvailable()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x7

    .line 32
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->getVisibility(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v2

    .line 42
    :goto_1
    move v0, v1

    .line 43
    :cond_2
    return v0
.end method

.method public final updateVisibility()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->shouldShowLockIcon()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_d

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsBiometricToastViewAnimating:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-boolean v4, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-boolean v4, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    iget-boolean v4, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    .line 49
    .line 50
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/keyguard/ViewMediatorCallback;

    .line 55
    .line 56
    invoke-interface {v2}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    const-string p0, "SecLockIconViewController"

    .line 63
    .line 64
    const-string v0, "Skip update unlock icon on turning off screen"

    .line 65
    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    const/4 v5, 0x0

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    .line 77
    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    iget v2, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    .line 81
    .line 82
    if-ne v2, v4, :cond_2

    .line 83
    .line 84
    move v2, v4

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v2, v5

    .line 87
    :goto_0
    iget-boolean v6, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    .line 88
    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    move v7, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move v7, v5

    .line 96
    :goto_1
    iput-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    .line 97
    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    move v6, v4

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    move v6, v5

    .line 105
    :goto_2
    iput-boolean v6, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    move v2, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    move v2, v5

    .line 114
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 115
    .line 116
    check-cast v3, Lcom/android/keyguard/SecLockIconView;

    .line 117
    .line 118
    iget-object v6, v3, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 119
    .line 120
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const/4 v7, 0x0

    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 128
    .line 129
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 130
    .line 131
    const v8, 0x7f080c09

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v8}, Lcom/android/keyguard/SecLockIconView;->getIcon(I)Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v8, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 139
    .line 140
    check-cast v8, Lcom/android/keyguard/SecLockIconView;

    .line 141
    .line 142
    invoke-virtual {v8, v1}, Lcom/android/keyguard/SecLockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 146
    .line 147
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 148
    .line 149
    invoke-virtual {v1, v5}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 153
    .line 154
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    const v9, 0x7f13080c

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    const-string/jumbo v1, "top"

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    const v8, 0x7f080786

    .line 178
    .line 179
    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    const v1, 0x7f080787

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    move v1, v8

    .line 187
    :goto_4
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 194
    .line 195
    .line 196
    new-instance v1, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;

    .line 197
    .line 198
    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/SecLockIconViewController;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 205
    .line 206
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v5}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_7
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 220
    .line 221
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 222
    .line 223
    const v1, 0x7f080c18

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockIconView;->getIcon(I)Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 231
    .line 232
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecLockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 238
    .line 239
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 240
    .line 241
    invoke-virtual {v1, v5}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 245
    .line 246
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 247
    .line 248
    iget-object v4, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    .line 249
    .line 250
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 254
    .line 255
    if-eqz v1, :cond_8

    .line 256
    .line 257
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 260
    .line 261
    .line 262
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_9
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    .line 267
    .line 268
    if-eqz v0, :cond_a

    .line 269
    .line 270
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 271
    .line 272
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 273
    .line 274
    const v1, 0x7f080bf6

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockIconView;->getIcon(I)Landroid/graphics/drawable/Drawable;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 282
    .line 283
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 284
    .line 285
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecLockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 289
    .line 290
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 291
    .line 292
    invoke-virtual {v0, v5}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 296
    .line 297
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 298
    .line 299
    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v4}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 309
    .line 310
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 316
    .line 317
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 318
    .line 319
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 323
    .line 324
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_b

    .line 335
    .line 336
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 337
    .line 338
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_b

    .line 345
    .line 346
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 347
    .line 348
    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    .line 349
    .line 350
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    :cond_b
    if-nez v2, :cond_c

    .line 358
    .line 359
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_c

    .line 364
    .line 365
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 369
    .line 370
    .line 371
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 372
    .line 373
    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    .line 374
    .line 375
    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockIconView;->updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :cond_d
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 380
    .line 381
    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    .line 382
    .line 383
    invoke-virtual {p0, v1}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    return-void
.end method
