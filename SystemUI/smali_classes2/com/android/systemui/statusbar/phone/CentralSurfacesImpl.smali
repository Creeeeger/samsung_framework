.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/phone/CentralSurfaces;
.implements Lcom/android/systemui/statusbar/phone/SecBrightnessMirrorControllerProvider;


# static fields
.field public static final IGNORED_EXT_KEYCODE:[Ljava/lang/Integer;

.field public static final sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

.field public final mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field public final mActivityLaunchAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;

.field public final mActivityLaunchAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public mAmbientIndicationContainer:Landroid/view/View;

.field public mAppearance:I

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public final mBannerActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

.field public mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public final mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

.field public mBouncerContainer:Landroid/widget/FrameLayout;

.field public mBouncerShowing:Z

.field public mBouncerShowingOverDream:Z

.field public mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field public final mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mCameraLauncherLazy:Ldagger/Lazy;

.field public mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

.field public final mCentralSurfacesComponentFactory:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Factory;

.field public final mCheckBarModes:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

.field public mCloseQsBeforeScreenOff:Z

.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentDisplaySize:Landroid/graphics/Point;

.field public final mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$26;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mDemoReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

.field public mDeviceInteractive:Z

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mDisabled1:I

.field public mDisabled2:I

.field public mDisplay:Landroid/view/Display;

.field public mDisplayId:I

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mDozing:Z

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

.field public final mFalsingBeliefListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFingerprintManager:Ljavax/inject/Provider;

.field public final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field public final mInitController:Lcom/android/systemui/InitController;

.field public mInteractingWindows:I

.field public mIsBackCallbackRegistered:Z

.field public mIsDlsOverlay:Z

.field public mIsFolded:Z

.field public mIsKeyDownInDozing:Ljava/lang/Boolean;

.field public mIsLaunchingActivityOverLockscreen:Z

.field public final mIsShortcutListSearchEnabled:Z

.field public final mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public mKeyUpCountInDozing:I

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public mLastCameraLaunchSource:I

.field public mLastLoggedStateFingerprint:I

.field public mLaunchCameraOnFinishedGoingToSleep:Z

.field public mLaunchCameraWhenFinishedWaking:Z

.field public mLaunchEmergencyActionOnFinishedGoingToSleep:Z

.field public mLaunchEmergencyActionWhenFinishedWaking:Z

.field public final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field public final mLockScreenWallpaperChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field public final mLockscreenWallpaperLazy:Ldagger/Lazy;

.field public final mLogBuilder:Ljava/lang/StringBuilder;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNavBarHelperLazy:Ldagger/Lazy;

.field public mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public mNoAnimationOnNextBarModeChange:Z

.field public final mNoteTaskControllerLazy:Ldagger/Lazy;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final mNotifRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field public mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field public mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field public mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

.field public mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field public final mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field public final mOnBackAnimationCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;

.field public final mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

.field public final mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

.field public mPanelExpanded:Z

.field public final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public mPhoneStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

.field public final mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field mQsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final mQueueLock:Ljava/lang/Object;

.field public mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final mRemoteInputActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$27;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public mReportRejectedTouch:Landroid/view/View;

.field public final mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

.field public final mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

.field public final mSetWallpaperSupportsAmbientMode:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

.field public mShouldDelayLockscreenTransitionFromAod:Z

.field public mShouldDelayWakeUpAnimation:Z

.field public mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mStartingSurfaceOptional:Ljava/util/Optional;

.field public mState:I

.field public final mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public final mStatusBarInitializer:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mStatusBarMode:I

.field public final mStatusBarSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mStatusBarStateLog:Landroid/metrics/LogMaker;

.field public final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field public mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public mStatusBarWindowState:I

.field public mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public final mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

.field public final mToolTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

.field public mTransientShown:Z

.field public mTransitionToFullShadeProgress:F

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public mUiModeManager:Landroid/app/UiModeManager;

.field public final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field protected mUserSetup:Z

.field public final mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mVisible:Z

.field public mVisibleToUser:Z

.field public final mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field public mWakeUpComingFromTouch:Z

.field public final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field public final mWallpaperChangedReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

.field public final mWallpaperController:Lcom/android/systemui/util/WallpaperController;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWallpaperSupported:Z


# direct methods
.method public static -$$Nest$mmaybeEscalateHeadsUp(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static -$$Nest$mupdateRevealEffect(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-class v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-class v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 43
    .line 44
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object v4, v0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    .line 57
    .line 58
    instance-of v4, v4, Lcom/android/systemui/statusbar/CircleReveal;

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    iget v4, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 63
    .line 64
    if-ne v4, v2, :cond_2

    .line 65
    .line 66
    move v4, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v4, v3

    .line 69
    :goto_0
    if-nez p1, :cond_3

    .line 70
    .line 71
    iget v5, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 72
    .line 73
    const/4 v6, 0x4

    .line 74
    if-ne v5, v6, :cond_3

    .line 75
    .line 76
    move v5, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v5, v3

    .line 79
    :goto_1
    sget-boolean v6, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 80
    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    iget v7, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 86
    .line 87
    const/16 v8, 0x71

    .line 88
    .line 89
    if-ne v7, v8, :cond_4

    .line 90
    .line 91
    move v7, v2

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    move v7, v3

    .line 94
    :goto_2
    if-nez p1, :cond_5

    .line 95
    .line 96
    iget v1, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 97
    .line 98
    const/16 v8, 0x17

    .line 99
    .line 100
    if-ne v1, v8, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    move v2, v3

    .line 104
    :goto_3
    const-string/jumbo v1, "updateRevealEffect: wakingUp="

    .line 105
    .line 106
    .line 107
    const-string v3, " wakingUpFromPowerButton="

    .line 108
    .line 109
    const-string v8, " sleepingFromPowerButton="

    .line 110
    .line 111
    invoke-static {v1, p1, v3, v4, v8}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v3, " wakingUpFromDoubleTap="

    .line 116
    .line 117
    const-string v8, " sleepingFromDoubleTap="

    .line 118
    .line 119
    invoke-static {v1, v5, v3, v7, v8}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, " isAODAmbientWallpaperMode="

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODAmbientWallpaperMode()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v3, "CentralSurfaces"

    .line 144
    .line 145
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move v3, v7

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    move v2, v3

    .line 151
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 152
    .line 153
    const/high16 v7, 0x3f800000    # 1.0f

    .line 154
    .line 155
    if-nez v4, :cond_e

    .line 156
    .line 157
    if-eqz v5, :cond_7

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_7
    if-eqz v6, :cond_c

    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 163
    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    if-nez v3, :cond_9

    .line 170
    .line 171
    if-eqz v2, :cond_8

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    iget-object v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    .line 175
    .line 176
    if-eqz v2, :cond_b

    .line 177
    .line 178
    iget p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    .line 179
    .line 180
    iput p1, v2, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_9
    :goto_5
    if-eqz v2, :cond_b

    .line 184
    .line 185
    iget-object v2, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 186
    .line 187
    iget-object v2, v2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapDownEvent:Landroid/view/MotionEvent;

    .line 188
    .line 189
    if-nez v2, :cond_a

    .line 190
    .line 191
    iget-object v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    .line 192
    .line 193
    if-eqz v2, :cond_b

    .line 194
    .line 195
    iget v3, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    .line 196
    .line 197
    iput v3, v2, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    .line 198
    .line 199
    iget p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    .line 200
    .line 201
    iput p1, v2, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_a
    iget-object p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    .line 205
    .line 206
    if-eqz p1, :cond_b

    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    float-to-int v3, v3

    .line 213
    int-to-float v3, v3

    .line 214
    iput v3, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    float-to-int v2, v2

    .line 221
    int-to-float v2, v2

    .line 222
    iput v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    .line 223
    .line 224
    :cond_b
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 225
    .line 226
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    .line 227
    .line 228
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    .line 229
    .line 230
    .line 231
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 232
    .line 233
    iget p0, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 234
    .line 235
    sub-float/2addr v7, p0

    .line 236
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    .line 237
    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_c
    if-eqz p1, :cond_d

    .line 241
    .line 242
    iget-object p0, v0, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    .line 243
    .line 244
    instance-of p0, p0, Lcom/android/systemui/statusbar/CircleReveal;

    .line 245
    .line 246
    if-nez p0, :cond_f

    .line 247
    .line 248
    :cond_d
    sget-object p0, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    .line 249
    .line 250
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    .line 251
    .line 252
    .line 253
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 254
    .line 255
    iget p0, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 256
    .line 257
    sub-float/2addr v7, p0

    .line 258
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    .line 259
    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_e
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    .line 263
    .line 264
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    .line 265
    .line 266
    .line 267
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 268
    .line 269
    iget p0, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 270
    .line 271
    sub-float/2addr v7, p0

    .line 272
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    .line 273
    .line 274
    .line 275
    :cond_f
    :goto_8
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    .line 8
    const/16 v0, 0x1a

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v0, 0x1b

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v0, 0x7e

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/16 v0, 0x55

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    move-object v4, v5

    .line 33
    const/16 v0, 0x5b

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const/16 v0, 0x4f

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/16 v0, 0x56

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const/16 v0, 0x57

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const/16 v0, 0x58

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    const/16 v0, 0x59

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const/16 v0, 0x82

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    const/16 v0, 0x5a

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    const/16 v0, 0xde

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    const/16 v0, 0x18

    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    const/16 v0, 0x19

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    const/16 v0, 0xa4

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v17

    .line 105
    filled-new-array/range {v1 .. v17}, [Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->IGNORED_EXT_KEYCODE:[Ljava/lang/Integer;

    .line 110
    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Lcom/android/systemui/mdm/MdmOverlayContainer;Landroid/os/Handler;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/bixby2/SystemUICommandActionHandler;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/core/StatusBarInitializer;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/biometrics/AuthRippleController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/popup/SamsungScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Factory;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/demomode/DemoModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouter;Landroid/app/WallpaperManager;Ljava/util/Optional;Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/charging/WiredChargingRippleController;Landroid/service/dreams/IDreamManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/settings/UserTracker;Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Ldagger/Lazy;Lcom/android/systemui/blur/SecQpBlurController;Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/SecPanelLogger;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            "Lcom/android/systemui/mdm/MdmOverlayContainer;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/bixby2/SystemUICommandActionHandler;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/systemui/statusbar/core/StatusBarInitializer;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/shade/ShadeLogger;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/biometrics/AuthRippleController;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            "Lcom/android/systemui/popup/SamsungScreenPinningRequest;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/volume/VolumeComponent;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Factory;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/InitController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Lcom/android/systemui/demomode/DemoModeController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/util/WallpaperController;",
            "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/MessageRouter;",
            "Landroid/app/WallpaperManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;",
            ">;",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Lcom/android/systemui/charging/WiredChargingRippleController;",
            "Landroid/service/dreams/IDreamManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/LightRevealScrim;",
            "Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/blur/SecQpBlurController;",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/log/SecPanelLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p32

    move-object/from16 v3, p89

    move-object/from16 v4, p90

    move-object/from16 v5, p93

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    .line 2
    iput v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    .line 3
    new-instance v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    .line 4
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    const/4 v6, 0x0

    .line 5
    iput v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    .line 6
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShouldDelayWakeUpAnimation:Z

    .line 7
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShouldDelayLockscreenTransitionFromAod:Z

    .line 8
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQueueLock:Ljava/lang/Object;

    .line 9
    iput v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled1:I

    .line 10
    iput v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled2:I

    .line 11
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsBackCallbackRegistered:Z

    .line 12
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetup:Z

    .line 13
    new-instance v7, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v7, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 14
    new-instance v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v7, 0x0

    .line 15
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 16
    iput v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 17
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    .line 18
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnBackAnimationCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 20
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCheckBarModes:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    .line 21
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

    .line 22
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    .line 23
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 24
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

    .line 25
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBannerActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

    .line 26
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 27
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingBeliefListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    .line 28
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    .line 29
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

    .line 30
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSetWallpaperSupportsAmbientMode:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    .line 31
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperChangedReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    .line 32
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockScreenWallpaperChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;

    .line 33
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    .line 34
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

    .line 35
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

    .line 36
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityLaunchAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;

    .line 37
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityLaunchAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;

    .line 38
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$26;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$26;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$26;

    .line 39
    new-instance v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$27;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$27;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$27;

    move-object v8, p1

    .line 40
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    move-object v8, p2

    .line 41
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    move-object v8, p3

    .line 42
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainHandler:Landroid/os/Handler;

    move-object v8, p4

    .line 43
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 44
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    move-object/from16 v8, p11

    .line 45
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-object/from16 v8, p12

    .line 46
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    move-object/from16 v8, p13

    .line 47
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v8, p14

    .line 48
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-object/from16 v8, p15

    .line 49
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarInitializer:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    move-object/from16 v8, p16

    .line 50
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    move-object/from16 v8, p18

    .line 51
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v8, p20

    .line 52
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v8, p21

    .line 53
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v8, p22

    .line 54
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v8, p23

    .line 55
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v8, p24

    .line 56
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object/from16 v8, p79

    .line 57
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v8, p82

    .line 58
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v8, p27

    .line 59
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v8, p26

    .line 60
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v8, p28

    .line 61
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v8, p29

    .line 62
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v8, p30

    .line 63
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 64
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v8, p33

    .line 65
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v8, p34

    .line 66
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v8, p35

    .line 67
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v8, p36

    .line 68
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 v8, p37

    .line 69
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v8, p38

    .line 70
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object/from16 v8, p39

    .line 71
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v8, p40

    .line 72
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v8, p41

    .line 73
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v8, p42

    .line 74
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v8, p43

    .line 75
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object/from16 v8, p44

    .line 76
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v8, p45

    .line 77
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v8, p46

    .line 78
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v8, p47

    .line 79
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    move-object/from16 v8, p48

    .line 80
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoteTaskControllerLazy:Ldagger/Lazy;

    move-object/from16 v8, p49

    .line 81
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v8, p50

    .line 82
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    move-object/from16 v8, p51

    .line 83
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    move-object/from16 v8, p52

    .line 84
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v8, p53

    .line 85
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v8, p54

    .line 86
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v8, p60

    .line 87
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v8, p61

    .line 88
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v8, p55

    .line 89
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v8, p56

    .line 90
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v8, p57

    .line 91
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenWallpaperLazy:Ldagger/Lazy;

    move-object/from16 v8, p62

    .line 92
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    move-object/from16 v8, p63

    .line 93
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    move-object/from16 v8, p64

    .line 94
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v8, p58

    .line 95
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 v8, p81

    .line 96
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    move-object/from16 v8, p65

    .line 97
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v8, p66

    .line 98
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v8, p67

    .line 99
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponentFactory:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Factory;

    move-object/from16 v8, p68

    .line 100
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object/from16 v8, p69

    .line 101
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v8, p70

    .line 102
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v8, p71

    .line 103
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object/from16 v8, p72

    .line 104
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInitController:Lcom/android/systemui/InitController;

    move-object/from16 v8, p74

    .line 105
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    move-object/from16 v8, p75

    .line 106
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    move-object/from16 v8, p76

    .line 107
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    move-object/from16 v8, p77

    .line 108
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    move-object/from16 v8, p78

    .line 109
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 v8, p80

    .line 110
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    move-object/from16 v8, p83

    .line 111
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v8, p84

    .line 112
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    move-object/from16 v8, p86

    .line 113
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperController:Lcom/android/systemui/util/WallpaperController;

    move-object/from16 v8, p19

    .line 114
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    move-object/from16 v8, p88

    .line 115
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 116
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 117
    sget-object v8, Lcom/android/systemui/flags/Flags;->SHORTCUT_LIST_SEARCH_LAYOUT:Lcom/android/systemui/flags/ReleasedFlag;

    move-object v10, v4

    check-cast v10, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {v10, v8}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsShortcutListSearchEnabled:Z

    move-object/from16 v8, p92

    .line 118
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 119
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    move-object/from16 v8, p94

    .line 120
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v8, p97

    .line 121
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v8, p101

    .line 122
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    move-object/from16 v8, p104

    .line 123
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v8, p105

    .line 124
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v8, p106

    .line 125
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFingerprintManager:Ljavax/inject/Provider;

    move-object/from16 v8, p107

    .line 126
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 127
    invoke-static/range {p10 .. p10}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mToolTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    move-object/from16 v8, p5

    .line 128
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 129
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v8, p95

    .line 130
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    move-object/from16 v8, p100

    .line 131
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 132
    iput-object v0, v3, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 133
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    move-object/from16 v8, p17

    .line 134
    iget-object v8, v8, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    .line 135
    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p85

    .line 136
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 137
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 138
    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    move-result-object v8

    .line 139
    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda8;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 140
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addFullExpansionListener(Lcom/android/systemui/shade/ShadeFullExpansionListener;)V

    .line 141
    new-instance v2, Lcom/android/systemui/ActivityIntentHelper;

    invoke-direct {v2, v1}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p96

    .line 142
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 143
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    move-object/from16 v2, p87

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    .line 144
    invoke-static/range {p73 .. p73}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    .line 145
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    move-object v2, v5

    check-cast v2, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    const-class v3, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->subscribeTo(Ljava/lang/Class;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda11;)V

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    const/16 v3, 0x403

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V

    .line 147
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    const-class v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$AnimateExpandSettingsPanelMessage;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->subscribeTo(Ljava/lang/Class;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda11;)V

    .line 148
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V

    move-object/from16 v1, p98

    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    move-object/from16 v1, p103

    .line 150
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 151
    invoke-virtual/range {p90 .. p90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    sget-object v1, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    move-object/from16 v1, p108

    .line 153
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavBarHelperLazy:Ldagger/Lazy;

    .line 154
    sget-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 156
    sget-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "register observer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v7

    :goto_0
    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    .line 158
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.systemui.notilus"

    const-string v4, "com.samsung.systemui.notilus.service.NotificationListener"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    sget-object v3, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_1
    const/4 v3, 0x2

    if-nez v7, :cond_2

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 161
    :goto_1
    sget-object v4, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2, v3, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "There is no Listener"

    .line 162
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3
    :goto_2
    const-class v1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginManager;

    sget-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    sget-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    .line 165
    const-class v3, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-interface {v1, v2, v3, v6}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    .line 166
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    if-eqz v1, :cond_4

    move-object/from16 v1, p109

    .line 167
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    :cond_4
    move-object/from16 v1, p9

    .line 168
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    move-object/from16 v1, p110

    .line 169
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    move-object/from16 v1, p111

    .line 170
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-object/from16 v1, p112

    .line 171
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    return-void
.end method

.method public static barMode(IZ)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    and-int/lit8 p1, p0, 0x5

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x3

    .line 11
    return p0

    .line 12
    :cond_1
    and-int/lit8 p1, p0, 0x4

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const/4 p0, 0x6

    .line 17
    return p0

    .line 18
    :cond_2
    and-int/lit8 p1, p0, 0x1

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    const/4 p0, 0x4

    .line 23
    return p0

    .line 24
    :cond_3
    and-int/lit8 p0, p0, 0x20

    .line 25
    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    return v0

    .line 29
    :cond_4
    const/4 p0, 0x0

    .line 30
    return p0
.end method


# virtual methods
.method public final awakenDreams()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final checkBarModes()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 12
    .line 13
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoAnimationOnNextBarModeChange:Z

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v3, v4, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v1

    .line 29
    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 33
    .line 34
    iget v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->checkNavBarModes(I)V

    .line 37
    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoAnimationOnNextBarModeChange:Z

    .line 40
    .line 41
    return-void
.end method

.method public final checkRemoteInputRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "CentralSurfaces"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, " RemoteInput: extra value is null"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled2:I

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    and-int/2addr v1, v2

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string p0, " RemoteInput: disabled panel "

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-class v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    const-string p0, " RemoteInput: no entry for "

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 60
    .line 61
    if-eqz v4, :cond_7

    .line 62
    .line 63
    array-length v5, v4

    .line 64
    if-nez v5, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    array-length v4, v4

    .line 68
    const/4 v5, 0x0

    .line 69
    move v6, v5

    .line 70
    :goto_0
    if-ge v6, v4, :cond_5

    .line 71
    .line 72
    iget-object v7, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 73
    .line 74
    aget-object v7, v7, v6

    .line 75
    .line 76
    invoke-virtual {v7}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    if-eqz v7, :cond_4

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    move v1, v5

    .line 88
    :goto_1
    if-nez v1, :cond_6

    .line 89
    .line 90
    const-string p0, " RemoteInput: no remote input for "

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    const-string p1, "REMOTE_INPUT_CLICK"

    .line 105
    .line 106
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->wakeUpIfDozing(JLjava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda15;

    .line 110
    .line 111
    invoke-direct {p1, p0, v3, p2, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    const-wide/16 v0, 0x1f4

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainHandler:Landroid/os/Handler;

    .line 117
    .line 118
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_7
    :goto_2
    const-string p0, " RemoteInput: no actions for "

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final collapsePanelOnMainThread()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade()Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/ShadeController;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final collapseShade()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 23
    .line 24
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateDisplaySize()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateResources()V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateTheme()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "CentralSurfaces"

    .line 17
    .line 18
    const-string v2, "CentralSurfacesComponent being recreated; this is unexpected."

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponentFactory:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Factory;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Factory;->create()Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 30
    .line 31
    const-class v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda25;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda25;-><init>(Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/fragments/FragmentService;->addFragmentInstantiationProvider(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 47
    .line 48
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationShadeWindowView()Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 55
    .line 56
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 65
    .line 66
    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 67
    .line 68
    iput-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 69
    .line 70
    new-instance v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    invoke-direct {v4, v3, v2, v5}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v4, v5}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 77
    .line 78
    .line 79
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 80
    .line 81
    iget-object v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 82
    .line 83
    const v6, 0x7f0a0776

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 91
    .line 92
    iput-object v6, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 93
    .line 94
    iget-object v6, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

    .line 95
    .line 96
    iput-object v6, v4, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLayoutInsetProvider:Lcom/android/systemui/statusbar/NotificationInsetsController;

    .line 97
    .line 98
    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 99
    .line 100
    invoke-direct {v6, v2}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    .line 101
    .line 102
    .line 103
    iput-object v6, v4, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 104
    .line 105
    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;

    .line 106
    .line 107
    invoke-direct {v6, v2}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v6, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 114
    .line 115
    iget-object v6, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 116
    .line 117
    invoke-virtual {v2, v6}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    .line 118
    .line 119
    .line 120
    iget-object v6, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 121
    .line 122
    iput-object v4, v6, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

    .line 123
    .line 124
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 125
    .line 126
    invoke-virtual {v2, v6}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 134
    .line 135
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 140
    .line 141
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 142
    .line 143
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 144
    .line 145
    move-object v6, v4

    .line 146
    check-cast v6, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 147
    .line 148
    iput-object v2, v6, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 149
    .line 150
    new-instance v7, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {v7, v6}, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;)V

    .line 153
    .line 154
    .line 155
    iput-object v7, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingStartedListener:Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    new-instance v7, Lcom/android/systemui/shade/ShadeControllerImpl$2;

    .line 158
    .line 159
    invoke-direct {v7, v6}, Lcom/android/systemui/shade/ShadeControllerImpl$2;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;)V

    .line 160
    .line 161
    .line 162
    iput-object v7, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

    .line 163
    .line 164
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 165
    .line 166
    iput-object v2, v6, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 167
    .line 168
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 169
    .line 170
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 175
    .line 176
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 177
    .line 178
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getQuickSettingsController()Lcom/android/systemui/shade/QuickSettingsController;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 183
    .line 184
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 185
    .line 186
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 187
    .line 188
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 189
    .line 190
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 191
    .line 192
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 197
    .line 198
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 199
    .line 200
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 205
    .line 206
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 207
    .line 208
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 213
    .line 214
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 215
    .line 216
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 221
    .line 222
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 223
    .line 224
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getStatusBarHeadsUpChangeListener()Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 229
    .line 230
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$26;

    .line 234
    .line 235
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 236
    .line 237
    invoke-virtual {v7, v2}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 241
    .line 242
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 243
    .line 244
    if-eqz v2, :cond_1

    .line 245
    .line 246
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 247
    .line 248
    .line 249
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 250
    .line 251
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getCentralSurfacesCommandQueueCallbacks()Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 256
    .line 257
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 258
    .line 259
    .line 260
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 261
    .line 262
    if-eqz v2, :cond_2

    .line 263
    .line 264
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 265
    .line 266
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 267
    .line 268
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    .line 269
    .line 270
    iput-object v2, v7, Lcom/android/systemui/blur/SecQpBlurController;->mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 271
    .line 272
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 273
    .line 274
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getSecPanelBackgroundController()Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iput-object v2, v7, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 279
    .line 280
    iget-object v8, v7, Lcom/android/systemui/blur/SecQpBlurController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 281
    .line 282
    iput-object v8, v2, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 283
    .line 284
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 285
    .line 286
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getCapturedBlurContainerController()Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    iput-object v2, v7, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    .line 291
    .line 292
    iput-object v8, v2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 293
    .line 294
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateResources()V

    .line 295
    .line 296
    .line 297
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 298
    .line 299
    new-instance v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;

    .line 300
    .line 301
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    .line 306
    .line 307
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 308
    .line 309
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperController:Lcom/android/systemui/util/WallpaperController;

    .line 310
    .line 311
    iput-object v2, v7, Lcom/android/systemui/util/WallpaperController;->rootView:Landroid/view/View;

    .line 312
    .line 313
    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 314
    .line 315
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 321
    .line 322
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 323
    .line 324
    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 325
    .line 326
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationShelfController;->assertRefactorFlagDisabled()V

    .line 327
    .line 328
    .line 329
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationShelfController;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    iput-object v2, v7, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 334
    .line 335
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 336
    .line 337
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 338
    .line 339
    invoke-virtual {v2, v7}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 344
    .line 345
    .line 346
    const-class v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 347
    .line 348
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 349
    .line 350
    invoke-virtual {v7, v2}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 351
    .line 352
    .line 353
    const-class v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 354
    .line 355
    invoke-virtual {v7, v2}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 356
    .line 357
    .line 358
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 359
    .line 360
    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarInitializer:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    .line 364
    .line 365
    iput-object v2, v7, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->statusBarViewUpdatedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 366
    .line 367
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 368
    .line 369
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    iget-object v8, v7, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->windowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 373
    .line 374
    iget-object v9, v8, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 375
    .line 376
    iget-object v8, v8, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 377
    .line 378
    invoke-virtual {v9, v8}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    new-instance v9, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;

    .line 383
    .line 384
    invoke-direct {v9, v7}, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;-><init>(Lcom/android/systemui/statusbar/core/StatusBarInitializer;)V

    .line 385
    .line 386
    .line 387
    const-string v7, "CollapsedStatusBarFragment"

    .line 388
    .line 389
    invoke-virtual {v8, v7, v9}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->createCollapsedStatusBarFragment()Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    check-cast v2, Landroid/app/Fragment;

    .line 405
    .line 406
    const v9, 0x7f0a0acf

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8, v9, v2, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 414
    .line 415
    .line 416
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 417
    .line 418
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 419
    .line 420
    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 421
    .line 422
    iput-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 423
    .line 424
    const v8, 0x7f0a0770

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    iput-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationPanelView:Landroid/view/View;

    .line 432
    .line 433
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 434
    .line 435
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->updateAccessibilityButtonModeIfNeeded()V

    .line 436
    .line 437
    .line 438
    sget-boolean v7, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_POLICY_VISIBILITY:Z

    .line 439
    .line 440
    const/4 v8, 0x0

    .line 441
    if-nez v7, :cond_4

    .line 442
    .line 443
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->initializeTaskbarIfNecessary()Z

    .line 444
    .line 445
    .line 446
    move-result v7

    .line 447
    if-nez v7, :cond_3

    .line 448
    .line 449
    goto :goto_0

    .line 450
    :cond_3
    move v7, v8

    .line 451
    goto :goto_1

    .line 452
    :cond_4
    :goto_0
    move v7, v5

    .line 453
    :goto_1
    iget-object v9, v2, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 454
    .line 455
    move-object v10, v9

    .line 456
    check-cast v10, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 457
    .line 458
    iget-object v10, v10, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 459
    .line 460
    invoke-virtual {v10}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    array-length v11, v10

    .line 465
    move v12, v8

    .line 466
    :goto_2
    const/4 v13, 0x0

    .line 467
    if-ge v12, v11, :cond_7

    .line 468
    .line 469
    aget-object v14, v10, v12

    .line 470
    .line 471
    if-nez v7, :cond_6

    .line 472
    .line 473
    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    .line 474
    .line 475
    .line 476
    move-result v15

    .line 477
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    if-eqz v15, :cond_5

    .line 481
    .line 482
    goto :goto_3

    .line 483
    :cond_5
    move-object/from16 v15, p1

    .line 484
    .line 485
    goto :goto_4

    .line 486
    :cond_6
    :goto_3
    move-object/from16 v15, p1

    .line 487
    .line 488
    invoke-virtual {v2, v14, v13, v15}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 489
    .line 490
    .line 491
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 492
    .line 493
    goto :goto_2

    .line 494
    :cond_7
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    .line 495
    .line 496
    if-eqz v2, :cond_8

    .line 497
    .line 498
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenWallpaperLazy:Ldagger/Lazy;

    .line 499
    .line 500
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    check-cast v2, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 505
    .line 506
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 507
    .line 508
    :cond_8
    sget-boolean v2, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    .line 509
    .line 510
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockScreenWallpaperChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;

    .line 511
    .line 512
    const-string v9, "lockscreen_wallpaper"

    .line 513
    .line 514
    const-class v10, Lcom/android/systemui/util/SettingsHelper;

    .line 515
    .line 516
    if-eqz v2, :cond_9

    .line 517
    .line 518
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 523
    .line 524
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    const-string v10, "lockscreen_wallpaper_sub"

    .line 529
    .line 530
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 531
    .line 532
    .line 533
    move-result-object v10

    .line 534
    filled-new-array {v9, v10}, [Landroid/net/Uri;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    invoke-virtual {v2, v7, v9}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 539
    .line 540
    .line 541
    goto :goto_5

    .line 542
    :cond_9
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 547
    .line 548
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    filled-new-array {v9}, [Landroid/net/Uri;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    invoke-virtual {v2, v7, v9}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 557
    .line 558
    .line 559
    :goto_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 560
    .line 561
    const v7, 0x7f0a055c

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 569
    .line 570
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 571
    .line 572
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 573
    .line 574
    .line 575
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 576
    .line 577
    const v7, 0x7f0a00c1

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAmbientIndicationContainer:Landroid/view/View;

    .line 585
    .line 586
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$6;

    .line 587
    .line 588
    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$6;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 589
    .line 590
    .line 591
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 592
    .line 593
    iput-object v2, v7, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 594
    .line 595
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 596
    .line 597
    const v7, 0x7f0a0946

    .line 598
    .line 599
    .line 600
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    check-cast v2, Lcom/android/systemui/scrim/ScrimView;

    .line 605
    .line 606
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 607
    .line 608
    const v9, 0x7f0a0949

    .line 609
    .line 610
    .line 611
    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    check-cast v7, Lcom/android/systemui/scrim/ScrimView;

    .line 616
    .line 617
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 618
    .line 619
    const v10, 0x7f0a0947

    .line 620
    .line 621
    .line 622
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 623
    .line 624
    .line 625
    move-result-object v9

    .line 626
    check-cast v9, Lcom/android/systemui/scrim/ScrimView;

    .line 627
    .line 628
    new-instance v10, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 629
    .line 630
    const/4 v11, 0x4

    .line 631
    invoke-direct {v10, v0, v11}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 632
    .line 633
    .line 634
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 635
    .line 636
    iput-object v10, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    .line 637
    .line 638
    const-class v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 639
    .line 640
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    check-cast v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 645
    .line 646
    new-instance v14, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    .line 647
    .line 648
    const/4 v15, 0x5

    .line 649
    invoke-direct {v14, v0, v15}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 650
    .line 651
    .line 652
    iput-object v14, v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimUpdater:Ljava/lang/Runnable;

    .line 653
    .line 654
    iput-object v7, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 655
    .line 656
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 657
    .line 658
    iput-object v9, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 659
    .line 660
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    .line 661
    .line 662
    new-instance v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    .line 663
    .line 664
    new-instance v14, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;

    .line 665
    .line 666
    invoke-direct {v14, v12, v8}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    .line 667
    .line 668
    .line 669
    new-instance v15, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;

    .line 670
    .line 671
    invoke-direct {v15, v12, v5}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    .line 672
    .line 673
    .line 674
    new-instance v8, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;

    .line 675
    .line 676
    const/4 v13, 0x2

    .line 677
    invoke-direct {v8, v12, v13}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    .line 678
    .line 679
    .line 680
    new-instance v13, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;

    .line 681
    .line 682
    const/4 v5, 0x3

    .line 683
    invoke-direct {v13, v12, v5}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    .line 684
    .line 685
    .line 686
    new-instance v5, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    .line 687
    .line 688
    invoke-direct {v5, v12, v11}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 689
    .line 690
    .line 691
    new-instance v11, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;

    .line 692
    .line 693
    move-object/from16 v23, v3

    .line 694
    .line 695
    const/4 v3, 0x1

    .line 696
    invoke-direct {v11, v12, v3}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    .line 697
    .line 698
    .line 699
    move-object/from16 v16, v10

    .line 700
    .line 701
    move-object/from16 v17, v14

    .line 702
    .line 703
    move-object/from16 v18, v15

    .line 704
    .line 705
    move-object/from16 v19, v8

    .line 706
    .line 707
    move-object/from16 v20, v13

    .line 708
    .line 709
    move-object/from16 v21, v5

    .line 710
    .line 711
    move-object/from16 v22, v11

    .line 712
    .line 713
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 714
    .line 715
    .line 716
    iput-object v10, v9, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    .line 717
    .line 718
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mFrontScrimSupplier:Ljava/util/function/Supplier;

    .line 719
    .line 720
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    check-cast v3, Lcom/android/systemui/scrim/ScrimView;

    .line 725
    .line 726
    iput-object v3, v9, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 727
    .line 728
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mBehindScrimSupplier:Ljava/util/function/Supplier;

    .line 729
    .line 730
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    check-cast v3, Lcom/android/systemui/scrim/ScrimView;

    .line 735
    .line 736
    iput-object v3, v9, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 737
    .line 738
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mNotificationsScrimSupplier:Ljava/util/function/Supplier;

    .line 739
    .line 740
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    check-cast v3, Lcom/android/systemui/scrim/ScrimView;

    .line 745
    .line 746
    iput-object v3, v9, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 747
    .line 748
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    .line 749
    .line 750
    if-eqz v3, :cond_a

    .line 751
    .line 752
    const-string v3, "background"

    .line 753
    .line 754
    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 755
    .line 756
    .line 757
    move-result-wide v10

    .line 758
    invoke-static {v9, v10, v11}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 759
    .line 760
    .line 761
    :cond_a
    new-instance v3, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$1;

    .line 762
    .line 763
    invoke-direct {v3, v9}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V

    .line 764
    .line 765
    .line 766
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 767
    .line 768
    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 769
    .line 770
    .line 771
    new-instance v3, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$2;

    .line 772
    .line 773
    invoke-direct {v3, v9}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V

    .line 774
    .line 775
    .line 776
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 777
    .line 778
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 779
    .line 780
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    sget-object v3, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 784
    .line 785
    const-string v5, "ScrimController"

    .line 786
    .line 787
    invoke-virtual {v3, v5, v9}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateThemeColors()V

    .line 791
    .line 792
    .line 793
    iget-object v3, v2, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 794
    .line 795
    instance-of v5, v3, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 796
    .line 797
    if-eqz v5, :cond_b

    .line 798
    .line 799
    check-cast v3, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 800
    .line 801
    const/4 v5, 0x0

    .line 802
    iput-object v5, v3, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    .line 803
    .line 804
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 805
    .line 806
    .line 807
    :cond_b
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 808
    .line 809
    iget-object v3, v3, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 810
    .line 811
    instance-of v5, v3, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 812
    .line 813
    if-eqz v5, :cond_d

    .line 814
    .line 815
    check-cast v3, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 816
    .line 817
    iget-boolean v5, v3, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadiusEnabled:Z

    .line 818
    .line 819
    const/4 v8, 0x1

    .line 820
    if-ne v5, v8, :cond_c

    .line 821
    .line 822
    goto :goto_6

    .line 823
    :cond_c
    iput-boolean v8, v3, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadiusEnabled:Z

    .line 824
    .line 825
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 826
    .line 827
    .line 828
    :cond_d
    :goto_6
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindChangeRunnable:Ljava/lang/Runnable;

    .line 829
    .line 830
    if-eqz v3, :cond_e

    .line 831
    .line 832
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 833
    .line 834
    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 835
    .line 836
    iput-object v3, v5, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 837
    .line 838
    iput-object v8, v5, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    .line 839
    .line 840
    const/4 v3, 0x0

    .line 841
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindChangeRunnable:Ljava/lang/Runnable;

    .line 842
    .line 843
    :cond_e
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    const/4 v5, 0x0

    .line 848
    :goto_7
    array-length v8, v3

    .line 849
    if-ge v5, v8, :cond_10

    .line 850
    .line 851
    aget-object v8, v3, v5

    .line 852
    .line 853
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 854
    .line 855
    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 856
    .line 857
    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 858
    .line 859
    iget-object v13, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 860
    .line 861
    iget-object v14, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 862
    .line 863
    iput-object v9, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 864
    .line 865
    iput-object v10, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 866
    .line 867
    iput-object v11, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 868
    .line 869
    iput-object v13, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 870
    .line 871
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 872
    .line 873
    .line 874
    move-result v9

    .line 875
    iput-boolean v9, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    .line 876
    .line 877
    sget-boolean v9, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 878
    .line 879
    if-eqz v9, :cond_f

    .line 880
    .line 881
    iput-object v14, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 882
    .line 883
    :cond_f
    aget-object v8, v3, v5

    .line 884
    .line 885
    iget v9, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    .line 886
    .line 887
    iput v9, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    .line 888
    .line 889
    iget v9, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    .line 890
    .line 891
    iput v9, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    .line 892
    .line 893
    add-int/lit8 v5, v5, 0x1

    .line 894
    .line 895
    goto :goto_7

    .line 896
    :cond_10
    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    .line 897
    .line 898
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 899
    .line 900
    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 901
    .line 902
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 903
    .line 904
    new-instance v10, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    .line 905
    .line 906
    invoke-direct {v10, v12}, Lcom/android/systemui/statusbar/phone/ScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 907
    .line 908
    .line 909
    invoke-direct {v3, v5, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;-><init>(Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;)V

    .line 910
    .line 911
    .line 912
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    .line 913
    .line 914
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 915
    .line 916
    const/4 v5, 0x0

    .line 917
    invoke-virtual {v3, v5}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 918
    .line 919
    .line 920
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 921
    .line 922
    invoke-virtual {v3, v5}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 923
    .line 924
    .line 925
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 926
    .line 927
    invoke-virtual {v3, v5}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 931
    .line 932
    .line 933
    move-result-object v3

    .line 934
    const v5, 0x7f050069

    .line 935
    .line 936
    .line 937
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    iput-boolean v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransparentScrimBackground:Z

    .line 942
    .line 943
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 944
    .line 945
    .line 946
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 947
    .line 948
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    .line 949
    .line 950
    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 951
    .line 952
    .line 953
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    array-length v5, v3

    .line 958
    const/4 v7, 0x0

    .line 959
    :goto_8
    if-ge v7, v5, :cond_11

    .line 960
    .line 961
    aget-object v8, v3, v7

    .line 962
    .line 963
    invoke-virtual {v8, v8}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 964
    .line 965
    .line 966
    add-int/lit8 v7, v7, 0x1

    .line 967
    .line 968
    goto :goto_8

    .line 969
    :cond_11
    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;

    .line 970
    .line 971
    const/4 v5, 0x2

    .line 972
    invoke-direct {v3, v12, v5}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    .line 973
    .line 974
    .line 975
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mPrimaryBouncerToGoneTransition:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;

    .line 976
    .line 977
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 978
    .line 979
    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->primaryBouncerToGoneTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 980
    .line 981
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 982
    .line 983
    invoke-static {v2, v5, v3, v7}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 984
    .line 985
    .line 986
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    .line 987
    .line 988
    iget-object v3, v3, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->scrimAlpha:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1;

    .line 989
    .line 990
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimAlphaConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;

    .line 991
    .line 992
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 993
    .line 994
    invoke-static {v2, v3, v5, v7}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 995
    .line 996
    .line 997
    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 998
    .line 999
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 1000
    .line 1001
    const/4 v3, 0x5

    .line 1002
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 1006
    .line 1007
    iput-object v2, v3, Lcom/android/systemui/statusbar/LightRevealScrim;->isScrimOpaqueChangedListener:Ljava/util/function/Consumer;

    .line 1008
    .line 1009
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 1010
    .line 1011
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 1012
    .line 1013
    check-cast v5, Ljava/util/ArrayList;

    .line 1014
    .line 1015
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v5

    .line 1019
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v7

    .line 1023
    if-eqz v7, :cond_12

    .line 1024
    .line 1025
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v7

    .line 1029
    check-cast v7, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 1030
    .line 1031
    invoke-interface {v7, v0, v3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/LightRevealScrim;)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_9

    .line 1035
    :cond_12
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 1036
    .line 1037
    invoke-virtual {v3, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateLightRevealScrimVisibility()V

    .line 1041
    .line 1042
    .line 1043
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 1044
    .line 1045
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 1049
    .line 1050
    const/4 v5, 0x3

    .line 1051
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/ShadeController;I)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 1055
    .line 1056
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1057
    .line 1058
    iput-object v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1059
    .line 1060
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

    .line 1061
    .line 1062
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1063
    .line 1064
    .line 1065
    new-instance v5, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 1066
    .line 1067
    iget-object v7, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1068
    .line 1069
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1070
    .line 1071
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    .line 1072
    .line 1073
    new-instance v9, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;

    .line 1074
    .line 1075
    const/4 v10, 0x0

    .line 1076
    invoke-direct {v9, v2, v10}, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 1077
    .line 1078
    .line 1079
    invoke-direct {v5, v6, v8, v9}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$HeadsUpNotificationViewController;)V

    .line 1080
    .line 1081
    .line 1082
    iput-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 1083
    .line 1084
    iput-object v0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1085
    .line 1086
    const/4 v5, 0x0

    .line 1087
    iput-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureRecorder:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 1088
    .line 1089
    iput-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 1090
    .line 1091
    iput-object v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 1092
    .line 1093
    sget-object v3, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 1094
    .line 1095
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 1096
    .line 1097
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    .line 1099
    .line 1100
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationShelfController;->assertRefactorFlagDisabled()V

    .line 1101
    .line 1102
    .line 1103
    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1104
    .line 1105
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1106
    .line 1107
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 1108
    .line 1109
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationShelfController;->assertRefactorFlagDisabled()V

    .line 1110
    .line 1111
    .line 1112
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1113
    .line 1114
    if-eqz v5, :cond_13

    .line 1115
    .line 1116
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 1117
    .line 1118
    .line 1119
    move-result v5

    .line 1120
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1121
    .line 1122
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_a

    .line 1126
    :cond_13
    const/4 v5, -0x1

    .line 1127
    :goto_a
    invoke-interface {v4}, Lcom/android/systemui/statusbar/NotificationShelfController;->getView()Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v6

    .line 1131
    iput-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1132
    .line 1133
    invoke-virtual {v3, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1134
    .line 1135
    .line 1136
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1137
    .line 1138
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1139
    .line 1140
    iput-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1141
    .line 1142
    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    .line 1143
    .line 1144
    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1145
    .line 1146
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1147
    .line 1148
    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/NotificationShelfController;->bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 1149
    .line 1150
    .line 1151
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 1152
    .line 1153
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda0;

    .line 1154
    .line 1155
    const/4 v8, 0x1

    .line 1156
    invoke-direct {v6, v3, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V

    .line 1157
    .line 1158
    .line 1159
    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    .line 1160
    .line 1161
    if-eqz v5, :cond_14

    .line 1162
    .line 1163
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    .line 1165
    .line 1166
    :cond_14
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 1167
    .line 1168
    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1169
    .line 1170
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 1171
    .line 1172
    .line 1173
    move-result v5

    .line 1174
    xor-int/2addr v5, v8

    .line 1175
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 1176
    .line 1177
    if-eqz v6, :cond_16

    .line 1178
    .line 1179
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 1183
    .line 1184
    .line 1185
    move-result v8

    .line 1186
    if-nez v8, :cond_16

    .line 1187
    .line 1188
    if-eqz v5, :cond_15

    .line 1189
    .line 1190
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1191
    .line 1192
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1193
    .line 1194
    .line 1195
    goto :goto_b

    .line 1196
    :cond_15
    const v5, 0x3e99999a    # 0.3f

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1200
    .line 1201
    .line 1202
    :cond_16
    :goto_b
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfButtonBackground()V

    .line 1203
    .line 1204
    .line 1205
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;

    .line 1206
    .line 1207
    const/4 v5, 0x2

    .line 1208
    invoke-direct {v3, v7, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 1209
    .line 1210
    .line 1211
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 1212
    .line 1213
    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 1214
    .line 1215
    if-eqz v5, :cond_17

    .line 1216
    .line 1217
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    .line 1219
    .line 1220
    :cond_17
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 1221
    .line 1222
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1223
    .line 1224
    .line 1225
    new-instance v5, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$bindController$1;

    .line 1226
    .line 1227
    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$bindController$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 1228
    .line 1229
    .line 1230
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/NotificationShelfController;->setOnClickListener(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$bindController$1;)V

    .line 1231
    .line 1232
    .line 1233
    const/4 v3, 0x1

    .line 1234
    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 1238
    .line 1239
    const v4, 0x7f0a011b

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v2

    .line 1246
    check-cast v2, Lcom/android/systemui/statusbar/BackDropView;

    .line 1247
    .line 1248
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 1249
    .line 1250
    iput-object v4, v2, Lcom/android/systemui/statusbar/BackDropView;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 1251
    .line 1252
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    .line 1253
    .line 1254
    if-nez v5, :cond_18

    .line 1255
    .line 1256
    if-eqz v4, :cond_18

    .line 1257
    .line 1258
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    .line 1259
    .line 1260
    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 1261
    .line 1262
    invoke-virtual {v4, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setRootView(Landroid/view/ViewGroup;)V

    .line 1263
    .line 1264
    .line 1265
    :cond_18
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1266
    .line 1267
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 1268
    .line 1269
    .line 1270
    move-result v3

    .line 1271
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 1272
    .line 1273
    if-eqz v3, :cond_19

    .line 1274
    .line 1275
    const/4 v2, 0x0

    .line 1276
    iput-object v2, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1277
    .line 1278
    iput-object v2, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 1279
    .line 1280
    iput-object v2, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 1281
    .line 1282
    iput-object v2, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1283
    .line 1284
    goto :goto_c

    .line 1285
    :cond_19
    const v3, 0x7f0a011d

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    check-cast v3, Landroid/widget/ImageView;

    .line 1293
    .line 1294
    const v5, 0x7f0a011c

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v5

    .line 1301
    check-cast v5, Landroid/widget/ImageView;

    .line 1302
    .line 1303
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1304
    .line 1305
    iput-object v2, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1306
    .line 1307
    iput-object v3, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 1308
    .line 1309
    iput-object v5, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 1310
    .line 1311
    iput-object v6, v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1312
    .line 1313
    :goto_c
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 1314
    .line 1315
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v3

    .line 1319
    const v4, 0x10500f7

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    .line 1323
    .line 1324
    .line 1325
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    .line 1326
    .line 1327
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v4

    .line 1331
    check-cast v4, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 1332
    .line 1333
    new-instance v5, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 1334
    .line 1335
    invoke-direct {v5}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    .line 1336
    .line 1337
    .line 1338
    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    .line 1339
    .line 1340
    check-cast v4, Ljava/util/ArrayList;

    .line 1341
    .line 1342
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 1346
    .line 1347
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetup:Z

    .line 1348
    .line 1349
    check-cast v4, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1350
    .line 1351
    iput-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserSetupComplete:Z

    .line 1352
    .line 1353
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    .line 1354
    .line 1355
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->setUserSetupComplete(Z)V

    .line 1356
    .line 1357
    .line 1358
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 1359
    .line 1360
    const v5, 0x7f0a0866

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v4

    .line 1367
    if-eqz v4, :cond_1a

    .line 1368
    .line 1369
    invoke-virtual {v1, v4}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v5

    .line 1373
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 1374
    .line 1375
    check-cast v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    .line 1376
    .line 1377
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1378
    .line 1379
    .line 1380
    new-instance v7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    .line 1381
    .line 1382
    const/4 v8, 0x0

    .line 1383
    invoke-direct {v7, v6, v8}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;I)V

    .line 1384
    .line 1385
    .line 1386
    const-class v6, Lcom/android/systemui/plugins/qs/QS;

    .line 1387
    .line 1388
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    .line 1389
    .line 1390
    .line 1391
    new-instance v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;

    .line 1392
    .line 1393
    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 1394
    .line 1395
    .line 1396
    iget-object v8, v7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 1397
    .line 1398
    iget-object v9, v8, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    .line 1399
    .line 1400
    new-instance v10, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;

    .line 1401
    .line 1402
    invoke-direct {v10, v8, v6}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/util/function/Supplier;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v6

    .line 1412
    invoke-static {v1, v4, v6}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->attachExtensonToFragment(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 1413
    .line 1414
    .line 1415
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1416
    .line 1417
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 1418
    .line 1419
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 1420
    .line 1421
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v3

    .line 1425
    move-object v10, v3

    .line 1426
    check-cast v10, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 1427
    .line 1428
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 1429
    .line 1430
    new-instance v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 1431
    .line 1432
    const/4 v3, 0x6

    .line 1433
    invoke-direct {v12, v0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 1434
    .line 1435
    .line 1436
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    .line 1437
    .line 1438
    move-object v7, v1

    .line 1439
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ljava/util/function/Consumer;Lcom/android/systemui/blur/SecQpBlurController;)V

    .line 1440
    .line 1441
    .line 1442
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1443
    .line 1444
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda22;

    .line 1445
    .line 1446
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 1447
    .line 1448
    .line 1449
    const-string v3, "QS"

    .line 1450
    .line 1451
    invoke-virtual {v5, v3, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 1452
    .line 1453
    .line 1454
    :cond_1a
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 1455
    .line 1456
    const v3, 0x7f0a08bd

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v1

    .line 1463
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    .line 1464
    .line 1465
    if-eqz v1, :cond_1b

    .line 1466
    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateReportRejectedTouchVisibility()V

    .line 1468
    .line 1469
    .line 1470
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    .line 1471
    .line 1472
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;

    .line 1473
    .line 1474
    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1478
    .line 1479
    .line 1480
    :cond_1b
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 1481
    .line 1482
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 1483
    .line 1484
    .line 1485
    move-result v3

    .line 1486
    if-nez v3, :cond_1c

    .line 1487
    .line 1488
    new-instance v3, Landroid/content/Intent;

    .line 1489
    .line 1490
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 1491
    .line 1492
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

    .line 1496
    .line 1497
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1498
    .line 1499
    .line 1500
    :cond_1c
    const/16 v2, 0xa

    .line 1501
    .line 1502
    const-string/jumbo v3, "sysui:GestureWakeLock"

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v1

    .line 1509
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1510
    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->registerBroadcastReceiver()V

    .line 1512
    .line 1513
    .line 1514
    new-instance v5, Landroid/content/IntentFilter;

    .line 1515
    .line 1516
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1517
    .line 1518
    .line 1519
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 1520
    .line 1521
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    .line 1522
    .line 1523
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1524
    .line 1525
    const-string v6, "android.permission.DUMP"

    .line 1526
    .line 1527
    const/4 v7, 0x0

    .line 1528
    const/4 v8, 0x2

    .line 1529
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1530
    .line 1531
    .line 1532
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 1533
    .line 1534
    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 1535
    .line 1536
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;

    .line 1537
    .line 1538
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$19;->onUserSetupChanged()V

    .line 1542
    .line 1543
    .line 1544
    const-string v1, "disableProfileBars"

    .line 1545
    .line 1546
    const-string/jumbo v2, "true"

    .line 1547
    .line 1548
    .line 1549
    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 1553
    .line 1554
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    const-string v2, "ambientRatio"

    .line 1559
    .line 1560
    invoke-static {v2, v1}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    .line 1562
    .line 1563
    new-instance v1, Landroid/content/IntentFilter;

    .line 1564
    .line 1565
    const-string v2, "com.samsung.systemui.action.REQUEST_REMOTE_INPUT"

    .line 1566
    .line 1567
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1568
    .line 1569
    .line 1570
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1571
    .line 1572
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 1573
    .line 1574
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$27;

    .line 1575
    .line 1576
    const/4 v5, 0x0

    .line 1577
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1581
    .line 1582
    .line 1583
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 1584
    .line 1585
    const/4 v7, -0x1

    .line 1586
    const/4 v8, -0x1

    .line 1587
    const/16 v9, 0x7f8

    .line 1588
    .line 1589
    const v10, -0x7f7bffb8

    .line 1590
    .line 1591
    .line 1592
    const/4 v11, -0x3

    .line 1593
    move-object v6, v1

    .line 1594
    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1595
    .line 1596
    .line 1597
    move-object/from16 v3, v23

    .line 1598
    .line 1599
    iput-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1600
    .line 1601
    new-instance v2, Landroid/os/Binder;

    .line 1602
    .line 1603
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1604
    .line 1605
    .line 1606
    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1607
    .line 1608
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1609
    .line 1610
    const/16 v2, 0x30

    .line 1611
    .line 1612
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1613
    .line 1614
    const/4 v2, 0x0

    .line 1615
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1616
    .line 1617
    .line 1618
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1619
    .line 1620
    const-string v2, "NotificationShade"

    .line 1621
    .line 1622
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1623
    .line 1624
    .line 1625
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1626
    .line 1627
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    .line 1628
    .line 1629
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v2

    .line 1633
    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1634
    .line 1635
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1636
    .line 1637
    const/4 v2, 0x3

    .line 1638
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1639
    .line 1640
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1641
    .line 1642
    or-int/lit16 v2, v2, 0x200

    .line 1643
    .line 1644
    const/high16 v4, 0x8000000

    .line 1645
    .line 1646
    or-int/2addr v2, v4

    .line 1647
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1648
    .line 1649
    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1650
    .line 1651
    const/4 v4, 0x2

    .line 1652
    iput v4, v2, Landroid/view/InsetsFlags;->behavior:I

    .line 1653
    .line 1654
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 1655
    .line 1656
    if-eqz v2, :cond_1d

    .line 1657
    .line 1658
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1659
    .line 1660
    const/high16 v4, 0x20000

    .line 1661
    .line 1662
    or-int/2addr v2, v4

    .line 1663
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1664
    .line 1665
    :cond_1d
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 1666
    .line 1667
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 1668
    .line 1669
    if-eqz v2, :cond_1e

    .line 1670
    .line 1671
    const/16 v2, 0x2000

    .line 1672
    .line 1673
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 1674
    .line 1675
    .line 1676
    :cond_1e
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 1677
    .line 1678
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1679
    .line 1680
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 1681
    .line 1682
    invoke-interface {v4, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1683
    .line 1684
    .line 1685
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 1686
    .line 1687
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1688
    .line 1689
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1690
    .line 1691
    .line 1692
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->onThemeChanged()V

    .line 1693
    .line 1694
    .line 1695
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1696
    .line 1697
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 1698
    .line 1699
    .line 1700
    move-result v1

    .line 1701
    if-eqz v1, :cond_1f

    .line 1702
    .line 1703
    iget-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 1704
    .line 1705
    const/4 v2, 0x1

    .line 1706
    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 1707
    .line 1708
    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 1709
    .line 1710
    .line 1711
    goto :goto_d

    .line 1712
    :cond_1f
    const/4 v2, 0x1

    .line 1713
    :goto_d
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda12;

    .line 1714
    .line 1715
    invoke-direct {v1, v3, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    .line 1716
    .line 1717
    .line 1718
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 1719
    .line 1720
    iget-object v3, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 1721
    .line 1722
    if-eqz v3, :cond_21

    .line 1723
    .line 1724
    iget-object v4, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    .line 1725
    .line 1726
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 1727
    .line 1728
    const-string v5, "PluginLockMediatorImpl"

    .line 1729
    .line 1730
    const-string v6, "onRootViewAttached"

    .line 1731
    .line 1732
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    .line 1734
    .line 1735
    iget-object v5, v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    .line 1736
    .line 1737
    if-eqz v5, :cond_20

    .line 1738
    .line 1739
    const-class v7, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1740
    .line 1741
    const/4 v8, 0x1

    .line 1742
    invoke-interface {v5, v3, v7, v8}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    .line 1743
    .line 1744
    .line 1745
    :cond_20
    iget-object v3, v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    .line 1746
    .line 1747
    if-eqz v3, :cond_21

    .line 1748
    .line 1749
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 1750
    .line 1751
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1752
    .line 1753
    const-string v7, "onRootViewAttached : "

    .line 1754
    .line 1755
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1756
    .line 1757
    .line 1758
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1759
    .line 1760
    .line 1761
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v5

    .line 1765
    const-string v7, "PluginLockManagerImpl"

    .line 1766
    .line 1767
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    .line 1769
    .line 1770
    iget-object v3, v3, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 1771
    .line 1772
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1773
    .line 1774
    .line 1775
    const-string v5, "PluginLockDelegateApp"

    .line 1776
    .line 1777
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    .line 1779
    .line 1780
    iput-object v4, v3, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    .line 1781
    .line 1782
    :cond_21
    new-instance v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$attach$1;

    .line 1783
    .line 1784
    invoke-direct {v3, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$attach$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    .line 1785
    .line 1786
    .line 1787
    iget-object v2, v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 1788
    .line 1789
    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 1790
    .line 1791
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1792
    .line 1793
    .line 1794
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1795
    .line 1796
    const-string/jumbo v5, "setNoSensorConsumer() consumer:"

    .line 1797
    .line 1798
    .line 1799
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1800
    .line 1801
    .line 1802
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v4

    .line 1809
    const-string v5, "KeyguardWallpaperController"

    .line 1810
    .line 1811
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    .line 1813
    .line 1814
    iput-object v3, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNoSensorConsumer:Ljava/util/function/Consumer;

    .line 1815
    .line 1816
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    .line 1817
    .line 1818
    .line 1819
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1820
    .line 1821
    const-string/jumbo v4, "setWideColorGamutConsumer() consumer:"

    .line 1822
    .line 1823
    .line 1824
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v3

    .line 1834
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    .line 1836
    .line 1837
    iput-object v1, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 1838
    .line 1839
    iget-object v2, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1840
    .line 1841
    if-eqz v2, :cond_22

    .line 1842
    .line 1843
    instance-of v2, v2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1844
    .line 1845
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v2

    .line 1849
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda12;->accept(Ljava/lang/Object;)V

    .line 1850
    .line 1851
    .line 1852
    :cond_22
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 1853
    .line 1854
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1855
    .line 1856
    .line 1857
    const-string v1, "StatusBarWindowController.getBarLayoutParams"

    .line 1858
    .line 1859
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1860
    .line 1861
    .line 1862
    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 1863
    .line 1864
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v1

    .line 1868
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 1869
    .line 1870
    .line 1871
    move-result v1

    .line 1872
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v1

    .line 1876
    const/4 v2, 0x4

    .line 1877
    new-array v2, v2, [Landroid/view/WindowManager$LayoutParams;

    .line 1878
    .line 1879
    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 1880
    .line 1881
    const/4 v2, 0x3

    .line 1882
    const/4 v5, 0x0

    .line 1883
    :goto_e
    if-gt v5, v2, :cond_23

    .line 1884
    .line 1885
    iget-object v3, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 1886
    .line 1887
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v4

    .line 1891
    aput-object v4, v3, v5

    .line 1892
    .line 1893
    add-int/lit8 v5, v5, 0x1

    .line 1894
    .line 1895
    goto :goto_e

    .line 1896
    :cond_23
    iput-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1897
    .line 1898
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1899
    .line 1900
    .line 1901
    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1902
    .line 1903
    iget-object v2, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 1904
    .line 1905
    iget-object v3, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 1906
    .line 1907
    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1908
    .line 1909
    .line 1910
    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 1911
    .line 1912
    iget-object v2, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1913
    .line 1914
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1915
    .line 1916
    .line 1917
    new-instance v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;

    .line 1918
    .line 1919
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    .line 1920
    .line 1921
    .line 1922
    iget-object v2, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 1923
    .line 1924
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 1925
    .line 1926
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1927
    .line 1928
    .line 1929
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    .line 1930
    .line 1931
    .line 1932
    const/4 v1, 0x1

    .line 1933
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIsAttached:Z

    .line 1934
    .line 1935
    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 1936
    .line 1937
    const/4 v2, 0x0

    .line 1938
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V

    .line 1939
    .line 1940
    .line 1941
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, " translationX "

    .line 2
    .line 3
    const-string v1, " scroll "

    .line 4
    .line 5
    const-string v2, "  mStackScroller: "

    .line 6
    .line 7
    const-string v3, "  mDisplayMetrics="

    .line 8
    .line 9
    const-string v4, "  mExpandedVisible="

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQueueLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v5

    .line 18
    :try_start_0
    const-string v6, "Current Status Bar state:"

    .line 19
    .line 20
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 29
    .line 30
    check-cast v4, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 31
    .line 32
    iget-boolean v4, v4, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    .line 33
    .line 34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ","

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    const-string v0, "  mInteractingWindows="

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 147
    .line 148
    .line 149
    const-string v0, "  mStatusBarWindowState="

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    .line 155
    .line 156
    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v0, "  mStatusBarMode="

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 169
    .line 170
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "  mDozing="

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 185
    .line 186
    .line 187
    const-string v0, "  mWallpaperSupported= "

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 195
    .line 196
    .line 197
    const-string v0, "  ShadeWindowView: "

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 203
    .line 204
    if-eqz v0, :cond_0

    .line 205
    .line 206
    const-string v1, "  mExpandAnimationRunning="

    .line 207
    .line 208
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    .line 215
    .line 216
    const-string v1, "  mTouchCancelled="

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 224
    .line 225
    .line 226
    const-string v1, "  mTouchActive="

    .line 227
    .line 228
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 234
    .line 235
    .line 236
    const-string v0, "PhoneStatusBarTransitions"

    .line 237
    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 239
    .line 240
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 241
    .line 242
    .line 243
    :cond_0
    const-string v0, "  mMediaManager: "

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 249
    .line 250
    if-eqz v0, :cond_1

    .line 251
    .line 252
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_1
    const-string v0, "  Panels: "

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v1, "  mStackScroller: "

    .line 263
    .line 264
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, " (dump moved)"

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v0, "  Theme:"

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    .line 290
    .line 291
    if-nez v0, :cond_2

    .line 292
    .line 293
    const-string v0, "null"

    .line 294
    .line 295
    goto :goto_0

    .line 296
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v1, ""

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v2, "    dark theme: "

    .line 322
    .line 323
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v0, " (auto: 0, yes: 2, no: 1)"

    .line 330
    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    const v1, 0x7f140569

    .line 348
    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    if-ne v0, v1, :cond_3

    .line 352
    .line 353
    const/4 v0, 0x1

    .line 354
    goto :goto_1

    .line 355
    :cond_3
    move v0, v2

    .line 356
    :goto_1
    const-string v1, "    light wallpaper theme: "

    .line 357
    .line 358
    invoke-static {v1, v0, p1}, Lcom/android/systemui/DisplayCutoutBaseView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 362
    .line 363
    if-eqz v0, :cond_4

    .line 364
    .line 365
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 369
    .line 370
    if-eqz v0, :cond_5

    .line 371
    .line 372
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 376
    .line 377
    if-eqz v0, :cond_6

    .line 378
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v1, "mLightRevealScrim.getRevealEffect(): "

    .line 382
    .line 383
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 387
    .line 388
    iget-object v1, v1, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string v1, "mLightRevealScrim.getRevealAmount(): "

    .line 403
    .line 404
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 408
    .line 409
    iget v1, v1, Lcom/android/systemui/statusbar/LightRevealScrim;->revealAmount:F

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 422
    .line 423
    if-eqz v0, :cond_7

    .line 424
    .line 425
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dump(Ljava/io/PrintWriter;)V

    .line 426
    .line 427
    .line 428
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 429
    .line 430
    if-eqz v0, :cond_8

    .line 431
    .line 432
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_2

    .line 436
    :cond_8
    const-string v0, "  mHeadsUpManager: null"

    .line 437
    .line 438
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 442
    .line 443
    if-eqz v0, :cond_9

    .line 444
    .line 445
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_9
    const-string v0, "  mStatusBarTouchableRegionManager: null"

    .line 450
    .line 451
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 455
    .line 456
    if-eqz v0, :cond_a

    .line 457
    .line 458
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    :cond_a
    const-string v0, "SharedPreferences:"

    .line 462
    .line 463
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 467
    .line 468
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_b

    .line 493
    .line 494
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    .line 500
    const-string v2, "  "

    .line 501
    .line 502
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    check-cast v2, Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const-string v2, "="

    .line 515
    .line 516
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    goto :goto_4

    .line 527
    :cond_b
    const-string v0, "Camera gesture intents:"

    .line 528
    .line 529
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    const-string v1, "   Insecure camera: "

    .line 535
    .line 536
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    sget-object v1, Lcom/android/systemui/camera/CameraIntents;->Companion:Lcom/android/systemui/camera/CameraIntents$Companion;

    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    sget-object v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 550
    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v2, "   Secure camera: "

    .line 564
    .line 565
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    .line 570
    .line 571
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 572
    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    const-string v1, "   Override package: "

    .line 586
    .line 587
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 591
    .line 592
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    const v2, 0x7f13035d

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    const/4 v2, 0x0

    .line 604
    if-eqz v1, :cond_c

    .line 605
    .line 606
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    if-nez v3, :cond_c

    .line 611
    .line 612
    goto :goto_5

    .line 613
    :cond_c
    move-object v1, v2

    .line 614
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 625
    .line 626
    if-eqz v0, :cond_11

    .line 627
    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 629
    .line 630
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    const-string v1, "Dump of NavBarStoreImpl : "

    .line 636
    .line 637
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 641
    .line 642
    .line 643
    const-string v1, "Number of created navigation bar : "

    .line 644
    .line 645
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_f

    .line 670
    .line 671
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    check-cast v3, Ljava/util/Map$Entry;

    .line 676
    .line 677
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    check-cast v4, Ljava/lang/Number;

    .line 682
    .line 683
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 692
    .line 693
    new-instance v5, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    const-string v6, "Navigationbar "

    .line 696
    .line 697
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v4, " states : "

    .line 704
    .line 705
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 716
    .line 717
    .line 718
    if-eqz v3, :cond_d

    .line 719
    .line 720
    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 721
    .line 722
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 730
    .line 731
    goto :goto_7

    .line 732
    :cond_d
    move-object v3, v2

    .line 733
    :goto_7
    if-nez v3, :cond_e

    .line 734
    .line 735
    const-string v3, "NavBarStateManager is null."

    .line 736
    .line 737
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    :cond_e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 741
    .line 742
    .line 743
    goto :goto_6

    .line 744
    :cond_f
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 745
    .line 746
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 750
    .line 751
    if-eqz v0, :cond_10

    .line 752
    .line 753
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->dump(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 754
    .line 755
    .line 756
    goto :goto_8

    .line 757
    :catch_0
    move-exception v0

    .line 758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 759
    .line 760
    .line 761
    :cond_10
    :goto_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 762
    .line 763
    .line 764
    :cond_11
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    .line 765
    .line 766
    if-eqz v0, :cond_12

    .line 767
    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 769
    .line 770
    if-eqz v0, :cond_12

    .line 771
    .line 772
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 773
    .line 774
    if-eqz v0, :cond_12

    .line 775
    .line 776
    const-string v0, "Current SubscreenNotificationController state:"

    .line 777
    .line 778
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    :cond_12
    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 782
    .line 783
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 787
    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    const-string p2, "  isMainWonderLandWallpaper="

    .line 792
    .line 793
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget-boolean p2, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    .line 797
    .line 798
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 799
    .line 800
    .line 801
    const-string p2, "  isSubWonderLandWallpaper="

    .line 802
    .line 803
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    .line 807
    .line 808
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 809
    .line 810
    .line 811
    return-void

    .line 812
    :catchall_0
    move-exception p0

    .line 813
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    throw p0
.end method

.method public final finishKeyguardFadingAway()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->setKeyguardFadingAway(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getEmergencyActionIntent()Landroid/content/Intent;
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.systemui.action.LAUNCH_EMERGENCY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/high16 v2, 0x100000

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v3, 0x7f130377

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 66
    .line 67
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    .line 69
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v6, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    move-object p0, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    :goto_0
    move-object p0, v2

    .line 87
    :goto_1
    if-nez p0, :cond_5

    .line 88
    .line 89
    const-string p0, "CentralSurfaces"

    .line 90
    .line 91
    const-string v0, "Couldn\'t find an app to process the emergency intent."

    .line 92
    .line 93
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    .line 98
    .line 99
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 100
    .line 101
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 104
    .line 105
    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const/high16 p0, 0x10000000

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hideKeyguard()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public initShadeVisibilityListener()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 7
    .line 8
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mShadeVisibilityListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

    .line 11
    .line 12
    return-void
.end method

.method public final interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eq v1, v5, :cond_0

    .line 11
    .line 12
    if-eq v1, v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_a

    .line 19
    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    sget-object v10, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    .line 43
    .line 44
    if-eqz v7, :cond_3

    .line 45
    .line 46
    if-eq v7, v5, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget v8, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    .line 50
    .line 51
    if-lez v8, :cond_6

    .line 52
    .line 53
    sub-int/2addr v8, v5

    .line 54
    aget v8, v10, v8

    .line 55
    .line 56
    if-ne v6, v8, :cond_6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v11, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 60
    .line 61
    iget v11, v11, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 62
    .line 63
    if-ne v11, v4, :cond_4

    .line 64
    .line 65
    move v11, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move v11, v3

    .line 68
    :goto_0
    if-eqz v11, :cond_6

    .line 69
    .line 70
    iget v11, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    .line 71
    .line 72
    aget v12, v10, v11

    .line 73
    .line 74
    if-ne v6, v12, :cond_6

    .line 75
    .line 76
    if-eqz v11, :cond_5

    .line 77
    .line 78
    iget-wide v12, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    .line 79
    .line 80
    sub-long v12, v8, v12

    .line 81
    .line 82
    const-wide/16 v14, 0x320

    .line 83
    .line 84
    cmp-long v6, v12, v14

    .line 85
    .line 86
    if-gtz v6, :cond_6

    .line 87
    .line 88
    :cond_5
    iput-wide v8, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    .line 89
    .line 90
    add-int/2addr v11, v5

    .line 91
    iput v11, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    .line 92
    .line 93
    :goto_1
    move v6, v3

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    :goto_2
    move v6, v5

    .line 96
    :goto_3
    iget-boolean v8, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    .line 97
    .line 98
    const-string v9, "KeyguardSysDumpTrigger"

    .line 99
    .line 100
    if-eqz v8, :cond_7

    .line 101
    .line 102
    iget v8, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    .line 103
    .line 104
    const-string v11, "interceptKey action="

    .line 105
    .line 106
    const-string v12, " index="

    .line 107
    .line 108
    const-string v13, " reset="

    .line 109
    .line 110
    invoke-static {v11, v7, v12, v8, v13}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static {v8, v6, v9}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    if-nez v7, :cond_8

    .line 118
    .line 119
    iget v8, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    .line 120
    .line 121
    array-length v11, v10

    .line 122
    div-int/2addr v11, v4

    .line 123
    rem-int/2addr v8, v11

    .line 124
    if-ne v8, v5, :cond_8

    .line 125
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v11

    .line 130
    iget-object v4, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    .line 131
    .line 132
    invoke-virtual {v4, v11, v12, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 133
    .line 134
    .line 135
    :cond_8
    if-nez v7, :cond_9

    .line 136
    .line 137
    iget v4, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    .line 138
    .line 139
    array-length v7, v10

    .line 140
    if-ne v4, v7, :cond_9

    .line 141
    .line 142
    const-string v4, "matched keys"

    .line 143
    .line 144
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const-wide/16 v8, 0x0

    .line 148
    .line 149
    const/4 v7, 0x1

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    .line 152
    .line 153
    move-result-wide v10

    .line 154
    move-object v6, v1

    .line 155
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(IJJ)V

    .line 156
    .line 157
    .line 158
    move v6, v5

    .line 159
    :cond_9
    if-eqz v6, :cond_a

    .line 160
    .line 161
    iput v3, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    .line 162
    .line 163
    const-wide/16 v6, 0x0

    .line 164
    .line 165
    iput-wide v6, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    .line 166
    .line 167
    :cond_a
    :goto_4
    iget v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 168
    .line 169
    if-ne v0, v5, :cond_b

    .line 170
    .line 171
    move-object/from16 v0, p1

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    move v3, v5

    .line 180
    :cond_b
    return v3
.end method

.method public final isCameraAllowedByAdmin()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 6
    .line 7
    iget v2, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 34
    .line 35
    iget v0, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 36
    .line 37
    invoke-virtual {p0, v3, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    and-int/lit8 p0, p0, 0x2

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    move v2, v4

    .line 46
    :cond_1
    return v2

    .line 47
    :cond_2
    return v4
.end method

.method public final isForegroundComponentName(Landroid/content/ComponentName;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CentralSurfaces"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_COVER:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p0, "Checking ForegroundComponent - fold opened"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    const-string p0, "Checking ForegroundComponent - Lockscreen Shown"

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-class v0, Landroid/app/ActivityManager;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/app/ActivityManager;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    .line 75
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    move v2, v0

    .line 84
    :cond_2
    const-string p0, "Foreground component state :: "

    .line 85
    .line 86
    invoke-static {p0, v2, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v2
.end method

.method public final isGoingToSleep()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    .line 7
    return p0
.end method

.method public final isOccluded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 6
    .line 7
    return p0
.end method

.method public final isPulsing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 4
    .line 5
    return p0
.end method

.method public final logStateToEventlog()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 7
    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 10
    .line 11
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    move-object v4, v0

    .line 20
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 21
    .line 22
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 23
    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 27
    .line 28
    iget v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 29
    .line 30
    and-int/lit16 v5, v5, 0xff

    .line 31
    .line 32
    shl-int/lit8 v6, v1, 0x8

    .line 33
    .line 34
    or-int/2addr v5, v6

    .line 35
    shl-int/lit8 v6, v2, 0x9

    .line 36
    .line 37
    or-int/2addr v5, v6

    .line 38
    shl-int/lit8 v6, v3, 0xa

    .line 39
    .line 40
    or-int/2addr v5, v6

    .line 41
    shl-int/lit8 v6, v4, 0xb

    .line 42
    .line 43
    or-int/2addr v5, v6

    .line 44
    shl-int/lit8 v6, v0, 0xc

    .line 45
    .line 46
    or-int/2addr v5, v6

    .line 47
    iget v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastLoggedStateFingerprint:I

    .line 48
    .line 49
    if-eq v5, v6, :cond_6

    .line 50
    .line 51
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 52
    .line 53
    if-nez v6, :cond_0

    .line 54
    .line 55
    new-instance v6, Landroid/metrics/LogMaker;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 62
    .line 63
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    const/16 v7, 0xc5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/16 v7, 0xc4

    .line 71
    .line 72
    :goto_0
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    const/4 v7, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v7, 0x2

    .line 81
    :goto_1
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 90
    .line 91
    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 92
    .line 93
    .line 94
    iget v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 95
    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const v2, 0x8ca4

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    iput v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastLoggedStateFingerprint:I

    .line 131
    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    const-string v0, "BOUNCER"

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    const-string v0, "LOCKSCREEN"

    .line 143
    .line 144
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    if-eqz v1, :cond_4

    .line 148
    .line 149
    const-string v0, "_OPEN"

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    const-string v0, "_CLOSE"

    .line 153
    .line 154
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    if-eqz v4, :cond_5

    .line 158
    .line 159
    const-string v0, "_SECURE"

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    const-string v0, "_INSECURE"

    .line 163
    .line 164
    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    sget-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 178
    .line 179
    invoke-virtual {v0, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    return-void
.end method

.method public final maybeUpdateBarMode()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAppearance:I

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->barMode(IZ)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v1, v0, :cond_0

    .line 13
    .line 14
    iput v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v2

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 30
    .line 31
    iput v0, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 32
    .line 33
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v3, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const-string/jumbo v4, "updateBarMode"

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 53
    .line 54
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final onBackPressed()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mToolTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->hideToolTip()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->canHandleBackPressed()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()V

    .line 21
    .line 22
    .line 23
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 24
    .line 25
    if-ne p0, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState$1(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v3

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    move v0, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move v0, v5

    .line 51
    :goto_0
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 56
    .line 57
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeCustomizer()V

    .line 58
    .line 59
    .line 60
    return v3

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsSupplier:Ljava/util/function/Supplier;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move v0, v5

    .line 81
    :goto_1
    if-eqz v0, :cond_7

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsSupplier:Ljava/util/function/Supplier;

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    .line 94
    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    .line 98
    .line 99
    .line 100
    :cond_6
    return v3

    .line 101
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/android/systemui/shade/SecQuickSettingsController;->expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 106
    .line 107
    iget-boolean v1, v1, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mShouldCloseAtOnce:Z

    .line 108
    .line 109
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 110
    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    check-cast v6, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 114
    .line 115
    invoke-virtual {v6, v5}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(I)V

    .line 116
    .line 117
    .line 118
    return v3

    .line 119
    :cond_8
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 120
    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 124
    .line 125
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 126
    .line 127
    invoke-virtual {p0, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->animateCollapseQs(Z)V

    .line 128
    .line 129
    .line 130
    return v3

    .line 131
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 132
    .line 133
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    goto :goto_2

    .line 144
    :cond_a
    move v0, v5

    .line 145
    :goto_2
    if-eqz v0, :cond_b

    .line 146
    .line 147
    return v3

    .line 148
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsDlsOverlay:Z

    .line 149
    .line 150
    if-eqz v0, :cond_c

    .line 151
    .line 152
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 153
    .line 154
    if-ne v0, v3, :cond_c

    .line 155
    .line 156
    move v0, v3

    .line 157
    goto :goto_3

    .line 158
    :cond_c
    move v0, v5

    .line 159
    :goto_3
    if-eqz v0, :cond_d

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    new-instance v0, Landroid/os/Bundle;

    .line 167
    .line 168
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v1, "action"

    .line 172
    .line 173
    const-string v2, "action_back_key"

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 179
    .line 180
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 183
    .line 184
    .line 185
    return v3

    .line 186
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 187
    .line 188
    if-eq v0, v3, :cond_e

    .line 189
    .line 190
    if-eq v0, v2, :cond_e

    .line 191
    .line 192
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowingOverDream:Z

    .line 193
    .line 194
    if-nez v1, :cond_e

    .line 195
    .line 196
    move v1, v3

    .line 197
    goto :goto_4

    .line 198
    :cond_e
    move v1, v5

    .line 199
    :goto_4
    if-eqz v1, :cond_10

    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 202
    .line 203
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_f

    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 212
    .line 213
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->closeQsIfPossible()V

    .line 216
    .line 217
    .line 218
    check-cast v6, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 219
    .line 220
    invoke-virtual {v6, v5}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(I)V

    .line 221
    .line 222
    .line 223
    :cond_f
    return v3

    .line 224
    :cond_10
    if-ne v0, v2, :cond_11

    .line 225
    .line 226
    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState$1(I)V

    .line 227
    .line 228
    .line 229
    return v3

    .line 230
    :cond_11
    return v5
.end method

.method public final onInputFocusTransfer(FZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 11
    .line 12
    const-string v1, "CentralSurfaces"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string p0, "onInputFocusTransfer: mShadeSurface is null"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string v0, "onInputFocusTransfer start : "

    .line 23
    .line 24
    const-string v2, " cancel : "

    .line 25
    .line 26
    const-string v3, " velocity : "

    .line 27
    .line 28
    invoke-static {v0, p2, v2, p3, v3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 38
    .line 39
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updatePanelExpanded()V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 59
    .line 60
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 61
    .line 62
    iget-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 63
    .line 64
    if-eqz p2, :cond_6

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 68
    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    .line 71
    if-eqz p3, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    .line 78
    .line 79
    .line 80
    cmpl-float p3, p1, v0

    .line 81
    .line 82
    if-lez p3, :cond_5

    .line 83
    .line 84
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 85
    .line 86
    mul-float/2addr p1, p3

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(F)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_2
    return-void
.end method

.method public final onMenuPressed()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 25
    .line 26
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedInvisible()V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    return v2
.end method

.method public onShadeExpansionFullyChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateSystemUiStateFlags()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 33
    .line 34
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mRemoteInputActiveExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputActiveExtender;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->endAllLifetimeExtensions()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    .line 1
    const-string v0, "SYSUI_RAM_OPTIMIZATION onTrimMemory="

    .line 2
    .line 3
    const-string v1, "CentralSurfaces"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0xf

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 30
    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 52
    .line 53
    move-object v1, p1

    .line 54
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 57
    .line 58
    check-cast v1, Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/util/SparseArray;

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    return-void
.end method

.method public final openQSPanelWithDetail(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mCollapseExpandAction:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandSettingsPanel(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->expandToQs()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v1, 0xc8

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainHandler:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final postAnimateCollapsePanels()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-class p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/ShadeController;I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 35
    .line 36
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final postAnimateForceCollapsePanels()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/ShadeController;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 13
    .line 14
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public registerCallbacks()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/FoldStateListener;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/FoldStateListener;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/FoldStateListener$OnFoldStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 16
    .line 17
    invoke-virtual {v1, p0, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final releaseGestureWakeLock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setBarStateForTest(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 2
    .line 3
    return-void
.end method

.method public final setBouncerShowingForStatusBarComponents(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPhoneStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    .line 12
    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 18
    .line 19
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 27
    .line 28
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBouncerShowing:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateVisibility()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setInteracting(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    .line 8
    .line 9
    not-int p1, p1

    .line 10
    and-int/2addr p1, p2

    .line 11
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHide()V

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setNextUpdateHorizontalPosition(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->updateHorizontalPositionRunnable:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;-><init>(Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;F)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->updateHorizontalPositionRunnable:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setNotificationShadeWindowViewController(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowSwipeBouncer(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 13
    .line 14
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 20
    .line 21
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne p0, v1, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecViewController;->setShowSwipeBouncer(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final shouldAnimateDozeWakeup()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_5

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->isFolded:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    move p0, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 33
    .line 34
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 35
    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 44
    .line 45
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 46
    .line 47
    const/16 v3, 0x67

    .line 48
    .line 49
    if-eq v0, v3, :cond_4

    .line 50
    .line 51
    const/16 v3, 0x9

    .line 52
    .line 53
    if-ne v0, v3, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 57
    .line 58
    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    if-eq p0, v0, :cond_0

    .line 62
    .line 63
    :cond_4
    :goto_0
    move p0, v2

    .line 64
    :goto_1
    if-nez p0, :cond_5

    .line 65
    .line 66
    move v1, v2

    .line 67
    :cond_5
    return v1
.end method

.method public final shouldIgnoreTouch()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldIgnoreKeyguardTouches()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public final showKeyguard()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAssistManagerLazy:Ldagger/Lazy;

    .line 15
    .line 16
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/assist/AssistManager$4;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final showScreenPinningRequest(ILjava/lang/String;Z)V
    .locals 15

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    .line 5
    .line 6
    iget-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v4, "Old taskId: "

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v4, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "SamsungScreenPinningRequest"

    .line 29
    .line 30
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 44
    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_16

    .line 48
    .line 49
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 53
    .line 54
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iget-object v0, v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    .line 63
    .line 64
    const/4 v6, 0x2

    .line 65
    invoke-virtual {v0, v3, v6, v5}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v0, 0x0

    .line 74
    move v6, v0

    .line 75
    :goto_0
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x1

    .line 77
    const-string v9, "New taskId: "

    .line 78
    .line 79
    if-ge v6, v5, :cond_7

    .line 80
    .line 81
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v10, v0

    .line 86
    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 87
    .line 88
    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 94
    .line 95
    :goto_1
    iget-object v11, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 96
    .line 97
    iget v12, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 98
    .line 99
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    :try_start_0
    sget-object v11, Lcom/android/systemui/shared/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 103
    .line 104
    const-wide/16 v13, 0x80

    .line 105
    .line 106
    invoke-interface {v11, v0, v13, v14, v12}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    move-object v0, v7

    .line 116
    :goto_2
    if-nez v0, :cond_3

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_3
    iget v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 121
    .line 122
    if-ne v11, v1, :cond_6

    .line 123
    .line 124
    iget-object v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 125
    .line 126
    iget-object v5, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    iget v6, v10, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eq v6, v5, :cond_4

    .line 150
    .line 151
    new-instance v5, Landroid/os/UserHandle;

    .line 152
    .line 153
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :cond_4
    iput-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const/high16 v3, 0x800000

    .line 173
    .line 174
    and-int/2addr v0, v3

    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    move v0, v8

    .line 178
    goto :goto_3

    .line 179
    :cond_5
    const/4 v0, 0x0

    .line 180
    :goto_3
    iput-boolean v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    iget-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 185
    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v6, "flag:"

    .line 189
    .line 190
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v6, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 194
    .line 195
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v6, " / intent:"

    .line 207
    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_7
    :goto_4
    iput v1, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 231
    .line 232
    iget-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 233
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget v5, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 240
    .line 241
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_5
    move-object/from16 v3, p2

    .line 256
    .line 257
    iput-object v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    .line 258
    .line 259
    move/from16 v3, p3

    .line 260
    .line 261
    iput-boolean v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    .line 262
    .line 263
    iput v1, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 264
    .line 265
    new-instance v0, Landroid/content/IntentFilter;

    .line 266
    .line 267
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v1, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 286
    .line 287
    iget-object v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;

    .line 288
    .line 289
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 290
    .line 291
    .line 292
    iget-boolean v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    .line 293
    .line 294
    if-eqz v0, :cond_8

    .line 295
    .line 296
    invoke-virtual {v2, v8, v7}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->createDialog(ILandroid/widget/LinearLayout;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_15

    .line 300
    .line 301
    :cond_8
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 302
    .line 303
    if-eqz v0, :cond_9

    .line 304
    .line 305
    iget v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    .line 306
    .line 307
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    goto :goto_6

    .line 312
    :cond_9
    const/4 v0, 0x0

    .line 313
    :goto_6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 314
    .line 315
    iget-object v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 316
    .line 317
    const v5, 0x7f140560

    .line 318
    .line 319
    .line 320
    invoke-direct {v1, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 321
    .line 322
    .line 323
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    iget-object v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 328
    .line 329
    iget-object v5, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-interface {v3, v5}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 343
    .line 344
    .line 345
    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    goto :goto_7

    .line 347
    :catch_1
    const/4 v3, 0x0

    .line 348
    :goto_7
    if-eqz v3, :cond_b

    .line 349
    .line 350
    if-eqz v0, :cond_a

    .line 351
    .line 352
    const v3, 0x7f0d0315

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_a
    const v3, 0x7f0d0317

    .line 357
    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_b
    const v3, 0x7f0d0316

    .line 361
    .line 362
    .line 363
    :goto_8
    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Landroid/widget/LinearLayout;

    .line 368
    .line 369
    const v3, 0x7f0a07eb

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    check-cast v3, Landroid/widget/TextView;

    .line 377
    .line 378
    invoke-virtual {v2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->onTouchExplorationEnabled()Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    iput-boolean v5, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    .line 383
    .line 384
    iget-object v5, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 385
    .line 386
    iget-object v6, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    :try_start_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 400
    .line 401
    .line 402
    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 403
    goto :goto_9

    .line 404
    :catch_2
    const/4 v5, 0x0

    .line 405
    :goto_9
    if-eqz v5, :cond_e

    .line 406
    .line 407
    iget-object v5, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 408
    .line 409
    if-eqz v0, :cond_c

    .line 410
    .line 411
    const v6, 0x7f130e79

    .line 412
    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_c
    iget-boolean v6, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    .line 416
    .line 417
    if-eqz v6, :cond_d

    .line 418
    .line 419
    const v6, 0x7f130a87

    .line 420
    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_d
    const v6, 0x7f130a86

    .line 424
    .line 425
    .line 426
    :goto_a
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    goto :goto_c

    .line 434
    :cond_e
    iget-object v5, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 435
    .line 436
    iget-boolean v6, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    .line 437
    .line 438
    if-eqz v6, :cond_f

    .line 439
    .line 440
    const v6, 0x7f130a85

    .line 441
    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_f
    const v6, 0x7f130a84

    .line 445
    .line 446
    .line 447
    :goto_b
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    :goto_c
    if-nez v0, :cond_18

    .line 455
    .line 456
    iget-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const-string v3, "navigationbar_key_order"

    .line 463
    .line 464
    const/4 v5, 0x0

    .line 465
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    const v3, 0x7f0a05ae

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    check-cast v3, Landroid/widget/ImageView;

    .line 477
    .line 478
    const v5, 0x7f0a08d5

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    check-cast v5, Landroid/widget/ImageView;

    .line 486
    .line 487
    const v6, 0x7f080d3c

    .line 488
    .line 489
    .line 490
    const v10, 0x7f080d3b

    .line 491
    .line 492
    .line 493
    if-nez v0, :cond_10

    .line 494
    .line 495
    move v11, v6

    .line 496
    goto :goto_d

    .line 497
    :cond_10
    move v11, v10

    .line 498
    :goto_d
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    .line 500
    .line 501
    if-eqz v0, :cond_11

    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_11
    move v6, v10

    .line 505
    :goto_e
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    .line 507
    .line 508
    iget-object v6, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 509
    .line 510
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    iget-object v10, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 515
    .line 516
    iget-object v11, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 517
    .line 518
    invoke-virtual {v11}, Landroid/content/Context;->getDisplayId()I

    .line 519
    .line 520
    .line 521
    move-result v11

    .line 522
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    :try_start_3
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 530
    .line 531
    .line 532
    move-result v10
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 533
    goto :goto_f

    .line 534
    :catch_3
    const/4 v10, 0x0

    .line 535
    :goto_f
    if-eqz v10, :cond_12

    .line 536
    .line 537
    const v10, 0x7f060539

    .line 538
    .line 539
    .line 540
    goto :goto_10

    .line 541
    :cond_12
    const v10, 0x7f06053a

    .line 542
    .line 543
    .line 544
    :goto_10
    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 560
    .line 561
    .line 562
    iget-object v6, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 563
    .line 564
    invoke-static {v6}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    if-ne v6, v8, :cond_13

    .line 569
    .line 570
    goto :goto_11

    .line 571
    :cond_13
    const/4 v8, 0x0

    .line 572
    :goto_11
    iget-object v6, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 573
    .line 574
    iget-object v7, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 575
    .line 576
    invoke-virtual {v7}, Landroid/content/Context;->getDisplayId()I

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    :try_start_4
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 588
    .line 589
    .line 590
    move-result v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 591
    goto :goto_12

    .line 592
    :catch_4
    const/4 v6, 0x0

    .line 593
    :goto_12
    if-eqz v6, :cond_15

    .line 594
    .line 595
    if-eqz v8, :cond_15

    .line 596
    .line 597
    const/high16 v6, -0x40800000    # -1.0f

    .line 598
    .line 599
    if-nez v0, :cond_14

    .line 600
    .line 601
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 602
    .line 603
    .line 604
    goto :goto_13

    .line 605
    :cond_14
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 606
    .line 607
    .line 608
    :cond_15
    :goto_13
    invoke-virtual {v2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->onTouchExplorationEnabled()Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    iput-boolean v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    .line 613
    .line 614
    const v3, 0x7f0a08d2

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    check-cast v3, Landroid/widget/ImageView;

    .line 622
    .line 623
    const v5, 0x7f0a05ac

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    check-cast v5, Landroid/widget/ImageView;

    .line 631
    .line 632
    iget-boolean v6, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    .line 633
    .line 634
    if-eqz v6, :cond_17

    .line 635
    .line 636
    const/4 v6, 0x4

    .line 637
    if-nez v0, :cond_16

    .line 638
    .line 639
    const/4 v0, 0x0

    .line 640
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    .line 645
    .line 646
    goto :goto_14

    .line 647
    :cond_16
    const/4 v0, 0x0

    .line 648
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    .line 653
    .line 654
    goto :goto_14

    .line 655
    :cond_17
    const/4 v0, 0x0

    .line 656
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    .line 661
    .line 662
    :cond_18
    :goto_14
    const/4 v0, 0x2

    .line 663
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->createDialog(ILandroid/widget/LinearLayout;)V

    .line 664
    .line 665
    .line 666
    :goto_15
    iget-object v0, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 667
    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    iget v3, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 674
    .line 675
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    const-string v3, "mIsExcluded: "

    .line 683
    .line 684
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    iget-boolean v2, v2, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    .line 688
    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    :goto_16
    return-void
.end method

.method public final start()V
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 4
    .line 5
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 11
    .line 12
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-class v1, Landroid/app/UiModeManager;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/UiModeManager;

    .line 26
    .line 27
    iput-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    .line 28
    .line 29
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    .line 30
    .line 31
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 32
    .line 33
    const/4 v10, 0x2

    .line 34
    invoke-direct {v1, v9, v10}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mInitialized:Z

    .line 43
    .line 44
    const/4 v11, 0x1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mInitialized:Z

    .line 49
    .line 50
    const-string v1, "icon_blacklist"

    .line 51
    .line 52
    filled-new-array {v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 62
    .line 63
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 69
    .line 70
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDesktopStatusBarIconUpdateCallback:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 78
    .line 79
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/DesktopManagerImpl;->setDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init()V

    .line 87
    .line 88
    .line 89
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 90
    .line 91
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateDisplaySize()V

    .line 111
    .line 112
    .line 113
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 114
    .line 115
    iget v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 116
    .line 117
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->displayId:I

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->initShadeVisibilityListener()V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 123
    .line 124
    .line 125
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    const-string v1, "device_policy"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 134
    .line 135
    iput-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 136
    .line 137
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    const-string v1, "accessibility"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 146
    .line 147
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 148
    .line 149
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 150
    .line 151
    iput-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 152
    .line 153
    const-string/jumbo v0, "statusbar"

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 165
    .line 166
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    const-string v1, "keyguard"

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Landroid/app/KeyguardManager;

    .line 175
    .line 176
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iput-boolean v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    .line 183
    .line 184
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v12, 0x0

    .line 188
    if-eqz v0, :cond_29

    .line 189
    .line 190
    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 197
    .line 198
    iput-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 199
    .line 200
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 203
    .line 204
    const-class v2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 211
    .line 212
    if-eqz v1, :cond_1

    .line 213
    .line 214
    invoke-interface {v1, v8}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->addColorCallback(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 218
    .line 219
    const-class v2, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    .line 226
    .line 227
    if-eqz v2, :cond_3

    .line 228
    .line 229
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$1;

    .line 230
    .line 231
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 232
    .line 233
    .line 234
    iget-object v4, v2, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor$addCallback$2;

    .line 235
    .line 236
    iget-object v5, v2, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 237
    .line 238
    if-eqz v4, :cond_2

    .line 239
    .line 240
    invoke-virtual {v5, v4}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 241
    .line 242
    .line 243
    :cond_2
    new-instance v4, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor$addCallback$2;

    .line 244
    .line 245
    invoke-direct {v4, v3, v2}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;)V

    .line 246
    .line 247
    .line 248
    iput-object v4, v2, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor$addCallback$2;

    .line 249
    .line 250
    const-string v2, "navigationbar_key_order"

    .line 251
    .line 252
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    filled-new-array {v2}, [Landroid/net/Uri;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v5, v4, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 261
    .line 262
    .line 263
    :cond_3
    const-class v2, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    .line 270
    .line 271
    if-eqz v2, :cond_5

    .line 272
    .line 273
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$2;

    .line 274
    .line 275
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$2;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 276
    .line 277
    .line 278
    iget-object v4, v2, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor$addCallback$2;

    .line 279
    .line 280
    iget-object v5, v2, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 281
    .line 282
    if-eqz v4, :cond_4

    .line 283
    .line 284
    invoke-virtual {v5, v4}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 285
    .line 286
    .line 287
    :cond_4
    new-instance v4, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor$addCallback$2;

    .line 288
    .line 289
    invoke-direct {v4, v3, v2}, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;)V

    .line 290
    .line 291
    .line 292
    iput-object v4, v2, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor$addCallback$2;

    .line 293
    .line 294
    const-string v2, "navigationbar_key_position"

    .line 295
    .line 296
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    filled-new-array {v2}, [Landroid/net/Uri;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v5, v4, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 305
    .line 306
    .line 307
    :cond_5
    const-class v2, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    .line 314
    .line 315
    if-eqz v2, :cond_7

    .line 316
    .line 317
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$3;

    .line 318
    .line 319
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$3;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 320
    .line 321
    .line 322
    iget-object v4, v2, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor$addCallback$2;

    .line 323
    .line 324
    iget-object v5, v2, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 325
    .line 326
    if-eqz v4, :cond_6

    .line 327
    .line 328
    invoke-virtual {v5, v4}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 329
    .line 330
    .line 331
    :cond_6
    new-instance v4, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor$addCallback$2;

    .line 332
    .line 333
    invoke-direct {v4, v3, v2}, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;)V

    .line 334
    .line 335
    .line 336
    iput-object v4, v2, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor$addCallback$2;

    .line 337
    .line 338
    const-string v3, "navigation_bar_button_to_hide_keyboard"

    .line 339
    .line 340
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    filled-new-array {v3}, [Landroid/net/Uri;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v2, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor$addCallback$2;

    .line 352
    .line 353
    const-string/jumbo v3, "show_keyboard_button"

    .line 354
    .line 355
    .line 356
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    filled-new-array {v3}, [Landroid/net/Uri;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 365
    .line 366
    .line 367
    :cond_7
    const-class v2, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    check-cast v2, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    .line 374
    .line 375
    if-eqz v2, :cond_9

    .line 376
    .line 377
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$4;

    .line 378
    .line 379
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$4;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 380
    .line 381
    .line 382
    iget-object v4, v2, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$addCallback$2$1;

    .line 383
    .line 384
    iget-object v5, v2, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 385
    .line 386
    if-eqz v4, :cond_8

    .line 387
    .line 388
    invoke-virtual {v5, v4}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 389
    .line 390
    .line 391
    :cond_8
    iget-object v4, v5, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 392
    .line 393
    const-string v6, "navigation_bar_gesture_disabled_by_policy"

    .line 394
    .line 395
    invoke-static {v4, v6, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    .line 397
    .line 398
    new-instance v4, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$addCallback$2$1;

    .line 399
    .line 400
    invoke-direct {v4, v3, v2}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$addCallback$2$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;)V

    .line 401
    .line 402
    .line 403
    iput-object v4, v2, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$addCallback$2$1;

    .line 404
    .line 405
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    filled-new-array {v2}, [Landroid/net/Uri;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v5, v4, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 414
    .line 415
    .line 416
    :cond_9
    const-class v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    check-cast v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 423
    .line 424
    if-eqz v2, :cond_a

    .line 425
    .line 426
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$5;

    .line 427
    .line 428
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$5;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 429
    .line 430
    .line 431
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$6;

    .line 432
    .line 433
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$6;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 434
    .line 435
    .line 436
    iput-object v3, v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->forcedVisibleCallback:Ljava/util/function/Consumer;

    .line 437
    .line 438
    iput-object v4, v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomSensitivityCallback:Ljava/util/function/Consumer;

    .line 439
    .line 440
    iget-object v2, v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 441
    .line 442
    invoke-virtual {v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    .line 443
    .line 444
    .line 445
    :cond_a
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 446
    .line 447
    if-eqz v2, :cond_e

    .line 448
    .line 449
    const-class v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 450
    .line 451
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 456
    .line 457
    if-eqz v3, :cond_e

    .line 458
    .line 459
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$7;

    .line 460
    .line 461
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$7;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 462
    .line 463
    .line 464
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

    .line 465
    .line 466
    if-eqz v5, :cond_b

    .line 467
    .line 468
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 469
    .line 470
    invoke-virtual {v6, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 471
    .line 472
    .line 473
    :cond_b
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

    .line 474
    .line 475
    invoke-direct {v5, v3, v4}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V

    .line 476
    .line 477
    .line 478
    iget-object v13, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 479
    .line 480
    iget-object v15, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->intentFilter:Landroid/content/IntentFilter;

    .line 481
    .line 482
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->bgHandler:Landroid/os/Handler;

    .line 483
    .line 484
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 485
    .line 486
    const/16 v18, 0x30

    .line 487
    .line 488
    move-object v14, v5

    .line 489
    move-object/from16 v16, v6

    .line 490
    .line 491
    invoke-static/range {v13 .. v18}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;I)V

    .line 492
    .line 493
    .line 494
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

    .line 495
    .line 496
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$5;

    .line 497
    .line 498
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 499
    .line 500
    if-eqz v5, :cond_c

    .line 501
    .line 502
    invoke-virtual {v6, v5}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 503
    .line 504
    .line 505
    :cond_c
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$5;

    .line 506
    .line 507
    invoke-direct {v5, v4}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$5;-><init>(Ljava/lang/Runnable;)V

    .line 508
    .line 509
    .line 510
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$5;

    .line 511
    .line 512
    const-string/jumbo v7, "task_bar"

    .line 513
    .line 514
    .line 515
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    const-string v13, "minimal_battery_use"

    .line 520
    .line 521
    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 522
    .line 523
    .line 524
    move-result-object v13

    .line 525
    const-string/jumbo v14, "user_setup_complete"

    .line 526
    .line 527
    .line 528
    invoke-static {v14}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 529
    .line 530
    .line 531
    move-result-object v14

    .line 532
    filled-new-array {v7, v13, v14}, [Landroid/net/Uri;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 537
    .line 538
    .line 539
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    .line 540
    .line 541
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleManager:Landroid/app/role/RoleManager;

    .line 542
    .line 543
    if-eqz v5, :cond_d

    .line 544
    .line 545
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 546
    .line 547
    invoke-virtual {v6, v5, v7}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 548
    .line 549
    .line 550
    :cond_d
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    .line 551
    .line 552
    invoke-direct {v5, v3, v4}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;-><init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V

    .line 553
    .line 554
    .line 555
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    .line 556
    .line 557
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 558
    .line 559
    invoke-static {v4}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    iget-object v3, v3, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    .line 564
    .line 565
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 569
    .line 570
    invoke-virtual {v6, v4, v3, v5}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 571
    .line 572
    .line 573
    :cond_e
    const-class v3, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    .line 574
    .line 575
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    .line 580
    .line 581
    if-eqz v3, :cond_10

    .line 582
    .line 583
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$8;

    .line 584
    .line 585
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$8;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 586
    .line 587
    .line 588
    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$9;

    .line 589
    .line 590
    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$9;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 591
    .line 592
    .line 593
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->knoxStateMonitorCallback:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    .line 594
    .line 595
    const-class v7, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 596
    .line 597
    if-eqz v6, :cond_f

    .line 598
    .line 599
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v13

    .line 603
    check-cast v13, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 604
    .line 605
    check-cast v13, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 606
    .line 607
    invoke-virtual {v13, v6}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 608
    .line 609
    .line 610
    :cond_f
    new-instance v6, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    .line 611
    .line 612
    invoke-direct {v6, v4, v5}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 613
    .line 614
    .line 615
    iput-object v6, v3, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->knoxStateMonitorCallback:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    .line 616
    .line 617
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 622
    .line 623
    iget-object v3, v3, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->knoxStateMonitorCallback:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;

    .line 624
    .line 625
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 626
    .line 627
    invoke-virtual {v4, v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 628
    .line 629
    .line 630
    :cond_10
    const-class v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    .line 631
    .line 632
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    .line 637
    .line 638
    if-eqz v3, :cond_13

    .line 639
    .line 640
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$10;

    .line 641
    .line 642
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$10;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 643
    .line 644
    .line 645
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

    .line 646
    .line 647
    if-eqz v5, :cond_11

    .line 648
    .line 649
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 650
    .line 651
    invoke-virtual {v6, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 652
    .line 653
    .line 654
    :cond_11
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

    .line 655
    .line 656
    invoke-direct {v5, v4}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;-><init>(Ljava/lang/Runnable;)V

    .line 657
    .line 658
    .line 659
    iget-object v13, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 660
    .line 661
    iget-object v15, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->intentFilter:Landroid/content/IntentFilter;

    .line 662
    .line 663
    const/16 v16, 0x0

    .line 664
    .line 665
    const/16 v17, 0x0

    .line 666
    .line 667
    const/16 v18, 0x0

    .line 668
    .line 669
    const/16 v19, 0x0

    .line 670
    .line 671
    const/16 v20, 0x3c

    .line 672
    .line 673
    move-object v14, v5

    .line 674
    invoke-static/range {v13 .. v20}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 675
    .line 676
    .line 677
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

    .line 678
    .line 679
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$5;

    .line 680
    .line 681
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 682
    .line 683
    if-eqz v5, :cond_12

    .line 684
    .line 685
    invoke-virtual {v6, v5}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 686
    .line 687
    .line 688
    :cond_12
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$5;

    .line 689
    .line 690
    invoke-direct {v5, v4}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$5;-><init>(Ljava/lang/Runnable;)V

    .line 691
    .line 692
    .line 693
    const-string/jumbo v4, "wallpapertheme_state"

    .line 694
    .line 695
    .line 696
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    filled-new-array {v4}, [Landroid/net/Uri;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 705
    .line 706
    .line 707
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$5;

    .line 708
    .line 709
    :cond_13
    const-class v3, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    .line 710
    .line 711
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    .line 716
    .line 717
    if-eqz v3, :cond_15

    .line 718
    .line 719
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;

    .line 720
    .line 721
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 722
    .line 723
    .line 724
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor$addCallback$2;

    .line 725
    .line 726
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 727
    .line 728
    if-eqz v5, :cond_14

    .line 729
    .line 730
    invoke-virtual {v6, v5}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 731
    .line 732
    .line 733
    :cond_14
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor$addCallback$2;

    .line 734
    .line 735
    invoke-direct {v5, v4}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor$addCallback$2;-><init>(Ljava/lang/Runnable;)V

    .line 736
    .line 737
    .line 738
    const-string v4, "navigationbar_use_theme_default"

    .line 739
    .line 740
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    filled-new-array {v4}, [Landroid/net/Uri;

    .line 745
    .line 746
    .line 747
    move-result-object v4

    .line 748
    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 749
    .line 750
    .line 751
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor$addCallback$2;

    .line 752
    .line 753
    :cond_15
    const-class v3, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    .line 754
    .line 755
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    .line 760
    .line 761
    if-eqz v3, :cond_17

    .line 762
    .line 763
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$12;

    .line 764
    .line 765
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$12;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 766
    .line 767
    .line 768
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockCallback:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;

    .line 769
    .line 770
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 771
    .line 772
    if-eqz v5, :cond_16

    .line 773
    .line 774
    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    :cond_16
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;

    .line 778
    .line 779
    invoke-direct {v5, v4, v3}, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;)V

    .line 780
    .line 781
    .line 782
    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockCallback:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;

    .line 786
    .line 787
    :cond_17
    const-class v3, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    .line 788
    .line 789
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    .line 794
    .line 795
    if-eqz v3, :cond_1a

    .line 796
    .line 797
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$13;

    .line 798
    .line 799
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$13;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 800
    .line 801
    .line 802
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;

    .line 803
    .line 804
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 805
    .line 806
    if-eqz v5, :cond_18

    .line 807
    .line 808
    invoke-virtual {v6, v5}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 809
    .line 810
    .line 811
    :cond_18
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;

    .line 812
    .line 813
    invoke-direct {v5, v4, v3}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;)V

    .line 814
    .line 815
    .line 816
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;

    .line 817
    .line 818
    const-string v3, "any_screen_running"

    .line 819
    .line 820
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    const-string/jumbo v7, "reduce_screen_running_info"

    .line 825
    .line 826
    .line 827
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 828
    .line 829
    .line 830
    move-result-object v7

    .line 831
    filled-new-array {v3, v7}, [Landroid/net/Uri;

    .line 832
    .line 833
    .line 834
    move-result-object v3

    .line 835
    invoke-virtual {v6, v5, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 836
    .line 837
    .line 838
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 839
    .line 840
    if-eqz v3, :cond_19

    .line 841
    .line 842
    iget-object v3, v6, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 843
    .line 844
    const-string/jumbo v5, "reduce_screen_running_info"

    .line 845
    .line 846
    .line 847
    invoke-virtual {v3, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v3

    .line 855
    goto :goto_1

    .line 856
    :cond_19
    move-object v3, v8

    .line 857
    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$13;->accept(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    :cond_1a
    const-class v3, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    .line 861
    .line 862
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    .line 867
    .line 868
    if-eqz v3, :cond_1c

    .line 869
    .line 870
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;

    .line 871
    .line 872
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 873
    .line 874
    .line 875
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;

    .line 876
    .line 877
    if-eqz v5, :cond_1b

    .line 878
    .line 879
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 880
    .line 881
    invoke-virtual {v6, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 882
    .line 883
    .line 884
    :cond_1b
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;

    .line 885
    .line 886
    invoke-direct {v5, v4}, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;-><init>(Ljava/lang/Runnable;)V

    .line 887
    .line 888
    .line 889
    iget-object v13, v3, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 890
    .line 891
    iget-object v15, v3, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->intentFilter:Landroid/content/IntentFilter;

    .line 892
    .line 893
    const/16 v16, 0x0

    .line 894
    .line 895
    const/16 v17, 0x0

    .line 896
    .line 897
    const/16 v18, 0x0

    .line 898
    .line 899
    const/16 v19, 0x0

    .line 900
    .line 901
    const/16 v20, 0x3c

    .line 902
    .line 903
    move-object v14, v5

    .line 904
    invoke-static/range {v13 .. v20}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 905
    .line 906
    .line 907
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$addCallback$2;

    .line 908
    .line 909
    :cond_1c
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    .line 910
    .line 911
    if-eqz v3, :cond_1e

    .line 912
    .line 913
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 914
    .line 915
    if-nez v3, :cond_1e

    .line 916
    .line 917
    const-class v3, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 918
    .line 919
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 924
    .line 925
    if-eqz v3, :cond_1e

    .line 926
    .line 927
    iget-object v4, v3, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;

    .line 928
    .line 929
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 930
    .line 931
    if-eqz v4, :cond_1d

    .line 932
    .line 933
    invoke-virtual {v5, v4}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 934
    .line 935
    .line 936
    :cond_1d
    new-instance v4, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;

    .line 937
    .line 938
    invoke-direct {v4, v3}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V

    .line 939
    .line 940
    .line 941
    iput-object v4, v3, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;

    .line 942
    .line 943
    const-string/jumbo v3, "show_navigation_for_subscreen"

    .line 944
    .line 945
    .line 946
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 947
    .line 948
    .line 949
    move-result-object v3

    .line 950
    filled-new-array {v3}, [Landroid/net/Uri;

    .line 951
    .line 952
    .line 953
    move-result-object v3

    .line 954
    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 955
    .line 956
    .line 957
    :cond_1e
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 958
    .line 959
    if-eqz v3, :cond_20

    .line 960
    .line 961
    const-class v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    .line 962
    .line 963
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v3

    .line 967
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    .line 968
    .line 969
    if-eqz v3, :cond_20

    .line 970
    .line 971
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$15;

    .line 972
    .line 973
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$15;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 974
    .line 975
    .line 976
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;

    .line 977
    .line 978
    if-eqz v5, :cond_1f

    .line 979
    .line 980
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 981
    .line 982
    invoke-virtual {v6, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 983
    .line 984
    .line 985
    :cond_1f
    new-instance v14, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;

    .line 986
    .line 987
    invoke-direct {v14, v4}, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;)V

    .line 988
    .line 989
    .line 990
    iput-object v14, v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;

    .line 991
    .line 992
    iget-object v13, v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 993
    .line 994
    iget-object v15, v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->intentFilter:Landroid/content/IntentFilter;

    .line 995
    .line 996
    const/16 v16, 0x0

    .line 997
    .line 998
    iget-object v3, v3, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 999
    .line 1000
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1001
    .line 1002
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v17

    .line 1006
    const/16 v18, 0x0

    .line 1007
    .line 1008
    const/16 v19, 0x0

    .line 1009
    .line 1010
    const/16 v20, 0x30

    .line 1011
    .line 1012
    invoke-static/range {v13 .. v20}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 1013
    .line 1014
    .line 1015
    :cond_20
    sget-boolean v3, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 1016
    .line 1017
    if-nez v3, :cond_21

    .line 1018
    .line 1019
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 1020
    .line 1021
    if-nez v3, :cond_21

    .line 1022
    .line 1023
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    .line 1024
    .line 1025
    if-eqz v3, :cond_25

    .line 1026
    .line 1027
    :cond_21
    const-class v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 1028
    .line 1029
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    check-cast v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 1034
    .line 1035
    if-eqz v3, :cond_25

    .line 1036
    .line 1037
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16;

    .line 1038
    .line 1039
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 1040
    .line 1041
    .line 1042
    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;

    .line 1043
    .line 1044
    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 1045
    .line 1046
    .line 1047
    new-instance v6, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;

    .line 1048
    .line 1049
    invoke-direct {v6, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 1050
    .line 1051
    .line 1052
    new-instance v7, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;

    .line 1053
    .line 1054
    invoke-direct {v7, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 1055
    .line 1056
    .line 1057
    iget-object v13, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 1058
    .line 1059
    iget-object v14, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 1060
    .line 1061
    if-eqz v13, :cond_22

    .line 1062
    .line 1063
    invoke-virtual {v14, v13}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_22
    new-instance v13, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 1067
    .line 1068
    new-instance v15, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;

    .line 1069
    .line 1070
    invoke-direct {v15, v3, v4, v5}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1071
    .line 1072
    .line 1073
    iget-object v4, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->context:Landroid/content/Context;

    .line 1074
    .line 1075
    invoke-direct {v13, v4, v15}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 1076
    .line 1077
    .line 1078
    iput-object v13, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 1079
    .line 1080
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    .line 1081
    .line 1082
    if-eqz v5, :cond_24

    .line 1083
    .line 1084
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    .line 1085
    .line 1086
    if-eqz v5, :cond_23

    .line 1087
    .line 1088
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v13

    .line 1092
    invoke-interface {v13, v5}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1093
    .line 1094
    .line 1095
    :cond_23
    new-instance v5, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    .line 1096
    .line 1097
    invoke-direct {v5, v3, v6}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;)V

    .line 1098
    .line 1099
    .line 1100
    iput-object v5, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    .line 1101
    .line 1102
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v5

    .line 1106
    iget-object v6, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    .line 1107
    .line 1108
    invoke-interface {v5, v6}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1109
    .line 1110
    .line 1111
    :cond_24
    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4

    .line 1115
    iget-object v5, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 1116
    .line 1117
    invoke-virtual {v14, v4, v5}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 1118
    .line 1119
    .line 1120
    iput-object v7, v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->largeCoverRotationCallback:Ljava/util/function/Consumer;

    .line 1121
    .line 1122
    :cond_25
    const-class v3, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    .line 1123
    .line 1124
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    check-cast v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    .line 1129
    .line 1130
    if-eqz v1, :cond_27

    .line 1131
    .line 1132
    sget-object v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;

    .line 1133
    .line 1134
    iget-object v4, v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$addCallback$2;

    .line 1135
    .line 1136
    iget-object v5, v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1137
    .line 1138
    if-eqz v4, :cond_26

    .line 1139
    .line 1140
    invoke-virtual {v5, v4}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 1141
    .line 1142
    .line 1143
    :cond_26
    new-instance v4, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$addCallback$2;

    .line 1144
    .line 1145
    invoke-direct {v4, v3}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$addCallback$2;-><init>(Ljava/lang/Runnable;)V

    .line 1146
    .line 1147
    .line 1148
    iput-object v4, v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$addCallback$2;

    .line 1149
    .line 1150
    const-string v1, "navigationbar_splugin_flags"

    .line 1151
    .line 1152
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v1

    .line 1156
    filled-new-array {v1}, [Landroid/net/Uri;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    invoke-virtual {v5, v4, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 1161
    .line 1162
    .line 1163
    :cond_27
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    .line 1164
    .line 1165
    check-cast v1, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;

    .line 1166
    .line 1167
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v1

    .line 1171
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    .line 1172
    .line 1173
    if-eqz v2, :cond_2a

    .line 1174
    .line 1175
    const-class v1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1176
    .line 1177
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    check-cast v2, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1182
    .line 1183
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1184
    .line 1185
    if-eqz v2, :cond_28

    .line 1186
    .line 1187
    iget-object v3, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 1188
    .line 1189
    iput-object v3, v2, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 1190
    .line 1191
    :cond_28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 1195
    .line 1196
    .line 1197
    goto :goto_2

    .line 1198
    :cond_29
    new-instance v0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 1199
    .line 1200
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 1201
    .line 1202
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    .line 1203
    .line 1204
    .line 1205
    :cond_2a
    :goto_2
    :try_start_0
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1206
    .line 1207
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1208
    .line 1209
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    goto :goto_3

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1216
    .line 1217
    .line 1218
    move-object v0, v8

    .line 1219
    :goto_3
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 1220
    .line 1221
    .line 1222
    iget-boolean v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    .line 1223
    .line 1224
    if-eqz v1, :cond_2b

    .line 1225
    .line 1226
    new-instance v1, Landroid/content/IntentFilter;

    .line 1227
    .line 1228
    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    .line 1229
    .line 1230
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 1234
    .line 1235
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperChangedReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    .line 1236
    .line 1237
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1238
    .line 1239
    invoke-virtual {v2, v3, v1, v8, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 1240
    .line 1241
    .line 1242
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperChangedReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    .line 1243
    .line 1244
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 1245
    .line 1246
    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1247
    .line 1248
    .line 1249
    :cond_2b
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityLaunchAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;

    .line 1250
    .line 1251
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 1252
    .line 1253
    iput-object v1, v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    .line 1254
    .line 1255
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityLaunchAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;

    .line 1256
    .line 1257
    iget-object v2, v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 1258
    .line 1259
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    .line 1263
    .line 1264
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 1265
    .line 1266
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 1267
    .line 1268
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1269
    .line 1270
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 1271
    .line 1272
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/internal/jank/InteractionJankMonitor;)V

    .line 1273
    .line 1274
    .line 1275
    iput-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    .line 1276
    .line 1277
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 1278
    .line 1279
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 1280
    .line 1281
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->addControllerCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1285
    .line 1286
    iget-object v6, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1287
    .line 1288
    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1289
    .line 1290
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 1291
    .line 1292
    iput-object v6, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1293
    .line 1294
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 1295
    .line 1296
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 1297
    .line 1298
    check-cast v2, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 1299
    .line 1300
    iput-object v3, v2, Lcom/android/systemui/shade/ShadeControllerImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 1301
    .line 1302
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 1303
    .line 1304
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 1305
    .line 1306
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStackController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;

    .line 1307
    .line 1308
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCentralSurfacesComponent:Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;

    .line 1309
    .line 1310
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;->getBindRowCallback()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v7

    .line 1314
    move-object v1, v2

    .line 1315
    move-object/from16 v2, p0

    .line 1316
    .line 1317
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V

    .line 1318
    .line 1319
    .line 1320
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    .line 1321
    .line 1322
    if-eqz v1, :cond_2c

    .line 1323
    .line 1324
    const-class v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 1325
    .line 1326
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 1331
    .line 1332
    iput-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 1333
    .line 1334
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1335
    .line 1336
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 1337
    .line 1338
    if-eqz v1, :cond_2c

    .line 1339
    .line 1340
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1341
    .line 1342
    :cond_2c
    iget v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:I

    .line 1343
    .line 1344
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 1345
    .line 1346
    .line 1347
    move-result v2

    .line 1348
    and-int/2addr v1, v2

    .line 1349
    if-eqz v1, :cond_2d

    .line 1350
    .line 1351
    iget-boolean v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 1352
    .line 1353
    if-nez v1, :cond_2d

    .line 1354
    .line 1355
    iput-boolean v11, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 1356
    .line 1357
    iput-boolean v11, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoAnimationOnNextBarModeChange:Z

    .line 1358
    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->maybeUpdateBarMode()V

    .line 1360
    .line 1361
    .line 1362
    :cond_2d
    iget-object v13, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 1363
    .line 1364
    iget v14, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 1365
    .line 1366
    iget v15, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    .line 1367
    .line 1368
    iget-object v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1369
    .line 1370
    iget-boolean v2, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    .line 1371
    .line 1372
    iget v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mBehavior:I

    .line 1373
    .line 1374
    iget v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mRequestedVisibleTypes:I

    .line 1375
    .line 1376
    iget-object v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mPackageName:Ljava/lang/String;

    .line 1377
    .line 1378
    iget-object v6, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1379
    .line 1380
    move-object/from16 v16, v1

    .line 1381
    .line 1382
    move/from16 v17, v2

    .line 1383
    .line 1384
    move/from16 v18, v3

    .line 1385
    .line 1386
    move/from16 v19, v4

    .line 1387
    .line 1388
    move-object/from16 v20, v5

    .line 1389
    .line 1390
    move-object/from16 v21, v6

    .line 1391
    .line 1392
    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 1393
    .line 1394
    .line 1395
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 1396
    .line 1397
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1398
    .line 1399
    .line 1400
    iget-object v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    .line 1401
    .line 1402
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 1403
    .line 1404
    .line 1405
    move-result v1

    .line 1406
    move v2, v12

    .line 1407
    :goto_4
    if-ge v2, v1, :cond_2e

    .line 1408
    .line 1409
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1410
    .line 1411
    iget-object v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    .line 1412
    .line 1413
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v4

    .line 1417
    check-cast v4, Ljava/lang/String;

    .line 1418
    .line 1419
    iget-object v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    .line 1420
    .line 1421
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v5

    .line 1425
    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 1426
    .line 1427
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 1428
    .line 1429
    .line 1430
    add-int/lit8 v2, v2, 0x1

    .line 1431
    .line 1432
    goto :goto_4

    .line 1433
    :cond_2e
    new-instance v15, Landroid/content/IntentFilter;

    .line 1434
    .line 1435
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 1436
    .line 1437
    .line 1438
    const-string v1, "com.android.systemui.statusbar.banner_action_cancel"

    .line 1439
    .line 1440
    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    const-string v1, "com.android.systemui.statusbar.banner_action_setup"

    .line 1444
    .line 1445
    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    iget-object v13, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 1449
    .line 1450
    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBannerActionBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$14;

    .line 1451
    .line 1452
    const-string v16, "com.android.systemui.permission.SELF"

    .line 1453
    .line 1454
    const/16 v17, 0x0

    .line 1455
    .line 1456
    const/16 v18, 0x2

    .line 1457
    .line 1458
    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1459
    .line 1460
    .line 1461
    iget-boolean v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    .line 1462
    .line 1463
    if-eqz v1, :cond_2f

    .line 1464
    .line 1465
    const-string/jumbo v1, "wallpaper"

    .line 1466
    .line 1467
    .line 1468
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v1

    .line 1472
    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v1

    .line 1476
    const-wide/16 v2, 0x0

    .line 1477
    .line 1478
    :try_start_1
    invoke-interface {v1, v12, v2, v3}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1479
    .line 1480
    .line 1481
    :catch_1
    :cond_2f
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 1482
    .line 1483
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1484
    .line 1485
    .line 1486
    new-instance v2, Landroid/content/IntentFilter;

    .line 1487
    .line 1488
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1489
    .line 1490
    .line 1491
    const-string v3, "android.intent.action.HEADSET_PLUG"

    .line 1492
    .line 1493
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 1497
    .line 1498
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1499
    .line 1500
    .line 1501
    const-string v3, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    .line 1502
    .line 1503
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1504
    .line 1505
    .line 1506
    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 1507
    .line 1508
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    .line 1510
    .line 1511
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 1512
    .line 1513
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1514
    .line 1515
    .line 1516
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1517
    .line 1518
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 1522
    .line 1523
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    const-string v3, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    .line 1527
    .line 1528
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1529
    .line 1530
    .line 1531
    const-string v3, "com.android.systemui.action.dnd_off"

    .line 1532
    .line 1533
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    const-string v3, "android.intent.action.TIME_SET"

    .line 1537
    .line 1538
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    .line 1542
    .line 1543
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1544
    .line 1545
    .line 1546
    const-string v3, "android.intent.action.DATE_CHANGED"

    .line 1547
    .line 1548
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    .line 1550
    .line 1551
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 1552
    .line 1553
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

    .line 1554
    .line 1555
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 1556
    .line 1557
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1558
    .line 1559
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 1560
    .line 1561
    .line 1562
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda8;

    .line 1563
    .line 1564
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 1565
    .line 1566
    .line 1567
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    .line 1568
    .line 1569
    check-cast v3, Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 1570
    .line 1571
    iget-object v3, v3, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Lcom/android/systemui/util/RingerModeLiveData;

    .line 1572
    .line 1573
    invoke-virtual {v3, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 1574
    .line 1575
    .line 1576
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    .line 1577
    .line 1578
    check-cast v3, Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 1579
    .line 1580
    iget-object v3, v3, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 1581
    .line 1582
    invoke-virtual {v3, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 1583
    .line 1584
    .line 1585
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1586
    .line 1587
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 1588
    .line 1589
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 1590
    .line 1591
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1592
    .line 1593
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 1594
    .line 1595
    .line 1596
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 1597
    .line 1598
    if-nez v2, :cond_30

    .line 1599
    .line 1600
    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    .line 1601
    .line 1602
    .line 1603
    goto :goto_5

    .line 1604
    :cond_30
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    .line 1605
    .line 1606
    .line 1607
    move-result v2

    .line 1608
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    .line 1609
    .line 1610
    .line 1611
    :goto_5
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1612
    .line 1613
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    .line 1614
    .line 1615
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1616
    .line 1617
    const v5, 0x7f1300f6

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v4

    .line 1624
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1625
    .line 1626
    const v5, 0x7f081121

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1630
    .line 1631
    .line 1632
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1633
    .line 1634
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetoothConnected:Ljava/lang/String;

    .line 1635
    .line 1636
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1637
    .line 1638
    const v5, 0x7f13004e

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v4

    .line 1645
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1646
    .line 1647
    const v5, 0x7f081122

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 1654
    .line 1655
    .line 1656
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1657
    .line 1658
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    .line 1659
    .line 1660
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1661
    .line 1662
    const v5, 0x7f13109e

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v4

    .line 1669
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1670
    .line 1671
    const v5, 0x7f08111a

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1675
    .line 1676
    .line 1677
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1678
    .line 1679
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    .line 1680
    .line 1681
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1682
    .line 1683
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1684
    .line 1685
    .line 1686
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1687
    .line 1688
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    .line 1689
    .line 1690
    const v4, 0x7f0811b5

    .line 1691
    .line 1692
    .line 1693
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1694
    .line 1695
    invoke-virtual {v2, v8, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1696
    .line 1697
    .line 1698
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1699
    .line 1700
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    .line 1701
    .line 1702
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1703
    .line 1704
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1705
    .line 1706
    .line 1707
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1708
    .line 1709
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVibrate:Ljava/lang/String;

    .line 1710
    .line 1711
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1712
    .line 1713
    const v5, 0x7f130114

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v4

    .line 1720
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1721
    .line 1722
    const v5, 0x7f0811c1

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1726
    .line 1727
    .line 1728
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1729
    .line 1730
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVibrate:Ljava/lang/String;

    .line 1731
    .line 1732
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1733
    .line 1734
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1735
    .line 1736
    .line 1737
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1738
    .line 1739
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    .line 1740
    .line 1741
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1742
    .line 1743
    const v5, 0x7f130113

    .line 1744
    .line 1745
    .line 1746
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v4

    .line 1750
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1751
    .line 1752
    const v5, 0x7f0811c0

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1756
    .line 1757
    .line 1758
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1759
    .line 1760
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    .line 1761
    .line 1762
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1763
    .line 1764
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 1768
    .line 1769
    .line 1770
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1771
    .line 1772
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    .line 1773
    .line 1774
    const v4, 0x7f081120

    .line 1775
    .line 1776
    .line 1777
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1778
    .line 1779
    invoke-virtual {v2, v8, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1780
    .line 1781
    .line 1782
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1783
    .line 1784
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    .line 1785
    .line 1786
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1787
    .line 1788
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1789
    .line 1790
    .line 1791
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1792
    .line 1793
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    .line 1794
    .line 1795
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1796
    .line 1797
    const v5, 0x7f13012d

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v4

    .line 1804
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1805
    .line 1806
    const v5, 0x7f0811ba

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1810
    .line 1811
    .line 1812
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1813
    .line 1814
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    .line 1815
    .line 1816
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 1817
    .line 1818
    check-cast v4, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 1819
    .line 1820
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    .line 1821
    .line 1822
    .line 1823
    move-result v4

    .line 1824
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1825
    .line 1826
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 1830
    .line 1831
    .line 1832
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1833
    .line 1834
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 1835
    .line 1836
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1837
    .line 1838
    const v5, 0x7f130066

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v4

    .line 1845
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1846
    .line 1847
    const v5, 0x7f0811a3

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1851
    .line 1852
    .line 1853
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1854
    .line 1855
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 1856
    .line 1857
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1858
    .line 1859
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1860
    .line 1861
    .line 1862
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1863
    .line 1864
    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 1865
    .line 1866
    invoke-virtual {v3}, Lcom/android/systemui/privacy/PrivacyType;->getNameId()I

    .line 1867
    .line 1868
    .line 1869
    move-result v4

    .line 1870
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v2

    .line 1874
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1875
    .line 1876
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v2

    .line 1880
    const v5, 0x7f130c5d

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v2

    .line 1887
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1888
    .line 1889
    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMicrophone:Ljava/lang/String;

    .line 1890
    .line 1891
    invoke-virtual {v3}, Lcom/android/systemui/privacy/PrivacyType;->getIconId()I

    .line 1892
    .line 1893
    .line 1894
    move-result v3

    .line 1895
    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1896
    .line 1897
    invoke-virtual {v4, v2, v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1898
    .line 1899
    .line 1900
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1901
    .line 1902
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMicrophone:Ljava/lang/String;

    .line 1903
    .line 1904
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1905
    .line 1906
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1907
    .line 1908
    .line 1909
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1910
    .line 1911
    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 1912
    .line 1913
    invoke-virtual {v3}, Lcom/android/systemui/privacy/PrivacyType;->getNameId()I

    .line 1914
    .line 1915
    .line 1916
    move-result v4

    .line 1917
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v2

    .line 1921
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1922
    .line 1923
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1924
    .line 1925
    .line 1926
    move-result-object v2

    .line 1927
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v2

    .line 1931
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1932
    .line 1933
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCamera:Ljava/lang/String;

    .line 1934
    .line 1935
    invoke-virtual {v3}, Lcom/android/systemui/privacy/PrivacyType;->getIconId()I

    .line 1936
    .line 1937
    .line 1938
    move-result v3

    .line 1939
    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1940
    .line 1941
    invoke-virtual {v4, v2, v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1942
    .line 1943
    .line 1944
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1945
    .line 1946
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCamera:Ljava/lang/String;

    .line 1947
    .line 1948
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1949
    .line 1950
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1951
    .line 1952
    .line 1953
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1954
    .line 1955
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 1956
    .line 1957
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1958
    .line 1959
    const v5, 0x7f1300a4

    .line 1960
    .line 1961
    .line 1962
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v4

    .line 1966
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1967
    .line 1968
    const v5, 0x7f0811bb

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1972
    .line 1973
    .line 1974
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1975
    .line 1976
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 1977
    .line 1978
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1979
    .line 1980
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1981
    .line 1982
    .line 1983
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1984
    .line 1985
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    .line 1986
    .line 1987
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 1988
    .line 1989
    const v5, 0x7f13011a

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v4

    .line 1996
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 1997
    .line 1998
    const v5, 0x7f0811cb

    .line 1999
    .line 2000
    .line 2001
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 2002
    .line 2003
    .line 2004
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2005
    .line 2006
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    .line 2007
    .line 2008
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    .line 2009
    .line 2010
    check-cast v4, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    .line 2011
    .line 2012
    iget-object v5, v4, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    .line 2013
    .line 2014
    monitor-enter v5

    .line 2015
    :try_start_2
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    .line 2016
    .line 2017
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2018
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2019
    .line 2020
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2021
    .line 2022
    .line 2023
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2024
    .line 2025
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    .line 2026
    .line 2027
    const v4, 0x7f0811c6

    .line 2028
    .line 2029
    .line 2030
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2031
    .line 2032
    invoke-virtual {v2, v8, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 2033
    .line 2034
    .line 2035
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2036
    .line 2037
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    .line 2038
    .line 2039
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2040
    .line 2041
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2042
    .line 2043
    .line 2044
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2045
    .line 2046
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBTTethering:Ljava/lang/String;

    .line 2047
    .line 2048
    const v4, 0x7f0811f8

    .line 2049
    .line 2050
    .line 2051
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2052
    .line 2053
    invoke-virtual {v2, v8, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 2054
    .line 2055
    .line 2056
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2057
    .line 2058
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBTTethering:Ljava/lang/String;

    .line 2059
    .line 2060
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2061
    .line 2062
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2063
    .line 2064
    .line 2065
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2066
    .line 2067
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotPowerSave:Ljava/lang/String;

    .line 2068
    .line 2069
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 2070
    .line 2071
    const v5, 0x7f1310a9

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v4

    .line 2078
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2079
    .line 2080
    const v5, 0x7f0811bd

    .line 2081
    .line 2082
    .line 2083
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 2084
    .line 2085
    .line 2086
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2087
    .line 2088
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotPowerSave:Ljava/lang/String;

    .line 2089
    .line 2090
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2091
    .line 2092
    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2093
    .line 2094
    .line 2095
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 2096
    .line 2097
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 2098
    .line 2099
    .line 2100
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 2101
    .line 2102
    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 2103
    .line 2104
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2105
    .line 2106
    .line 2107
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 2108
    .line 2109
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 2110
    .line 2111
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2112
    .line 2113
    .line 2114
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 2115
    .line 2116
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 2117
    .line 2118
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 2119
    .line 2120
    .line 2121
    move-result v2

    .line 2122
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 2123
    .line 2124
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 2125
    .line 2126
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 2127
    .line 2128
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 2129
    .line 2130
    .line 2131
    move-result v2

    .line 2132
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 2133
    .line 2134
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 2135
    .line 2136
    check-cast v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 2137
    .line 2138
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2139
    .line 2140
    .line 2141
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 2142
    .line 2143
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    .line 2144
    .line 2145
    check-cast v2, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 2146
    .line 2147
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2148
    .line 2149
    .line 2150
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 2151
    .line 2152
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    .line 2153
    .line 2154
    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 2155
    .line 2156
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2157
    .line 2158
    .line 2159
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 2160
    .line 2161
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    .line 2162
    .line 2163
    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 2164
    .line 2165
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2166
    .line 2167
    .line 2168
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 2169
    .line 2170
    check-cast v2, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 2171
    .line 2172
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2173
    .line 2174
    .line 2175
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2176
    .line 2177
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 2178
    .line 2179
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2180
    .line 2181
    .line 2182
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 2183
    .line 2184
    invoke-virtual {v2, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 2185
    .line 2186
    .line 2187
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    .line 2188
    .line 2189
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    .line 2190
    .line 2191
    check-cast v2, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    .line 2192
    .line 2193
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2194
    .line 2195
    .line 2196
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 2197
    .line 2198
    check-cast v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 2199
    .line 2200
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2201
    .line 2202
    .line 2203
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 2204
    .line 2205
    iget-object v2, v2, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2206
    .line 2207
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    .line 2209
    .line 2210
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2211
    .line 2212
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 2213
    .line 2214
    .line 2215
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2216
    .line 2217
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;

    .line 2218
    .line 2219
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 2220
    .line 2221
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2222
    .line 2223
    .line 2224
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 2225
    .line 2226
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$10;

    .line 2227
    .line 2228
    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 2229
    .line 2230
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2231
    .line 2232
    .line 2233
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2234
    .line 2235
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOnChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$11;

    .line 2236
    .line 2237
    const-string v4, "emergency_mode"

    .line 2238
    .line 2239
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v4

    .line 2243
    filled-new-array {v4}, [Landroid/net/Uri;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v4

    .line 2247
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 2248
    .line 2249
    .line 2250
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 2251
    .line 2252
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProcessListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    .line 2253
    .line 2254
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    .line 2255
    .line 2256
    .line 2257
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 2258
    .line 2259
    .line 2260
    move-result v2

    .line 2261
    if-eqz v2, :cond_31

    .line 2262
    .line 2263
    const-string v2, "debug.status_bar.show_icons"

    .line 2264
    .line 2265
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 2266
    .line 2267
    .line 2268
    move-result v2

    .line 2269
    if-eqz v2, :cond_31

    .line 2270
    .line 2271
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2272
    .line 2273
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 2274
    .line 2275
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 2276
    .line 2277
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mViewOnlySlots:Ljava/util/List;

    .line 2278
    .line 2279
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;

    .line 2280
    .line 2281
    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;)V

    .line 2282
    .line 2283
    .line 2284
    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2285
    .line 2286
    .line 2287
    :cond_31
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2288
    .line 2289
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    .line 2290
    .line 2291
    invoke-direct {v2, v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 2292
    .line 2293
    .line 2294
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 2295
    .line 2296
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2297
    .line 2298
    .line 2299
    const-string v1, "CentralSurfaces#startKeyguard"

    .line 2300
    .line 2301
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2302
    .line 2303
    .line 2304
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2305
    .line 2306
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;

    .line 2307
    .line 2308
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2309
    .line 2310
    iget-object v3, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 2311
    .line 2312
    monitor-enter v3

    .line 2313
    :try_start_3
    invoke-virtual {v1, v2, v12}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 2314
    .line 2315
    .line 2316
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2317
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 2318
    .line 2319
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v1

    .line 2323
    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2324
    .line 2325
    iput-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2326
    .line 2327
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;

    .line 2328
    .line 2329
    invoke-direct {v2, v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 2330
    .line 2331
    .line 2332
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    .line 2333
    .line 2334
    check-cast v1, Ljava/util/HashSet;

    .line 2335
    .line 2336
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2337
    .line 2338
    .line 2339
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2340
    .line 2341
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 2342
    .line 2343
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 2344
    .line 2345
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2346
    .line 2347
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 2348
    .line 2349
    const v6, 0x7f0a0994

    .line 2350
    .line 2351
    .line 2352
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 2353
    .line 2354
    .line 2355
    move-result-object v2

    .line 2356
    move-object v6, v2

    .line 2357
    check-cast v6, Landroid/view/ViewGroup;

    .line 2358
    .line 2359
    iget-object v7, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2360
    .line 2361
    iget-object v8, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2362
    .line 2363
    iput-object v9, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2364
    .line 2365
    iget-object v13, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 2366
    .line 2367
    invoke-interface {v13}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v1

    .line 2371
    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    .line 2372
    .line 2373
    move-object/from16 v2, p0

    .line 2374
    .line 2375
    invoke-interface/range {v1 .. v8}, Lcom/android/keyguard/KeyguardSecViewController;->registerCentralSurfaces(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeSurface;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    .line 2376
    .line 2377
    .line 2378
    invoke-interface {v13}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2379
    .line 2380
    .line 2381
    move-result-object v1

    .line 2382
    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    .line 2383
    .line 2384
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2385
    .line 2386
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    .line 2387
    .line 2388
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 2389
    .line 2390
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2391
    .line 2392
    .line 2393
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2394
    .line 2395
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2396
    .line 2397
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2398
    .line 2399
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2400
    .line 2401
    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 2402
    .line 2403
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 2404
    .line 2405
    .line 2406
    move-result v2

    .line 2407
    if-nez v2, :cond_32

    .line 2408
    .line 2409
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2410
    .line 2411
    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->registerPreCallback(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 2412
    .line 2413
    .line 2414
    :cond_32
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 2415
    .line 2416
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2417
    .line 2418
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->addControllerCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 2419
    .line 2420
    .line 2421
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 2422
    .line 2423
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2424
    .line 2425
    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2426
    .line 2427
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 2428
    .line 2429
    iput-object v2, v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2430
    .line 2431
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 2432
    .line 2433
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 2434
    .line 2435
    invoke-direct {v2, v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 2436
    .line 2437
    .line 2438
    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->mDismissHandler:Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;

    .line 2439
    .line 2440
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_DEFAULT_LANDSCAPE:Z

    .line 2441
    .line 2442
    const/4 v2, 0x3

    .line 2443
    if-eqz v1, :cond_33

    .line 2444
    .line 2445
    sput v11, Lcom/android/systemui/util/DeviceState;->ROTATION_0:I

    .line 2446
    .line 2447
    sput v10, Lcom/android/systemui/util/DeviceState;->ROTATION_90:I

    .line 2448
    .line 2449
    sput v2, Lcom/android/systemui/util/DeviceState;->ROTATION_180:I

    .line 2450
    .line 2451
    sput v12, Lcom/android/systemui/util/DeviceState;->ROTATION_270:I

    .line 2452
    .line 2453
    :cond_33
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 2454
    .line 2455
    if-eqz v1, :cond_34

    .line 2456
    .line 2457
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 2458
    .line 2459
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2460
    .line 2461
    .line 2462
    move-result-object v1

    .line 2463
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v1

    .line 2467
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->setInDisplayFingerprintSensorPosition(Landroid/util/DisplayMetrics;)V

    .line 2468
    .line 2469
    .line 2470
    :cond_34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2471
    .line 2472
    .line 2473
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2474
    .line 2475
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2476
    .line 2477
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 2478
    .line 2479
    .line 2480
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2481
    .line 2482
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2483
    .line 2484
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 2485
    .line 2486
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 2487
    .line 2488
    iget-object v6, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAmbientIndicationContainer:Landroid/view/View;

    .line 2489
    .line 2490
    iput-object v9, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2491
    .line 2492
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2493
    .line 2494
    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 2495
    .line 2496
    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 2497
    .line 2498
    iput-object v6, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 2499
    .line 2500
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateLightRevealScrimVisibility()V

    .line 2501
    .line 2502
    .line 2503
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2504
    .line 2505
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    .line 2506
    .line 2507
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 2508
    .line 2509
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 2510
    .line 2511
    .line 2512
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 2513
    .line 2514
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 2515
    .line 2516
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$23;

    .line 2517
    .line 2518
    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 2519
    .line 2520
    .line 2521
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 2522
    .line 2523
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 2524
    .line 2525
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2526
    .line 2527
    .line 2528
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    .line 2529
    .line 2530
    invoke-virtual {v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->init()V

    .line 2531
    .line 2532
    .line 2533
    iget v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 2534
    .line 2535
    iget v0, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    .line 2536
    .line 2537
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInitController:Lcom/android/systemui/InitController;

    .line 2538
    .line 2539
    new-instance v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;

    .line 2540
    .line 2541
    invoke-direct {v4, v9, v1, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;II)V

    .line 2542
    .line 2543
    .line 2544
    iget-boolean v0, v3, Lcom/android/systemui/InitController;->mTasksExecuted:Z

    .line 2545
    .line 2546
    if-nez v0, :cond_36

    .line 2547
    .line 2548
    iget-object v0, v3, Lcom/android/systemui/InitController;->mTasks:Ljava/util/ArrayList;

    .line 2549
    .line 2550
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2551
    .line 2552
    .line 2553
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->registerCallbacks()V

    .line 2554
    .line 2555
    .line 2556
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2557
    .line 2558
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingBeliefListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    .line 2559
    .line 2560
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V

    .line 2561
    .line 2562
    .line 2563
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 2564
    .line 2565
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 2566
    .line 2567
    invoke-direct {v1, v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 2568
    .line 2569
    .line 2570
    const-class v3, Lcom/android/systemui/plugins/OverlayPlugin;

    .line 2571
    .line 2572
    invoke-interface {v0, v1, v3, v11}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 2573
    .line 2574
    .line 2575
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    .line 2576
    .line 2577
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 2578
    .line 2579
    invoke-direct {v1, v9, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 2580
    .line 2581
    .line 2582
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2583
    .line 2584
    .line 2585
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    .line 2586
    .line 2587
    iput-object v9, v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2588
    .line 2589
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 2590
    .line 2591
    const v2, 0x7f0a0535

    .line 2592
    .line 2593
    .line 2594
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 2595
    .line 2596
    .line 2597
    move-result-object v1

    .line 2598
    check-cast v1, Landroid/widget/FrameLayout;

    .line 2599
    .line 2600
    iput-object v1, v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 2601
    .line 2602
    iget-object v1, v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBarStateControllerLazy:Ldagger/Lazy;

    .line 2603
    .line 2604
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2605
    .line 2606
    .line 2607
    move-result-object v1

    .line 2608
    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2609
    .line 2610
    new-instance v2, Lcom/android/systemui/mdm/MdmOverlayContainer$1;

    .line 2611
    .line 2612
    invoke-direct {v2, v0}, Lcom/android/systemui/mdm/MdmOverlayContainer$1;-><init>(Lcom/android/systemui/mdm/MdmOverlayContainer;)V

    .line 2613
    .line 2614
    .line 2615
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2616
    .line 2617
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 2618
    .line 2619
    .line 2620
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 2621
    .line 2622
    new-instance v1, Landroid/content/Intent;

    .line 2623
    .line 2624
    const-string v2, "com.samsung.systemui.statusbar.STARTED"

    .line 2625
    .line 2626
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2627
    .line 2628
    .line 2629
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2630
    .line 2631
    .line 2632
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 2633
    .line 2634
    if-eqz v0, :cond_35

    .line 2635
    .line 2636
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 2637
    .line 2638
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;

    .line 2639
    .line 2640
    invoke-direct {v1, v9, v12}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;I)V

    .line 2641
    .line 2642
    .line 2643
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;

    .line 2644
    .line 2645
    invoke-direct {v2, v9, v11}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;I)V

    .line 2646
    .line 2647
    .line 2648
    iget-object v3, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->semWindowManager$delegate:Lkotlin/Lazy;

    .line 2649
    .line 2650
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v3

    .line 2654
    check-cast v3, Lcom/samsung/android/view/SemWindowManager;

    .line 2655
    .line 2656
    iget-object v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    .line 2657
    .line 2658
    invoke-virtual {v3, v4}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 2659
    .line 2660
    .line 2661
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2662
    .line 2663
    const-string/jumbo v5, "start physicalDisplaySize="

    .line 2664
    .line 2665
    .line 2666
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2667
    .line 2668
    .line 2669
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2670
    .line 2671
    .line 2672
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v3

    .line 2676
    const-string v4, "SecLightRevealScrimHelper"

    .line 2677
    .line 2678
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    .line 2680
    .line 2681
    new-instance v7, Landroid/content/IntentFilter;

    .line 2682
    .line 2683
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 2684
    .line 2685
    .line 2686
    const-string v3, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 2687
    .line 2688
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2689
    .line 2690
    .line 2691
    new-instance v6, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;

    .line 2692
    .line 2693
    invoke-direct {v6, v0, v1, v2}, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 2694
    .line 2695
    .line 2696
    iget-object v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2697
    .line 2698
    const/4 v8, 0x0

    .line 2699
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2700
    .line 2701
    const/4 v10, 0x0

    .line 2702
    const/4 v11, 0x0

    .line 2703
    const/16 v12, 0x30

    .line 2704
    .line 2705
    invoke-static/range {v5 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 2706
    .line 2707
    .line 2708
    :cond_35
    return-void

    .line 2709
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2710
    .line 2711
    const-string/jumbo v1, "post init tasks have already been executed!"

    .line 2712
    .line 2713
    .line 2714
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2715
    .line 2716
    .line 2717
    throw v0

    .line 2718
    :catchall_0
    move-exception v0

    .line 2719
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2720
    throw v0

    .line 2721
    :catchall_1
    move-exception v0

    .line 2722
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2723
    throw v0
.end method

.method public final updateDisplaySize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string p0, "NotificationMediaManager#onDisplayUpdated"

    .line 21
    .line 22
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final updateDozingState()V
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const-string v2, "Dozing"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v0, v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v0, "CentralSurfaces#updateDozingState"

    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v0, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    move v0, v2

    .line 56
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 57
    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->shouldAnimateDozeWakeup()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 67
    .line 68
    if-eqz v4, :cond_5

    .line 69
    .line 70
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsFolded:Z

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    :cond_4
    move v3, v2

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 86
    .line 87
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 88
    .line 89
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->setDozing(ZZ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateQsExpansionEnabled()V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final updateIsKeyguard()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    move-result p0

    return p0
.end method

.method public final updateIsKeyguard(Z)Z
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 4
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 5
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget v2, v3, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-nez v2, :cond_1

    .line 8
    move-object v2, v4

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v6

    .line 11
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_5

    .line 12
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v7, v7, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq v7, v5, :cond_4

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    move v7, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    :goto_3
    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    move v7, v6

    .line 13
    :goto_4
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 14
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    if-nez v11, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-nez v1, :cond_7

    if-nez v7, :cond_7

    move v1, v5

    goto :goto_5

    :cond_7
    move v1, v6

    :goto_5
    if-eqz v2, :cond_8

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updatePanelExpansionForKeyguard()V

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    const/16 v12, 0x3eb

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    if-eqz v1, :cond_e

    .line 17
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v1

    const/4 v8, 0x3

    if-eqz v1, :cond_9

    .line 19
    iget v1, v3, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-ne v1, v8, :cond_9

    goto/16 :goto_a

    :cond_9
    const-string v1, "CentralSurfaces#showKeyguard"

    .line 20
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 21
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 22
    iget-boolean v1, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    if-eqz v1, :cond_a

    .line 23
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 24
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 25
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 26
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 27
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 29
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/CameraLauncher;

    .line 30
    iget-object v1, v1, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 31
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    .line 33
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v8}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 36
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 37
    invoke-virtual {v1, v5, v5}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 38
    :cond_a
    check-cast v11, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    invoke-virtual {v11, v12}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->cancelMessages(I)V

    .line 39
    iget-boolean v1, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    if-nez v1, :cond_b

    .line 40
    invoke-interface {v9, v5}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState$1(I)V

    .line 41
    :cond_b
    iget v1, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v1, v5, :cond_c

    .line 42
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 43
    iget-boolean v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    if-eqz v1, :cond_c

    .line 44
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetViews(Z)V

    .line 45
    :cond_c
    invoke-virtual {v14}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updatePanelExpansionForKeyguard()V

    .line 47
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    if-eqz v0, :cond_d

    .line 48
    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 49
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v1, :cond_d

    const-string v1, "KeyguardWallpaperController"

    const-string v2, "mWallpaperView.reset()"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->reset()V

    .line 52
    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_a

    .line 53
    :cond_e
    iget-object v1, v15, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 54
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_f

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_6

    .line 55
    :cond_f
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 56
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->isKeyguardHideDelayed()Z

    move-result v3

    if-eqz v3, :cond_10

    move v1, v5

    goto :goto_7

    :cond_11
    :goto_6
    move v1, v6

    :goto_7
    if-nez v1, :cond_1c

    .line 57
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 58
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isOccludeAnimationPlaying()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "CentralSurfaces#hideKeyguard"

    .line 59
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 60
    iget-boolean v1, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 61
    iget v3, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    move/from16 v9, p1

    .line 62
    invoke-virtual {v10, v6, v9}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setState(IZ)Z

    move-result v9

    if-nez v9, :cond_12

    .line 63
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v9, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    .line 64
    :cond_12
    invoke-virtual {v14}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    .line 65
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v14, "hideKeyguardImpl leaveOpenOnKeyguardHide() : "

    .line 66
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean v14, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 68
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "  isCollapsing : "

    .line 69
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v14, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v14}, Lcom/android/systemui/shade/NotificationPanelViewController;->isCollapsing()Z

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    check-cast v14, Lcom/android/systemui/log/SecPanelLoggerImpl;

    invoke-virtual {v14, v9, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 71
    iget-boolean v9, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v9, :cond_19

    .line 72
    iget-boolean v5, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    if-nez v5, :cond_13

    .line 73
    iput-boolean v6, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 74
    :cond_13
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 75
    iget-wide v9, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 76
    iget-wide v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    add-long/2addr v9, v4

    .line 77
    iget-object v4, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 78
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logOnHideKeyguard()V

    .line 79
    iget-object v4, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    .line 80
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iput-object v5, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    goto :goto_8

    .line 82
    :cond_14
    iget-boolean v4, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nextHideKeyguardNeedsNoAnimation:Z

    if-eqz v4, :cond_15

    .line 83
    iput-boolean v6, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nextHideKeyguardNeedsNoAnimation:Z

    goto :goto_8

    :cond_15
    if-eq v3, v8, :cond_16

    .line 84
    invoke-virtual {v13, v9, v10}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->performDefaultGoToFullShadeAnimation(J)V

    .line 85
    :cond_16
    :goto_8
    iget-object v3, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->draggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_18

    .line 86
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 87
    :cond_17
    iput-object v5, v13, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->draggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 88
    :cond_18
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/systemui/navigationbar/NavigationBarController;->disableAnimationsDuringHide(IJ)V

    goto :goto_9

    .line 89
    :cond_19
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isCollapsing()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 90
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast v3, Lcom/android/systemui/shade/ShadeControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/shade/ShadeControllerImpl;->instantCollapseShade()V

    .line 91
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->closeRemoteInputs(Z)V

    .line 92
    :cond_1a
    :goto_9
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz v3, :cond_1b

    .line 93
    invoke-virtual {v3}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->refreshAllTiles()V

    .line 94
    :cond_1b
    check-cast v11, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    invoke-virtual {v11, v12}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->cancelMessages(I)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    .line 96
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/CameraLauncher;

    .line 97
    iget-object v3, v3, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 98
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    .line 99
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 100
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 101
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 102
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 103
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/4 v3, 0x0

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 105
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetViewGroupFade()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateDozingState()V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 108
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1

    :cond_1c
    :goto_a
    return v6
.end method

.method public final updateLightRevealScrimVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimState;->getMaxLightRevealScrimAlpha()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    sget-boolean p0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const/16 p0, 0x8

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final updateNotificationPanelTouchState()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 25
    .line 26
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 27
    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    :cond_1
    if-nez v0, :cond_3

    .line 31
    .line 32
    move-object v0, v5

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isFrpActive()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v0, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    move v0, v3

    .line 45
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 52
    .line 53
    xor-int/lit8 v9, v1, 0x1

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 56
    .line 57
    xor-int/lit8 v10, v1, 0x1

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 60
    .line 61
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 62
    .line 63
    xor-int/lit8 v11, v1, 0x1

    .line 64
    .line 65
    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isFrpActive()Z

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    move v7, v0

    .line 72
    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/shade/ShadeLogger;->logUpdateNotificationPanelTouchState(ZZZZZZ)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 76
    .line 77
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 78
    .line 79
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v5, "setTouchAndAnimationDisabled: "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v5, " -> "

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 104
    .line 105
    check-cast v5, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 106
    .line 107
    invoke-virtual {v5, v4, v2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 108
    .line 109
    .line 110
    iput-boolean v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 120
    .line 121
    .line 122
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 130
    .line 131
    .line 132
    :cond_5
    xor-int/2addr v0, v3

    .line 133
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 136
    .line 137
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 140
    .line 141
    .line 142
    if-nez v0, :cond_6

    .line 143
    .line 144
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 147
    .line 148
    .line 149
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 158
    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final updatePanelExpansionForKeyguard()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 7
    .line 8
    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 33
    .line 34
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedVisible(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 46
    .line 47
    iget p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mDisplayId:I

    .line 48
    .line 49
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final updateQsExpansionEnabled()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetup:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 25
    .line 26
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 29
    .line 30
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 35
    .line 36
    iget-boolean v0, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isSimpleUserSwitcher:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled2:I

    .line 41
    .line 42
    and-int/lit8 v2, v0, 0x4

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    move v2, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v2, v1

    .line 50
    :goto_0
    if-nez v2, :cond_2

    .line 51
    .line 52
    and-int/2addr v0, v3

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    move v1, v3

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledPolicy:Z

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 73
    .line 74
    .line 75
    :cond_3
    const-string/jumbo p0, "updateQsExpansionEnabled - QS Expand enabled: "

    .line 76
    .line 77
    .line 78
    const-string v0, "CentralSurfaces"

    .line 79
    .line 80
    invoke-static {p0, v1, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final updateReportRejectedTouchVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_1
    const/4 p0, 0x4

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final updateResources()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updateResources()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updateResources()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mGardenHeight:Lcom/android/systemui/statusbar/window/StatusBarWindowController$GardenHeight;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    move v4, v3

    .line 27
    :goto_0
    const/4 v5, 0x1

    .line 28
    const/4 v6, 0x3

    .line 29
    iget-object v7, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    if-gt v3, v6, :cond_3

    .line 32
    .line 33
    invoke-static {v7, v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v7, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$GardenHeight;->heights:[I

    .line 38
    .line 39
    aget v8, v7, v3

    .line 40
    .line 41
    if-eq v8, v6, :cond_2

    .line 42
    .line 43
    aput v6, v7, v3

    .line 44
    .line 45
    move v4, v5

    .line 46
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIsAttached:Z

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-static {v7}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput v2, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    .line 62
    .line 63
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-static {v7}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget v4, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    .line 72
    .line 73
    if-eq v4, v3, :cond_5

    .line 74
    .line 75
    iput v3, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateResources()V

    .line 87
    .line 88
    .line 89
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateLayout()V

    .line 94
    .line 95
    .line 96
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateResources()V

    .line 101
    .line 102
    .line 103
    :cond_8
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 104
    .line 105
    if-eqz v0, :cond_b

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const-string v1, "SecLightRevealScrimHelper"

    .line 113
    .line 114
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 115
    .line 116
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v3, Landroid/graphics/Point;

    .line 120
    .line 121
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->context:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-eqz v5, :cond_9

    .line 131
    .line 132
    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 136
    .line 137
    .line 138
    :cond_9
    const-string v5, "getPositionCorrectionRatio screenSizeRatio="

    .line 139
    .line 140
    :try_start_0
    sget-boolean v6, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    iget-object v7, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    .line 143
    .line 144
    if-eqz v6, :cond_a

    .line 145
    .line 146
    :try_start_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->semWindowManager$delegate:Lkotlin/Lazy;

    .line 147
    .line 148
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Lcom/samsung/android/view/SemWindowManager;

    .line 153
    .line 154
    invoke-virtual {v6, v7}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 155
    .line 156
    .line 157
    :cond_a
    iget v6, v7, Landroid/graphics/Point;->x:I

    .line 158
    .line 159
    iget v8, v7, Landroid/graphics/Point;->y:I

    .line 160
    .line 161
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 166
    .line 167
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 168
    .line 169
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    int-to-float v8, v6

    .line 174
    int-to-float v9, v2

    .line 175
    div-float/2addr v8, v9

    .line 176
    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 177
    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v5, " physicalScreenSize.x="

    .line 187
    .line 188
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v5, " baseWidthPixels = "

    .line 195
    .line 196
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v5, " currentWidthPixels = "

    .line 203
    .line 204
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :catch_0
    move-exception v2

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v6, "getPositionCorrectionRatio exception = "

    .line 222
    .line 223
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    const/high16 v8, 0x3f800000    # 1.0f

    .line 237
    .line 238
    :goto_2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    const v4, 0x10502ce

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    int-to-float v2, v2

    .line 250
    div-float/2addr v2, v8

    .line 251
    float-to-int v2, v2

    .line 252
    iput v2, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->powerKeyYPos:I

    .line 253
    .line 254
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 255
    .line 256
    int-to-float v4, v2

    .line 257
    const/high16 v5, 0x40000000    # 2.0f

    .line 258
    .line 259
    div-float/2addr v4, v5

    .line 260
    iput v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    .line 261
    .line 262
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 263
    .line 264
    int-to-float v6, v4

    .line 265
    div-float/2addr v6, v5

    .line 266
    iput v6, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    .line 267
    .line 268
    int-to-double v5, v2

    .line 269
    int-to-double v7, v4

    .line 270
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 271
    .line 272
    .line 273
    move-result-wide v4

    .line 274
    double-to-float v2, v4

    .line 275
    new-instance v4, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    .line 276
    .line 277
    iget v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    .line 278
    .line 279
    iget v6, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    .line 280
    .line 281
    const/4 v7, 0x4

    .line 282
    int-to-float v7, v7

    .line 283
    div-float v7, v2, v7

    .line 284
    .line 285
    const/4 v8, 0x2

    .line 286
    int-to-float v8, v8

    .line 287
    div-float v8, v2, v8

    .line 288
    .line 289
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;-><init>(FFFF)V

    .line 290
    .line 291
    .line 292
    iput-object v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    .line 293
    .line 294
    iget v4, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    .line 295
    .line 296
    iget v5, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    .line 297
    .line 298
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 299
    .line 300
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 301
    .line 302
    iget v0, v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->powerKeyYPos:I

    .line 303
    .line 304
    const-string/jumbo v7, "updateResources: secRevealCenterX="

    .line 305
    .line 306
    .line 307
    const-string v8, " secRevealCenterY="

    .line 308
    .line 309
    const-string v9, " currentDisplaySize.x="

    .line 310
    .line 311
    invoke-static {v7, v4, v8, v5, v9}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    const-string v5, " currentDisplaySize.y="

    .line 316
    .line 317
    const-string v7, " powerKeyY="

    .line 318
    .line 319
    invoke-static {v4, v6, v5, v3, v7}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v0, " radius="

    .line 326
    .line 327
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/PowerButtonReveal;

    .line 341
    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    .line 343
    .line 344
    iget v1, v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->powerKeyYPos:I

    .line 345
    .line 346
    int-to-float v1, v1

    .line 347
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    .line 348
    .line 349
    .line 350
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_b
    new-instance v0, Lcom/android/systemui/statusbar/PowerButtonReveal;

    .line 354
    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 356
    .line 357
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const v2, 0x7f070ab2

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    int-to-float v1, v1

    .line 369
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    .line 370
    .line 371
    .line 372
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    .line 373
    .line 374
    :goto_3
    return-void
.end method

.method public updateScrimController()V
    .locals 11

    .line 1
    const-string v0, "CentralSurfaces#updateScrimController"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehind()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    :cond_0
    move v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v1, v3

    .line 49
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 50
    .line 51
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 52
    .line 53
    sget-object v6, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    if-ne v5, v6, :cond_2

    .line 57
    .line 58
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_4

    .line 71
    .line 72
    iget v4, v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 73
    .line 74
    if-ne v4, v7, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_4

    .line 82
    .line 83
    iget v4, v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 84
    .line 85
    if-ne v4, v7, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v4, v3

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_1
    move v4, v2

    .line 91
    :goto_2
    xor-int/2addr v4, v2

    .line 92
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 93
    .line 94
    iput-boolean v4, v5, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    if-eqz v4, :cond_8

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    if-eq v0, v1, :cond_7

    .line 123
    .line 124
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    cmpl-float v0, v0, v1

    .line 128
    .line 129
    if-lez v0, :cond_6

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 133
    .line 134
    invoke-virtual {v5, v7, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    :goto_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 139
    .line 140
    invoke-virtual {v5, v7, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 141
    .line 142
    .line 143
    :goto_4
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;->onFinished()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 149
    .line 150
    if-eqz v4, :cond_a

    .line 151
    .line 152
    if-nez v1, :cond_a

    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerNeedsScrimming()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 166
    .line 167
    :goto_5
    invoke-virtual {v5, v7, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v5, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_a

    .line 176
    .line 177
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 178
    .line 179
    iget-boolean v8, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 180
    .line 181
    if-eqz v8, :cond_b

    .line 182
    .line 183
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 184
    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    .line 188
    .line 189
    invoke-virtual {v5, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_a

    .line 193
    .line 194
    :cond_b
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    .line 195
    .line 196
    if-eqz v4, :cond_c

    .line 197
    .line 198
    move v4, v2

    .line 199
    goto :goto_6

    .line 200
    :cond_c
    move v4, v3

    .line 201
    :goto_6
    if-eqz v4, :cond_d

    .line 202
    .line 203
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 204
    .line 205
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$13;

    .line 206
    .line 207
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_a

    .line 214
    .line 215
    :cond_d
    const-class v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 216
    .line 217
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    sget v9, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    .line 228
    .line 229
    sget v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    .line 230
    .line 231
    or-int/2addr v9, v10

    .line 232
    if-eq v8, v9, :cond_f

    .line 233
    .line 234
    sget v10, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_REQUEST:I

    .line 235
    .line 236
    or-int/2addr v9, v10

    .line 237
    if-ne v8, v9, :cond_e

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_e
    move v2, v3

    .line 241
    :cond_f
    :goto_7
    if-eqz v2, :cond_10

    .line 242
    .line 243
    iget-object v8, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    .line 244
    .line 245
    invoke-interface {v8}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    check-cast v8, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 250
    .line 251
    iget v8, v8, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 252
    .line 253
    const/4 v9, 0x6

    .line 254
    if-eq v8, v9, :cond_11

    .line 255
    .line 256
    iget-boolean v4, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 257
    .line 258
    if-eqz v4, :cond_10

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_10
    move v3, v2

    .line 262
    :cond_11
    :goto_8
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    .line 263
    .line 264
    if-eqz v2, :cond_12

    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v4, "isAODScrimState "

    .line 269
    .line 270
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_12
    if-nez v3, :cond_15

    .line 284
    .line 285
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 286
    .line 287
    if-eqz v2, :cond_13

    .line 288
    .line 289
    if-nez v1, :cond_13

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_13
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 293
    .line 294
    if-eqz v0, :cond_14

    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_14

    .line 301
    .line 302
    if-nez v1, :cond_14

    .line 303
    .line 304
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 305
    .line 306
    invoke-virtual {v5, v7, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 307
    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 311
    .line 312
    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 313
    .line 314
    .line 315
    goto :goto_a

    .line 316
    :cond_15
    :goto_9
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 317
    .line 318
    invoke-virtual {v5, v7, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;->onFinished()V

    .line 322
    .line 323
    .line 324
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateLightRevealScrimVisibility()V

    .line 325
    .line 326
    .line 327
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final updateTheme()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const v0, 0x7f140569

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v0, 0x7f14055c

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eq v2, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 41
    .line 42
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 69
    .line 70
    move-object v2, p0

    .line 71
    check-cast v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    return-void
.end method

.method public final updateVisibleToUser()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVisibleToUser:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVisible:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v3

    .line 16
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVisibleToUser:Z

    .line 17
    .line 18
    if-eq v0, v1, :cond_8

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 27
    .line 28
    if-eqz v1, :cond_6

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 31
    .line 32
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 33
    .line 34
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 35
    .line 36
    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 37
    .line 38
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_2

    .line 43
    .line 44
    iget v8, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 45
    .line 46
    if-eqz v8, :cond_1

    .line 47
    .line 48
    if-ne v8, v6, :cond_2

    .line 49
    .line 50
    :cond_1
    move v6, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v6, v3

    .line 53
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 54
    .line 55
    invoke-interface {v8}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 62
    .line 63
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    move v8, v2

    .line 72
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda16;

    .line 73
    .line 74
    invoke-direct {v1, p0, v6, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;ZI)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    .line 81
    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    iput-boolean v2, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    .line 85
    .line 86
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 87
    .line 88
    new-instance v5, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    invoke-direct {v5, v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    .line 91
    .line 92
    .line 93
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 98
    .line 99
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onChildLocationsChanged()V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsBackCallbackRegistered:Z

    .line 105
    .line 106
    if-nez v1, :cond_8

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_5
    if-eqz v0, :cond_8

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v3, v4}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 123
    .line 124
    .line 125
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsBackCallbackRegistered:Z

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    .line 132
    .line 133
    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsBackCallbackRegistered:Z

    .line 140
    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 144
    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :cond_7
    if-eqz v0, :cond_8

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0, v4}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 158
    .line 159
    .line 160
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsBackCallbackRegistered:Z

    .line 161
    .line 162
    :cond_8
    :goto_2
    return-void
.end method

.method public final userActivity()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final wakeUpForFullScreenIntent(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "com.android.cts.verifier"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-string p1, "com.android.systemui:full_screen_intent"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-virtual {v2, v0, v1, v3, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpComingFromTouch:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final wakeUpIfDozing(JLjava/lang/String;I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 8
    .line 9
    instance-of v1, v0, Ljava/util/Collection;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->isAnimationPlaying()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    xor-int/2addr v1, v2

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    move v0, v2

    .line 52
    :goto_1
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const-string v0, "com.android.systemui:"

    .line 55
    .line 56
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2, p4, p3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpComingFromTouch:Z

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method
