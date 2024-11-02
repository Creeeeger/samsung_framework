.class public final Lcom/android/systemui/shade/NotificationPanelViewController_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final accessibilityManagerProvider:Ljavax/inject/Provider;

.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final alternateBouncerInteractorProvider:Ljavax/inject/Provider;

.field public final ambientStateProvider:Ljavax/inject/Provider;

.field public final authControllerProvider:Ljavax/inject/Provider;

.field public final bypassControllerProvider:Ljavax/inject/Provider;

.field public final cameraLauncherLazyProvider:Ljavax/inject/Provider;

.field public final clockPositionAlgorithmProvider:Ljavax/inject/Provider;

.field public final commandQueueProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contentResolverProvider:Ljavax/inject/Provider;

.field public final conversationNotificationManagerProvider:Ljavax/inject/Provider;

.field public final coordinatorProvider:Ljavax/inject/Provider;

.field public final coverScreenManagerLazyProvider:Ljavax/inject/Provider;

.field public final dataUsageLabelManagerLazyProvider:Ljavax/inject/Provider;

.field public final displayIdProvider:Ljavax/inject/Provider;

.field public final dozeLogProvider:Ljavax/inject/Provider;

.field public final dozeParametersProvider:Ljavax/inject/Provider;

.field public final dreamingToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

.field public final editModeControllerProvider:Ljavax/inject/Provider;

.field public final emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

.field public final falsingCollectorProvider:Ljavax/inject/Provider;

.field public final falsingManagerProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final flingAnimationUtilsBuilderProvider:Ljavax/inject/Provider;

.field public final fragmentServiceProvider:Ljavax/inject/Provider;

.field public final goneToDreamingTransitionViewModelProvider:Ljavax/inject/Provider;

.field public final gutsManagerProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final indicatorTouchHandlerProvider:Ljavax/inject/Provider;

.field public final interactionJankMonitorProvider:Ljavax/inject/Provider;

.field public final keyguardBottomAreaInteractorProvider:Ljavax/inject/Provider;

.field public final keyguardBottomAreaViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardBottomAreaViewModelProvider:Ljavax/inject/Provider;

.field public final keyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

.field public final keyguardIndicationControllerProvider:Ljavax/inject/Provider;

.field public final keyguardInteractorProvider:Ljavax/inject/Provider;

.field public final keyguardLongPressViewModelProvider:Ljavax/inject/Provider;

.field public final keyguardMediaControllerProvider:Ljavax/inject/Provider;

.field public final keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final keyguardStatusBarViewComponentFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardTouchAnimatorProvider:Ljavax/inject/Provider;

.field public final keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

.field public final keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardWallpaperControllerProvider:Ljavax/inject/Provider;

.field public final latencyTrackerProvider:Ljavax/inject/Provider;

.field public final layoutInflaterProvider:Ljavax/inject/Provider;

.field public final lockIconViewControllerProvider:Ljavax/inject/Provider;

.field public final lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

.field public final lockscreenNotificationIconsOnlyControllerProvider:Ljavax/inject/Provider;

.field public final lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

.field public final lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

.field public final lockscreenToDreamingTransitionViewModelProvider:Ljavax/inject/Provider;

.field public final lockscreenToOccludedTransitionViewModelProvider:Ljavax/inject/Provider;

.field public final mBioUnlockControllerLazyProvider:Ljavax/inject/Provider;

.field public final mainDispatcherProvider:Ljavax/inject/Provider;

.field public final mascotViewContainerProvider:Ljavax/inject/Provider;

.field public final mediaDataManagerProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final multiShadeInteractorProvider:Ljavax/inject/Provider;

.field public final navigationBarControllerProvider:Ljavax/inject/Provider;

.field public final navigationModeControllerProvider:Ljavax/inject/Provider;

.field public final notificationListContainerProvider:Ljavax/inject/Provider;

.field public final notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

.field public final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

.field public final notificationShelfManagerProvider:Ljavax/inject/Provider;

.field public final notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

.field public final notificationStackSizeCalculatorProvider:Ljavax/inject/Provider;

.field public final notificationsQSContainerControllerProvider:Ljavax/inject/Provider;

.field public final occludedToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

.field public final panelLoggerProvider:Ljavax/inject/Provider;

.field public final panelPolicyProvider:Ljavax/inject/Provider;

