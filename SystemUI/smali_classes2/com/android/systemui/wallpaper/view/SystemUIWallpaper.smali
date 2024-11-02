.class public Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;


# instance fields
.field public final mAnimatorListener:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;

.field public mBouncer:Z

.field public final mCurDisplayInfo:Landroid/view/DisplayInfo;

.field public mDensity:I

.field public mDisplay:Landroid/view/Display;

.field public mDisplayInfoUpdatedState:J

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mDrawingState:I

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mFontScale:F

.field public mFutureDisplayInfo:Ljava/util/concurrent/Future;

.field public mIsKeyguardShowing:Z

.field public final mIsPreview:Z

.field public mIsScreenOffAnimation:Z

.field public mMetricsHeight:I

.field public mMetricsWidth:I

.field public mOccluded:Z

.field public mOrientation:I

.field public mResumed:Z

.field public mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

.field public final mUpdateCallable:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

.field public final mWcgConsumer:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 4
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 6
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    .line 8
    new-instance p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateCallable:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;

    .line 9
    new-instance p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mAnimatorListener:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;

    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 11
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    iput-object p4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 13
    iput-object p3, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 14
    iput-object p5, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 15
    iput-boolean p7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    .line 16
    iput-boolean p8, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 17
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 18
    iget p2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDensity:I

    .line 19
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFontScale:F

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->preInit()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static isSubDisplay()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method


# virtual methods
.method public final awaitCall()V
    .locals 8

    .line 1
    const-string v0, "isValidDisplayInfo: Invalid DisplayInfo."

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    .line 4
    .line 5
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    const-string v2, "SystemUIWallpaper"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    const-string v1, "awaitCall()"

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFutureDisplayInfo:Ljava/util/concurrent/Future;

    .line 22
    .line 23
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    const-wide/16 v4, 0x12c

    .line 26
    .line 27
    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v1, "awaitCall() done"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    move v3, v1

    .line 50
    :goto_1
    const/4 v4, 0x1

    .line 51
    :try_start_1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    xor-int/2addr v5, v4

    .line 56
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 57
    .line 58
    iget v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 59
    .line 60
    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 61
    .line 62
    invoke-static {v7, v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isMainScreenRatio(II)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eq v5, v6, :cond_1

    .line 67
    .line 68
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move v5, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move v5, v4

    .line 74
    :goto_2
    if-nez v5, :cond_2

    .line 75
    .line 76
    const/4 v5, 0x3

    .line 77
    if-ge v3, v5, :cond_2

    .line 78
    .line 79
    const/16 v5, 0x14

    .line 80
    .line 81
    int-to-long v5, v5

    .line 82
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateCallable:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    xor-int/2addr v3, v4

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 103
    .line 104
    iget v5, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 105
    .line 106
    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 107
    .line 108
    invoke-static {v5, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isMainScreenRatio(II)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eq v3, p0, :cond_3

    .line 113
    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    move v1, v4

    .line 119
    :goto_3
    if-nez v1, :cond_4

    .line 120
    .line 121
    const-string p0, "awaitCall: DisplayInfo is still not updated. May cause screen distortion."

    .line 122
    .line 123
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_4
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 3
    .line 4
    return-void
.end method

.method public getCapturedWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const-string v0, "getCapturedWallpaper() hw accelerated: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "SystemUIWallpaper"

    .line 5
    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    new-instance v2, Landroid/graphics/Canvas;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    move-object v0, v1

    .line 52
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-object v1
.end method

.method public getCapturedWallpaperForBlur()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getCapturedWallpaper()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBackDropLayoutChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onConfigurationChanged, newConfig: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SystemUIWallpaper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 24
    .line 25
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 26
    .line 27
    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDensity:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFontScale:F

    .line 32
    .line 33
    cmpl-float v2, v2, v0

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    :cond_0
    iput v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDensity:I

    .line 38
    .line 39
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFontScale:F

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 42
    .line 43
    .line 44
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 45
    .line 46
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 47
    .line 48
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onFaceAuthError()V
    .locals 0

    .line 1
    return-void
.end method

.method public onFingerprintAuthSuccess(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 2
    .line 3
    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 2
    .line 3
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onOccluded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    .line 2
    .line 3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 3
    .line 4
    return-void
.end method

.method public onUnlock()V
    .locals 0

    .line 1
    return-void
.end method

.method public preInit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public update()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateDisplayInfo()V
    .locals 2

    .line 1
    const-string v0, "SystemUIWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "updateDisplayInfo()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-wide v0, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateCallable:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFutureDisplayInfo:Ljava/util/concurrent/Future;

    .line 25
    .line 26
    return-void
.end method
