.class public final Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBitmapHeight:I

.field public mBitmapWidth:I

.field public final mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

.field public mCaptureStart:Z

.field public mCapturedBitmap:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;

.field public final mDrawMatrix:Landroid/graphics/Matrix;

.field public final mDrawPaint:Landroid/graphics/Paint;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;

.field public mLastAmount:F

.field public mOccluded:Z

.field public mOriginDx:I

.field public mOriginDy:I

.field public mRotation:I

.field public mViewHeight:I

.field public mViewWidth:I

.field public final mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/samsung/android/graphics/SemGfxImageFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;",
            "Z",
            "Lcom/samsung/android/graphics/SemGfxImageFilter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 10
    .line 11
    new-instance p2, Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 p3, 0x2

    .line 14
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 24
    .line 25
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 26
    .line 27
    new-instance p3, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    invoke-direct {p3, p0, p5}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 41
    .line 42
    .line 43
    iput-object p7, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 44
    .line 45
    iput-object p9, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 46
    .line 47
    iput-boolean p8, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOccluded:Z

    .line 48
    .line 49
    iput-object p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sLastAmount:F

    .line 52
    .line 53
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final applyBlur(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "applyBlur: amount = "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", prev amount = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " , bitmap = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " , w = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " , h = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " , mCaptureStart = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 69
    .line 70
    const-string v2, "BlurredWallpaper"

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    cmpl-float v2, p1, v1

    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 87
    :goto_0
    invoke-interface {v0, v2}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateBlurState(Z)V

    .line 88
    .line 89
    .line 90
    :cond_1
    cmpl-float v0, p1, v1

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 95
    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 99
    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 104
    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 108
    .line 109
    if-nez v2, :cond_4

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 112
    .line 113
    new-instance v3, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    invoke-direct {v3, p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->cleanUp()V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_2
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 126
    .line 127
    cmpl-float v3, v2, p1

    .line 128
    .line 129
    if-nez v3, :cond_5

    .line 130
    .line 131
    cmpl-float v1, v2, v1

    .line 132
    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 136
    .line 137
    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 138
    .line 139
    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    goto :goto_3

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 145
    .line 146
    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 147
    .line 148
    .line 149
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 150
    .line 151
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 152
    .line 153
    if-eqz p1, :cond_8

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 156
    .line 157
    .line 158
    :cond_8
    return-void
.end method

.method public final cleanUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "onConfigurationChanged: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "BlurredWallpaper"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 35
    .line 36
    iget p1, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 37
    .line 38
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    cmpl-float v2, v2, v3

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v1, 0xff

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iget p3, p3, Landroid/view/DisplayInfo;->rotation:I

    .line 18
    .line 19
    iput p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 20
    .line 21
    const-string p3, "onLayout: width = "

    .line 22
    .line 23
    const-string p4, " , height = "

    .line 24
    .line 25
    const-string p5, " , mRotation = "

    .line 26
    .line 27
    invoke-static {p3, p1, p4, p2, p5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iget p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 32
    .line 33
    const-string p5, "BlurredWallpaper"

    .line 34
    .line 35
    invoke-static {p3, p4, p5}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 39
    .line 40
    const/4 p4, 0x0

    .line 41
    cmpl-float p3, p3, p4

    .line 42
    .line 43
    if-eqz p3, :cond_0

    .line 44
    .line 45
    iget p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 46
    .line 47
    if-eq p3, p2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->update()V

    .line 50
    .line 51
    .line 52
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 53
    .line 54
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final onOccluded(Z)V
    .locals 2

    .line 1
    const-string v0, "onOccluded: "

    .line 2
    .line 3
    const-string v1, " , mLastAmount: "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BlurredWallpaper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOccluded:Z

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    cmpl-float p1, p1, v0

    .line 31
    .line 32
    if-lez p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->updateCapturedBitmap()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onUnlock()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->cleanUp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final update()V
    .locals 2

    .line 1
    const-string v0, "BlurredWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "update: "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->cleanUp()V

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sLastAmount:F

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->applyBlur(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final updateCapturedBitmap()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOccluded:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getCapturedWallpaperForBlur()Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "getScreenShot: start, width = "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " , height = "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " , mRotation = "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 51
    .line 52
    const-string v2, "BlurredWallpaper"

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 58
    .line 59
    if-lez v0, :cond_3

    .line 60
    .line 61
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 62
    .line 63
    if-gtz v1, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 69
    .line 70
    const/16 v4, 0x7d0

    .line 71
    .line 72
    invoke-static {v2, v1, v0, v3, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getScreenShot(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 78
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 79
    .line 80
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;

    .line 81
    .line 82
    const/16 v1, 0x3e8

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method
