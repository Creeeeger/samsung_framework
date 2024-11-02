.class public final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardEditModeController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

.field public backupWallpaperRequestId:Ljava/lang/String;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final executor:Ljava/util/concurrent/Executor;

.field public isAnimationRunning:Lkotlin/jvm/functions/Function0;

.field public isCanceled:Z

.field public isEditMode:Z

.field public isTouchDownAnimationRunning:Lkotlin/jvm/functions/Function0;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final listeners:Ljava/util/List;

.field public onStartActivityListener:Lkotlin/jvm/functions/Function0;

.field public final pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public previewScale:F

.field public previewTopMargin:F

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public startCancelAnimationFunction:Lkotlin/jvm/functions/Function0;

.field public updateViewsFunction:Lkotlin/jvm/functions/Function2;

.field public wallpaperBitmapUri:Landroid/net/Uri;

.field public wallpaperCardView:Landroidx/cardview/widget/CardView;

.field public final wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

.field public wallpaperRequestID:Ljava/lang/String;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguardimage/WallpaperImageCreator;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/plugins/ActivityStarter;Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->windowManager:Landroid/view/WindowManager;

    .line 23
    .line 24
    const p1, 0x3f51eb85    # 0.82f

    .line 25
    .line 26
    .line 27
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 28
    .line 29
    const p1, 0x3d27ef9e    # 0.041f

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewTopMargin:F

    .line 33
    .line 34
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startCancelAnimationFunction$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startCancelAnimationFunction$1;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startCancelAnimationFunction:Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$isAnimationRunning$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$isAnimationRunning$1;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isAnimationRunning:Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$isTouchDownAnimationRunning$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$isTouchDownAnimationRunning$1;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isTouchDownAnimationRunning:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 52
    .line 53
    const-string p1, ""

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$1;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p6, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$2;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$2;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p9, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/shade/NotificationPanelView;)V
    .locals 7

    .line 1
    const v0, 0x7f0a0516

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    move-object v4, v0

    .line 9
    check-cast v4, Landroid/widget/ImageView;

    .line 10
    .line 11
    const v0, 0x7f0a0518

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v5, v0

    .line 19
    check-cast v5, Landroid/widget/ImageView;

    .line 20
    .line 21
    const v0, 0x7f0a0517

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v6, v0

    .line 29
    check-cast v6, Landroid/widget/FrameLayout;

    .line 30
    .line 31
    const v0, 0x7f0a0519

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperCardView:Landroidx/cardview/widget/CardView;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->refreshRadius()V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;

    .line 46
    .line 47
    move-object v1, v0

    .line 48
    move-object v2, p0

    .line 49
    move-object v3, p1

    .line 50
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->updateViewsFunction:Lkotlin/jvm/functions/Function2;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->initPreviewValues(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final cancel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "cancel() "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "KeyguardEditModeController"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->updateViewsFunction:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;

    .line 55
    .line 56
    invoke-interface {v1}, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;->onAnimationEnded()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final getVIRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isAnimationRunning:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public final initPreviewValues(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, "dimen"

    .line 4
    .line 5
    const-string v2, "init preview values "

    .line 6
    .line 7
    const-string/jumbo v3, "preview_top_margin_"

    .line 8
    .line 9
    .line 10
    const-string v4, "fold_"

    .line 11
    .line 12
    const-string/jumbo v5, "preview_scale_"

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string v6, "com.samsung.android.app.dressroom"

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    const-string/jumbo v4, "tablet"

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    sget-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 36
    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 40
    .line 41
    iget-boolean v7, v7, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    const-string/jumbo v7, "main"

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string/jumbo v7, "sub"

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string/jumbo v4, "phone"

    .line 58
    .line 59
    .line 60
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {p1, v5, v1, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p1, v3, v1, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewTopMargin:F

    .line 103
    .line 104
    const-string v1, "KeyguardEditModeController"

    .line 105
    .line 106
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    .line 107
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_1
    move-exception p0

    .line 142
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_2
    return-void
.end method

.method public final refreshRadius()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperCardView:Landroidx/cardview/widget/CardView;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_ROUNDED_CORNER_RADIUS"

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final startAnimation(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startAnimation e="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "KeyguardEditModeController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isCanceled:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->updateViewsFunction:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;

    .line 59
    .line 60
    invoke-interface {v0, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;->onAnimationStarted(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final startEditActivity(Landroid/content/Context;Z)Z
    .locals 7

    .line 1
    const-string v0, "KeyguardEditModeController"

    .line 2
    .line 3
    const-string/jumbo v1, "startActivity begin"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->onStartActivityListener:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 19
    .line 20
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v2, -0x60

    .line 24
    .line 25
    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 26
    .line 27
    new-instance v3, Landroid/content/Intent;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "com.samsung.dressroom.intent.action.SHOW_LOCK_EDITOR"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 40
    .line 41
    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-interface {v4}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getCurrentPosition()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v4, v5

    .line 54
    :goto_1
    const-string/jumbo v6, "video_wallpaper_start_frame"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 61
    .line 62
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperIndex()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const-string/jumbo v6, "wallpaper_index"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    const-string v4, "lock_bouncer_enabled"

    .line 75
    .line 76
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    const-string/jumbo v4, "stateBackupRequestId"

    .line 82
    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string/jumbo v4, "preview_uri_from_lock"

    .line 90
    .line 91
    .line 92
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperBitmapUri:Landroid/net/Uri;

    .line 93
    .line 94
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    :cond_2
    const-string v4, "com.samsung.android.app.dressroom"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const v4, 0x14000020

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    const/4 v4, 0x1

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    const-string/jumbo p1, "startActivity Dismiss Keyguard"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 118
    .line 119
    invoke-interface {p0, v3, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 120
    .line 121
    .line 122
    return v4

    .line 123
    :cond_3
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startEditActivity$1;

    .line 124
    .line 125
    invoke-direct {p2, v1, p1, v3}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$startEditActivity$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 129
    .line 130
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    iget p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 134
    .line 135
    if-eq p0, v2, :cond_4

    .line 136
    .line 137
    move v5, v4

    .line 138
    :cond_4
    return v5
.end method
