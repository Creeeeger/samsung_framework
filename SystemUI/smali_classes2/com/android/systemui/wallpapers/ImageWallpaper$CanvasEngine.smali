.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;
.super Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field static final MIN_SURFACE_HEIGHT:I = 0x80

.field static final MIN_SURFACE_WIDTH:I = 0x80


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mBitmapPaint:Landroid/graphics/Paint;

.field public mDisplayHeight:I

.field public mDisplaySizeValid:Z

.field public mDisplayWidth:I

.field public final mDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

.field public mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

.field public mImgHeight:I

.field public mImgWidth:I

.field public mIntelligentCropHelper:Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

.field public mIsEngineAlive:Z

.field public mIsFixedRotationInProgress:Z

.field public mIsLockscreenLiveWallpaperEnabled:Z

.field public mIsVirtualDisplayMode:Z

.field public mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

.field public mLastWallpaperYOffset:F

.field public final mLock:Ljava/lang/Object;

.field public final mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;

.field public mRotation:I

.field public final mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;

.field public mSurfaceCreated:Z

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

.field public final mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ImageWallpaper[CanvasEngine]"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    .line 15
    .line 16
    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayHeight:I

    .line 17
    .line 18
    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    .line 19
    .line 20
    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgHeight:I

    .line 21
    .line 22
    const/high16 v2, 0x3f000000    # 0.5f

    .line 23
    .line 24
    iput v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastWallpaperYOffset:F

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    .line 29
    .line 30
    new-instance v2, Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 46
    .line 47
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    .line 53
    .line 54
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    .line 60
    .line 61
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;

    .line 67
    .line 68
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 82
    .line 83
    iget-object v1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 84
    .line 85
    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;

    .line 86
    .line 87
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 94
    .line 95
    iget-boolean p0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    .line 96
    .line 97
    if-eqz p0, :cond_0

    .line 98
    .line 99
    iget p0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 100
    .line 101
    new-instance p1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda4;

    .line 102
    .line 103
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;I)V

    .line 104
    .line 105
    .line 106
    iget-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 107
    .line 108
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public final addLocalColorsAreas(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "WallpaperLocalColorExtractor"

    .line 25
    .line 26
    const-string v1, "Attempt to add colors with an empty list"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, " addLocalColorsAreas "

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 78
    .line 79
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void
.end method

.method public final computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " computeAndNotifyLocalColors "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_6

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/graphics/RectF;

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-class v5, Landroid/view/WindowManager;

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/view/WindowManager;

    .line 46
    .line 47
    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iput v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iput v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayHeight:I

    .line 66
    .line 67
    iput-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    .line 68
    .line 69
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 70
    .line 71
    iget v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 72
    .line 73
    int-to-float v3, v3

    .line 74
    const/high16 v5, 0x3f800000    # 1.0f

    .line 75
    .line 76
    div-float v3, v5, v3

    .line 77
    .line 78
    iget v6, v2, Landroid/graphics/RectF;->left:F

    .line 79
    .line 80
    rem-float/2addr v6, v3

    .line 81
    div-float/2addr v6, v3

    .line 82
    iget v7, v2, Landroid/graphics/RectF;->right:F

    .line 83
    .line 84
    rem-float/2addr v7, v3

    .line 85
    div-float/2addr v7, v3

    .line 86
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    div-float/2addr v8, v3

    .line 91
    float-to-double v8, v8

    .line 92
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    double-to-int v3, v8

    .line 97
    new-instance v8, Landroid/graphics/RectF;

    .line 98
    .line 99
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 100
    .line 101
    .line 102
    iget v9, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    .line 103
    .line 104
    if-eqz v9, :cond_3

    .line 105
    .line 106
    iget v9, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgHeight:I

    .line 107
    .line 108
    if-eqz v9, :cond_3

    .line 109
    .line 110
    iget v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    .line 111
    .line 112
    if-lez v10, :cond_3

    .line 113
    .line 114
    iget v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayHeight:I

    .line 115
    .line 116
    if-gtz v10, :cond_1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_1
    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    .line 120
    .line 121
    iput v11, v8, Landroid/graphics/RectF;->bottom:F

    .line 122
    .line 123
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 124
    .line 125
    iput v2, v8, Landroid/graphics/RectF;->top:F

    .line 126
    .line 127
    int-to-float v2, v9

    .line 128
    int-to-float v9, v10

    .line 129
    div-float/2addr v2, v9

    .line 130
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iget v9, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplayWidth:I

    .line 135
    .line 136
    int-to-float v9, v9

    .line 137
    mul-float/2addr v9, v2

    .line 138
    iget v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    .line 139
    .line 140
    if-lez v2, :cond_2

    .line 141
    .line 142
    int-to-float v2, v2

    .line 143
    div-float/2addr v9, v2

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    move v9, v5

    .line 146
    :goto_1
    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    sub-float v9, v5, v2

    .line 151
    .line 152
    iget-object v10, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 153
    .line 154
    iget v10, v10, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 155
    .line 156
    sub-int/2addr v10, v4

    .line 157
    int-to-float v4, v10

    .line 158
    div-float/2addr v9, v4

    .line 159
    mul-float/2addr v6, v2

    .line 160
    int-to-float v3, v3

    .line 161
    mul-float/2addr v3, v9

    .line 162
    add-float/2addr v6, v3

    .line 163
    const/4 v4, 0x0

    .line 164
    invoke-static {v6, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    iput v6, v8, Landroid/graphics/RectF;->left:F

    .line 169
    .line 170
    mul-float/2addr v7, v2

    .line 171
    add-float/2addr v7, v3

    .line 172
    invoke-static {v7, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iput v2, v8, Landroid/graphics/RectF;->right:F

    .line 177
    .line 178
    iget v3, v8, Landroid/graphics/RectF;->left:F

    .line 179
    .line 180
    cmpl-float v2, v3, v2

    .line 181
    .line 182
    if-lez v2, :cond_3

    .line 183
    .line 184
    iput v4, v8, Landroid/graphics/RectF;->left:F

    .line 185
    .line 186
    iput v5, v8, Landroid/graphics/RectF;->right:F

    .line 187
    .line 188
    :cond_3
    :goto_2
    sget-object v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 189
    .line 190
    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    const/4 v3, 0x0

    .line 195
    if-nez v2, :cond_4

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    .line 202
    .line 203
    iget v4, v8, Landroid/graphics/RectF;->left:F

    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    int-to-float v5, v5

    .line 210
    mul-float/2addr v4, v5

    .line 211
    float-to-double v4, v4

    .line 212
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 213
    .line 214
    .line 215
    move-result-wide v4

    .line 216
    double-to-int v4, v4

    .line 217
    iget v5, v8, Landroid/graphics/RectF;->top:F

    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    int-to-float v6, v6

    .line 224
    mul-float/2addr v5, v6

    .line 225
    float-to-double v5, v5

    .line 226
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 227
    .line 228
    .line 229
    move-result-wide v5

    .line 230
    double-to-int v5, v5

    .line 231
    iget v6, v8, Landroid/graphics/RectF;->right:F

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    int-to-float v7, v7

    .line 238
    mul-float/2addr v6, v7

    .line 239
    float-to-double v6, v6

    .line 240
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 241
    .line 242
    .line 243
    move-result-wide v6

    .line 244
    double-to-int v6, v6

    .line 245
    iget v7, v8, Landroid/graphics/RectF;->bottom:F

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    int-to-float v8, v8

    .line 252
    mul-float/2addr v7, v8

    .line 253
    float-to-double v7, v7

    .line 254
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 255
    .line 256
    .line 257
    move-result-wide v7

    .line 258
    double-to-int v7, v7

    .line 259
    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_5

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 273
    .line 274
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 275
    .line 276
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-static {p2, v3, v4, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

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
    move-exception p1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .line 319
    .line 320
    :goto_4
    return-void
.end method

.method public final determineHighlightFilterAmount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

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
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->getFilterAmount(Lcom/android/systemui/util/SettingsHelper;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, -0x1

    .line 51
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, " determineHighlightFilterAmount : "

    .line 54
    .line 55
    invoke-static {v1, v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final drawFrameOnCanvas(IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;FI)Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;
    .locals 22

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    move-object/from16 v2, p5

    .line 8
    .line 9
    move/from16 v3, p6

    .line 10
    .line 11
    move/from16 v4, p7

    .line 12
    .line 13
    const-string v5, "drawFrameOnCanvas : which="

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v0, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "drawFrameOnCanvas : bitmap is null"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v6

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    :try_start_0
    iget-object v7, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 31
    .line 32
    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    new-instance v11, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    invoke-direct {v11, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 47
    .line 48
    .line 49
    iget-object v12, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 50
    .line 51
    invoke-virtual {v12, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getIntelligentCropHints(I)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    invoke-static {v11, v12}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 59
    if-eqz v11, :cond_1

    .line 60
    .line 61
    :try_start_1
    new-instance v12, Landroid/graphics/Rect;

    .line 62
    .line 63
    iget v13, v11, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    int-to-float v13, v13

    .line 66
    mul-float/2addr v13, v3

    .line 67
    float-to-int v13, v13

    .line 68
    iget v14, v11, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    int-to-float v14, v14

    .line 71
    mul-float/2addr v14, v3

    .line 72
    float-to-int v14, v14

    .line 73
    iget v15, v11, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    int-to-float v15, v15

    .line 76
    mul-float/2addr v15, v3

    .line 77
    float-to-int v15, v15

    .line 78
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    int-to-float v11, v11

    .line 81
    mul-float/2addr v11, v3

    .line 82
    float-to-int v11, v11

    .line 83
    invoke-direct {v12, v13, v14, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    move-object v11, v12

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_0
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    .line 91
    .line 92
    .line 93
    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 94
    const/4 v13, 0x0

    .line 95
    if-eqz v12, :cond_2

    .line 96
    .line 97
    :try_start_3
    iget-object v12, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 98
    .line 99
    iget-object v12, v12, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 100
    .line 101
    check-cast v12, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 102
    .line 103
    invoke-virtual {v12}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eqz v12, :cond_2

    .line 108
    .line 109
    new-instance v11, Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    invoke-direct {v11, v13, v13, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 120
    .line 121
    .line 122
    :cond_2
    :try_start_4
    new-instance v12, Landroid/graphics/Matrix;

    .line 123
    .line 124
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 125
    .line 126
    .line 127
    if-eqz v11, :cond_3

    .line 128
    .line 129
    :try_start_5
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 130
    .line 131
    .line 132
    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    :try_start_6
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 138
    :goto_1
    if-eqz v11, :cond_4

    .line 139
    .line 140
    :try_start_7
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 141
    .line 142
    .line 143
    move-result v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 144
    goto :goto_3

    .line 145
    :goto_2
    move-wide/from16 v16, v9

    .line 146
    .line 147
    move-wide/from16 v20, v16

    .line 148
    .line 149
    move-wide/from16 v10, v20

    .line 150
    .line 151
    goto/16 :goto_d

    .line 152
    .line 153
    :cond_4
    :try_start_8
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 158
    .line 159
    .line 160
    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 161
    :try_start_9
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 162
    .line 163
    .line 164
    move-result v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 165
    move-wide/from16 v16, v9

    .line 166
    .line 167
    mul-int v9, v13, v15

    .line 168
    .line 169
    mul-int v10, v6, v14

    .line 170
    .line 171
    if-le v9, v10, :cond_5

    .line 172
    .line 173
    int-to-float v9, v15

    .line 174
    int-to-float v10, v14

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    int-to-float v9, v6

    .line 177
    int-to-float v10, v13

    .line 178
    :goto_4
    div-float/2addr v9, v10

    .line 179
    int-to-float v10, v6

    .line 180
    int-to-float v13, v13

    .line 181
    mul-float/2addr v13, v9

    .line 182
    sub-float/2addr v10, v13

    .line 183
    const/high16 v13, 0x3f000000    # 0.5f

    .line 184
    .line 185
    mul-float/2addr v10, v13

    .line 186
    int-to-float v13, v15

    .line 187
    int-to-float v14, v14

    .line 188
    mul-float/2addr v14, v9

    .line 189
    sub-float/2addr v13, v14

    .line 190
    const/high16 v14, 0x3f000000    # 0.5f

    .line 191
    .line 192
    mul-float/2addr v13, v14

    .line 193
    :try_start_a
    invoke-virtual {v12, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 194
    .line 195
    .line 196
    if-eqz v11, :cond_6

    .line 197
    .line 198
    :try_start_b
    iget v9, v11, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    neg-int v9, v9

    .line 201
    int-to-float v9, v9

    .line 202
    iget v14, v11, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    neg-int v14, v14

    .line 205
    int-to-float v14, v14

    .line 206
    invoke-virtual {v12, v9, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :catch_1
    move-exception v0

    .line 211
    goto :goto_6

    .line 212
    :cond_6
    :goto_5
    :try_start_c
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    int-to-float v9, v9

    .line 217
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    int-to-float v10, v10

    .line 222
    invoke-virtual {v12, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 223
    .line 224
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->determineHighlightFilterAmount()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    iget-object v10, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 230
    .line 231
    iput v9, v10, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    .line 232
    .line 233
    invoke-virtual {v10, v2, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getFilterAppliedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    iget-object v13, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 238
    .line 239
    invoke-virtual {v13, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDimFilterColor(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v13
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 243
    if-eqz v13, :cond_7

    .line 244
    .line 245
    :try_start_d
    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    .line 246
    .line 247
    move/from16 v18, v15

    .line 248
    .line 249
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    move/from16 v19, v6

    .line 254
    .line 255
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 256
    .line 257
    invoke-direct {v14, v15, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 258
    .line 259
    .line 260
    iget-object v6, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;

    .line 261
    .line 262
    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 263
    .line 264
    .line 265
    const/4 v6, 0x0

    .line 266
    move-object v14, v6

    .line 267
    goto :goto_7

    .line 268
    :goto_6
    const/4 v6, 0x0

    .line 269
    goto/16 :goto_c

    .line 270
    .line 271
    :cond_7
    move/from16 v19, v6

    .line 272
    .line 273
    move/from16 v18, v15

    .line 274
    .line 275
    :try_start_e
    iget-object v6, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 276
    .line 277
    const/4 v14, 0x0

    .line 278
    :try_start_f
    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 279
    .line 280
    .line 281
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 282
    .line 283
    .line 284
    move-result-wide v20
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 285
    :try_start_10
    iget-object v6, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 286
    .line 287
    new-instance v15, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v5, ", bmpW="

    .line 296
    .line 297
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v5, ", bmpH="

    .line 308
    .line 309
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v5, ", bmpScale="

    .line 320
    .line 321
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v3, ", src="

    .line 328
    .line 329
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v3, ", dest="

    .line 336
    .line 337
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v3, ", highlight="

    .line 344
    .line 345
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v3, ", dimColor="

    .line 352
    .line 353
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v3, ", drawRepeatCount="

    .line 360
    .line 361
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    const/4 v3, 0x0

    .line 375
    :goto_8
    if-ge v3, v4, :cond_a

    .line 376
    .line 377
    iget-object v5, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 378
    .line 379
    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    iget-object v6, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 384
    .line 385
    iget-boolean v6, v6, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    .line 386
    .line 387
    if-eqz v6, :cond_8

    .line 388
    .line 389
    invoke-virtual {v5}, Landroid/view/Surface;->lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    goto :goto_9

    .line 394
    :cond_8
    invoke-virtual {v5}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 395
    .line 396
    .line 397
    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 398
    :goto_9
    if-eqz v6, :cond_9

    .line 399
    .line 400
    :try_start_11
    iget-object v11, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapPaint:Landroid/graphics/Paint;

    .line 401
    .line 402
    invoke-virtual {v6, v10, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 403
    .line 404
    .line 405
    :try_start_12
    invoke-virtual {v5, v6}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 406
    .line 407
    .line 408
    add-int/lit8 v3, v3, 0x1

    .line 409
    .line 410
    goto :goto_8

    .line 411
    :catchall_0
    move-exception v0

    .line 412
    invoke-virtual {v5, v6}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 413
    .line 414
    .line 415
    throw v0

    .line 416
    :cond_9
    iget-object v0, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 417
    .line 418
    const-string v1, "drawFrameOnCanvas : canvas is NULL"

    .line 419
    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    new-instance v0, Ljava/lang/RuntimeException;

    .line 424
    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string v2, "failed to lock the canvas - "

    .line 431
    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0

    .line 446
    :cond_a
    if-eqz v10, :cond_b

    .line 447
    .line 448
    if-eq v10, v2, :cond_b

    .line 449
    .line 450
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    .line 452
    .line 453
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 454
    .line 455
    .line 456
    move-result-wide v10
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 457
    :try_start_13
    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_e

    .line 462
    .line 463
    const/4 v1, 0x1

    .line 464
    if-lez v9, :cond_c

    .line 465
    .line 466
    move v6, v1

    .line 467
    goto :goto_a

    .line 468
    :cond_c
    const/4 v2, 0x0

    .line 469
    move v6, v2

    .line 470
    :goto_a
    if-eqz v13, :cond_d

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_d
    const/4 v1, 0x0

    .line 474
    :goto_b
    move v7, v1

    .line 475
    new-instance v9, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 476
    .line 477
    move-object v1, v9

    .line 478
    move-object/from16 v2, p0

    .line 479
    .line 480
    move/from16 v3, p1

    .line 481
    .line 482
    move/from16 v4, v19

    .line 483
    .line 484
    move/from16 v5, v18

    .line 485
    .line 486
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IIIZZ)V

    .line 487
    .line 488
    .line 489
    goto :goto_f

    .line 490
    :cond_e
    iget-object v0, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 491
    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v3, "drawFrameOnCanvas : surface size mismatch. curFrame="

    .line 498
    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v3, ", requestedFrame="

    .line 506
    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 518
    .line 519
    .line 520
    goto :goto_e

    .line 521
    :catch_2
    move-exception v0

    .line 522
    move-object v6, v14

    .line 523
    goto :goto_d

    .line 524
    :catch_3
    move-exception v0

    .line 525
    move-object v6, v14

    .line 526
    move-wide/from16 v10, v16

    .line 527
    .line 528
    goto :goto_d

    .line 529
    :catch_4
    move-exception v0

    .line 530
    move-object v6, v14

    .line 531
    goto :goto_c

    .line 532
    :catch_5
    move-exception v0

    .line 533
    goto/16 :goto_6

    .line 534
    .line 535
    :catch_6
    move-exception v0

    .line 536
    move-wide/from16 v16, v9

    .line 537
    .line 538
    goto/16 :goto_6

    .line 539
    .line 540
    :catch_7
    move-exception v0

    .line 541
    move-wide/from16 v16, v9

    .line 542
    .line 543
    :goto_c
    move-wide/from16 v10, v16

    .line 544
    .line 545
    move-wide/from16 v20, v10

    .line 546
    .line 547
    :goto_d
    iget-object v1, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 548
    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string v3, "drawFrameOnCanvas : failed draw bitmap. e="

    .line 552
    .line 553
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    .line 565
    .line 566
    move-object v14, v6

    .line 567
    :goto_e
    move-object v9, v14

    .line 568
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 569
    .line 570
    .line 571
    move-result-wide v0

    .line 572
    sub-long v0, v0, p2

    .line 573
    .line 574
    sub-long v2, v16, p2

    .line 575
    .line 576
    sub-long v4, v20, v16

    .line 577
    .line 578
    sub-long v10, v10, v20

    .line 579
    .line 580
    iget-object v6, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 581
    .line 582
    const-string v7, "drawFrameOnCanvas : elapsed="

    .line 583
    .line 584
    const-string v8, ", bmpPrepareDur="

    .line 585
    .line 586
    invoke-static {v7, v0, v1, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v1, ", filterApplyDur="

    .line 594
    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const-string v1, ", drawDur="

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    const-string v1, ", drawnState=("

    .line 610
    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    const-string v1, ")"

    .line 618
    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .line 628
    .line 629
    return-object v9
.end method

.method public final drawFullQualityFrame(ILandroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p1, "drawFullQualityFrame: attempt to draw a frame without a valid surface"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 14
    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "drawFullQualityFrame: engine is destroyed"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string v0, "ImageWallpaper.CanvasEngine#drawFrame"

    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateWallpaperOffset(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 40
    .line 41
    new-instance v7, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    move-object v1, v7

    .line 44
    move-object v2, p0

    .line 45
    move v3, p1

    .line 46
    move-object v6, p2

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IJLandroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1, v7}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setSurfaceAlpha(F)V

    .line 67
    .line 68
    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 71
    .line 72
    .line 73
    const-string p1, "ImageWallpaper.CanvasEngine#unloadBitmap"

    .line 74
    .line 75
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/view/Surface;->hwuiDestroy()V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

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
    move-result-object p2

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move-object p2, p4

    .line 88
    :goto_1
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string p2, "bitmap="

    .line 95
    .line 96
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "mSurfaceSize="

    .line 108
    .line 109
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v1, "mWcgContent="

    .line 121
    .line 122
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    .line 126
    .line 127
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v0, "display="

    .line 139
    .line 140
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget v1, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string/jumbo v1, "x"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "mPages="

    .line 175
    .line 176
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    .line 180
    .line 181
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v0, "bitmap dimensions="

    .line 188
    .line 189
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    iget v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 224
    .line 225
    if-nez p2, :cond_2

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_3

    .line 233
    .line 234
    const-string/jumbo p4, "recycled"

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    iget-object p4, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 244
    .line 245
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 246
    .line 247
    .line 248
    move-result p4

    .line 249
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object p4, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 256
    .line 257
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 258
    .line 259
    .line 260
    move-result p4

    .line 261
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p4

    .line 268
    :goto_2
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string p2, "PendingRegions size="

    .line 275
    .line 276
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 280
    .line 281
    check-cast p2, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string p1, "ProcessedRegions size="

    .line 294
    .line 295
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    .line 299
    .line 300
    check-cast p0, Landroid/util/ArraySet;

    .line 301
    .line 302
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method public final finishRendering()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

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
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "finishRendering"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final getDisplaySizeAndUpdateColorExtractor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/view/WindowManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/WindowManager;

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;II)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final isFixedOrientationWallpaper(II)Z
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->isFixedOrientationWallpaper(II)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string v2, "com.samsung.feature.device_category_tablet"

    .line 23
    .line 24
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    move p2, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move p2, v1

    .line 33
    :goto_0
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    move v2, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v2, v1

    .line 52
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    const-string/jumbo v4, "sub_display_system_wallpaper_transparency"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const-string v4, "android.wallpaper.settings_systemui_transparency"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    :goto_2
    if-nez v3, :cond_4

    .line 83
    .line 84
    move v3, v0

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    move v3, v1

    .line 87
    :goto_3
    if-nez p1, :cond_6

    .line 88
    .line 89
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    .line 90
    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    :cond_5
    if-nez p2, :cond_6

    .line 96
    .line 97
    if-nez v3, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    move v0, v1

    .line 107
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v4, "isFixedOrientationWallpaper: feature="

    .line 112
    .line 113
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    .line 117
    .line 118
    const-string v5, ", isTablet="

    .line 119
    .line 120
    const-string v6, ", isCoverDisplay="

    .line 121
    .line 122
    invoke-static {v1, v4, v5, p2, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p2, ", isCustomWallpaper="

    .line 126
    .line 127
    const-string v4, ", isPreview="

    .line 128
    .line 129
    invoke-static {v1, v2, p2, v3, v4}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p0, ", isFixedOrientation="

    .line 140
    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "onConfigurationChanged display id= "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, " , newConfig ="

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->runAsWorkerThread(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "ImageWallpaper[CanvasEngine_d"

    .line 6
    .line 7
    const-string v2, "_w"

    .line 8
    .line 9
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v3

    .line 24
    :goto_0
    const-string v5, "]"

    .line 25
    .line 26
    invoke-static {v1, v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "ImageWallpaper.CanvasEngine#onCreate"

    .line 33
    .line 34
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v5, "Engine onCreate: displayId = "

    .line 44
    .line 45
    invoke-static {v5, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 50
    .line 51
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-class v2, Landroid/app/WallpaperManager;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/app/WallpaperManager;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->getDisplaySizeAndUpdateColorExtractor()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->isFixedOrientationWallpaper(II)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, p1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

    .line 112
    .line 113
    invoke-direct {p1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIntelligentCropHelper:Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

    .line 117
    .line 118
    new-instance v13, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;

    .line 119
    .line 120
    invoke-direct {v13, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 134
    .line 135
    iget-object v8, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 136
    .line 137
    iget-object v9, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 138
    .line 139
    iget-object v10, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 140
    .line 141
    iget-object v11, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIntelligentCropHelper:Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

    .line 142
    .line 143
    iget-boolean v12, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 144
    .line 145
    move-object v5, p1

    .line 146
    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;-><init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;ZLcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;)V

    .line 147
    .line 148
    .line 149
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSize(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 159
    .line 160
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    invoke-direct {v1, p0, v4}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    .line 163
    .line 164
    .line 165
    iput-object v1, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmapUpdateConsumer:Ljava/util/function/Consumer;

    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iput p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 188
    .line 189
    if-eqz p1, :cond_1

    .line 190
    .line 191
    if-eq v0, v4, :cond_1

    .line 192
    .line 193
    if-eq v0, v3, :cond_1

    .line 194
    .line 195
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;

    .line 200
    .line 201
    invoke-interface {p1, v1, v0}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception p1

    .line 206
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 207
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v4, "Failed to set rotation watcher. e="

    .line 211
    .line 212
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .line 224
    .line 225
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 226
    .line 227
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 236
    .line 237
    const-string v1, " do not add display controller in dex"

    .line 238
    .line 239
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    :goto_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 243
    .line 244
    if-eqz p1, :cond_2

    .line 245
    .line 246
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    .line 249
    .line 250
    iget-object v2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 251
    .line 252
    new-instance v4, Lcom/android/systemui/wallpapers/ImageWallpaper$1;

    .line 253
    .line 254
    invoke-direct {v4, p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    .line 259
    .line 260
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 261
    .line 262
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 272
    .line 273
    if-eqz p1, :cond_3

    .line 274
    .line 275
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    .line 286
    .line 287
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 288
    .line 289
    if-eqz p1, :cond_5

    .line 290
    .line 291
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 292
    .line 293
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 294
    .line 295
    if-eqz p1, :cond_5

    .line 296
    .line 297
    if-eq v0, v3, :cond_4

    .line 298
    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    .line 300
    .line 301
    if-eqz v0, :cond_5

    .line 302
    .line 303
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mPluginHomeWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;

    .line 304
    .line 305
    check-cast p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V

    .line 308
    .line 309
    .line 310
    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 311
    .line 312
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Engine onDestroy displayId "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    iput-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 64
    .line 65
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eq v0, v1, :cond_0

    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsVirtualDisplayMode:Z

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 83
    .line 84
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->onHomeWallpaperDestroyed()V

    .line 87
    .line 88
    .line 89
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    .line 96
    .line 97
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v4, Lcom/android/systemui/wallpapers/ImageWallpaper$2;

    .line 100
    .line 101
    invoke-direct {v4, v0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/4 v2, 0x2

    .line 118
    if-eq v0, v2, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eq v0, v1, :cond_3

    .line 125
    .line 126
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotationWatcher:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;

    .line 131
    .line 132
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v4, "Failed to remove rotation watcher. e="

    .line 142
    .line 143
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaysChangedListener:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 181
    .line 182
    .line 183
    const/4 v0, 0x5

    .line 184
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 185
    .line 186
    .line 187
    const/16 v0, 0x11

    .line 188
    .line 189
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 190
    .line 191
    .line 192
    const/16 v0, 0x9

    .line 193
    .line 194
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->setWallpaperOffsetToDefault()V

    .line 198
    .line 199
    .line 200
    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 202
    .line 203
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
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mDisplaySizeValid:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->getDisplaySizeAndUpdateColorExtractor()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMiniBitmapUpdated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onOffsetsChanged(FFFFII)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastWallpaperYOffset:F

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
    if-nez p1, :cond_0

    .line 13
    .line 14
    move p1, p4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object p5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 18
    .line 19
    iget-boolean p6, p5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    .line 20
    .line 21
    if-eq p6, p1, :cond_1

    .line 22
    .line 23
    const-string/jumbo p6, "setSmartCropAllowed: "

    .line 24
    .line 25
    .line 26
    invoke-static {p6, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p6

    .line 30
    iget-object v0, p5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    iput-boolean p1, p5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    .line 36
    .line 37
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastWallpaperYOffset:F

    .line 38
    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    cmpl-float p1, p3, p1

    .line 41
    .line 42
    if-lez p1, :cond_3

    .line 43
    .line 44
    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    cmpg-float p2, p3, p1

    .line 47
    .line 48
    if-gtz p2, :cond_3

    .line 49
    .line 50
    div-float/2addr p1, p3

    .line 51
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    add-int/2addr p1, p4

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move p1, p4

    .line 58
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 59
    .line 60
    iget p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 61
    .line 62
    if-ne p1, p2, :cond_4

    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 65
    .line 66
    iget-boolean p2, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    .line 67
    .line 68
    if-nez p2, :cond_5

    .line 69
    .line 70
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 71
    .line 72
    iput p1, p2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 75
    .line 76
    iput-boolean p4, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 79
    .line 80
    iget p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance p2, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda4;

    .line 86
    .line 87
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;I)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 91
    .line 92
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " onSurfaceCreated "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, " , "

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    .line 23
    .line 24
    invoke-static {v1, p1, v0}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const-string p1, "ImageWallpaper#onSurfaceCreated"

    .line 33
    .line 34
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string v2, "onSurfaceCreated: which="

    .line 44
    .line 45
    const-string v3, ", disp="

    .line 46
    .line 47
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, ", colorDecor="

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    xor-int/2addr v3, v0

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, ", highlightAmount="

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v3, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    new-instance v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-direct {v2, p1, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 99
    .line 100
    .line 101
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    .line 102
    .line 103
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, " onSurfaceDestroyed "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 20
    .line 21
    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 12

    .line 1
    const-string p1, "onSurfaceRedrawNeeded: displayId="

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, "onSurfaceRedrawNeeded: engine already destroyed"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v10, Landroid/graphics/Rect;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "onSurfaceRedrawNeeded: curWhich="

    .line 37
    .line 38
    const-string v4, ", isFixedRotationInProgress="

    .line 39
    .line 40
    invoke-static {v3, v0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsFixedRotationInProgress:Z

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, ", mRotation="

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, ", surfaceFrame="

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateWallpaperOffset(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    move-object v11, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->determineHighlightFilterAmount()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-lez v3, :cond_2

    .line 94
    .line 95
    move v7, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move v7, v9

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDimFilterColor(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    move v8, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move v8, v9

    .line 109
    :goto_1
    new-instance v11, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    move-object v2, v11

    .line 120
    move-object v3, p0

    .line 121
    move v4, v0

    .line 122
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IIIZZ)V

    .line 123
    .line 124
    .line 125
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v2

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p1, ", lastDrawn=("

    .line 143
    .line 144
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 148
    .line 149
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, "), toDraw=("

    .line 153
    .line 154
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, ")"

    .line 161
    .line 162
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 173
    .line 174
    if-eqz p1, :cond_4

    .line 175
    .line 176
    invoke-virtual {p1, v11}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_4

    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    const-string p1, "onSurfaceRedrawNeeded: not need redraw"

    .line 185
    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    monitor-exit v2

    .line 190
    return-void

    .line 191
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 192
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    const/4 v2, 0x2

    .line 204
    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_5

    .line 209
    .line 210
    move v9, v1

    .line 211
    :cond_5
    if-eqz v9, :cond_6

    .line 212
    .line 213
    and-int/lit8 v2, v0, 0x3c

    .line 214
    .line 215
    or-int/2addr v1, v2

    .line 216
    goto :goto_3

    .line 217
    :cond_6
    move v1, v0

    .line 218
    :goto_3
    iget-object p1, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    .line 229
    .line 230
    if-eqz p1, :cond_7

    .line 231
    .line 232
    const/4 v9, 0x2

    .line 233
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 234
    .line 235
    monitor-enter v1

    .line 236
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 237
    .line 238
    .line 239
    move-result-wide v4

    .line 240
    iget-object v7, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 241
    .line 242
    iget v8, p1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;->mScale:F

    .line 243
    .line 244
    move-object v2, p0

    .line 245
    move v3, v0

    .line 246
    move-object v6, v10

    .line 247
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameOnCanvas(IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;FI)Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 248
    .line 249
    .line 250
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    iput-object v11, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 256
    .line 257
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda2;

    .line 258
    .line 259
    invoke-direct {v1, p0, v0, v10}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;ILandroid/graphics/Rect;)V

    .line 260
    .line 261
    .line 262
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 263
    .line 264
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catchall_0
    move-exception p0

    .line 269
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    throw p0

    .line 271
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 272
    .line 273
    monitor-enter p1

    .line 274
    :try_start_3
    invoke-virtual {p0, v0, v10}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFullQualityFrame(ILandroid/graphics/Rect;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->finishRendering()V

    .line 278
    .line 279
    .line 280
    monitor-exit p1

    .line 281
    :goto_4
    return-void

    .line 282
    :catchall_1
    move-exception p0

    .line 283
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    throw p0

    .line 285
    :catchall_2
    move-exception p0

    .line 286
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 287
    throw p0
.end method

.method public final onSwitchDisplayChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onSwitchDisplayChanged"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    xor-int/2addr v0, v1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->isFixedOrientationWallpaper(II)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;

    .line 42
    .line 43
    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;ZI)V

    .line 44
    .line 45
    .line 46
    const-wide/16 p0, 0xc8

    .line 47
    .line 48
    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateOnSwitchDisplayChanged(Z)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " onVisibilityChanged: visible="

    .line 4
    .line 5
    const-string v2, " , displayId="

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public recomputeColorExtractorMiniBitmap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 8
    .line 9
    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final refreshCachedWallpaper(I)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    and-int/lit8 p0, p1, 0x2

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    and-int/lit8 p0, p1, 0x4

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    and-int/lit8 p1, p1, -0x5

    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-void
.end method

.method public final removeLocalColorsAreas(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final runAsWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo p1, "runAsWorkerThread: mWorker is null."

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setCurrentUserId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "setCurrentUserId: userId = "

    .line 4
    .line 5
    .line 6
    invoke-static {v1, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo p1, "setCurrentUserId: already destroyed"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 25
    .line 26
    iput p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    .line 27
    .line 28
    return-void
.end method

.method public final setWallpaperOffsetToDefault()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWindowTokenAsBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "setWallpaperOffsetToDefault : "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq v1, v3, :cond_1

    .line 36
    .line 37
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v0, v2, v2}, Landroid/app/WallpaperManager;->setDisplayOffset(Landroid/os/IBinder;II)V

    .line 50
    .line 51
    .line 52
    iput v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, " ignore updateWallpaperOffset "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 63
    .line 64
    invoke-static {v0, p0, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
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
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgHeight:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mImgWidth:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

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
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 72
    .line 73
    iget-object v0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

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

.method public final updateOnSwitchDisplayChanged(Z)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string v0, " onFolderStateChanged: isFolded="

    .line 13
    .line 14
    const-string v2, ", WallMgr="

    .line 15
    .line 16
    invoke-static {v0, p1, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", mLidState="

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v2, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 52
    .line 53
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-boolean p1, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mPm:Landroid/os/PowerManager;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    const-string p1, " onFolderStateChanged screen off."

    .line 76
    .line 77
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget p1, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 82
    .line 83
    if-ne p1, v0, :cond_2

    .line 84
    .line 85
    const-string p1, " do not change lid state. so request update "

    .line 86
    .line 87
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const-string p1, " Fold open. so request update "

    .line 96
    .line 97
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    const-string/jumbo v1, "updateOnSwitchDisplayChanged: live wallpaper showing. Reset offset."

    .line 124
    .line 125
    .line 126
    check-cast p1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 127
    .line 128
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->setWallpaperOffsetToDefault()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const/4 p1, -0x1

    .line 148
    invoke-interface {p0, p1, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->reportSurfaceSize(I)Landroid/util/Size;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-ne v2, v3, :cond_6

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eq v2, v1, :cond_5

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateRendering(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    const/16 v2, 0x80

    .line 199
    .line 200
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 213
    .line 214
    const-string/jumbo v3, "updateOnSwitchDisplayChanged: change surface size. which="

    .line 215
    .line 216
    .line 217
    const-string v4, ", width="

    .line 218
    .line 219
    const-string v5, ", height="

    .line 220
    .line 221
    invoke-static {v3, p1, v4, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-interface {p0, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 240
    .line 241
    .line 242
    :cond_7
    :goto_2
    return-void
.end method

.method public final updateRendering(I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFullQualityFrame(ILandroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->finishRendering()V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, " error : "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final updateSurfaceSize(I)V
    .locals 7

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
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->reportSurfaceSize(I)Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x80

    .line 21
    .line 22
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v4, " updateSurfaceSize: width = "

    .line 37
    .line 38
    const-string v5, ", height = "

    .line 39
    .line 40
    const-string v6, ", isVisible = "

    .line 41
    .line 42
    invoke-static {v4, v2, v5, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    const/4 p0, -0x1

    .line 69
    invoke-interface {v0, p0, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v0, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final updateSurfaceSizeIfNeed(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->reportSurfaceSize(I)Landroid/util/Size;

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
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v4, "  updateSurfaceSizeIfNeed frame  "

    .line 43
    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, " surfaceFrame : "

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSize(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->finishRendering()V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0
.end method

.method public final updateWallpaperOffset(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 24
    .line 25
    iget v3, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 37
    .line 38
    iget v3, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 39
    .line 40
    if-eq v3, v4, :cond_2

    .line 41
    .line 42
    :goto_0
    const/4 v3, 0x0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    move v3, v4

    .line 45
    :goto_2
    if-eqz v3, :cond_f

    .line 46
    .line 47
    if-nez v2, :cond_f

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_e

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-ne v5, v6, :cond_4

    .line 99
    .line 100
    move v5, v4

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/4 v5, 0x0

    .line 103
    :goto_3
    if-nez v5, :cond_6

    .line 104
    .line 105
    iget-object v6, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v8, "isValidSurfaceSize() surface="

    .line 110
    .line 111
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, " , bitmap="

    .line 118
    .line 119
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_5
    :goto_4
    const/4 v5, 0x0

    .line 134
    :cond_6
    :goto_5
    if-eqz v5, :cond_e

    .line 135
    .line 136
    iget v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWindowTokenAsBinder()Landroid/os/IBinder;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-eqz v3, :cond_10

    .line 143
    .line 144
    iget-object v5, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 145
    .line 146
    iget v0, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 147
    .line 148
    const/4 v6, 0x2

    .line 149
    iget-object v7, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    if-eq v0, v6, :cond_d

    .line 152
    .line 153
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    iget-boolean v0, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    goto/16 :goto_b

    .line 162
    .line 163
    :cond_7
    iget-object v0, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 164
    .line 165
    if-eqz v0, :cond_10

    .line 166
    .line 167
    iget v6, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string/jumbo v11, "updateWallpaperOffset "

    .line 181
    .line 182
    .line 183
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget v11, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 187
    .line 188
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v11, " lastCropOffset "

    .line 201
    .line 202
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v11, " , wp Type "

    .line 209
    .line 210
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v11, " , rotation "

    .line 217
    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v11, " , allowed "

    .line 225
    .line 226
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-boolean v11, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    .line 230
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v10, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 242
    .line 243
    if-eqz v10, :cond_b

    .line 244
    .line 245
    iget-boolean v11, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    .line 246
    .line 247
    if-eqz v11, :cond_b

    .line 248
    .line 249
    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-eqz v10, :cond_b

    .line 254
    .line 255
    if-eq v2, v4, :cond_8

    .line 256
    .line 257
    const/4 v4, 0x3

    .line 258
    if-ne v2, v4, :cond_b

    .line 259
    .line 260
    :cond_8
    if-nez v8, :cond_b

    .line 261
    .line 262
    invoke-virtual {v5, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-nez v2, :cond_b

    .line 267
    .line 268
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    if-nez v2, :cond_9

    .line 273
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v4, " Error Smart rect is Null "

    .line 277
    .line 278
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget v4, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 282
    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    move-object/from16 v16, v0

    .line 295
    .line 296
    move-object/from16 p0, v7

    .line 297
    .line 298
    goto/16 :goto_7

    .line 299
    .line 300
    :cond_9
    const-string v4, "display"

    .line 301
    .line 302
    iget-object v8, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 309
    .line 310
    iget v10, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 311
    .line 312
    invoke-virtual {v4, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    if-eqz v4, :cond_a

    .line 317
    .line 318
    new-instance v8, Landroid/view/DisplayInfo;

    .line 319
    .line 320
    invoke-direct {v8}, Landroid/view/DisplayInfo;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v8}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 324
    .line 325
    .line 326
    iget v4, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 327
    .line 328
    iget v10, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 329
    .line 330
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    iget v10, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 335
    .line 336
    iget v8, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 337
    .line 338
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    goto :goto_6

    .line 343
    :cond_a
    const-string v4, " getDisplaySize use configuration to recognize the screen size"

    .line 344
    .line 345
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 357
    .line 358
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 371
    .line 372
    .line 373
    move-result v10

    .line 374
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    .line 375
    .line 376
    .line 377
    move-result v8

    .line 378
    move v4, v10

    .line 379
    :goto_6
    new-instance v10, Landroid/util/Size;

    .line 380
    .line 381
    invoke-direct {v10, v4, v8}, Landroid/util/Size;-><init>(II)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    int-to-float v10, v4

    .line 393
    iget-object v11, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    .line 394
    .line 395
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    int-to-float v12, v12

    .line 400
    div-float/2addr v10, v12

    .line 401
    int-to-float v12, v8

    .line 402
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 403
    .line 404
    .line 405
    move-result v13

    .line 406
    int-to-float v13, v13

    .line 407
    div-float v13, v12, v13

    .line 408
    .line 409
    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 414
    .line 415
    .line 416
    move-result v11

    .line 417
    int-to-float v11, v11

    .line 418
    mul-float/2addr v11, v10

    .line 419
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 420
    .line 421
    int-to-float v2, v2

    .line 422
    iget-object v10, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    .line 423
    .line 424
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    int-to-float v10, v10

    .line 429
    div-float/2addr v2, v10

    .line 430
    mul-float v10, v2, v11

    .line 431
    .line 432
    const/high16 v13, 0x3f000000    # 0.5f

    .line 433
    .line 434
    mul-float/2addr v12, v13

    .line 435
    add-float/2addr v12, v10

    .line 436
    iget v13, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mYOffset:F

    .line 437
    .line 438
    mul-float v14, v11, v13

    .line 439
    .line 440
    float-to-int v14, v14

    .line 441
    const-string v15, ", screenSize=("

    .line 442
    .line 443
    move-object/from16 p0, v7

    .line 444
    .line 445
    const-string v7, ", "

    .line 446
    .line 447
    move-object/from16 v16, v0

    .line 448
    .line 449
    const-string v0, ")"

    .line 450
    .line 451
    invoke-static {v15, v4, v7, v8, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string v4, ", origTopPos "

    .line 461
    .line 462
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v2, " , calcTopPos "

    .line 469
    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    const-string v2, ", scaledHeight "

    .line 486
    .line 487
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v2, " , "

    .line 494
    .line 495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v2, " , smartCropCenterY "

    .line 508
    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    int-to-float v0, v14

    .line 523
    sub-float/2addr v0, v12

    .line 524
    float-to-int v2, v0

    .line 525
    :goto_7
    iput v2, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 526
    .line 527
    goto :goto_8

    .line 528
    :cond_b
    move-object/from16 v16, v0

    .line 529
    .line 530
    move-object/from16 p0, v7

    .line 531
    .line 532
    const/4 v0, 0x0

    .line 533
    iput v0, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 534
    .line 535
    :goto_8
    iget v0, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 536
    .line 537
    const-string v2, " , which = "

    .line 538
    .line 539
    if-ne v6, v0, :cond_c

    .line 540
    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    const-string v3, " Do not change Display offset "

    .line 544
    .line 545
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    iget v3, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 549
    .line 550
    const-string v4, " , lidstate = "

    .line 551
    .line 552
    invoke-static {v0, v3, v2, v1, v4}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget v1, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 556
    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    goto :goto_9

    .line 568
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string v4, " : Set Display offset "

    .line 571
    .line 572
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget v4, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 576
    .line 577
    const-string v6, ", lidstate = "

    .line 578
    .line 579
    invoke-static {v0, v4, v2, v1, v6}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iget v1, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v1, ", token = "

    .line 588
    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    :try_start_0
    iget v0, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 603
    .line 604
    const/4 v1, 0x0

    .line 605
    move-object/from16 v2, v16

    .line 606
    .line 607
    invoke-virtual {v2, v3, v1, v0}, Landroid/app/WallpaperManager;->setDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .line 609
    .line 610
    :goto_9
    move-object/from16 v1, p0

    .line 611
    .line 612
    goto :goto_a

    .line 613
    :catch_0
    move-exception v0

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v2, " Wallpaper window proxy does not exist. "

    .line 617
    .line 618
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    move-object/from16 v1, p0

    .line 633
    .line 634
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    :goto_a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    iget-object v2, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 642
    .line 643
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 644
    .line 645
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    goto :goto_c

    .line 649
    :cond_d
    :goto_b
    move-object v1, v7

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    const-string v2, " ignore updateWallpaperOffset "

    .line 653
    .line 654
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    iget v2, v5, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 658
    .line 659
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 660
    .line 661
    .line 662
    goto :goto_c

    .line 663
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->setWallpaperOffsetToDefault()V

    .line 664
    .line 665
    .line 666
    goto :goto_c

    .line 667
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->setWallpaperOffsetToDefault()V

    .line 668
    .line 669
    .line 670
    :cond_10
    :goto_c
    return-void
.end method