.field public final pluginAODManagerLazyProvider:Ljavax/inject/Provider;

.field public final pluginLockDataProvider:Ljavax/inject/Provider;

.field public final pluginLockMediatorProvider:Ljavax/inject/Provider;

.field public final pluginLockStarManagerLazyProvider:Ljavax/inject/Provider;

.field public final powerManagerProvider:Ljavax/inject/Provider;

.field public final privacyDialogControllerProvider:Ljavax/inject/Provider;

.field public final pulseExpansionHandlerProvider:Ljavax/inject/Provider;

.field public final punchHoleVIViewControllerFactoryProvider:Ljavax/inject/Provider;

.field public final qsStatusEventLogProvider:Ljavax/inject/Provider;

.field public final quickSettingsControllerProvider:Ljavax/inject/Provider;

.field public final screenOffAnimationControllerProvider:Ljavax/inject/Provider;

.field public final scrimControllerProvider:Ljavax/inject/Provider;

.field public final shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

.field public final shadeHeaderControllerProvider:Ljavax/inject/Provider;

.field public final shadeLoggerProvider:Ljavax/inject/Provider;

.field public final shadeTransitionControllerProvider:Ljavax/inject/Provider;

.field public final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

.field public final statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

.field public final subScreenManagerLazyProvider:Ljavax/inject/Provider;

.field public final sysUiStateProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;

.field public final tapAgainViewControllerProvider:Ljavax/inject/Provider;

.field public final unfoldComponentProvider:Ljavax/inject/Provider;

.field public final unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;

.field public final vibratorHelperProvider:Ljavax/inject/Provider;

.field public final viewProvider:Ljavax/inject/Provider;

