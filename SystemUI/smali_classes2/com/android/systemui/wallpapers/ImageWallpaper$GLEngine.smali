.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;
.super Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x80

.field static final MIN_SURFACE_WIDTH:I = 0x80


# instance fields
.field public mDisplayHeight:I

.field public mDisplaySizeValid:Z

.field public mDisplayWidth:I

.field public final mDrawUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

.field public mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

.field public final mFinishRenderingTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

.field public mImgHeight:I

.field public mImgWidth:I

.field public mLastWallpaperYOffset:F

.field public final mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;

.field public mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

.field public mRotation:I

.field public final mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;

.field public mSurfaceCreated:Z

.field public final mUpdatePluginTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

.field public mVirtualDisplayMode:Z

.field public final mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;

.field public final onDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public static $r8$lambda$InHMzcxP9yIB3NrHGHisYRbdVpE(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Engine onDestroy in work thread "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x5

    .line 29
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x11

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x9

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->finish()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 56
    .line 57
    return-void
.end method

.method public static $r8$lambda$MTjZ9OcqEdrPyZzafR7xU6HwKHk(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, " onVisibilityChanged "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " , "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "ImageWallpaper[GLEngine]"

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public static $r8$lambda$gvSO08LS-V1OEOlvWqQf1uysZ84(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;

    .line 30
    .line 31
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mFinishRenderingTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplaySizeValid:Z

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplayWidth:I

    .line 19
    .line 20
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplayHeight:I

    .line 21
    .line 22
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 23
    .line 24
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mImgHeight:I

    .line 25
    .line 26
    const/high16 v0, 0x3f000000    # 0.5f

    .line 27
    .line 28
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mLastWallpaperYOffset:F

    .line 29
    .line 30
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mUpdatePluginTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v1, 0x6

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDrawUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 49
    .line 50
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;

    .line 56
    .line 57
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->onDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;

    .line 63
    .line 64
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;

    .line 70
    .line 71
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final addLocalColorsAreas(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;Ljava/util/List;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final cancelFinishRenderingTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mFinishRenderingTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 13

    .line 1
    const-string v0, " computeAndNotifyLocalColors "

    .line 2
    .line 3
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_6

    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/graphics/RectF;

    .line 29
    .line 30
    iget-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplaySizeValid:Z

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-class v6, Landroid/view/WindowManager;

    .line 40
    .line 41
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/view/WindowManager;

    .line 46
    .line 47
    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    iput v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplayWidth:I

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    iput v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplayHeight:I

    .line 66
    .line 67
    iput-boolean v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplaySizeValid:Z

    .line 68
    .line 69
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 70
    .line 71
    iget v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 72
    .line 73
    int-to-float v4, v4

    .line 74
    const/high16 v6, 0x3f800000    # 1.0f

    .line 75
    .line 76
    div-float v4, v6, v4

    .line 77
    .line 78
    iget v7, v3, Landroid/graphics/RectF;->left:F

    .line 79
    .line 80
    rem-float/2addr v7, v4

    .line 81
    div-float/2addr v7, v4

    .line 82
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 83
    .line 84
    rem-float/2addr v8, v4

    .line 85
    div-float/2addr v8, v4

    .line 86
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    div-float/2addr v9, v4

    .line 91
    float-to-double v9, v9

    .line 92
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    double-to-int v4, v9

    .line 97
    new-instance v9, Landroid/graphics/RectF;

    .line 98
    .line 99
    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 100
    .line 101
    .line 102
    iget v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 103
    .line 104
    if-eqz v10, :cond_3

    .line 105
    .line 106
    iget v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mImgHeight:I

    .line 107
    .line 108
    if-eqz v10, :cond_3

    .line 109
    .line 110
    iget v11, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplayWidth:I

    .line 111
    .line 112
    if-lez v11, :cond_3

    .line 113
    .line 114
    iget v11, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplayHeight:I

    .line 115
    .line 116
    if-gtz v11, :cond_1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_1
    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    .line 120
    .line 121
    iput v12, v9, Landroid/graphics/RectF;->bottom:F

    .line 122
    .line 123
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 124
    .line 125
    iput v3, v9, Landroid/graphics/RectF;->top:F

    .line 126
    .line 127
    int-to-float v3, v10

    .line 128
    int-to-float v10, v11

    .line 129
    div-float/2addr v3, v10

    .line 130
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplayWidth:I

    .line 135
    .line 136
    int-to-float v10, v10

    .line 137
    mul-float/2addr v10, v3

    .line 138
    iget v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 139
    .line 140
    if-lez v3, :cond_2

    .line 141
    .line 142
    int-to-float v3, v3

    .line 143
    div-float/2addr v10, v3

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    move v10, v6

    .line 146
    :goto_1
    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    sub-float v10, v6, v3

    .line 151
    .line 152
    iget-object v11, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 153
    .line 154
    iget v11, v11, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 155
    .line 156
    sub-int/2addr v11, v5

    .line 157
    int-to-float v5, v11

    .line 158
    div-float/2addr v10, v5

    .line 159
    mul-float/2addr v7, v3

    .line 160
    int-to-float v4, v4

    .line 161
    mul-float/2addr v4, v10

    .line 162
    add-float/2addr v7, v4

    .line 163
    const/4 v5, 0x0

    .line 164
    invoke-static {v7, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    iput v7, v9, Landroid/graphics/RectF;->left:F

    .line 169
    .line 170
    mul-float/2addr v8, v3

    .line 171
    add-float/2addr v8, v4

    .line 172
    invoke-static {v8, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    iput v3, v9, Landroid/graphics/RectF;->right:F

    .line 177
    .line 178
    iget v4, v9, Landroid/graphics/RectF;->left:F

    .line 179
    .line 180
    cmpl-float v3, v4, v3

    .line 181
    .line 182
    if-lez v3, :cond_3

    .line 183
    .line 184
    iput v5, v9, Landroid/graphics/RectF;->left:F

    .line 185
    .line 186
    iput v6, v9, Landroid/graphics/RectF;->right:F

    .line 187
    .line 188
    :cond_3
    :goto_2
    sget-object v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 189
    .line 190
    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    const/4 v4, 0x0

    .line 195
    if-nez v3, :cond_4

    .line 196
    .line 197
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    .line 202
    .line 203
    iget v5, v9, Landroid/graphics/RectF;->left:F

    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    int-to-float v6, v6

    .line 210
    mul-float/2addr v5, v6

    .line 211
    float-to-double v5, v5

    .line 212
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 213
    .line 214
    .line 215
    move-result-wide v5

    .line 216
    double-to-int v5, v5

    .line 217
    iget v6, v9, Landroid/graphics/RectF;->top:F

    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    int-to-float v7, v7

    .line 224
    mul-float/2addr v6, v7

    .line 225
    float-to-double v6, v6

    .line 226
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 227
    .line 228
    .line 229
    move-result-wide v6

    .line 230
    double-to-int v6, v6

    .line 231
    iget v7, v9, Landroid/graphics/RectF;->right:F

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    int-to-float v8, v8

    .line 238
    mul-float/2addr v7, v8

    .line 239
    float-to-double v7, v7

    .line 240
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 241
    .line 242
    .line 243
    move-result-wide v7

    .line 244
    double-to-int v7, v7

    .line 245
    iget v8, v9, Landroid/graphics/RectF;->bottom:F

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    int-to-float v9, v9

    .line 252
    mul-float/2addr v8, v9

    .line 253
    float-to-double v8, v8

    .line 254
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 255
    .line 256
    .line 257
    move-result-wide v8

    .line 258
    double-to-int v8, v8

    .line 259
    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_5

    .line 267
    .line 268
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_5
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 273
    .line 274
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-static {p2, v4, v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v3}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 300
    .line 301
    iget-object p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    .line 302
    .line 303
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 304
    .line 305
    .line 306
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :catch_0
    move-exception p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .line 317
    .line 318
    :goto_4
    return-void
.end method

.method public final determineHighlightFilterAmount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mColorDecorFilterData:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->canApplyFilterOnHome(I)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 44
    .line 45
    invoke-static {p0}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->getFilterAmount(Lcom/android/systemui/util/SettingsHelper;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, -0x1

    .line 51
    :goto_0
    const-string v0, " determineHighlightFilterAmount : "

    .line 52
    .line 53
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 54
    .line 55
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return p0
.end method

.method public final drawFrame()V
    .locals 13

    .line 1
    const-string v0, "ImageWallpaper#drawFrame"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ImageWallpaper#preRender"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 12
    .line 13
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v2, " preRenderInternal"

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->determineHighlightFilterAmount()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iput v4, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mHighlightFilterAmount:I

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglContext()V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->createEglContext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    const-string/jumbo v3, "recreate egl context failed!"

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move v3, v5

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v3, v4

    .line 73
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglContext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglSurface()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_3

    .line 88
    .line 89
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    iget-object v8, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 96
    .line 97
    iget-object v8, v8, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 98
    .line 99
    iget-boolean v8, v8, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    .line 100
    .line 101
    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->createEglSurface(Landroid/view/SurfaceHolder;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_3

    .line 106
    .line 107
    const-string/jumbo v6, "recreate egl surface failed!"

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglContext()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 122
    .line 123
    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglSurface()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->onSurfaceCreated()V

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v5, v6, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 153
    .line 154
    .line 155
    const-string v2, "ImageWallpaper#requestRender"

    .line 156
    .line 157
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    const-string v2, " requestRenderInternal"

    .line 163
    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_5
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglContext()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_6

    .line 182
    .line 183
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglSurface()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_6

    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-lez v3, :cond_6

    .line 196
    .line 197
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-lez v3, :cond_6

    .line 202
    .line 203
    move v3, v4

    .line 204
    goto :goto_2

    .line 205
    :cond_6
    move v3, v5

    .line 206
    :goto_2
    if-eqz v3, :cond_9

    .line 207
    .line 208
    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 209
    .line 210
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    const/16 v3, 0x4000

    .line 219
    .line 220
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-virtual {v3, v6}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->getColor(I)Landroid/app/SemWallpaperColors;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {v6, v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;

    .line 240
    .line 241
    iget-object v7, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    .line 242
    .line 243
    const-string v8, "ImageWallpaperRenderer"

    .line 244
    .line 245
    iget-object v9, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 246
    .line 247
    const-string/jumbo v10, "uNightFilter"

    .line 248
    .line 249
    .line 250
    if-eqz v3, :cond_8

    .line 251
    .line 252
    sget-boolean v11, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 253
    .line 254
    if-eqz v11, :cond_7

    .line 255
    .line 256
    iget v2, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 257
    .line 258
    if-eq v2, v4, :cond_8

    .line 259
    .line 260
    :cond_7
    invoke-virtual {v6, v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    const/4 v10, 0x3

    .line 265
    aget v11, v3, v10

    .line 266
    .line 267
    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 268
    .line 269
    .line 270
    const-string/jumbo v2, "uFilterColor"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    aget v11, v3, v5

    .line 278
    .line 279
    aget v4, v3, v4

    .line 280
    .line 281
    const/4 v12, 0x2

    .line 282
    aget v12, v3, v12

    .line 283
    .line 284
    invoke-static {v2, v11, v4, v12}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 285
    .line 286
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v4, " onDrawFrame dark opacity "

    .line 290
    .line 291
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    aget v3, v3, v10

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v3, " ,surfaceSize : "

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v9, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 312
    .line 313
    invoke-virtual {v9, v8, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_8
    invoke-virtual {v6, v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    const/4 v3, 0x0

    .line 322
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 323
    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v3, " onDrawFrame surfaceSize : "

    .line 328
    .line 329
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v9, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 340
    .line 341
    invoke-virtual {v9, v8, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    invoke-static {v5, v5, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    const v2, 0x84c0

    .line 359
    .line 360
    .line 361
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 362
    .line 363
    .line 364
    const/16 v2, 0xde1

    .line 365
    .line 366
    iget v3, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mTextureId:I

    .line 367
    .line 368
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 369
    .line 370
    .line 371
    iget v2, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mUniTexture:I

    .line 372
    .line 373
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 374
    .line 375
    .line 376
    const/4 v2, 0x6

    .line 377
    const/4 v3, 0x4

    .line 378
    invoke-static {v3, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 379
    .line 380
    .line 381
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 382
    .line 383
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->swapBuffer()Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-nez v2, :cond_a

    .line 388
    .line 389
    const-string v2, "drawFrame failed!"

    .line 390
    .line 391
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    goto :goto_4

    .line 395
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string/jumbo v4, "requestRender: not ready, has context="

    .line 398
    .line 399
    .line 400
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 404
    .line 405
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglContext()Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v4, ", has surface="

    .line 413
    .line 414
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 418
    .line 419
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglSurface()Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v4, ", frame="

    .line 427
    .line 428
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    :cond_a
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 442
    .line 443
    .line 444
    const-string v1, "ImageWallpaper#postRender"

    .line 445
    .line 446
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 450
    .line 451
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 452
    .line 453
    if-nez v1, :cond_b

    .line 454
    .line 455
    goto :goto_5

    .line 456
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 457
    .line 458
    .line 459
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 460
    .line 461
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 462
    .line 463
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mFinishRenderingTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 468
    .line 469
    const-wide/16 v3, 0x3e8

    .line 470
    .line 471
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    .line 473
    .line 474
    :goto_5
    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 475
    .line 476
    .line 477
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 478
    .line 479
    .line 480
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 481
    .line 482
    .line 483
    if-eqz v0, :cond_c

    .line 484
    .line 485
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 486
    .line 487
    if-nez v0, :cond_c

    .line 488
    .line 489
    const/high16 v0, 0x3f800000    # 1.0f

    .line 490
    .line 491
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setSurfaceAlpha(F)V

    .line 492
    .line 493
    .line 494
    :cond_c
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p2, "Engine="

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p2, "valid surface="

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string p4, "null"

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object p2, p4

    .line 60
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo p2, "surface frame="

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 90
    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglVersion:[I

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    aget v2, v0, v1

    .line 100
    .line 101
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "."

    .line 105
    .line 106
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    aget v0, v0, v2

    .line 111
    .line 112
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v0, "EGL version="

    .line 123
    .line 124
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p4, ", "

    .line 131
    .line 132
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v0, "EGL ready="

    .line 136
    .line 137
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-boolean v0, p2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglReady:Z

    .line 141
    .line 142
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "has EglContext="

    .line 149
    .line 150
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglContext()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string p4, "has EglSurface="

    .line 164
    .line 165
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglSurface()Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->getConfig()[I

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    new-instance p4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const/16 v0, 0x7b

    .line 185
    .line 186
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    :goto_1
    const/16 v0, 0x11

    .line 190
    .line 191
    if-ge v1, v0, :cond_2

    .line 192
    .line 193
    aget v0, p2, v1

    .line 194
    .line 195
    const-string v3, "0x"

    .line 196
    .line 197
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v0, ","

    .line 208
    .line 209
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    add-int/lit8 v1, v1, 0x1

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    sub-int/2addr p2, v2

    .line 220
    const/16 v0, 0x7d

    .line 221
    .line 222
    invoke-virtual {p4, p2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string p2, "EglConfig="

    .line 229
    .line 230
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string p2, "mSurfaceSize="

    .line 249
    .line 250
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    .line 254
    .line 255
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const-string p1, "mWcgContent="

    .line 262
    .line 263
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 267
    .line 268
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    .line 269
    .line 270
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 271
    .line 272
    .line 273
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;

    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method public final finishRendering()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "wallpaper_finish_drawing"

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 19
    .line 20
    .line 21
    const-string v0, "ImageWallpaper#finishRendering"

    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v1, "finishRendering : which = 17 , wallpaperType = "

    .line 43
    .line 44
    const-string v2, "ImageWallpaper[GLEngine]"

    .line 45
    .line 46
    invoke-static {v1, v0, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    if-eq v0, v1, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglContext()V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final getDisplayId()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "onConfigurationChanged display id= "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " , newConfig ="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 38
    .line 39
    const-string v2, "ImageWallpaper[GLEngine]"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Engine onCreate: displayId = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->isFixedOrientationWallpaper(II)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    .line 34
    .line 35
    .line 36
    const-string v0, "ImageWallpaper.Engine#onCreate"

    .line 37
    .line 38
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "Engine onCreate"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 52
    .line 53
    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 64
    .line 65
    iget-object v6, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 66
    .line 67
    iget-object v7, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 68
    .line 69
    iget-object v8, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 70
    .line 71
    move-object v3, v0

    .line 72
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;-><init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 88
    .line 89
    new-instance v4, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;

    .line 90
    .line 91
    invoke-direct {v4, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 92
    .line 93
    .line 94
    iput-object v4, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mOnBitmapUpdated:Ljava/util/function/Consumer;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 117
    .line 118
    if-eqz v2, :cond_0

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    if-eq p1, v2, :cond_0

    .line 122
    .line 123
    if-eq p1, v0, :cond_0

    .line 124
    .line 125
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;

    .line 130
    .line 131
    invoke-interface {v0, v2, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v3, "Failed to set rotation watcher. e="

    .line 139
    .line 140
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->onDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_0
    const-string v0, " do not add display controller in dex"

    .line 164
    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :goto_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 169
    .line 170
    if-eqz v0, :cond_1

    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;

    .line 175
    .line 176
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 177
    .line 178
    new-instance v3, Lcom/android/systemui/wallpapers/ImageWallpaper$1;

    .line 179
    .line 180
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    .line 189
    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 198
    .line 199
    if-eqz v0, :cond_2

    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v0, p1}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    .line 221
    .line 222
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 223
    .line 224
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    const/16 v1, 0x8

    .line 233
    .line 234
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Engine onDestroy in work thread "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Engine onDestroy displayId "

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eq v0, v2, :cond_0

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mUpdatePluginTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 92
    .line 93
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->onHomeWallpaperDestroyed()V

    .line 96
    .line 97
    .line 98
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;

    .line 105
    .line 106
    iget-object v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 107
    .line 108
    new-instance v5, Lcom/android/systemui/wallpapers/ImageWallpaper$2;

    .line 109
    .line 110
    invoke-direct {v5, v0, v3}, Lcom/android/systemui/wallpapers/ImageWallpaper$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/4 v3, 0x2

    .line 127
    if-eq v0, v3, :cond_4

    .line 128
    .line 129
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eq v0, v2, :cond_4

    .line 134
    .line 135
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;

    .line 140
    .line 141
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, "Failed to remove rotation watcher. e="

    .line 149
    .line 150
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->onDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    const/16 v2, 0x9

    .line 198
    .line 199
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mDisplaySizeValid:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOffsetsChanged(FFFFII)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mLastWallpaperYOffset:F

    .line 2
    .line 3
    cmpl-float p1, p1, p2

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/high16 p1, 0x3f000000    # 0.5f

    .line 9
    .line 10
    cmpl-float p1, p2, p1

    .line 11
    .line 12
    const/4 p5, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    move p1, p4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, p5

    .line 18
    :goto_0
    iget-object p6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 19
    .line 20
    iget-boolean v0, p6, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsSmartCropAllowed:Z

    .line 21
    .line 22
    if-eq v0, p1, :cond_1

    .line 23
    .line 24
    const-string/jumbo v0, "setSmartCropAllowed: "

    .line 25
    .line 26
    .line 27
    const-string v1, "ImageWallpaperRenderer"

    .line 28
    .line 29
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-boolean p1, p6, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsSmartCropAllowed:Z

    .line 33
    .line 34
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mLastWallpaperYOffset:F

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {p2, p0, p5}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    cmpl-float p1, p3, p1

    .line 54
    .line 55
    if-lez p1, :cond_3

    .line 56
    .line 57
    const/high16 p1, 0x3f800000    # 1.0f

    .line 58
    .line 59
    cmpg-float p2, p3, p1

    .line 60
    .line 61
    if-gtz p2, :cond_3

    .line 62
    .line 63
    div-float/2addr p1, p3

    .line 64
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    add-int/2addr p1, p4

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move p1, p4

    .line 71
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 72
    .line 73
    iget p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 74
    .line 75
    if-ne p1, p2, :cond_4

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 79
    .line 80
    iput p1, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {p2, p0, p4}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_2
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p2, " onSurfaceChanged w: "

    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, " , h: "

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "ImageWallpaper[GLEngine]"

    .line 31
    .line 32
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p2, p0, p3, p4, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;III)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 59
    .line 60
    check-cast p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 p3, 0x2

    .line 79
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, " onSurfaceCreated "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " , "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 28
    .line 29
    const-string v2, "ImageWallpaper[GLEngine]"

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, " onSurfaceDestroyed "

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 12
    .line 13
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 20
    .line 21
    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, " onSurfaceRedrawNeeded  id: "

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onSwitchDisplayChanged(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 6
    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->isFixedOrientationWallpaper(II)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string v0, " onFolderStateChanged  "

    .line 38
    .line 39
    const-string v3, "  , "

    .line 40
    .line 41
    invoke-static {v0, p1, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v3, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, " , mLidState:"

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v3, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 64
    .line 65
    invoke-static {v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v3, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 77
    .line 78
    check-cast v3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 79
    .line 80
    const-string v4, "ImageWallpaperRenderer"

    .line 81
    .line 82
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-boolean p1, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    iget-object p1, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mPm:Landroid/os/PowerManager;

    .line 91
    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_0

    .line 99
    .line 100
    const-string p1, " onFolderStateChanged screen off."

    .line 101
    .line 102
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    iget p1, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 107
    .line 108
    if-ne p1, v0, :cond_2

    .line 109
    .line 110
    const-string p1, " do not change lid state. so request update "

    .line 111
    .line 112
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const-string p1, " Fold open. so request update "

    .line 120
    .line 121
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-ne v1, v2, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eq v1, v0, :cond_3

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    const/4 v1, 0x7

    .line 173
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/16 v1, 0x80

    .line 188
    .line 189
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v2, " change surface size  width : "

    .line 204
    .line 205
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, " height : "

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const-string v2, "ImageWallpaper[GLEngine]"

    .line 224
    .line 225
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-interface {p0, v0, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 233
    .line 234
    .line 235
    :cond_5
    :goto_2
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;ZI)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final refreshCachedWallpaper(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda4;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final removeLocalColorsAreas(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;Ljava/util/List;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setCurrentUserId(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setCurrentUserId: userId = "

    .line 2
    .line 3
    .line 4
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCurrentUserId:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "setCurrentUserId: mRenderer is null."

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final shouldWaitForEngineShown()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final shouldZoomOutWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final supportsLocalColorExtraction()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final updateMiniBitmapAndNotify(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x80

    .line 17
    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    const/high16 v1, 0x43000000    # 128.0f

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    div-float/2addr v1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mImgHeight:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    mul-float/2addr v3, v1

    .line 48
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    float-to-int v3, v3

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    int-to-float v4, v4

    .line 58
    mul-float/2addr v1, v4

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    float-to-int v1, v1

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static {p1, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 72
    .line 73
    iget-object v0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final updateRendering()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglContext()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->drawFrame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, " error : "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "ImageWallpaper[GLEngine]"

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public final updateSurfaceSize()V
    .locals 4

    .line 1
    const-string v0, "ImageWallpaper#updateSurfaceSize"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x80

    .line 21
    .line 22
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, " updateSurfaceSize width : "

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " height : "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "ImageWallpaper[GLEngine]"

    .line 61
    .line 62
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-interface {v0, v1, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final updateSurfaceSizeIfNeed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "  updateSurfaceSizeIfNeed frame  "

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " surfaceFrame : "

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->finishRendering()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0
.end method

.method public final updateWallpaperOffset(I)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWindowTokenAsBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 10
    .line 11
    if-eqz v2, :cond_a

    .line 12
    .line 13
    if-eqz v1, :cond_a

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    iget v4, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 17
    .line 18
    const-string v5, "ImageWallpaperRenderer"

    .line 19
    .line 20
    if-eq v4, v3, :cond_9

    .line 21
    .line 22
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    iget-boolean v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_0
    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 33
    .line 34
    if-eqz v6, :cond_a

    .line 35
    .line 36
    iget v7, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    invoke-virtual {v6, v8}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    new-instance v9, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v11, "updateWallpaperOffset "

    .line 54
    .line 55
    .line 56
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v11, " lastCropOffset "

    .line 72
    .line 73
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v11, " , wp Type "

    .line 80
    .line 81
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v11, " , rotation "

    .line 88
    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v11, " , allowed "

    .line 96
    .line 97
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-boolean v11, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsSmartCropAllowed:Z

    .line 101
    .line 102
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v10, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 113
    .line 114
    if-eqz v10, :cond_7

    .line 115
    .line 116
    iget-boolean v11, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsSmartCropAllowed:Z

    .line 117
    .line 118
    if-eqz v11, :cond_7

    .line 119
    .line 120
    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-eqz v10, :cond_7

    .line 125
    .line 126
    const/4 v10, 0x1

    .line 127
    if-eq v0, v10, :cond_1

    .line 128
    .line 129
    const/4 v11, 0x3

    .line 130
    if-ne v0, v11, :cond_7

    .line 131
    .line 132
    :cond_1
    if-nez v8, :cond_7

    .line 133
    .line 134
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 135
    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_4

    .line 143
    .line 144
    const/16 v10, 0x11

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    if-ne v4, v3, :cond_3

    .line 148
    .line 149
    move v0, v10

    .line 150
    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, 0x0

    .line 152
    :goto_0
    if-eqz v0, :cond_4

    .line 153
    .line 154
    const/16 v10, 0x9

    .line 155
    .line 156
    :cond_4
    :goto_1
    invoke-static {v10}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, " Error Smart rect is Null "

    .line 165
    .line 166
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget v3, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 170
    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x0

    .line 182
    move-object/from16 p0, v5

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :cond_5
    const-string v3, "display"

    .line 187
    .line 188
    iget-object v8, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {v8, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-eqz v3, :cond_6

    .line 201
    .line 202
    new-instance v4, Landroid/view/DisplayInfo;

    .line 203
    .line 204
    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 208
    .line 209
    .line 210
    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 211
    .line 212
    iget v8, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 213
    .line 214
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    iget v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 219
    .line 220
    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 221
    .line 222
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    goto :goto_2

    .line 227
    :cond_6
    const-string v3, " getDisplaySize use configuration to recognize the screen size"

    .line 228
    .line 229
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    move v3, v8

    .line 263
    :goto_2
    new-instance v8, Landroid/util/Size;

    .line 264
    .line 265
    invoke-direct {v8, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    int-to-float v8, v3

    .line 277
    iget-object v10, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    .line 278
    .line 279
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    int-to-float v11, v11

    .line 284
    div-float/2addr v8, v11

    .line 285
    int-to-float v11, v4

    .line 286
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    int-to-float v12, v12

    .line 291
    div-float v12, v11, v12

    .line 292
    .line 293
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    int-to-float v10, v10

    .line 302
    mul-float/2addr v10, v8

    .line 303
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 304
    .line 305
    int-to-float v0, v0

    .line 306
    iget-object v8, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 307
    .line 308
    iget-object v8, v8, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    .line 309
    .line 310
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    int-to-float v8, v8

    .line 315
    div-float/2addr v0, v8

    .line 316
    mul-float v8, v0, v10

    .line 317
    .line 318
    const/high16 v12, 0x3f000000    # 0.5f

    .line 319
    .line 320
    mul-float/2addr v11, v12

    .line 321
    add-float/2addr v11, v8

    .line 322
    iget v12, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    .line 323
    .line 324
    mul-float v13, v10, v12

    .line 325
    .line 326
    float-to-int v13, v13

    .line 327
    const-string v14, ", screenSize=("

    .line 328
    .line 329
    const-string v15, ", "

    .line 330
    .line 331
    move-object/from16 p0, v5

    .line 332
    .line 333
    const-string v5, ")"

    .line 334
    .line 335
    invoke-static {v14, v3, v15, v4, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v4, ", origTopPos "

    .line 345
    .line 346
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v0, " , calcTopPos "

    .line 353
    .line 354
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v3, ", scaledHeight "

    .line 370
    .line 371
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v3, " , "

    .line 378
    .line 379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v3, " , smartCropCenterY "

    .line 392
    .line 393
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    int-to-float v0, v13

    .line 407
    sub-float/2addr v0, v11

    .line 408
    float-to-int v0, v0

    .line 409
    :goto_3
    iput v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_7
    move-object/from16 p0, v5

    .line 413
    .line 414
    const/4 v0, 0x0

    .line 415
    iput v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 416
    .line 417
    :goto_4
    iget v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 418
    .line 419
    if-ne v7, v0, :cond_8

    .line 420
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v1, " Do not change Display offset "

    .line 424
    .line 425
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget v1, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    :goto_5
    move-object/from16 v1, p0

    .line 441
    .line 442
    goto :goto_6

    .line 443
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v3, " : Set Display offset "

    .line 446
    .line 447
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget v3, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 451
    .line 452
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    :try_start_0
    iget v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 463
    .line 464
    const/4 v3, 0x0

    .line 465
    invoke-virtual {v6, v1, v3, v0}, Landroid/app/WallpaperManager;->setDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .line 467
    .line 468
    goto :goto_5

    .line 469
    :catch_0
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    const-string v3, " Wallpaper window proxy does not exist. "

    .line 473
    .line 474
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    move-object/from16 v1, p0

    .line 489
    .line 490
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    iget-object v2, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 498
    .line 499
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 500
    .line 501
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_9
    :goto_7
    move-object v1, v5

    .line 506
    const-string v0, " ignore updateWallpaperOffset "

    .line 507
    .line 508
    invoke-static {v0, v4, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :cond_a
    :goto_8
    return-void
.end method
