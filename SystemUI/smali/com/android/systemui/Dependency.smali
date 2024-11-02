.class public final Lcom/android/systemui/Dependency;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final BUBBLE_MANAGER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field public mAccessibilityButtonListController:Ldagger/Lazy;

.field public mAccessibilityButtonModeObserver:Ldagger/Lazy;

.field public mAccessibilityController:Ldagger/Lazy;

.field public mAccessibilityFloatingMenuController:Ldagger/Lazy;

.field public mAccessibilityManagerWrapper:Ldagger/Lazy;

.field public mActivityManagerWrapper:Ldagger/Lazy;

.field public mActivityStarter:Ldagger/Lazy;

.field public mAlarmManager:Ldagger/Lazy;

.field public mAmbientStateLazy:Ldagger/Lazy;

.field public mAnimationUtils:Ldagger/Lazy;

.field public mAppOpsController:Ldagger/Lazy;

.field public mAssistManager:Ldagger/Lazy;

.field public mAssistantFeedbackController:Ldagger/Lazy;

.field public mAsyncSensorManager:Ldagger/Lazy;

.field public mAutoHideController:Ldagger/Lazy;

.field public mBackgroundExecutor:Ldagger/Lazy;

.field public mBgHandler:Ldagger/Lazy;

.field public mBgLooper:Ldagger/Lazy;

.field public mBluetoothController:Ldagger/Lazy;

.field public mBroadcastDispatcher:Ldagger/Lazy;

.field public mBubblesManagerOptional:Ldagger/Lazy;

.field public mCastController:Ldagger/Lazy;

.field public mCentralSurfaces:Ldagger/Lazy;

.field public mChannelEditorDialogController:Ldagger/Lazy;

.field public mClockManager:Ldagger/Lazy;

.field public mCommandQueue:Ldagger/Lazy;

.field public mConfigurationController:Ldagger/Lazy;

.field public mContentInsetsProviderLazy:Ldagger/Lazy;

.field public mCoverScreenManager:Ldagger/Lazy;

.field public mCoverUtilWrapper:Ldagger/Lazy;

.field public mDarkIconDispatcher:Ldagger/Lazy;

.field public mDataSaverController:Ldagger/Lazy;

.field public final mDependencies:Landroid/util/ArrayMap;

.field public mDesktopManager:Ldagger/Lazy;

.field public mDeviceConfigProxy:Ldagger/Lazy;

.field public mDevicePolicyManagerWrapper:Ldagger/Lazy;

.field public mDeviceProvisionedController:Ldagger/Lazy;

.field public mDialogLaunchAnimatorLazy:Ldagger/Lazy;

.field public mDisplayLifecycle:Ldagger/Lazy;

.field public mDisplayMetrics:Ldagger/Lazy;

.field public mDockManager:Ldagger/Lazy;

.field public mDozeParameters:Ldagger/Lazy;

.field public mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mEdgeBackGestureHandlerFactoryLazy:Ldagger/Lazy;

.field public mEnhancedEstimates:Ldagger/Lazy;

.field public mExtensionController:Ldagger/Lazy;

.field public mExternalClockProvider:Ldagger/Lazy;

.field public mFaceWidgetController:Ldagger/Lazy;

.field public mFastUnlockController:Ldagger/Lazy;

.field public mFeatureFlagsLazy:Ldagger/Lazy;

.field public mFlashlightController:Ldagger/Lazy;

.field public mFoldController:Ldagger/Lazy;

.field public mForegroundServiceController:Ldagger/Lazy;

.field public mFragmentService:Ldagger/Lazy;

.field public mFullExpansionPanelNotiAlphaController:Ldagger/Lazy;

.field public mGarbageMonitor:Ldagger/Lazy;

.field public mGlobalActionsComponent:Ldagger/Lazy;

.field public mGroupExpansionManagerLazy:Ldagger/Lazy;

.field public mGroupMembershipManagerLazy:Ldagger/Lazy;

.field public mHeadsUpManager:Ldagger/Lazy;

.field public mHighPriorityProvider:Ldagger/Lazy;

.field public mHotspotController:Ldagger/Lazy;

.field public mINotificationManager:Ldagger/Lazy;

.field public mIStatusBarService:Ldagger/Lazy;

.field public mIWindowManager:Ldagger/Lazy;

.field public mInternetDialogFactory:Ldagger/Lazy;

.field public mKeyguardDismissUtil:Ldagger/Lazy;

.field public mKeyguardMonitor:Ldagger/Lazy;

.field public mKeyguardSecurityModel:Ldagger/Lazy;

