.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView$Callback;


# instance fields
.field public mAppPluginVersion:I

.field public final mColorSchemeControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;

.field public mContainerView:Landroid/view/View;

.field public final mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

.field public final mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field public final mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field public final mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

.field public mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

.field public final mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

.field public final mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public mPluginContext:Landroid/content/Context;

.field public mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

.field public final mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field public final mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

.field public final mSysuiContext:Landroid/content/Context;

.field public final mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;

.field public final mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

.field public final mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/media/controls/pipeline/MediaDataManager;",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    .line 11
    .line 12
    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 21
    .line 22
    move-object v1, p2

    .line 23
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 24
    .line 25
    move-object v1, p4

    .line 26
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 27
    .line 28
    move-object v1, p5

    .line 29
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 30
    .line 31
    move-object v1, p6

    .line 32
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    .line 33
    .line 34
    move-object v1, p7

    .line 35
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

    .line 36
    .line 37
    move-object v1, p8

    .line 38
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    .line 39
    .line 40
    move-object v1, p9

    .line 41
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    .line 42
    .line 43
    move-object v1, p10

    .line 44
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    .line 45
    .line 46
    move-object/from16 v1, p11

    .line 47
    .line 48
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    .line 49
    .line 50
    move-object/from16 v1, p12

    .line 51
    .line 52
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    .line 53
    .line 54
    move-object/from16 v1, p13

    .line 55
    .line 56
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mColorSchemeControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;

    .line 57
    .line 58
    move-object/from16 v1, p14

    .line 59
    .line 60
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    .line 61
    .line 62
    move-object/from16 v1, p15

    .line 63
    .line 64
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 65
    .line 66
    move-object/from16 v1, p16

    .line 67
    .line 68
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 69
    .line 70
    move-object/from16 v1, p18

    .line 71
    .line 72
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 73
    .line 74
    move-object/from16 v1, p19

    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 77
    .line 78
    move-object/from16 v1, p21

    .line 79
    .line 80
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 81
    .line 82
    move-object/from16 v1, p23

    .line 83
    .line 84
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 85
    .line 86
    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Landroid/os/Looper;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;

    .line 96
    .line 97
    move-object/from16 v1, p17

    .line 98
    .line 99
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 100
    .line 101
    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    .line 104
    .line 105
    .line 106
    move-object/from16 v2, p20

    .line 107
    .line 108
    check-cast v2, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    .line 111
    .line 112
    .line 113
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 114
    .line 115
    if-nez v1, :cond_0

    .line 116
    .line 117
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_COVER:Z

    .line 118
    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    :cond_0
    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    .line 124
    .line 125
    .line 126
    move-object v2, p3

    .line 127
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 128
    .line 129
    const/4 v3, 0x5

    .line 130
    const/4 v4, 0x1

    .line 131
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    .line 132
    .line 133
    .line 134
    :cond_1
    move-object/from16 v1, p22

    .line 135
    .line 136
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 137
    .line 138
    const-string v0, "PluginFaceWidgetManager"

    .line 139
    .line 140
    const-string v1, "PluginFaceWidgetManager() started"

    .line 141
    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    return-void
.end method


