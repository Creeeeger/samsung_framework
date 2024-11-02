.class public final Lcom/android/systemui/shade/SecPanelPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPanelConfigurationBellTower:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;

.field public final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public final mSecHideInformationMirroringController:Lcom/android/systemui/shade/SecHideInformationMirroringController;

.field public final mSecPanelDeviceProvisionedListener:Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;

.field public final mSecPanelSmartMirroringManager:Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;

.field public final mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/shade/SecPanelTouchProximityHelper;Lcom/android/systemui/shade/SecHideInformationMirroringController;Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/shade/SecPanelConfigurationBellTower;Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/NotificationShadeWindowController;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p12

    .line 3
    .line 4
    move-object/from16 v2, p15

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v3, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 10
    .line 11
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/os/Handler;

    .line 16
    .line 17
    iput-object v3, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mMainHandler:Landroid/os/Handler;

    .line 18
    .line 19
    move-object v4, p1

    .line 20
    iput-object v4, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 21
    .line 22
    move-object v4, p2

    .line 23
    iput-object v4, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 24
    .line 25
    new-instance v4, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;

    .line 26
    .line 27
    move-object/from16 v5, p18

    .line 28
    .line 29
    invoke-direct {v4, v2, v5, v3}, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    move-object v4, p7

    .line 33
    iput-object v4, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 34
    .line 35
    move-object v4, p8

    .line 36
    iput-object v4, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mPanelConfigurationBellTower:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;

    .line 37
    .line 38
    new-instance v4, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;

    .line 39
    .line 40
    invoke-direct {v4, v1, v3}, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    iput-object v4, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mSecPanelDeviceProvisionedListener:Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;

    .line 44
    .line 45
    new-instance v4, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;

    .line 46
    .line 47
    move-object v5, p3

    .line 48
    invoke-direct {v4, p0, p3, v2, v3}, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;-><init>(Lcom/android/systemui/shade/SecPanelPolicy;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    iput-object v4, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mSecPanelSmartMirroringManager:Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;

    .line 52
    .line 53
    move-object v2, p5

    .line 54
    iput-object v2, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mSecHideInformationMirroringController:Lcom/android/systemui/shade/SecHideInformationMirroringController;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 57
    .line 58
    move-object/from16 v1, p14

    .line 59
    .line 60
    iput-object v1, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 61
    .line 62
    move-object/from16 v1, p17

    .line 63
    .line 64
    iput-object v1, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 65
    .line 66
    new-instance v1, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    move-object v2, p4

    .line 69
    move-object/from16 v3, p10

    .line 70
    .line 71
    invoke-direct {v1, p0, p4, v3}, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/SecPanelPolicy;Lcom/android/systemui/shade/SecPanelTouchProximityHelper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 72
    .line 73
    .line 74
    move-object v0, p6

    .line 75
    check-cast v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method
