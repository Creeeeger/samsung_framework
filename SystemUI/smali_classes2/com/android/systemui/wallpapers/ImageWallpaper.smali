.class public Lcom/android/systemui/wallpapers/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;


# instance fields
.field public final mCanvasEngineList:Ljava/util/HashMap;

.field public final mColorAreas:Landroid/util/ArraySet;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mEngineList:Ljava/util/HashMap;

.field public mIsNightModeOn:Z

.field public final mLocalColorsToAdd:Ljava/util/ArrayList;

.field public final mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public mMiniBitmap:Landroid/graphics/Bitmap;

.field public volatile mPages:I

.field public mPagesComputed:Z

.field public mPm:Landroid/os/PowerManager;

.field public final mSettingsCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$3;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSubWallpaperType:I

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public mWorker:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/CoverWallpaper;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/wallpaper/CoverWallpaper;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p2, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    .line 37
    .line 38
    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mIsNightModeOn:Z

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 42
    .line 43
    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$3;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$3;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$3;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 53
    .line 54
    check-cast p5, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 55
    .line 56
    iget-object p1, p5, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 59
    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    iput-object p4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 63
    .line 64
    :cond_0
    iput-object p6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 65
    .line 66
    iput-object p7, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 67
    .line 68
    invoke-virtual {p8}, Ljava/util/Optional;->isPresent()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/wm/shell/common/DisplayController;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 81
    .line 82
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 92
    .line 93
    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/wallpapers/ImageWallpaper;)Landroid/app/WallpaperManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/wallpapers/ImageWallpaper;)Landroid/app/WallpaperManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->getDisplayId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 43
    .line 44
    and-int/lit8 v0, v0, 0x20

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mIsNightModeOn:Z

    .line 52
    .line 53
    if-eq v1, v0, :cond_4

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mIsNightModeOn:Z

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 86
    .line 87
    if-eqz p0, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    return-void
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ImageWallpaper"

    .line 5
    .line 6
    const-string v1, "Main onCreate"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v1, "power"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/os/PowerManager;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPm:Landroid/os/PowerManager;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$3;

    .line 39
    .line 40
    const-string v1, "display_night_theme_wallpaper"

    .line 41
    .line 42
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    filled-new-array {v1}, [Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final onCreateSubEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 6
    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 28
    .line 29
    invoke-virtual {v4, v2}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    if-ne v3, v5, :cond_0

    .line 37
    .line 38
    iget v3, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    .line 39
    .line 40
    if-eq v4, v3, :cond_0

    .line 41
    .line 42
    move v3, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v3, v7

    .line 45
    :goto_0
    const-string v4, "CoverWallpaperController"

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v8, "onHomeWallpaperReady: startMultiPack, mWallpaperId = "

    .line 60
    .line 61
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v8, v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    .line 65
    .line 66
    invoke-static {v3, v8, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    new-instance v3, Lcom/android/systemui/wallpaper/CoverWallpaperController$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v3, v0, v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/CoverWallpaperController;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->startMultiPack(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string v0, "onHomeWallpaperReady: Don\'t start multipack."

    .line 85
    .line 86
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1, p1}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sget-boolean v2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    const/16 v1, 0x21

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const/16 v1, 0x11

    .line 115
    .line 116
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 117
    .line 118
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    iput v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, " onCreateSubEngine: mSubWallpaperType = "

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, ", mCoverWallpaper.getFirstWallpaperType() = "

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 148
    .line 149
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 150
    .line 151
    iget v2, v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 152
    .line 153
    const-string v3, ", wallpaper type = "

    .line 154
    .line 155
    const-string v4, ", displayId = "

    .line 156
    .line 157
    invoke-static {v1, v2, v3, v0, v4}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v2, "ImageWallpaper"

    .line 161
    .line 162
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    if-ne v0, v5, :cond_9

    .line 166
    .line 167
    iget p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 168
    .line 169
    const/16 v0, 0x16

    .line 170
    .line 171
    const/4 v1, -0x2

    .line 172
    if-ne p1, v1, :cond_4

    .line 173
    .line 174
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 175
    .line 176
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 177
    .line 178
    iget v3, v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 179
    .line 180
    if-eq v3, v0, :cond_5

    .line 181
    .line 182
    :cond_4
    if-ne p1, v0, :cond_6

    .line 183
    .line 184
    :cond_5
    move v0, v6

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    move v0, v7

    .line 187
    :goto_3
    const/16 v3, 0x17

    .line 188
    .line 189
    if-ne p1, v1, :cond_7

    .line 190
    .line 191
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 192
    .line 193
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 194
    .line 195
    iget v1, v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 196
    .line 197
    if-eq v1, v3, :cond_c

    .line 198
    .line 199
    :cond_7
    if-ne p1, v3, :cond_8

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_8
    move v6, v7

    .line 203
    goto :goto_6

    .line 204
    :cond_9
    const/4 p1, 0x5

    .line 205
    if-ne v0, p1, :cond_a

    .line 206
    .line 207
    move p1, v6

    .line 208
    goto :goto_4

    .line 209
    :cond_a
    move p1, v7

    .line 210
    :goto_4
    const/16 v1, 0x8

    .line 211
    .line 212
    if-ne v0, v1, :cond_b

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_b
    move v6, v7

    .line 216
    :goto_5
    move v0, p1

    .line 217
    :cond_c
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v1, " onCreateSubEngine: isGif = "

    .line 220
    .line 221
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, ", isVideo = "

    .line 228
    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    if-eqz v0, :cond_d

    .line 243
    .line 244
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 245
    .line 246
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 247
    .line 248
    .line 249
    return-object p1

    .line 250
    :cond_d
    if-eqz v6, :cond_e

    .line 251
    .line 252
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 253
    .line 254
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 255
    .line 256
    .line 257
    return-object p1

    .line 258
    :cond_e
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 259
    .line 260
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 261
    .line 262
    .line 263
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-string v0, "ImageWallpaper"

    .line 2
    .line 3
    const-string v1, "Main onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$3;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    return-void
.end method

.method public final onProvideEngineLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onProvideEngineLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method
