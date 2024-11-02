.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/IndicationChangeListener;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mBatteryDrawable:Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;

.field public mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

.field public final mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

.field public final mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

.field public mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

.field public final mDisplayListener:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;

.field public final mEditModeListener:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;

.field public final mErrorColor:Landroid/content/res/ColorStateList;

.field public mIndicationArea:Landroid/view/View;

.field public final mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field public mIsDefaultLockViewMode:Z

.field public mIsFpGuidePos:Z

.field public mIsScreenOn:Z

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mLifeStyleContainer:Landroid/widget/LinearLayout;

.field public mLifeStyleEnable:Z

.field public mLifeStyleIcon:Landroid/graphics/drawable/Drawable;

.field public mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field public mLifeStyleName:Ljava/lang/String;

.field public mLockHelpTextVisible:Z

.field public final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

.field public mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public mUsimTextArea:Landroid/widget/LinearLayout;

.field public mUsimTextView:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;


# direct methods
.method public static -$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addInitialIndication()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addLifeStyleIndication()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsFpGuidePos:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v2, v3

    .line 58
    :goto_1
    if-eqz v2, :cond_5

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :cond_4
    if-nez v3, :cond_5

    .line 69
    .line 70
    const-wide/16 v2, 0xbb8

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V
    .locals 10

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p29

    move-object/from16 v3, p30

    .line 1
    invoke-direct/range {p0 .. p25}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlags;)V

    const/4 v4, 0x1

    .line 2
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    .line 3
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mEditModeListener:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;

    .line 4
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    .line 5
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 6
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    .line 7
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;

    .line 8
    new-instance v7, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;

    .line 9
    new-instance v8, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mDisplayListener:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;

    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p19

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 13
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    .line 14
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mListenerList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;

    move-object v6, p1

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBatteryDrawable:Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;

    .line 19
    new-instance v1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    .line 20
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 21
    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 22
    move-object v1, v3

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 23
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 24
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iput-object v2, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 26
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    const-string v3, "KeyguardSecIndicationController"

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    const-string v1, "bottom"

    .line 27
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v1

    .line 28
    invoke-static {p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 29
    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v7}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 30
    sget-object v1, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 31
    move-object/from16 v1, p27

    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    move-object/from16 v1, p28

    .line 32
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v1, -0x1

    .line 33
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    .line 34
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 35
    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    .line 36
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 37
    invoke-virtual {p0, v3, v1, v2, v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    .line 38
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    if-eqz v4, :cond_1

    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 40
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 41
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public static isAuthenticatedWithBiometric()Z
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method


# virtual methods
.method public final AddBatteryIcon(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBatteryDrawable:Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 14
    .line 15
    iput v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevel:I

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    add-int/2addr v5, v6

    .line 36
    add-int/2addr v5, v4

    .line 37
    div-int/lit8 v5, v5, 0x3

    .line 38
    .line 39
    const/16 v4, 0x80

    .line 40
    .line 41
    if-gt v5, v4, :cond_0

    .line 42
    .line 43
    move v4, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v4, v3

    .line 46
    :goto_0
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const/high16 v4, 0x3f800000    # 1.0f

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_1
    iput v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->darkIntensity:F

    .line 53
    .line 54
    float-to-int v0, v0

    .line 55
    mul-int/lit8 v4, v0, 0x8

    .line 56
    .line 57
    div-int/lit8 v4, v4, 0xe

    .line 58
    .line 59
    invoke-virtual {v2, v3, v3, v4, v0}, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->setBounds(IIII)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelColor:I

    .line 69
    .line 70
    iget-object v0, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 71
    .line 72
    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->darkIntensity:F

    .line 73
    .line 74
    iget v5, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundLightColor:I

    .line 75
    .line 76
    iget v6, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundDarkColor:I

    .line 77
    .line 78
    sget-object v7, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v7, v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 102
    .line 103
    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelColor:I

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    .line 107
    .line 108
    iget v0, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->darkIntensity:F

    .line 109
    .line 110
    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltDarkColor:I

    .line 111
    .line 112
    iget v5, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltLightColor:I

    .line 113
    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v7, v0, v4, v5}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-object v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 133
    .line 134
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 138
    .line 139
    .line 140
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 141
    .line 142
    const-string v4, "  "

    .line 143
    .line 144
    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 148
    .line 149
    .line 150
    new-instance p1, Landroid/text/style/ImageSpan;

    .line 151
    .line 152
    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->width:I

    .line 153
    .line 154
    if-lez v4, :cond_3

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    move v4, v1

    .line 158
    :goto_2
    iget v5, v2, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->height:I

    .line 159
    .line 160
    if-lez v5, :cond_4

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move v5, v1

    .line 164
    :goto_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 165
    .line 166
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    new-instance v5, Landroid/graphics/Canvas;

    .line 171
    .line 172
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-virtual {v2, v3, v3, v6, v7}, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->setBounds(IIII)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-direct {v2, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    invoke-virtual {v2, v3, v3, p0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    .line 210
    .line 211
    const/4 p0, 0x2

    .line 212
    invoke-direct {p1, v2, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 213
    .line 214
    .line 215
    const/16 p0, 0x21

    .line 216
    .line 217
    invoke-virtual {v0, p1, v3, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 218
    .line 219
    .line 220
    return-object v0
.end method

.method public final addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 8

    const/4 v7, 0x0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "KeyguardSecIndicationController"

    const-string p1, "addIndication() returned - unlocking"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v0, :cond_1

    const-wide/16 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_1
    return-void
.end method

.method public final addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 6

    .line 1
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public final addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 8

    const-wide/16 v5, 0xbb8

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "KeyguardSecIndicationController"

    const-string p1, "addIndicationTimeout() returned - unlocking"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_1
    return-void
.end method

.method public final addInitialIndication()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v4, "KeyguardSecIndicationController"

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    const-string v0, "addBatteryAndOwnerInfoIndication() no status"

    .line 14
    .line 15
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 20
    .line 21
    iget v0, v3, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    .line 22
    .line 23
    const/16 v6, 0x14

    .line 24
    .line 25
    if-ge v0, v6, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    sget-boolean v6, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    .line 31
    .line 32
    const/16 v7, 0x20

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    iget v6, v3, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    .line 37
    .line 38
    and-int/lit8 v8, v6, 0x10

    .line 39
    .line 40
    if-eqz v8, :cond_2

    .line 41
    .line 42
    const/16 v7, 0x10

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    and-int/2addr v6, v7

    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v7, 0x0

    .line 50
    :goto_1
    iget-wide v8, v3, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    .line 51
    .line 52
    const-class v6, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 53
    .line 54
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 59
    .line 60
    check-cast v6, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 61
    .line 62
    iget-object v6, v6, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 63
    .line 64
    if-eqz v6, :cond_5

    .line 65
    .line 66
    iget v6, v6, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 67
    .line 68
    and-int/lit8 v6, v6, 0x2

    .line 69
    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/4 v6, 0x1

    .line 75
    :goto_2
    if-eqz v6, :cond_5

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    const/4 v6, 0x0

    .line 80
    :goto_3
    iget-object v10, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    if-eqz v6, :cond_23

    .line 83
    .line 84
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 85
    .line 86
    if-nez v11, :cond_7

    .line 87
    .line 88
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    .line 89
    .line 90
    if-eqz v11, :cond_6

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-nez v11, :cond_7

    .line 97
    .line 98
    :cond_6
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mProtectedFullyCharged:Z

    .line 99
    .line 100
    if-eqz v11, :cond_23

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_23

    .line 107
    .line 108
    :cond_7
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChangingType:I

    .line 109
    .line 110
    const-class v6, Lcom/android/systemui/util/SettingsHelper;

    .line 111
    .line 112
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    .line 117
    .line 118
    iget-object v6, v6, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 119
    .line 120
    const-string/jumbo v11, "protect_battery"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v11}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    sget-boolean v11, Lcom/android/systemui/LsRune;->LOCKUI_ECO_BATTERY:Z

    .line 132
    .line 133
    const/4 v12, 0x4

    .line 134
    if-eqz v11, :cond_8

    .line 135
    .line 136
    if-ne v6, v12, :cond_8

    .line 137
    .line 138
    iget-boolean v12, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResumedChargingAdaptiveProtection:Z

    .line 139
    .line 140
    if-eqz v12, :cond_8

    .line 141
    .line 142
    const/4 v12, 0x1

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    const/4 v12, 0x0

    .line 145
    :goto_4
    iget-boolean v13, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    .line 146
    .line 147
    const-string v14, "Fail to getChargingText"

    .line 148
    .line 149
    iget-object v15, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBatteryDrawable:Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;

    .line 150
    .line 151
    const-string v16, ""

    .line 152
    .line 153
    if-eqz v13, :cond_d

    .line 154
    .line 155
    const/4 v13, 0x0

    .line 156
    iput-boolean v13, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResumedChargingAdaptiveProtection:Z

    .line 157
    .line 158
    if-nez v10, :cond_9

    .line 159
    .line 160
    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_9
    const v13, 0x7f130931

    .line 165
    .line 166
    .line 167
    if-eqz v11, :cond_c

    .line 168
    .line 169
    if-nez v6, :cond_a

    .line 170
    .line 171
    invoke-virtual {v10, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    goto :goto_5

    .line 180
    :cond_a
    const/4 v13, 0x3

    .line 181
    if-eq v6, v13, :cond_b

    .line 182
    .line 183
    const/4 v13, 0x4

    .line 184
    if-ne v6, v13, :cond_d

    .line 185
    .line 186
    :cond_b
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, v15, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->isNeedBoltAndWarning:Z

    .line 188
    .line 189
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const v6, 0x7f1301dc

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object v16

    .line 210
    goto :goto_5

    .line 211
    :cond_c
    invoke-virtual {v10, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v16

    .line 219
    :goto_5
    move-object/from16 v17, v3

    .line 220
    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :cond_d
    iget-boolean v13, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mProtectedFullyCharged:Z

    .line 224
    .line 225
    move-object/from16 v17, v3

    .line 226
    .line 227
    const/16 v3, 0xa

    .line 228
    .line 229
    if-eqz v13, :cond_14

    .line 230
    .line 231
    if-nez v10, :cond_e

    .line 232
    .line 233
    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto/16 :goto_8

    .line 237
    .line 238
    :cond_e
    if-eqz v11, :cond_13

    .line 239
    .line 240
    const/4 v11, 0x1

    .line 241
    if-eq v6, v11, :cond_12

    .line 242
    .line 243
    const/4 v11, 0x2

    .line 244
    if-eq v6, v11, :cond_12

    .line 245
    .line 246
    const/4 v11, 0x4

    .line 247
    if-eq v6, v11, :cond_f

    .line 248
    .line 249
    goto/16 :goto_9

    .line 250
    .line 251
    :cond_f
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEvent:Ljava/lang/String;

    .line 252
    .line 253
    if-eqz v6, :cond_14

    .line 254
    .line 255
    const-string v11, "off"

    .line 256
    .line 257
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-nez v6, :cond_14

    .line 262
    .line 263
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEventFinishTime:Ljava/lang/String;

    .line 264
    .line 265
    if-eqz v6, :cond_14

    .line 266
    .line 267
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 268
    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const v6, 0x7f1301dc

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 285
    .line 286
    const/16 v7, 0x64

    .line 287
    .line 288
    if-eq v6, v7, :cond_11

    .line 289
    .line 290
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEventFinishTime:Ljava/lang/String;

    .line 291
    .line 292
    if-eqz v6, :cond_11

    .line 293
    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const/4 v0, 0x1

    .line 306
    new-array v3, v0, [Ljava/lang/Object;

    .line 307
    .line 308
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEventFinishTime:Ljava/lang/String;

    .line 309
    .line 310
    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 311
    .line 312
    const-string v8, "HH:mm"

    .line 313
    .line 314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-eqz v0, :cond_10

    .line 326
    .line 327
    invoke-static {v10}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 332
    .line 333
    .line 334
    move-result-wide v8

    .line 335
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v16
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    goto :goto_6

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string v7, "ParseException"

    .line 346
    .line 347
    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .line 349
    .line 350
    :cond_10
    :goto_6
    const/4 v0, 0x0

    .line 351
    aput-object v16, v3, v0

    .line 352
    .line 353
    const v7, 0x7f130920

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    goto :goto_7

    .line 368
    :cond_11
    const/4 v3, 0x0

    .line 369
    move/from16 v18, v3

    .line 370
    .line 371
    move-object v3, v0

    .line 372
    move/from16 v0, v18

    .line 373
    .line 374
    :goto_7
    iput-boolean v0, v15, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->isNeedBoltAndWarning:Z

    .line 375
    .line 376
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 377
    .line 378
    .line 379
    move-result-object v16

    .line 380
    :goto_8
    const/4 v0, 0x0

    .line 381
    goto/16 :goto_10

    .line 382
    .line 383
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    iget v6, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 389
    .line 390
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    const v7, 0x7f1301dc

    .line 399
    .line 400
    .line 401
    invoke-virtual {v10, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const v3, 0x7f130927

    .line 412
    .line 413
    .line 414
    invoke-virtual {v10, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    const/4 v3, 0x0

    .line 426
    iput-boolean v3, v15, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->isNeedBoltAndWarning:Z

    .line 427
    .line 428
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 429
    .line 430
    .line 431
    move-result-object v16

    .line 432
    move v0, v3

    .line 433
    goto/16 :goto_10

    .line 434
    .line 435
    :cond_13
    const/4 v0, 0x0

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    const v6, 0x7f130928

    .line 442
    .line 443
    .line 444
    invoke-virtual {v10, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v6, "\n"

    .line 456
    .line 457
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const v6, 0x7f130925

    .line 461
    .line 462
    .line 463
    invoke-virtual {v10, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v16

    .line 478
    goto/16 :goto_10

    .line 479
    .line 480
    :cond_14
    :goto_9
    const/4 v6, 0x0

    .line 481
    if-eqz v12, :cond_15

    .line 482
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    iget v11, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 489
    .line 490
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v11

    .line 498
    const v12, 0x7f1301dc

    .line 499
    .line 500
    .line 501
    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v11

    .line 505
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const v11, 0x7f130921

    .line 512
    .line 513
    .line 514
    invoke-static {v10, v11, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    goto/16 :goto_c

    .line 519
    .line 520
    :cond_15
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsNeededShowChargingType:Z

    .line 521
    .line 522
    if-eqz v11, :cond_18

    .line 523
    .line 524
    packed-switch v0, :pswitch_data_0

    .line 525
    .line 526
    .line 527
    goto/16 :goto_b

    .line 528
    .line 529
    :pswitch_0
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 530
    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    const v11, 0x7f130933

    .line 540
    .line 541
    .line 542
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v16

    .line 546
    goto/16 :goto_b

    .line 547
    .line 548
    :pswitch_1
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 549
    .line 550
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    const v11, 0x7f130932

    .line 559
    .line 560
    .line 561
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v16

    .line 565
    goto/16 :goto_b

    .line 566
    .line 567
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    .line 568
    .line 569
    if-eqz v0, :cond_16

    .line 570
    .line 571
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 572
    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    const v11, 0x7f130930

    .line 582
    .line 583
    .line 584
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    goto :goto_a

    .line 589
    :cond_16
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 590
    .line 591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    const v11, 0x7f13092d

    .line 600
    .line 601
    .line 602
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    goto :goto_a

    .line 607
    :pswitch_3
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 608
    .line 609
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const v11, 0x7f130929

    .line 618
    .line 619
    .line 620
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v16

    .line 624
    goto :goto_b

    .line 625
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    .line 626
    .line 627
    if-eqz v0, :cond_17

    .line 628
    .line 629
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 630
    .line 631
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    const v11, 0x7f13092c

    .line 640
    .line 641
    .line 642
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    goto :goto_a

    .line 647
    :cond_17
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 648
    .line 649
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    const v11, 0x7f13092b

    .line 658
    .line 659
    .line 660
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    :goto_a
    move-object/from16 v16, v0

    .line 665
    .line 666
    goto :goto_b

    .line 667
    :pswitch_5
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 668
    .line 669
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const v11, 0x7f13091f

    .line 678
    .line 679
    .line 680
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v16

    .line 684
    :goto_b
    move-object/from16 v0, v16

    .line 685
    .line 686
    goto :goto_c

    .line 687
    :cond_18
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 688
    .line 689
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    const v11, 0x7f1301dc

    .line 698
    .line 699
    .line 700
    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    :goto_c
    sget-boolean v11, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    .line 705
    .line 706
    if-eqz v11, :cond_1f

    .line 707
    .line 708
    const-wide/16 v11, 0x0

    .line 709
    .line 710
    cmp-long v11, v8, v11

    .line 711
    .line 712
    if-lez v11, :cond_1e

    .line 713
    .line 714
    if-nez v7, :cond_1e

    .line 715
    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-wide/16 v11, 0x3e8

    .line 728
    .line 729
    div-long/2addr v8, v11

    .line 730
    const-wide/16 v11, 0xe10

    .line 731
    .line 732
    cmp-long v0, v8, v11

    .line 733
    .line 734
    if-ltz v0, :cond_19

    .line 735
    .line 736
    div-long v13, v8, v11

    .line 737
    .line 738
    long-to-int v0, v13

    .line 739
    int-to-long v13, v0

    .line 740
    mul-long/2addr v13, v11

    .line 741
    sub-long/2addr v8, v13

    .line 742
    goto :goto_d

    .line 743
    :cond_19
    move v0, v6

    .line 744
    :goto_d
    const-wide/16 v11, 0x3c

    .line 745
    .line 746
    cmp-long v3, v8, v11

    .line 747
    .line 748
    if-ltz v3, :cond_1a

    .line 749
    .line 750
    div-long v13, v8, v11

    .line 751
    .line 752
    long-to-int v3, v13

    .line 753
    int-to-long v13, v3

    .line 754
    mul-long/2addr v13, v11

    .line 755
    sub-long/2addr v8, v13

    .line 756
    goto :goto_e

    .line 757
    :cond_1a
    move v3, v6

    .line 758
    :goto_e
    long-to-int v8, v8

    .line 759
    if-nez v0, :cond_1b

    .line 760
    .line 761
    const/4 v9, 0x2

    .line 762
    if-lt v3, v9, :cond_1b

    .line 763
    .line 764
    const/16 v9, 0x1e

    .line 765
    .line 766
    if-lt v8, v9, :cond_1b

    .line 767
    .line 768
    add-int/lit8 v3, v3, 0x1

    .line 769
    .line 770
    int-to-long v8, v3

    .line 771
    cmp-long v8, v8, v11

    .line 772
    .line 773
    if-nez v8, :cond_1b

    .line 774
    .line 775
    const/4 v0, 0x1

    .line 776
    move v3, v6

    .line 777
    :cond_1b
    if-lez v0, :cond_1c

    .line 778
    .line 779
    if-lez v3, :cond_1c

    .line 780
    .line 781
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    const v3, 0x7f130936

    .line 794
    .line 795
    .line 796
    invoke-virtual {v10, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    goto :goto_f

    .line 801
    :cond_1c
    if-lez v0, :cond_1d

    .line 802
    .line 803
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    const v3, 0x7f130935

    .line 812
    .line 813
    .line 814
    invoke-virtual {v10, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    goto :goto_f

    .line 819
    :cond_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    const v3, 0x7f130937

    .line 828
    .line 829
    .line 830
    invoke-virtual {v10, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    :goto_f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    goto :goto_11

    .line 842
    :cond_1e
    const/16 v3, 0x10

    .line 843
    .line 844
    if-ne v7, v3, :cond_1f

    .line 845
    .line 846
    iget v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 847
    .line 848
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    const v3, 0x7f130355

    .line 857
    .line 858
    .line 859
    invoke-virtual {v10, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v16

    .line 863
    move v0, v6

    .line 864
    :goto_10
    const/4 v3, 0x1

    .line 865
    move v6, v0

    .line 866
    goto :goto_13

    .line 867
    :cond_1f
    :goto_11
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsNeededShowChargingType:Z

    .line 868
    .line 869
    if-nez v3, :cond_21

    .line 870
    .line 871
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 872
    .line 873
    .line 874
    move-result v3

    .line 875
    if-eqz v3, :cond_20

    .line 876
    .line 877
    goto :goto_12

    .line 878
    :cond_20
    const/4 v3, 0x1

    .line 879
    iput-boolean v3, v15, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->isNeedBoltAndWarning:Z

    .line 880
    .line 881
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->AddBatteryIcon(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    goto :goto_14

    .line 886
    :cond_21
    :goto_12
    const/4 v3, 0x1

    .line 887
    move-object/from16 v16, v0

    .line 888
    .line 889
    :goto_13
    move-object/from16 v0, v16

    .line 890
    .line 891
    :goto_14
    sget-object v7, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 892
    .line 893
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 894
    .line 895
    if-nez v5, :cond_22

    .line 896
    .line 897
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    .line 898
    .line 899
    if-eqz v5, :cond_22

    .line 900
    .line 901
    move v5, v3

    .line 902
    goto :goto_15

    .line 903
    :cond_22
    move v5, v6

    .line 904
    :goto_15
    invoke-virtual {v1, v7, v0, v8, v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 905
    .line 906
    .line 907
    sget-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 908
    .line 909
    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 910
    .line 911
    .line 912
    goto :goto_18

    .line 913
    :cond_23
    move-object/from16 v17, v3

    .line 914
    .line 915
    const/4 v3, 0x1

    .line 916
    const/4 v7, 0x0

    .line 917
    if-eqz v6, :cond_25

    .line 918
    .line 919
    if-eqz v0, :cond_25

    .line 920
    .line 921
    const v0, 0x7f13092a

    .line 922
    .line 923
    .line 924
    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    sget-object v6, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 929
    .line 930
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 931
    .line 932
    if-nez v5, :cond_24

    .line 933
    .line 934
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    .line 935
    .line 936
    if-eqz v5, :cond_24

    .line 937
    .line 938
    move v5, v3

    .line 939
    goto :goto_16

    .line 940
    :cond_24
    move v5, v7

    .line 941
    :goto_16
    invoke-virtual {v1, v6, v0, v8, v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 942
    .line 943
    .line 944
    sget-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 945
    .line 946
    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 947
    .line 948
    .line 949
    goto :goto_17

    .line 950
    :cond_25
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 951
    .line 952
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 953
    .line 954
    .line 955
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 956
    .line 957
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 958
    .line 959
    .line 960
    :goto_17
    move v6, v7

    .line 961
    :goto_18
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 962
    .line 963
    .line 964
    move-result v0

    .line 965
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 966
    .line 967
    .line 968
    move-result v0

    .line 969
    if-eqz v0, :cond_26

    .line 970
    .line 971
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 972
    .line 973
    const v5, 0x7f13080c

    .line 974
    .line 975
    .line 976
    invoke-virtual {v10, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    invoke-virtual {v1, v0, v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 981
    .line 982
    .line 983
    goto :goto_19

    .line 984
    :cond_26
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 985
    .line 986
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 987
    .line 988
    .line 989
    :goto_19
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 990
    .line 991
    if-eqz v0, :cond_29

    .line 992
    .line 993
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 994
    .line 995
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 996
    .line 997
    if-eqz v0, :cond_28

    .line 998
    .line 999
    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 1000
    .line 1001
    and-int/lit8 v0, v0, 0x20

    .line 1002
    .line 1003
    if-eqz v0, :cond_27

    .line 1004
    .line 1005
    move v0, v6

    .line 1006
    goto :goto_1a

    .line 1007
    :cond_27
    move v0, v3

    .line 1008
    :goto_1a
    if-eqz v0, :cond_28

    .line 1009
    .line 1010
    goto :goto_1b

    .line 1011
    :cond_28
    move v3, v6

    .line 1012
    :goto_1b
    if-nez v3, :cond_29

    .line 1013
    .line 1014
    goto :goto_1c

    .line 1015
    :cond_29
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 1016
    .line 1017
    if-eqz v0, :cond_2c

    .line 1018
    .line 1019
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDeviceOwnerInfoEnabled()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v0

    .line 1023
    if-eqz v0, :cond_2a

    .line 1024
    .line 1025
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    if-eqz v0, :cond_2a

    .line 1030
    .line 1031
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 1032
    .line 1033
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v0

    .line 1045
    if-nez v0, :cond_2c

    .line 1046
    .line 1047
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 1048
    .line 1049
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_1c

    .line 1057
    :cond_2a
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isOwnerInfoEnabled()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v0

    .line 1061
    if-eqz v0, :cond_2b

    .line 1062
    .line 1063
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getOwnerInfo()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    if-eqz v0, :cond_2b

    .line 1068
    .line 1069
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 1070
    .line 1071
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getOwnerInfo()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v3

    .line 1079
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v0

    .line 1083
    if-nez v0, :cond_2c

    .line 1084
    .line 1085
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 1086
    .line 1087
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getOwnerInfo()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 1092
    .line 1093
    .line 1094
    goto :goto_1c

    .line 1095
    :cond_2b
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 1096
    .line 1097
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 1098
    .line 1099
    .line 1100
    :cond_2c
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    const-string v1, "addBatteryAndOwnerInfoIndication() battery status = "

    .line 1103
    .line 1104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    move-object/from16 v1, v17

    .line 1108
    .line 1109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .line 1118
    .line 1119
    return-void

    .line 1120
    nop

    .line 1121
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addLifeStyleIndication()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUsimTextArea:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUsimTextView:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUsimTextView:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v3}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x1

    .line 64
    if-ne v3, v4, :cond_1

    .line 65
    .line 66
    move v3, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v3, v2

    .line 69
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleEnable:Z

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 77
    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleEnable:Z

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 122
    .line 123
    if-nez v1, :cond_2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :goto_1
    if-eqz v2, :cond_6

    .line 131
    .line 132
    const-string v1, "UpdatelifestyleScale"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_3

    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 141
    .line 142
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 146
    .line 147
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    const-string v1, "UpdatelifestyleColor"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 164
    .line 165
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 169
    .line 170
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_5

    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->clearMessages()V

    .line 194
    .line 195
    .line 196
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 202
    .line 203
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    :goto_2
    return-void
.end method

.method public final changeIndication(Ljava/lang/CharSequence;ZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 5
    .line 6
    if-eqz v2, :cond_b

    .line 7
    .line 8
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    new-instance v12, Landroid/text/StaticLayout;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 41
    .line 42
    const/high16 v8, 0x3f800000    # 1.0f

    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v3, v12

    .line 47
    move-object v5, v2

    .line 48
    move v6, v11

    .line 49
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x1

    .line 66
    if-eq v4, v5, :cond_2

    .line 67
    .line 68
    if-ne v3, v13, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v14, v12

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    move v14, v13

    .line 74
    :goto_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 89
    .line 90
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 94
    .line 95
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    .line 97
    .line 98
    :cond_4
    if-eqz p2, :cond_5

    .line 99
    .line 100
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 101
    .line 102
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const v5, 0x7f0b0115

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const v6, 0x7f0b0117

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const v6, 0x7f0b0116

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 146
    .line 147
    .line 148
    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    .line 149
    .line 150
    invoke-static {v1, v13, v6}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    int-to-float v4, v4

    .line 158
    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    .line 163
    .line 164
    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    int-to-long v5, v5

    .line 172
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;

    .line 177
    .line 178
    invoke-direct {v5, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 182
    .line 183
    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 187
    .line 188
    const/4 v3, 0x0

    .line 189
    move-object/from16 v4, p1

    .line 190
    .line 191
    invoke-virtual {v1, v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 195
    .line 196
    iget-object v3, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 197
    .line 198
    if-nez v3, :cond_6

    .line 199
    .line 200
    move v3, v12

    .line 201
    goto :goto_3

    .line 202
    :cond_6
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    :goto_3
    if-eqz v3, :cond_8

    .line 207
    .line 208
    const-string v3, "UpdatehelptextScale"

    .line 209
    .line 210
    invoke-virtual {v1, v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    if-eqz v3, :cond_7

    .line 215
    .line 216
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 217
    .line 218
    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    const-string v3, "UpdatehelptextColor"

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eqz v1, :cond_8

    .line 228
    .line 229
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 230
    .line 231
    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_8
    new-instance v1, Landroid/text/StaticLayout;

    .line 235
    .line 236
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 237
    .line 238
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 243
    .line 244
    const/high16 v8, 0x3f800000    # 1.0f

    .line 245
    .line 246
    const/4 v9, 0x0

    .line 247
    const/4 v10, 0x0

    .line 248
    move-object v3, v1

    .line 249
    move-object v5, v2

    .line 250
    move v6, v11

    .line 251
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 259
    .line 260
    invoke-virtual {v2}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 265
    .line 266
    if-eq v2, v3, :cond_9

    .line 267
    .line 268
    if-ne v1, v13, :cond_a

    .line 269
    .line 270
    :cond_9
    move v12, v13

    .line 271
    :cond_a
    if-eq v14, v12, :cond_b

    .line 272
    .line 273
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    .line 284
    .line 285
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 286
    .line 287
    check-cast v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    .line 288
    .line 289
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateIndicationPosition()V

    .line 290
    .line 291
    .line 292
    :cond_b
    :goto_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getUnlockGuideText()Ljava/lang/CharSequence;
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 24
    .line 25
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 32
    .line 33
    and-int/lit16 v0, v0, 0x100

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v1

    .line 40
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move v0, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_1
    xor-int/2addr v0, v1

    .line 46
    :goto_2
    const-string v4, ""

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    return-object v4

    .line 51
    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_4

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    move v7, v1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    move v7, v2

    .line 86
    :goto_3
    if-eqz v6, :cond_5

    .line 87
    .line 88
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCameraDisabledByPolicy()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_5

    .line 99
    .line 100
    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_5

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    move v1, v2

    .line 114
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 115
    .line 116
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsFpGuidePos:Z

    .line 121
    .line 122
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    if-nez v7, :cond_9

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-virtual {v3, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_7

    .line 138
    .line 139
    const p0, 0x7f13080c

    .line 140
    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_7
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-eqz p0, :cond_8

    .line 148
    .line 149
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_8

    .line 154
    .line 155
    const p0, 0x7f13098b

    .line 156
    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_8
    const p0, 0x7f130989

    .line 160
    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    .line 164
    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_a
    if-eqz v7, :cond_c

    .line 169
    .line 170
    if-eqz v5, :cond_b

    .line 171
    .line 172
    const v8, 0x7f130852

    .line 173
    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_b
    move v8, v2

    .line 177
    :goto_6
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsFpGuidePos:Z

    .line 178
    .line 179
    move p0, v8

    .line 180
    goto :goto_8

    .line 181
    :cond_c
    :goto_7
    move p0, v2

    .line 182
    :goto_8
    if-eqz p0, :cond_d

    .line 183
    .line 184
    invoke-virtual {v6, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :cond_d
    :goto_9
    if-eqz v5, :cond_14

    .line 190
    .line 191
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUnlockCompleted()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_f

    .line 196
    .line 197
    if-nez v7, :cond_e

    .line 198
    .line 199
    if-eqz v1, :cond_f

    .line 200
    .line 201
    :cond_e
    const p0, 0x7f1309f4

    .line 202
    .line 203
    .line 204
    goto :goto_c

    .line 205
    :cond_f
    if-nez v0, :cond_11

    .line 206
    .line 207
    if-nez v7, :cond_11

    .line 208
    .line 209
    if-eqz v1, :cond_10

    .line 210
    .line 211
    goto :goto_a

    .line 212
    :cond_10
    const v2, 0x7f1309f3

    .line 213
    .line 214
    .line 215
    :cond_11
    :goto_a
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-nez p0, :cond_13

    .line 220
    .line 221
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-nez p0, :cond_12

    .line 226
    .line 227
    goto :goto_b

    .line 228
    :cond_12
    move p0, v2

    .line 229
    goto :goto_c

    .line 230
    :cond_13
    :goto_b
    const p0, 0x7f1309f2

    .line 231
    .line 232
    .line 233
    :cond_14
    :goto_c
    if-eqz p0, :cond_15

    .line 234
    .line 235
    invoke-virtual {v6, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :cond_15
    return-object v4
.end method

.method public final hideTransientIndication()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final hideTransientIndicationDelayed(J)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 2
    .line 3
    sget v1, Lio/reactivex/internal/functions/ObjectHelper;->$r8$clinit:I

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableJust;

    .line 8
    .line 9
    invoke-direct {v3, v0}, Lio/reactivex/internal/operators/observable/ObservableJust;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    sget-object v7, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    if-eqz v6, :cond_5

    .line 18
    .line 19
    if-eqz v7, :cond_4

    .line 20
    .line 21
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay;

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    move-wide v4, p1

    .line 25
    invoke-direct/range {v2 .. v8}, Lio/reactivex/internal/operators/observable/ObservableDelay;-><init>(Lio/reactivex/ObservableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget p2, Lio/reactivex/Flowable;->BUFFER_SIZE:I

    .line 33
    .line 34
    if-lez p2, :cond_3

    .line 35
    .line 36
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, v0, p1, v2, p2}, Lio/reactivex/internal/operators/observable/ObservableObserveOn;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;ZI)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {p1, p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;I)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;

    .line 48
    .line 49
    sget-object p2, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/internal/functions/Functions$EmptyAction;

    .line 50
    .line 51
    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex/internal/functions/Functions$EmptyConsumer;

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    new-instance v2, Lio/reactivex/internal/observers/LambdaObserver;

    .line 60
    .line 61
    invoke-direct {v2, p1, p0, p2, v0}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 69
    .line 70
    const-string p1, "onSubscribe is null"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 77
    .line 78
    const-string p1, "onComplete is null"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 85
    .line 86
    const-string p1, "onError is null"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string p1, "bufferSize > 0 required but it was "

    .line 95
    .line 96
    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 105
    .line 106
    const-string/jumbo p1, "scheduler is null"

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 114
    .line 115
    const-string/jumbo p1, "unit is null"

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 123
    .line 124
    const-string p1, "item is null"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public final isInLifeStyleArea(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    float-to-int p0, p0

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    float-to-int p1, p1

    .line 33
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    :goto_0
    return v1
.end method

.method public final onConfigChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v2, 0x7f07043e

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0x7f07043f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const v3, 0x7f070442

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const v3, 0x7f070440

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 82
    .line 83
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const v3, 0x7f070441

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v2, 0x1

    .line 114
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    .line 119
    .line 120
    .line 121
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    .line 123
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-wide/16 v3, 0x64

    .line 128
    .line 129
    invoke-static {v3, v4, v1, v2}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/4 v3, 0x2

    .line 136
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 143
    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 147
    .line 148
    if-nez v2, :cond_2

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    :goto_0
    if-eqz v0, :cond_5

    .line 156
    .line 157
    const-string v0, "UpdatelifestyleScale"

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_3

    .line 164
    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 166
    .line 167
    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 171
    .line 172
    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    const-string v0, "UpdatelifestyleColor"

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 184
    .line 185
    if-eqz v1, :cond_4

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 192
    .line 193
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 197
    .line 198
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    return-void
.end method

.method public final onIndicationChanged(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 5

    .line 1
    const-string v0, "KeyguardSecIndicationController"

    .line 2
    .line 3
    if-eqz p1, :cond_f

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    if-nez v1, :cond_2

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v1, v3

    .line 35
    :goto_1
    if-nez v1, :cond_4

    .line 36
    .line 37
    const-string p0, "onIndicationChanged() return - keyguard is not visible, pos = %7s, item = %s"

    .line 38
    .line 39
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "OWNER_INFO"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const-string p0, "onIndicationChanged() return - keyguard is not visible, skip ownerInfo"

    .line 56
    .line 57
    :cond_3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    const-string p1, "onIndicationChanged() returned - unlocking"

    .line 71
    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const-string p1, ""

    .line 76
    .line 77
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeIndication(Ljava/lang/CharSequence;ZZ)V

    .line 78
    .line 79
    .line 80
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 81
    .line 82
    if-nez p2, :cond_5

    .line 83
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 92
    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_2
    return-void

    .line 99
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 100
    .line 101
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    const-string p0, "onIndicationChanged() returned - EditMode VIrunning"

    .line 110
    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_8
    iget v0, p2, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    .line 116
    .line 117
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/IndicationEventType;->getPriority()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-lt v0, v1, :cond_9

    .line 124
    .line 125
    iget-object v0, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    .line 126
    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_9

    .line 132
    .line 133
    move v0, v3

    .line 134
    goto :goto_3

    .line 135
    :cond_9
    move v0, v2

    .line 136
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 137
    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 141
    .line 142
    .line 143
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$11;->$SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    aget p1, v0, p1

    .line 150
    .line 151
    const/4 v0, 0x2

    .line 152
    if-eq p1, v0, :cond_c

    .line 153
    .line 154
    iget-object p1, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    .line 155
    .line 156
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    .line 157
    .line 158
    iget-object p2, p2, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 159
    .line 160
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 161
    .line 162
    if-ne p2, v1, :cond_b

    .line 163
    .line 164
    move v2, v3

    .line 165
    :cond_b
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeIndication(Ljava/lang/CharSequence;ZZ)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_c
    iget-object p1, p2, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    .line 170
    .line 171
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 172
    .line 173
    if-nez p2, :cond_d

    .line 174
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-nez p2, :cond_d

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 183
    .line 184
    if-eqz p0, :cond_e

    .line 185
    .line 186
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 187
    .line 188
    .line 189
    :cond_e
    :goto_4
    return-void

    .line 190
    :cond_f
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v1, "onIndicationChanged() return - pos or item is null, pos = "

    .line 193
    .line 194
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p1, ", item = "

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onViewModeChanged mode: "

    .line 2
    .line 3
    .line 4
    const-string v1, "KeyguardSecIndicationController"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 22
    .line 23
    if-eq v1, p1, :cond_2

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v0, 0x8

    .line 40
    .line 41
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 49
    .line 50
    const-string p1, ""

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setDozing(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setIndicationArea(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationArea:Landroid/view/View;

    .line 5
    .line 6
    const v0, 0x7f0a05c3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const v0, 0x7f0a0532

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 27
    .line 28
    const v0, 0x7f0a0c9e

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUsimTextArea:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    const v0, 0x7f0a0560

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUsimTextView:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-string v0, "bottom"

    .line 55
    .line 56
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    const v0, 0x7f080edc

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const v0, 0x7f080edb

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const v0, 0x7f0a055c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 94
    .line 95
    return-void
.end method

.method public final setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setVisible(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v0, 0x1

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockDataImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isAvailable()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x5

    .line 22
    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->getVisibility(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    move p1, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addInitialIndication()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addLifeStyleIndication()V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-wide/16 v2, 0x64

    .line 53
    .line 54
    invoke-static {v2, v3, p1, v1}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 68
    .line 69
    const-string v0, ""

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    const/16 p1, 0x8

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_1
    return-void
.end method

.method public final showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const v0, 0x7f0101b8

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final showTransientIndication(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateDynamicLockData(Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final updateLifeStyleInfo(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "mode_is_running"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleEnable:Z

    .line 9
    .line 10
    const-string v0, "mode_display_name"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleName:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "mode_icon_byte_array"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 27
    .line 28
    array-length v2, p1

    .line 29
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleIcon:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addLifeStyleIndication()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const-string p1, "bottom"

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const p1, 0x7f080edc

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p1, 0x7f080edb

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