# virtual methods
.method public final applyBlur(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final applyBlur(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(I)V

    return-void
.end method

.method public final canBeSkipOnWakeAndUnlock()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getAODClockView(Z)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODClockContainer(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    return-object p0
.end method

.method public final getAODZigzagPosition()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getZigzagPosition()Landroid/graphics/Point;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getAdaptiveColorResult()[I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getColorSchemeController()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorSchemeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mColorSchemeControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayLifeCycle()Lcom/android/systemui/plugins/keyguardstatusview/PluginDisplayLifeCycle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFloatingShortcutRotation()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getHomeCityTimeZoneDeviceProvisionedFromPrefs()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "HomecityTimezoneDeviceProvisioned"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getInDisplayFingerprintHeight()I
    .locals 0

    .line 1
    sget p0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getInDisplayFingerprintImageSize()I
    .locals 0

    .line 1
    sget p0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintImageSize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyguardStatusCallback()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyguardUpdateMonitor()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKnoxStateMonitor()Lcom/android/systemui/plugins/keyguardstatusview/PluginKnoxStateMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLockPatternUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginLockPatternUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaPlayerLastExpandedFromPrefs()Z
    .locals 2

    .line 1
    const-string v0, "QsMediaPlayerLastExpanded"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getNavigationBarHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x105025a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getNotificationControllerCallback()Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNotificationPanelViewHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getPluginLockManager()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetLockManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSystemUIPluginVersion()I
    .locals 0

    .line 1
    const/16 p0, 0x7de

    .line 2
    .line 3
    return p0
.end method

.method public final getWallpaperUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWallpaperUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasAdaptiveColorResult()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isBlurSupported()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_BLUR:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isCMASSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isCapturedBlurSupported()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_CAPTURED_BLUR:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isEditMode()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isEditMode = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 12
    .line 13
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 14
    .line 15
    const-string v2, "PluginFaceWidgetManager"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 23
    .line 24
    return p0
.end method

.method public final isInDisplayFingerprintSupported()Z
    .locals 2

    .line 1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    sput v1, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 8
    .line 9
    :cond_0
    sget p0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 10
    .line 11
    if-ne p0, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public final isLockScreenDisabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isMultiSimSupported()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isNoLockIcon()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    .line 12
    .line 13
    if-nez v0, :cond_0

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
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_1
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isAvailable()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x7

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->getVisibility(I)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    move v2, v1

    .line 43
    :cond_2
    move v0, v2

    .line 44
    :cond_3
    xor-int/lit8 p0, v0, 0x1

    .line 45
    .line 46
    return p0
.end method

.method public final isOpenThemeSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isPresidentialCMASSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isSubDisplay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUIBiometricsSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isWiFiOnlyDevice()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onClockPageTransitionEnded()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onTransitionEnded()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->onClockPageTransitionEnded()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "onPluginConnected() app version = "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", sysui version = 2014"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "PluginFaceWidgetManager"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginContext:Landroid/content/Context;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;

    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "PluginFaceWidgetManager"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Remove \'init plugin wrapper\' message"

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const-string v3, "Remove \'attach container view\' message"

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const-string/jumbo p1, "onPluginDisconnected()"

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const-class p1, Lcom/android/systemui/plugins/PluginManager;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/android/systemui/plugins/PluginManager;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/PluginManager;->isValidClassLoader(Ljava/lang/ClassLoader;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 72
    .line 73
    invoke-interface {p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onClassLoaderDiscarded()V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1, v2, v2, v2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->initPlugin(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;Landroid/view/View;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    .line 83
    .line 84
    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    .line 87
    .line 88
    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 91
    .line 92
    instance-of v3, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    .line 93
    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    .line 97
    .line 98
    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->loadDimens(Landroid/content/res/Resources;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 104
    .line 105
    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 106
    .line 107
    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 110
    .line 111
    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 112
    .line 113
    if-nez v4, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    .line 117
    .line 118
    check-cast v4, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_6

    .line 129
    .line 130
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    .line 135
    .line 136
    if-nez v5, :cond_5

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    iget-object v6, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 140
    .line 141
    invoke-interface {v6, v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_6
    iput-object v2, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 146
    .line 147
    :goto_1
    iput-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    .line 148
    .line 149
    iget-object v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 154
    .line 155
    if-eqz v3, :cond_7

    .line 156
    .line 157
    iget-object v3, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    .line 158
    .line 159
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 160
    .line 161
    .line 162
    const/4 v1, 0x3

    .line 163
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 164
    .line 165
    .line 166
    const/16 v1, 0x8

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 169
    .line 170
    .line 171
    :cond_7
    iput-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 172
    .line 173
    iput v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    .line 174
    .line 175
    iget-object v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 176
    .line 177
    if-nez v1, :cond_8

    .line 178
    .line 179
    new-instance v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 180
    .line 181
    invoke-direct {v1, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V

    .line 182
    .line 183
    .line 184
    iput-object v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 185
    .line 186
    :cond_8
    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 187
    .line 188
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 193
    .line 194
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 198
    .line 199
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 202
    .line 203
    check-cast p1, Ljava/util/ArrayList;

    .line 204
    .line 205
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    .line 206
    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    .line 221
    .line 222
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public final putHomeCityTimeZoneDeviceProvisionedToPrefs(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "HomecityTimezoneDeviceProvisioned"

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final putHomeCityTimeZoneSetToPrefs(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "HomecityTimezoneSet"

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final putMediaPlayerLastExpandedToPrefs(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "QsMediaPlayerLastExpanded"

    .line 5
    .line 6
    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final removeMediaData(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public final sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldControlScreenOff()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 4
    .line 5
    const-string/jumbo v0, "shouldControlScreenOff() : "

    .line 6
    .line 7
    .line 8
    const-string v1, "PluginFaceWidgetManager"

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return p0
.end method

.method public final shouldEnableKeyguardScreenRotation()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final updateAnimateScreenOff()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final updateFaceWidgetArea()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final updateNIOShortcutFingerPrintVisibility(Z)V
    .locals 0

    .line 1
    return-void
.end method
