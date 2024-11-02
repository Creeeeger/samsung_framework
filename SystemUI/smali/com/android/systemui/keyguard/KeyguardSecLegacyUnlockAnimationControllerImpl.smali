.class public final Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;
.super Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final alphaAnimator:Landroid/animation/ValueAnimator;

.field public callback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

.field public cannedAnimatorSet:Landroid/animation/AnimatorSet;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public curLeash:Landroid/view/SurfaceControl;

.field public curLeashAlpha:F

.field public curLeashHeight:F

.field public curLeashScale:F

.field public curLeashWidth:F

.field public curTransaction:Landroid/view/SurfaceControl$Transaction;

.field public forceEnded:Z

.field public frameUpdatedCount:I

.field public final jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public jankMonitorContext:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$JankMonitorContext;

.field public final keyguardSurfaceControllerLazy:Ldagger/Lazy;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final panelExpansionStateManagerLazy:Ldagger/Lazy;

.field public final panelStateListener:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1;

.field public reqLeashAlpha:F

.field public reqLeashScale:F

.field public final scaleAnimator:Landroid/animation/ValueAnimator;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public skipFrameCount:I

.field public final surfaceBehindMatrix:Landroid/graphics/Matrix;

.field public surfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final tmpFloat9:[F

.field public traceTag:Ljava/lang/String;

.field public final unlockAnimationExecutor:Ljava/util/concurrent/Executor;

.field public final wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/internal/jank/InteractionJankMonitor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/PowerManager;Landroid/app/WallpaperManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/os/PowerManager;",
            "Landroid/app/WallpaperManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroid/os/PowerManager;Landroid/app/WallpaperManager;)V

    move-object v0, p1

    .line 2
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->context:Landroid/content/Context;

    move-object v0, p2

    .line 3
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    move-object v0, p3

    .line 4
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p5

    .line 5
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    move-object/from16 v0, p6

    .line 6
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object/from16 v0, p11

    .line 7
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v0, p12

    .line 8
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->centralSurfacesLazy:Ldagger/Lazy;

    move-object/from16 v0, p13

    .line 9
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    move-object/from16 v0, p14

    .line 10
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->panelExpansionStateManagerLazy:Ldagger/Lazy;

    move-object/from16 v0, p17

    .line 11
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v0, p18

    .line 12
    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 13
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    .line 14
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 15
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 16
    iput-object v2, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->tmpFloat9:[F

    .line 17
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    iput-object v2, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->panelStateListener:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1;

    const/high16 v2, -0x40800000    # -1.0f

    .line 18
    iput v2, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    .line 19
    iput v2, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    .line 20
    iput v2, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashAlpha:F

    .line 21
    iput v2, v11, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashScale:F

    .line 22
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 23
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 27
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$2$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final applyTransaction()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    .line 6
    .line 7
    const/high16 v2, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpg-float v3, v1, v2

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v5

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v4

    .line 18
    :goto_0
    const-string v6, "%.2f"

    .line 19
    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashAlpha:F

    .line 23
    .line 24
    cmpg-float v3, v1, v3

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    move v3, v5

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v3, v4

    .line 31
    :goto_1
    if-nez v3, :cond_2

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string/jumbo v3, "setAlpha "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$1;

    .line 57
    .line 58
    invoke-direct {v3, v0, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$1;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->trace(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    .line 65
    .line 66
    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashAlpha:F

    .line 67
    .line 68
    move v1, v5

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move v1, v4

    .line 71
    :goto_2
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    .line 72
    .line 73
    cmpg-float v2, v3, v2

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    move v2, v5

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move v2, v4

    .line 80
    :goto_3
    if-nez v2, :cond_5

    .line 81
    .line 82
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashScale:F

    .line 83
    .line 84
    cmpg-float v2, v3, v2

    .line 85
    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    move v2, v5

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    move v2, v4

    .line 91
    :goto_4
    if-nez v2, :cond_5

    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    .line 94
    .line 95
    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashWidth:F

    .line 96
    .line 97
    iget v7, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashHeight:F

    .line 98
    .line 99
    invoke-virtual {v2, v3, v3, v4, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 100
    .line 101
    .line 102
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string/jumbo v3, "setMatrix "

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;

    .line 128
    .line 129
    invoke-direct {v3, v0, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->trace(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    .line 136
    .line 137
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashScale:F

    .line 138
    .line 139
    move v4, v5

    .line 140
    :cond_5
    if-nez v1, :cond_7

    .line 141
    .line 142
    if-eqz v4, :cond_6

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_6
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->skipFrameCount:I

    .line 146
    .line 147
    add-int/2addr v0, v5

    .line 148
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->skipFrameCount:I

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_7
    :goto_5
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$3;

    .line 152
    .line 153
    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$3;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "apply"

    .line 157
    .line 158
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->trace(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->frameUpdatedCount:I

    .line 162
    .line 163
    add-int/2addr v0, v5

    .line 164
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->frameUpdatedCount:I

    .line 165
    .line 166
    :cond_8
    :goto_6
    return-void
.end method

.method public final getUnlockAnimationDuration()J
    .locals 2

    .line 1
    const-wide/16 v0, 0xfa

    .line 2
    .line 3
    long-to-float v0, v0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getTransitionAnimationScale()F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    mul-float/2addr p0, v0

    .line 11
    float-to-long v0, p0

    .line 12
    return-wide v0
.end method

.method public final notifyFinishedKeyguardExitAnimation(Z)V
    .locals 2

    .line 1
    const-string v0, "KeyguardUnlock"

    .line 2
    .line 3
    const-string/jumbo v1, "notifyFinishedKeyguardExitAnimation"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    .line 11
    .line 12
    invoke-super {p0, p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyFinishedKeyguardExitAnimation(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final notifyStartSurfaceBehindRemoteAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationStartTime:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->playCannedUnlockAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    invoke-interface {p2, p3, p3}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;->onUnlockAnimationStarted(ZZ)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->finishKeyguardExitRemoteAnimationIfReachThreshold()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onKeyguardDismissAmountChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final playCannedUnlockAnimation()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->callback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/view/IRemoteAnimationFinishedCallback;

    .line 29
    .line 30
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    .line 42
    .line 43
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 48
    .line 49
    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 50
    .line 51
    sget-object v4, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->adjustStatusBarLocked:Lkotlin/jvm/functions/Function0;

    .line 58
    .line 59
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    .line 66
    .line 67
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardSurfaceController;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSurfaceController$DefaultImpls;->setKeyguardSurfaceAppearAmount$default(Lcom/android/systemui/keyguard/KeyguardSurfaceController;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->panelExpansionStateManagerLazy:Ldagger/Lazy;

    .line 77
    .line 78
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->panelStateListener:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    .line 92
    .line 93
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$3;

    .line 94
    .line 95
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$3;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;Landroid/view/RemoteAnimationTarget;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final setCallback(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->callback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

    .line 2
    .line 3
    return-void
.end method

.method public final setSurfaceBehindAppearAmount(FZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final trace(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->traceTag:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "#"

    .line 4
    .line 5
    invoke-static {p0, v0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/16 v0, 0x7f

    .line 14
    .line 15
    if-le p2, v0, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    const/16 v0, 0x7e

    .line 19
    .line 20
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final updateLeashAlpha(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    const-string v1, "KeyguardUnlock"

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string p0, "invalid leash"

    .line 22
    .line 23
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v2, "updateLeashAlpha "

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " "

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