.field public mKeyguardShortcutManager:Ldagger/Lazy;

.field public mKeyguardUpdateMonitor:Ldagger/Lazy;

.field public mKeyguardVisibilityMonitor:Ldagger/Lazy;

.field public mKnoxStateMonitor:Ldagger/Lazy;

.field public mLauncherApps:Ldagger/Lazy;

.field public mLeakDetector:Ldagger/Lazy;

.field public mLeakReportEmail:Ldagger/Lazy;

.field public mLeakReporter:Ldagger/Lazy;

.field public mLightBarController:Ldagger/Lazy;

.field public mLocalBluetoothManager:Ldagger/Lazy;

.field public mLocationController:Ldagger/Lazy;

.field public mLockscreenGestureLogger:Ldagger/Lazy;

.field public mLooperSlowLogController:Ldagger/Lazy;

.field public mMainExecutor:Ldagger/Lazy;

.field public mMainHandler:Ldagger/Lazy;

.field public mMainLooper:Ldagger/Lazy;

.field public mManagedProfileController:Ldagger/Lazy;

.field public mMediaOutputDialogFactory:Ldagger/Lazy;

.field public mMetricsLogger:Ldagger/Lazy;

.field public mMultiSIMControllerLazy:Ldagger/Lazy;

.field public mNavBarBgHandler:Ldagger/Lazy;

.field public mNavBarModeController:Ldagger/Lazy;

.field public mNavBarStore:Ldagger/Lazy;

.field public mNavigationBarController:Ldagger/Lazy;

.field public mNetworkController:Ldagger/Lazy;

.field public mNextAlarmController:Ldagger/Lazy;

.field public mNightDisplayListener:Ldagger/Lazy;

.field public mNotiCinemaLogger:Ldagger/Lazy;

.field public mNotifCollection:Ldagger/Lazy;

.field public mNotifLiveDataStore:Ldagger/Lazy;

.field public mNotificationBackupRestoreManager:Ldagger/Lazy;

.field public mNotificationColorPicker:Ldagger/Lazy;

.field public mNotificationGutsManager:Ldagger/Lazy;

.field public mNotificationIconTransitionManager:Ldagger/Lazy;

.field public mNotificationListener:Ldagger/Lazy;

.field public mNotificationLockscreenUserManager:Ldagger/Lazy;

.field public mNotificationLogger:Ldagger/Lazy;

.field public mNotificationMediaManager:Ldagger/Lazy;

.field public mNotificationRemoteInputManager:Ldagger/Lazy;

.field public mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

.field public mNotificationSectionsManagerLazy:Ldagger/Lazy;

.field public mNotificationShadeWindowController:Ldagger/Lazy;

.field public mNotificationShelfManager:Ldagger/Lazy;

.field public mNotificationsController:Ldagger/Lazy;

.field public mOnUserInteractionCallback:Ldagger/Lazy;

.field public mOverviewProxyService:Ldagger/Lazy;

.field public mPackageManagerWrapper:Ldagger/Lazy;

.field public mPanelBlockExpandingHelper:Ldagger/Lazy;

.field public mPanelScreenShotBufferLogger:Ldagger/Lazy;

.field public mPeopleSpaceWidgetManager:Ldagger/Lazy;

.field public mPluginDependencyProvider:Ldagger/Lazy;

.field public mPluginFaceWidgetManager:Ldagger/Lazy;

.field public mPluginLockManager:Ldagger/Lazy;

.field public mPluginLockStarManager:Ldagger/Lazy;

.field public mPluginManager:Ldagger/Lazy;

.field public mPluginWallpaperManager:Ldagger/Lazy;

.field public mPrivacyDotViewControllerLazy:Ldagger/Lazy;

.field public mPrivacyItemController:Ldagger/Lazy;

.field public mProtoTracer:Ldagger/Lazy;

.field public final mProviders:Landroid/util/ArrayMap;

.field public mQSBackupRestoreManager:Ldagger/Lazy;

.field public mQSClockBellTower:Ldagger/Lazy;

.field public mRecordingController:Ldagger/Lazy;

.field public mReduceBrightColorsController:Ldagger/Lazy;

.field public mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

.field public mResetSettingsManager:Ldagger/Lazy;

.field public mRotationLockController:Ldagger/Lazy;

.field public mSBluetoothController:Ldagger/Lazy;

.field public mSPluginDependencyProvider:Ldagger/Lazy;

.field public mSPluginManager:Ldagger/Lazy;

.field public mSRotationLockController:Ldagger/Lazy;

.field public mScreenLifecycle:Ldagger/Lazy;