.field public final wallpaperImageCreatorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mascotViewContainerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginLockDataProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->clockPositionAlgorithmProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->handlerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->coordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->bypassControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->latencyTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->displayIdProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->flingAnimationUtilsBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->gutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationsQSContainerControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 43
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardStatusBarViewComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p43

    .line 44
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p44

    .line 45
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->authControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p45

    .line 46
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p46

    .line 47
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->userManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p47

    .line 48
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p48

    .line 49
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p49

    .line 50
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->ambientStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p50

    .line 51
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p51

    .line 52
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p52

    .line 53
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->tapAgainViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p53

    .line 54
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p54

    .line 55
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p55

    .line 56
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->quickSettingsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p56

    .line 57
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->fragmentServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p57

    .line 58
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p58

    .line 59
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p59

    .line 60
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p60

    .line 61
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p61

    .line 62
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p62

    .line 63
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->unfoldComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p63

    .line 64
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p64

    .line 65
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardBottomAreaViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p65

    .line 66
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p66

    .line 67
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p67

    .line 68
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationListContainerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p68

    .line 69
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationStackSizeCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p69

    .line 70
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p70

    .line 71
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p71

    .line 72
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->interactionJankMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p72

    .line 73
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->systemClockProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p73

    .line 74
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardBottomAreaViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p74

    .line 75
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardBottomAreaInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p75

    .line 76
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->cameraLauncherLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p76

    .line 77
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->alternateBouncerInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p77

    .line 78
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dreamingToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p78

    .line 79
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->occludedToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p79

    .line 80
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenToDreamingTransitionViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p80

    .line 81
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->goneToDreamingTransitionViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p81

    .line 82
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenToOccludedTransitionViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p82

    .line 83
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mainDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p83

    .line 84
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p84

    .line 85
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->multiShadeInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p85

    .line 86
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p86

    .line 87
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardLongPressViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p87

    .line 88
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p88

    .line 89
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p89

    .line 90
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p90

    .line 91
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationShelfManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p91

    .line 92
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p92

    .line 93
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->punchHoleVIViewControllerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p93

    .line 94
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardTouchAnimatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p94

    .line 95
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->editModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p95

    .line 96
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dataUsageLabelManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p96

    .line 97
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->indicatorTouchHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p97

    .line 98
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->qsStatusEventLogProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p98

    .line 99
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p99

    .line 100
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenNotificationIconsOnlyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p100

    .line 101
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardWallpaperControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p101

    .line 102
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->wallpaperImageCreatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p102

    .line 103
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p103

    .line 104
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->panelLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p104

    .line 105
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->panelPolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p105

    .line 106
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->subScreenManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p106

    .line 107
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p107

    .line 108
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginLockStarManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p108

    .line 109
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mBioUnlockControllerLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Ljavax/inject/Provider;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/keyguard/KeyguardEditModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;Lcom/android/systemui/util/QsStatusEventLog;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/shade/SecPanelPolicy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/shade/NotificationPanelViewController;
    .locals 109

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

    move/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    move-object/from16 v54, p53

    move-object/from16 v55, p54

    move-object/from16 v56, p55

    move-object/from16 v57, p56

    move-object/from16 v58, p57

    move-object/from16 v59, p58

    move-object/from16 v60, p59

    move-object/from16 v61, p60

    move-object/from16 v62, p61

    move-object/from16 v63, p62

    move-object/from16 v64, p63

    move-object/from16 v65, p64

    move-object/from16 v66, p65

    move-object/from16 v67, p66

    move-object/from16 v68, p67

    move-object/from16 v69, p68

    move-object/from16 v70, p69

    move-object/from16 v71, p70

    move-object/from16 v72, p71

    move-object/from16 v73, p72

    move-object/from16 v74, p73

    move-object/from16 v75, p74

    move-object/from16 v76, p75

    move-object/from16 v77, p76

    move-object/from16 v78, p77

    move-object/from16 v79, p78

    move-object/from16 v80, p79

    move-object/from16 v81, p80

    move-object/from16 v82, p81

    move-object/from16 v83, p82

    move-object/from16 v84, p83

    move-object/from16 v85, p84

    move-object/from16 v86, p85

    move-object/from16 v87, p86

    move-object/from16 v88, p87

    move-object/from16 v89, p88

    move-object/from16 v90, p89

    move-object/from16 v91, p90

    move-object/from16 v92, p91

    move-object/from16 v93, p92

    move-object/from16 v94, p93

    move-object/from16 v95, p94

    move-object/from16 v96, p95

    move-object/from16 v97, p96

    move-object/from16 v98, p97

    move-object/from16 v99, p98

    move-object/from16 v100, p99

    move-object/from16 v101, p100

    move-object/from16 v102, p101

    move-object/from16 v103, p102

    move-object/from16 v104, p103

    move-object/from16 v105, p104

    move-object/from16 v106, p105

    move-object/from16 v107, p106

    .line 1
    new-instance v108, Lcom/android/systemui/shade/NotificationPanelViewController;

    move-object/from16 v0, v108

    invoke-direct/range {v0 .. v107}, Lcom/android/systemui/shade/NotificationPanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Ljavax/inject/Provider;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/keyguard/KeyguardEditModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;Lcom/android/systemui/util/QsStatusEventLog;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/shade/SecPanelPolicy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v108
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 109

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mascotViewContainerProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginLockDataProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockData;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->clockPositionAlgorithmProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 46
    .line 47
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v7, v1

    .line 52
    check-cast v7, Lcom/android/systemui/shade/NotificationPanelView;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v8, v1

    .line 61
    check-cast v8, Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 64
    .line 65
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v9, v1

    .line 70
    check-cast v9, Landroid/view/LayoutInflater;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 73
    .line 74
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v10, v1

    .line 79
    check-cast v10, Lcom/android/systemui/flags/FeatureFlags;

    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->coordinatorProvider:Ljavax/inject/Provider;

    .line 82
    .line 83
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v11, v1

    .line 88
    check-cast v11, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 91
    .line 92
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v12, v1

    .line 97
    check-cast v12, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 100
    .line 101
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v13, v1

    .line 106
    check-cast v13, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 107
    .line 108
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->bypassControllerProvider:Ljavax/inject/Provider;

    .line 109
    .line 110
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v14, v1

    .line 115
    check-cast v14, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    .line 118
    .line 119
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v15, v1

    .line 124
    check-cast v15, Lcom/android/systemui/plugins/FalsingManager;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    .line 127
    .line 128
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move-object/from16 v16, v1

    .line 133
    .line 134
    check-cast v16, Lcom/android/systemui/classifier/FalsingCollector;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 137
    .line 138
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move-object/from16 v17, v1

    .line 143
    .line 144
    check-cast v17, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 147
    .line 148
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    move-object/from16 v18, v1

    .line 153
    .line 154
    check-cast v18, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    .line 157
    .line 158
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object/from16 v19, v1

    .line 163
    .line 164
    check-cast v19, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 167
    .line 168
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    move-object/from16 v20, v1

    .line 173
    .line 174
    check-cast v20, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 175
    .line 176
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    .line 177
    .line 178
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    move-object/from16 v21, v1

    .line 183
    .line 184
    check-cast v21, Lcom/android/systemui/doze/DozeLog;

    .line 185
    .line 186
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 187
    .line 188
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    move-object/from16 v22, v1

    .line 193
    .line 194
    check-cast v22, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 195
    .line 196
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    .line 197
    .line 198
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    move-object/from16 v23, v1

    .line 203
    .line 204
    check-cast v23, Lcom/android/systemui/statusbar/CommandQueue;

    .line 205
    .line 206
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 207
    .line 208
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    move-object/from16 v24, v1

    .line 213
    .line 214
    check-cast v24, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 215
    .line 216
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->latencyTrackerProvider:Ljavax/inject/Provider;

    .line 217
    .line 218
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    move-object/from16 v25, v1

    .line 223
    .line 224
    check-cast v25, Lcom/android/internal/util/LatencyTracker;

    .line 225
    .line 226
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 227
    .line 228
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    move-object/from16 v26, v1

    .line 233
    .line 234
    check-cast v26, Landroid/os/PowerManager;

    .line 235
    .line 236
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    .line 237
    .line 238
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    move-object/from16 v27, v1

    .line 243
    .line 244
    check-cast v27, Landroid/view/accessibility/AccessibilityManager;

    .line 245
    .line 246
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->displayIdProvider:Ljavax/inject/Provider;

    .line 247
    .line 248
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Ljava/lang/Integer;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result v28

    .line 258
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 259
    .line 260
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    move-object/from16 v29, v1

    .line 265
    .line 266
    check-cast v29, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 267
    .line 268
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    .line 269
    .line 270
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    move-object/from16 v30, v1

    .line 275
    .line 276
    check-cast v30, Lcom/android/internal/logging/MetricsLogger;

    .line 277
    .line 278
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeLoggerProvider:Ljavax/inject/Provider;

    .line 279
    .line 280
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    move-object/from16 v31, v1

    .line 285
    .line 286
    check-cast v31, Lcom/android/systemui/shade/ShadeLogger;

    .line 287
    .line 288
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 289
    .line 290
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    move-object/from16 v32, v1

    .line 295
    .line 296
    check-cast v32, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 297
    .line 298
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->flingAnimationUtilsBuilderProvider:Ljavax/inject/Provider;

    .line 299
    .line 300
    move-object/from16 v33, v1

    .line 301
    .line 302
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    .line 303
    .line 304
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    move-object/from16 v34, v1

    .line 309
    .line 310
    check-cast v34, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    .line 313
    .line 314
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    move-object/from16 v35, v1

    .line 319
    .line 320
    check-cast v35, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 321
    .line 322
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 323
    .line 324
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    move-object/from16 v36, v1

    .line 329
    .line 330
    check-cast v36, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->gutsManagerProvider:Ljavax/inject/Provider;

    .line 333
    .line 334
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    move-object/from16 v37, v1

    .line 339
    .line 340
    check-cast v37, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 341
    .line 342
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationsQSContainerControllerProvider:Ljavax/inject/Provider;

    .line 343
    .line 344
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    move-object/from16 v38, v1

    .line 349
    .line 350
    check-cast v38, Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 351
    .line 352
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    .line 353
    .line 354
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    move-object/from16 v39, v1

    .line 359
    .line 360
    check-cast v39, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 361
    .line 362
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    .line 363
    .line 364
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    move-object/from16 v40, v1

    .line 369
    .line 370
    check-cast v40, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 371
    .line 372
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

    .line 373
    .line 374
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    move-object/from16 v41, v1

    .line 379
    .line 380
    check-cast v41, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    .line 381
    .line 382
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

    .line 383
    .line 384
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    move-object/from16 v42, v1

    .line 389
    .line 390
    check-cast v42, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    .line 391
    .line 392
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardStatusBarViewComponentFactoryProvider:Ljavax/inject/Provider;

    .line 393
    .line 394
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    move-object/from16 v43, v1

    .line 399
    .line 400
    check-cast v43, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    .line 403
    .line 404
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    move-object/from16 v44, v1

    .line 409
    .line 410
    check-cast v44, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 411
    .line 412
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->authControllerProvider:Ljavax/inject/Provider;

    .line 413
    .line 414
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    move-object/from16 v45, v1

    .line 419
    .line 420
    check-cast v45, Lcom/android/systemui/biometrics/AuthController;

    .line 421
    .line 422
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->scrimControllerProvider:Ljavax/inject/Provider;

    .line 423
    .line 424
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    move-object/from16 v46, v1

    .line 429
    .line 430
    check-cast v46, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 431
    .line 432
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->userManagerProvider:Ljavax/inject/Provider;

    .line 433
    .line 434
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    move-object/from16 v47, v1

    .line 439
    .line 440
    check-cast v47, Landroid/os/UserManager;

    .line 441
    .line 442
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 443
    .line 444
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    move-object/from16 v48, v1

    .line 449
    .line 450
    check-cast v48, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 451
    .line 452
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    .line 453
    .line 454
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    move-object/from16 v49, v1

    .line 459
    .line 460
    check-cast v49, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 461
    .line 462
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->ambientStateProvider:Ljavax/inject/Provider;

    .line 463
    .line 464
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    move-object/from16 v50, v1

    .line 469
    .line 470
    check-cast v50, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 471
    .line 472
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    .line 473
    .line 474
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    move-object/from16 v51, v1

    .line 479
    .line 480
    check-cast v51, Lcom/android/keyguard/SecLockIconViewController;

    .line 481
    .line 482
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    .line 483
    .line 484
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    move-object/from16 v52, v1

    .line 489
    .line 490
    check-cast v52, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 491
    .line 492
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->tapAgainViewControllerProvider:Ljavax/inject/Provider;

    .line 493
    .line 494
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    move-object/from16 v53, v1

    .line 499
    .line 500
    check-cast v53, Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    .line 501
    .line 502
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 503
    .line 504
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    move-object/from16 v54, v1

    .line 509
    .line 510
    check-cast v54, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 511
    .line 512
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    .line 513
    .line 514
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    move-object/from16 v55, v1

    .line 519
    .line 520
    check-cast v55, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 521
    .line 522
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->quickSettingsControllerProvider:Ljavax/inject/Provider;

    .line 523
    .line 524
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    move-object/from16 v56, v1

    .line 529
    .line 530
    check-cast v56, Lcom/android/systemui/shade/QuickSettingsController;

    .line 531
    .line 532
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 533
    .line 534
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    move-object/from16 v57, v1

    .line 539
    .line 540
    check-cast v57, Lcom/android/systemui/fragments/FragmentService;

    .line 541
    .line 542
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 543
    .line 544
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    move-object/from16 v58, v1

    .line 549
    .line 550
    check-cast v58, Landroid/content/ContentResolver;

    .line 551
    .line 552
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 553
    .line 554
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    move-object/from16 v59, v1

    .line 559
    .line 560
    check-cast v59, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 561
    .line 562
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 563
    .line 564
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    move-object/from16 v60, v1

    .line 569
    .line 570
    check-cast v60, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 571
    .line 572
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 573
    .line 574
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    move-object/from16 v61, v1

    .line 579
    .line 580
    check-cast v61, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 581
    .line 582
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    .line 583
    .line 584
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    move-object/from16 v62, v1

    .line 589
    .line 590
    check-cast v62, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 591
    .line 592
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->unfoldComponentProvider:Ljavax/inject/Provider;

    .line 593
    .line 594
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    move-object/from16 v63, v1

    .line 599
    .line 600
    check-cast v63, Ljava/util/Optional;

    .line 601
    .line 602
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    .line 603
    .line 604
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    move-object/from16 v64, v1

    .line 609
    .line 610
    check-cast v64, Lcom/android/systemui/model/SysUiState;

    .line 611
    .line 612
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardBottomAreaViewControllerProvider:Ljavax/inject/Provider;

    .line 613
    .line 614
    move-object/from16 v65, v1

    .line 615
    .line 616
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    .line 617
    .line 618
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    move-object/from16 v66, v1

    .line 623
    .line 624
    check-cast v66, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 625
    .line 626
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    .line 627
    .line 628
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    move-object/from16 v67, v1

    .line 633
    .line 634
    check-cast v67, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 635
    .line 636
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationListContainerProvider:Ljavax/inject/Provider;

    .line 637
    .line 638
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    move-object/from16 v68, v1

    .line 643
    .line 644
    check-cast v68, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 645
    .line 646
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationStackSizeCalculatorProvider:Ljavax/inject/Provider;

    .line 647
    .line 648
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    move-object/from16 v69, v1

    .line 653
    .line 654
    check-cast v69, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 655
    .line 656
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 657
    .line 658
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    move-object/from16 v70, v1

    .line 663
    .line 664
    check-cast v70, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 665
    .line 666
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->shadeTransitionControllerProvider:Ljavax/inject/Provider;

    .line 667
    .line 668
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    move-object/from16 v71, v1

    .line 673
    .line 674
    check-cast v71, Lcom/android/systemui/shade/transition/ShadeTransitionController;

    .line 675
    .line 676
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->interactionJankMonitorProvider:Ljavax/inject/Provider;

    .line 677
    .line 678
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    move-object/from16 v72, v1

    .line 683
    .line 684
    check-cast v72, Lcom/android/internal/jank/InteractionJankMonitor;

    .line 685
    .line 686
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->systemClockProvider:Ljavax/inject/Provider;

    .line 687
    .line 688
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    move-object/from16 v73, v1

    .line 693
    .line 694
    check-cast v73, Lcom/android/systemui/util/time/SystemClock;

    .line 695
    .line 696
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardBottomAreaViewModelProvider:Ljavax/inject/Provider;

    .line 697
    .line 698
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    move-object/from16 v74, v1

    .line 703
    .line 704
    check-cast v74, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 705
    .line 706
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardBottomAreaInteractorProvider:Ljavax/inject/Provider;

    .line 707
    .line 708
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    move-object/from16 v75, v1

    .line 713
    .line 714
    check-cast v75, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 715
    .line 716
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->cameraLauncherLazyProvider:Ljavax/inject/Provider;

    .line 717
    .line 718
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 719
    .line 720
    .line 721
    move-result-object v76

    .line 722
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->alternateBouncerInteractorProvider:Ljavax/inject/Provider;

    .line 723
    .line 724
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    move-object/from16 v77, v1

    .line 729
    .line 730
    check-cast v77, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 731
    .line 732
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dreamingToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 733
    .line 734
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    move-object/from16 v78, v1

    .line 739
    .line 740
    check-cast v78, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    .line 741
    .line 742
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->occludedToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 743
    .line 744
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    move-object/from16 v79, v1

    .line 749
    .line 750
    check-cast v79, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    .line 751
    .line 752
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenToDreamingTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 753
    .line 754
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    move-object/from16 v80, v1

    .line 759
    .line 760
    check-cast v80, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    .line 761
    .line 762
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->goneToDreamingTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 763
    .line 764
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    move-object/from16 v81, v1

    .line 769
    .line 770
    check-cast v81, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    .line 771
    .line 772
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenToOccludedTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 773
    .line 774
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    move-object/from16 v82, v1

    .line 779
    .line 780
    check-cast v82, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    .line 781
    .line 782
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mainDispatcherProvider:Ljavax/inject/Provider;

    .line 783
    .line 784
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    move-object/from16 v83, v1

    .line 789
    .line 790
    check-cast v83, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 791
    .line 792
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

    .line 793
    .line 794
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    move-object/from16 v84, v1

    .line 799
    .line 800
    check-cast v84, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 801
    .line 802
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->multiShadeInteractorProvider:Ljavax/inject/Provider;

    .line 803
    .line 804
    move-object/from16 v85, v1

    .line 805
    .line 806
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 807
    .line 808
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    move-object/from16 v86, v1

    .line 813
    .line 814
    check-cast v86, Lcom/android/systemui/dump/DumpManager;

    .line 815
    .line 816
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardLongPressViewModelProvider:Ljavax/inject/Provider;

    .line 817
    .line 818
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    move-object/from16 v87, v1

    .line 823
    .line 824
    check-cast v87, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;

    .line 825
    .line 826
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardInteractorProvider:Ljavax/inject/Provider;

    .line 827
    .line 828
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    move-object/from16 v88, v1

    .line 833
    .line 834
    check-cast v88, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 835
    .line 836
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 837
    .line 838
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    move-object/from16 v89, v1

    .line 843
    .line 844
    check-cast v89, Lcom/android/systemui/plugins/ActivityStarter;

    .line 845
    .line 846
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

    .line 847
    .line 848
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    move-object/from16 v90, v1

    .line 853
    .line 854
    check-cast v90, Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 855
    .line 856
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->notificationShelfManagerProvider:Ljavax/inject/Provider;

    .line 857
    .line 858
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    move-object/from16 v91, v1

    .line 863
    .line 864
    check-cast v91, Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 865
    .line 866
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    .line 867
    .line 868
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    move-object/from16 v92, v1

    .line 873
    .line 874
    check-cast v92, Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 875
    .line 876
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->punchHoleVIViewControllerFactoryProvider:Ljavax/inject/Provider;

    .line 877
    .line 878
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    move-object/from16 v93, v1

    .line 883
    .line 884
    check-cast v93, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;

    .line 885
    .line 886
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardTouchAnimatorProvider:Ljavax/inject/Provider;

    .line 887
    .line 888
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    move-object/from16 v94, v1

    .line 893
    .line 894
    check-cast v94, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 895
    .line 896
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->editModeControllerProvider:Ljavax/inject/Provider;

    .line 897
    .line 898
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    move-object/from16 v95, v1

    .line 903
    .line 904
    check-cast v95, Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 905
    .line 906
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->dataUsageLabelManagerLazyProvider:Ljavax/inject/Provider;

    .line 907
    .line 908
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 909
    .line 910
    .line 911
    move-result-object v96

    .line 912
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->indicatorTouchHandlerProvider:Ljavax/inject/Provider;

    .line 913
    .line 914
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    move-object/from16 v97, v1

    .line 919
    .line 920
    check-cast v97, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    .line 921
    .line 922
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->qsStatusEventLogProvider:Ljavax/inject/Provider;

    .line 923
    .line 924
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    move-object/from16 v98, v1

    .line 929
    .line 930
    check-cast v98, Lcom/android/systemui/util/QsStatusEventLog;

    .line 931
    .line 932
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    .line 933
    .line 934
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    move-object/from16 v99, v1

    .line 939
    .line 940
    check-cast v99, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 941
    .line 942
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->lockscreenNotificationIconsOnlyControllerProvider:Ljavax/inject/Provider;

    .line 943
    .line 944
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    move-object/from16 v100, v1

    .line 949
    .line 950
    check-cast v100, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 951
    .line 952
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->keyguardWallpaperControllerProvider:Ljavax/inject/Provider;

    .line 953
    .line 954
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    move-object/from16 v101, v1

    .line 959
    .line 960
    check-cast v101, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 961
    .line 962
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->wallpaperImageCreatorProvider:Ljavax/inject/Provider;

    .line 963
    .line 964
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    move-object/from16 v102, v1

    .line 969
    .line 970
    check-cast v102, Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    .line 971
    .line 972
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

    .line 973
    .line 974
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    move-object/from16 v103, v1

    .line 979
    .line 980
    check-cast v103, Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 981
    .line 982
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->panelLoggerProvider:Ljavax/inject/Provider;

    .line 983
    .line 984
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    move-object/from16 v104, v1

    .line 989
    .line 990
    check-cast v104, Lcom/android/systemui/log/SecPanelLogger;

    .line 991
    .line 992
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->panelPolicyProvider:Ljavax/inject/Provider;

    .line 993
    .line 994
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v1

    .line 998
    move-object/from16 v105, v1

    .line 999
    .line 1000
    check-cast v105, Lcom/android/systemui/shade/SecPanelPolicy;

    .line 1001
    .line 1002
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->subScreenManagerLazyProvider:Ljavax/inject/Provider;

    .line 1003
    .line 1004
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v106

    .line 1008
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    .line 1009
    .line 1010
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v107

    .line 1014
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->pluginLockStarManagerLazyProvider:Ljavax/inject/Provider;

    .line 1015
    .line 1016
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v108

    .line 1020
    invoke-static/range {v2 .. v108}, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Ljavax/inject/Provider;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/keyguard/KeyguardEditModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;Lcom/android/systemui/util/QsStatusEventLog;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/shade/SecPanelPolicy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController_Factory;->mBioUnlockControllerLazyProvider:Ljavax/inject/Provider;

    .line 1025
    .line 1026
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1027
    .line 1028
    .line 1029
    return-object v1
.end method
