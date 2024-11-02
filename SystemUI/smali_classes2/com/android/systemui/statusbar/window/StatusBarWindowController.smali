.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBarHeight:I

.field public final mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

.field public final mDesktopManagerCallback:Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;

.field public final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public final mGardenHeight:Lcom/android/systemui/statusbar/window/StatusBarWindowController$GardenHeight;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mInsetsSourceOwner:Landroid/os/Binder;

.field public mIsAttached:Z

.field public final mLaunchAnimationContainer:Landroid/view/ViewGroup;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowView;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/fragments/FragmentService;Landroid/content/res/Resources;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowView;",
            "Landroid/view/WindowManager;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p7, -0x1

    .line 5
    iput p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    .line 6
    .line 7
    new-instance p7, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p7, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 14
    .line 15
    new-instance p7, Landroid/os/Binder;

    .line 16
    .line 17
    invoke-direct {p7}, Landroid/os/Binder;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 21
    .line 22
    new-instance p7, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;

    .line 23
    .line 24
    invoke-direct {p7, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    .line 25
    .line 26
    .line 27
    iput-object p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mDesktopManagerCallback:Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;

    .line 28
    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$GardenHeight;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$GardenHeight;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mGardenHeight:Lcom/android/systemui/statusbar/window/StatusBarWindowController$GardenHeight;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 41
    .line 42
    iput-object p5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 45
    .line 46
    iput-object p6, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 47
    .line 48
    const p3, 0x7f0a0ad4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/view/ViewGroup;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    .line 58
    .line 59
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 60
    .line 61
    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    iget p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    .line 67
    .line 68
    if-gez p2, :cond_0

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    .line 75
    .line 76
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p8, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 82
    .line 83
    .line 84
    iput-object p9, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 85
    .line 86
    check-cast p10, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 87
    .line 88
    invoke-virtual {p10, p7}, Lcom/android/systemui/util/DesktopManagerImpl;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p10}, Lcom/android/systemui/util/DesktopManagerImpl;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p7, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 96
    .line 97
    .line 98
    iput-object p11, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIsAttached:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 17
    .line 18
    and-int/lit16 v0, v0, -0x801

    .line 19
    .line 20
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 24
    .line 25
    or-int/lit16 v0, v0, 0x800

    .line 26
    .line 27
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 28
    .line 29
    :goto_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    .line 37
    .line 38
    :goto_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    .line 40
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    .line 51
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsAODAmbientWallpaperWakingUp:Z

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 56
    .line 57
    const v3, -0x40001

    .line 58
    .line 59
    .line 60
    and-int/2addr v0, v3

    .line 61
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    .line 66
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 67
    .line 68
    const/high16 v3, 0x40000

    .line 69
    .line 70
    or-int/2addr v0, v3

    .line 71
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 72
    .line 73
    :goto_2
    const/4 v0, 0x0

    .line 74
    move v3, v0

    .line 75
    :goto_3
    const/4 v4, 0x3

    .line 76
    if-gt v3, v4, :cond_7

    .line 77
    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v4, v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 85
    .line 86
    aget-object v5, v5, v3

    .line 87
    .line 88
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    .line 89
    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    move v6, v2

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move v6, v4

    .line 95
    :goto_4
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 96
    .line 97
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 98
    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    array-length v6, v5

    .line 102
    move v7, v0

    .line 103
    :goto_5
    if-ge v7, v6, :cond_6

    .line 104
    .line 105
    aget-object v8, v5, v7

    .line 106
    .line 107
    invoke-static {v0, v4, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v8, v9}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsHideInformationMirroring:Z

    .line 121
    .line 122
    const/high16 v0, -0x80000000

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_8
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 131
    .line 132
    .line 133
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 134
    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_9

    .line 142
    .line 143
    if-eqz p2, :cond_a

    .line 144
    .line 145
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 150
    .line 151
    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    :cond_a
    return-void
.end method

.method public final calculateStatusBarLocationsForAllRotations()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 13
    .line 14
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-virtual {v3, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x3

    .line 29
    invoke-virtual {v3, v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    filled-new-array {v2, v4, v5, v1}, [Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-interface {p0, v0, v1}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    return-void
.end method

.method public final getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    const/16 v4, 0x7d0

    .line 11
    .line 12
    const v5, -0x7ffffff8

    .line 13
    .line 14
    .line 15
    const/4 v6, -0x3

    .line 16
    move-object v1, v7

    .line 17
    move v3, p1

    .line 18
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 19
    .line 20
    .line 21
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 22
    .line 23
    const/high16 v2, 0x1000000

    .line 24
    .line 25
    or-int/2addr v1, v2

    .line 26
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 27
    .line 28
    new-instance v1, Landroid/os/Binder;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 34
    .line 35
    const/16 v1, 0x30

    .line 36
    .line 37
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v7, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 41
    .line 42
    .line 43
    const-string v2, "StatusBar"

    .line 44
    .line 45
    invoke-virtual {v7, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 56
    .line 57
    new-instance v2, Landroid/view/InsetsFrameProvider;

    .line 58
    .line 59
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget-object v4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 64
    .line 65
    invoke-direct {v2, v4, v1, v3}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const v3, 0x1050156

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-lez v0, :cond_0

    .line 80
    .line 81
    invoke-static {v1, v0, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v2, v0}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 86
    .line 87
    .line 88
    :cond_0
    new-instance v0, Landroid/view/InsetsFrameProvider;

    .line 89
    .line 90
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-direct {v0, v4, v1, v3}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v3, Landroid/view/InsetsFrameProvider;

    .line 106
    .line 107
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-direct {v3, v4, v1, v5}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v3, p1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    filled-new-array {v0, p1, v2}, [Landroid/view/InsetsFrameProvider;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, v7, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 129
    .line 130
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 131
    .line 132
    if-eqz p0, :cond_1

    .line 133
    .line 134
    const/16 p0, 0x2000

    .line 135
    .line 136
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 137
    .line 138
    .line 139
    :cond_1
    return-object v7
.end method

.method public final setForceStatusBarVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