.field public mScreenOffAnimationController:Ldagger/Lazy;

.field public mSearcleManager:Ldagger/Lazy;

.field public mSecPanelExpansionStateNotifier:Ldagger/Lazy;

.field public mSecPanelLogger:Ldagger/Lazy;

.field public mSecPanelPolicy:Ldagger/Lazy;

.field public mSecQSPanelResourcePicker:Ldagger/Lazy;

.field public mSecRotationWatcher:Ldagger/Lazy;

.field public mSecurityController:Ldagger/Lazy;

.field public mSensorPrivacyController:Ldagger/Lazy;

.field public mSensorPrivacyManager:Ldagger/Lazy;

.field public mSettingsHelper:Ldagger/Lazy;

.field public mShadeController:Ldagger/Lazy;

.field public mShadeHeaderController:Ldagger/Lazy;

.field public mShelfToolTipManager:Ldagger/Lazy;

.field public mSimpleStatusBarIconController:Ldagger/Lazy;

.field public mSmartReplyConstants:Ldagger/Lazy;

.field public mSmartReplyController:Ldagger/Lazy;

.field public mStatusBarIconController:Ldagger/Lazy;

.field public mStatusBarStateController:Ldagger/Lazy;

.field public mSubScreenManager:Ldagger/Lazy;

.field public mSubscreenMusicWidgetController:Ldagger/Lazy;

.field public mSubscreenNotificationController:Ldagger/Lazy;

.field public mSubscreenQsPanelController:Ldagger/Lazy;

.field public mSubscreenUtil:Ldagger/Lazy;

.field public mSysUiStateFlagsContainer:Ldagger/Lazy;

.field public mSystemStatusAnimationSchedulerLazy:Ldagger/Lazy;

.field public mSystemUIDialogManagerLazy:Ldagger/Lazy;

.field public mSystemUIIndexMediator:Ldagger/Lazy;

.field public mSysuiColorExtractor:Ldagger/Lazy;

.field public mTaskbarDelegate:Ldagger/Lazy;

.field public mTelephonyListenerManager:Ldagger/Lazy;

.field public mTempStatusBarWindowController:Ldagger/Lazy;

.field public mTimeTickHandler:Ldagger/Lazy;

.field public mTunablePaddingService:Ldagger/Lazy;

.field public mTunerService:Ldagger/Lazy;

.field public mUiEventLogger:Ldagger/Lazy;

.field public mUiOffloadThread:Ldagger/Lazy;

.field public mUnlockedScreenOffAnimationHelper:Ldagger/Lazy;

.field public mUserContextProvider:Ldagger/Lazy;

.field public mUserInfoController:Ldagger/Lazy;

.field public mUserInteractorLazy:Ldagger/Lazy;

.field public mUserSwitcherController:Ldagger/Lazy;

.field public mUserTrackerLazy:Ldagger/Lazy;

.field public mVibratorHelper:Ldagger/Lazy;

.field public mVolumeDialogController:Ldagger/Lazy;

.field public mWakefulnessLifecycle:Ldagger/Lazy;

.field public mWallpaperChangeNotifier:Ldagger/Lazy;

.field public mWallpaperEventNotifier:Ldagger/Lazy;

.field public mWallpaperManager:Ldagger/Lazy;

.field public mWarningsUI:Ldagger/Lazy;

.field public mZenModeController:Ldagger/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 2
    .line 3
    const-string v1, "bg_handler"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 11
    .line 12
    const-string v1, "bubble_manager"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/systemui/Dependency;->BUBBLE_MANAGER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 20
    .line 21
    const-string v1, "background_looper"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 29
    .line 30
    const-string/jumbo v1, "main_looper"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 39
    .line 40
    const-string/jumbo v1, "time_tick_handler"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 47
    .line 48
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 49
    .line 50
    const-string/jumbo v1, "main_handler"

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 57
    .line 58
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 59
    .line 60
    const-string/jumbo v1, "main_executor"

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 67
    .line 68
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 69
    .line 70
    const-string v1, "background_executor"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 76
    .line 77
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 78
    .line 79
    const-string v1, "leak_report_email"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    .line 85
    .line 86
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 87
    .line 88
    const-string/jumbo v1, "navbar_background_handler"

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 17
    .line 18
    return-void
.end method

.method public static destroy(Ljava/lang/Class;Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v1, p0, Lcom/android/systemui/Dumpable;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/Dependency;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 3

    .line 7
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setInstance(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Ljava/lang/Class;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/Dependency$LazyDependencyCreator;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/android/systemui/Dependency$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Unsupported dependency "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ". "

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " providers known."

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method
