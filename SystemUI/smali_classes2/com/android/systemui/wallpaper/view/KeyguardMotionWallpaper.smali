.class public final Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlphaAnimator:Landroid/animation/ValueAnimator;

.field public mAngularSum:F

.field public mAnimatedAngularSum:F

.field public final mBlendingPaint:Landroid/graphics/Paint;

.field public final mContext:Landroid/content/Context;

.field public mCroppedScale:F

.field public final mCurrentWhich:I

.field public mDeltaOfAngularSum:F

.field public final mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field public final mHandler:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;

.field public final mInterpolator:Lcom/samsung/android/view/animation/SineOut33;

.field public final mInterruptedGyro:Landroid/hardware/Sensor;

.field public mIsSensorRegistered:Z

.field public mLastHeight:I

.field public mLastWidth:I

.field public mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

.field public mMotionBitmapList:Ljava/util/ArrayList;

.field public final mOldBitmapList:Ljava/util/ArrayList;

.field public mPkgName:Ljava/lang/String;

.field public mPkgResources:Landroid/content/res/Resources;

.field public mPrevAngularSum:F

.field public mPrevAnimatedAngularSum:F

.field public mPrevStartAngularSum:F

.field public mRangeOfRotation:I

.field public mRotation:I

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTimestamp:J

.field public mViewHeight:I

.field public mViewWidth:I

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

.field public mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v9, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p8

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    .line 3
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRotation:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    .line 6
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    const/4 v1, 0x2

    .line 7
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    .line 8
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Landroid/os/Looper;)V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;

    .line 9
    new-instance v1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterpolator:Lcom/samsung/android/view/animation/SineOut33;

    const/4 v1, 0x0

    .line 10
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 11
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 12
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 14
    iput-object v8, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    move/from16 v0, p9

    .line 15
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    const-string/jumbo v0, "wallpaper"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const-string/jumbo v0, "sensor"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    .line 18
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    .line 19
    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    move-object v0, p6

    .line 24
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 25
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    move-object v0, p3

    .line 26
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    .line 1
    const-string v0, "KeyguardMotionWallpaper"

    .line 2
    .line 3
    const-string v1, "cleanUp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->clearData(Ljava/util/ArrayList;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->clearData(Ljava/util/ArrayList;Z)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 21
    .line 22
    return-void
.end method

.method public final clearData(Ljava/util/ArrayList;Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "(Preview)"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, ""

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "clearData: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "KeyguardMotionWallpaper"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    iput-boolean v2, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    iget-object v4, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :goto_2
    move v5, v3

    .line 72
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 83
    .line 84
    iget-object v6, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 85
    .line 86
    iget-object v5, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 87
    .line 88
    if-eq v6, v5, :cond_2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v5, v2

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    move v3, v5

    .line 94
    :cond_4
    if-eqz v3, :cond_1

    .line 95
    .line 96
    iget-object v2, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 97
    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_1

    .line 105
    .line 106
    iget-object v2, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    iput-object v2, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const-string v0, "getWallpaperBitmap() hw accelerated: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "KeyguardMotionWallpaper"

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
    move-result-object v1

    .line 39
    new-instance v0, Landroid/graphics/Canvas;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public final init()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 2
    .line 3
    const-string v1, "(Preview)"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    const-string v3, "init()"

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "KeyguardMotionWallpaper"

    .line 19
    .line 20
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v1, v2

    .line 33
    :goto_1
    const-string p0, "mMotionBitmapList == null || mMotionBitmapList.size() == 0"

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 58
    .line 59
    iget-boolean v4, v4, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-object v1, v2

    .line 69
    :goto_2
    const-string p0, "bitmapLoaded == false"

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-static {v0, p0, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastWidth:I

    .line 93
    .line 94
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastHeight:I

    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    .line 102
    .line 103
    sub-int/2addr v0, v4

    .line 104
    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    .line 105
    .line 106
    sub-int/2addr v0, v4

    .line 107
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewWidth:I

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    .line 114
    .line 115
    sub-int/2addr v0, v4

    .line 116
    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    .line 117
    .line 118
    sub-int/2addr v0, v4

    .line 119
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewHeight:I

    .line 120
    .line 121
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewWidth:I

    .line 122
    .line 123
    if-eqz v4, :cond_10

    .line 124
    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    goto/16 :goto_8

    .line 128
    .line 129
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    mul-int/lit8 v0, v0, 0x1e

    .line 136
    .line 137
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 145
    .line 146
    if-eqz v4, :cond_8

    .line 147
    .line 148
    move-object v4, v1

    .line 149
    goto :goto_3

    .line 150
    :cond_8
    move-object v4, v2

    .line 151
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v4, "mRangeOfRotation = "

    .line 155
    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 160
    .line 161
    invoke-static {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 166
    .line 167
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 168
    .line 169
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 170
    .line 171
    const-wide/16 v4, 0x0

    .line 172
    .line 173
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mTimestamp:J

    .line 174
    .line 175
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_d

    .line 186
    .line 187
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 192
    .line 193
    iget-object v6, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 194
    .line 195
    if-eqz v6, :cond_b

    .line 196
    .line 197
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_9

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_9
    iget-object v6, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 205
    .line 206
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    iget-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 211
    .line 212
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    iget v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewHeight:I

    .line 217
    .line 218
    mul-int v9, v6, v8

    .line 219
    .line 220
    iget v10, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewWidth:I

    .line 221
    .line 222
    mul-int v11, v10, v7

    .line 223
    .line 224
    if-le v9, v11, :cond_a

    .line 225
    .line 226
    int-to-float v9, v8

    .line 227
    int-to-float v11, v7

    .line 228
    goto :goto_5

    .line 229
    :cond_a
    int-to-float v9, v10

    .line 230
    int-to-float v11, v6

    .line 231
    :goto_5
    div-float/2addr v9, v11

    .line 232
    const/high16 v11, 0x3f800000    # 1.0f

    .line 233
    .line 234
    mul-float/2addr v9, v11

    .line 235
    int-to-float v10, v10

    .line 236
    int-to-float v6, v6

    .line 237
    mul-float/2addr v6, v9

    .line 238
    sub-float/2addr v10, v6

    .line 239
    const/high16 v6, 0x3f000000    # 0.5f

    .line 240
    .line 241
    mul-float/2addr v10, v6

    .line 242
    int-to-float v8, v8

    .line 243
    int-to-float v7, v7

    .line 244
    mul-float/2addr v7, v9

    .line 245
    sub-float/2addr v8, v7

    .line 246
    mul-float/2addr v8, v6

    .line 247
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    iget-object v8, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    .line 256
    .line 257
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 258
    .line 259
    .line 260
    iget-object v8, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    .line 261
    .line 262
    int-to-float v6, v6

    .line 263
    int-to-float v7, v7

    .line 264
    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 265
    .line 266
    .line 267
    const/4 v6, 0x0

    .line 268
    iput-boolean v6, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 269
    .line 270
    invoke-virtual {v5, v0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_b
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 275
    .line 276
    if-eqz v0, :cond_c

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_c
    move-object v1, v2

    .line 280
    :goto_7
    const-string v0, "bitmap is wrong."

    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 293
    .line 294
    if-eqz v0, :cond_f

    .line 295
    .line 296
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 297
    .line 298
    if-eqz v1, :cond_e

    .line 299
    .line 300
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDrawFinished()V

    .line 301
    .line 302
    .line 303
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 304
    .line 305
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 306
    .line 307
    .line 308
    :cond_f
    return-void

    .line 309
    :cond_10
    :goto_8
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 310
    .line 311
    if-eqz p0, :cond_11

    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_11
    move-object v1, v2

    .line 315
    :goto_9
    const-string p0, "mViewWidth == 0 || mViewHeight == 0"

    .line 316
    .line 317
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBackDropLayoutChange()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "onConfigurationChanged: prev = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRotation:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", new = "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "KeyguardMotionWallpaper"

    .line 36
    .line 37
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRotation:I

    .line 41
    .line 42
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onConfigurationChanged: prev = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", new = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ", isSub:"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "KeyguardMotionWallpaper"

    .line 43
    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 2
    .line 3
    const-string v1, "(Preview)"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    const-string v3, "onDraw()"

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "KeyguardMotionWallpaper"

    .line 19
    .line 20
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_c

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v4, 0x0

    .line 42
    move v5, v4

    .line 43
    :goto_1
    if-ge v5, v0, :cond_4

    .line 44
    .line 45
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 52
    .line 53
    iget-boolean v6, v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    .line 54
    .line 55
    if-nez v6, :cond_3

    .line 56
    .line 57
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move-object v1, v2

    .line 63
    :goto_2
    const-string p0, "bitmapLoaded == false"

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    move v2, v0

    .line 81
    move v1, v4

    .line 82
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const-string v6, ", alpha = "

    .line 89
    .line 90
    if-ge v1, v5, :cond_7

    .line 91
    .line 92
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 99
    .line 100
    iget-boolean v5, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 101
    .line 102
    if-eqz v5, :cond_6

    .line 103
    .line 104
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 113
    .line 114
    iget v7, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 115
    .line 116
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    .line 118
    .line 119
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 126
    .line 127
    iget-object v5, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 128
    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_5

    .line 136
    .line 137
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    check-cast v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 144
    .line 145
    iget-object v7, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    .line 146
    .line 147
    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 148
    .line 149
    invoke-virtual {p1, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    const-string v2, "onDraw: recycled bitmap1"

    .line 154
    .line 155
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move v2, v4

    .line 159
    :goto_4
    const-string v5, "drawBackground!!!! ===> "

    .line 160
    .line 161
    invoke-static {v5, v1, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 172
    .line 173
    iget v6, v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 174
    .line 175
    invoke-static {v5, v6, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    move v1, v4

    .line 182
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-ge v1, v5, :cond_a

    .line 189
    .line 190
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 197
    .line 198
    iget v5, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 199
    .line 200
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 207
    .line 208
    iget-boolean v7, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 209
    .line 210
    if-nez v7, :cond_9

    .line 211
    .line 212
    if-eqz v5, :cond_9

    .line 213
    .line 214
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 215
    .line 216
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    .line 218
    .line 219
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 226
    .line 227
    iget-object v5, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 228
    .line 229
    if-eqz v5, :cond_8

    .line 230
    .line 231
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-nez v7, :cond_8

    .line 236
    .line 237
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    check-cast v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 244
    .line 245
    iget-object v7, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    .line 246
    .line 247
    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 248
    .line 249
    invoke-virtual {p1, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_8
    const-string v2, "onDraw: recycled bitmap2"

    .line 254
    .line 255
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move v2, v4

    .line 259
    :goto_6
    const-string v5, "drawForeground!!!! ===> "

    .line 260
    .line 261
    invoke-static {v5, v1, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    check-cast v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 272
    .line 273
    iget v7, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 274
    .line 275
    invoke-static {v5, v7, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_a
    if-eqz v2, :cond_b

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_b
    const/4 v0, 0x2

    .line 285
    :goto_7
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_c
    :goto_8
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 292
    .line 293
    if-eqz p0, :cond_d

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_d
    move-object v1, v2

    .line 297
    :goto_9
    const-string p0, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    .line 298
    .line 299
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->registerSensor()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    sub-int v0, p4, p2

    .line 5
    .line 6
    sub-int v1, p5, p3

    .line 7
    .line 8
    const-string v2, "onLayout called : "

    .line 9
    .line 10
    const-string v3, " , "

    .line 11
    .line 12
    invoke-static {v2, p2, v3, p3, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p3, "KeyguardMotionWallpaper"

    .line 17
    .line 18
    invoke-static {p2, p4, v3, p5, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, p0, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastWidth:I

    .line 38
    .line 39
    if-ne p1, v0, :cond_0

    .line 40
    .line 41
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastHeight:I

    .line 42
    .line 43
    if-eq p1, v1, :cond_1

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    .line 46
    .line 47
    .line 48
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastWidth:I

    .line 49
    .line 50
    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastHeight:I

    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "(Preview)"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :goto_0
    const-string v1, "onPause()"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "KeyguardMotionWallpaper"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 3
    .line 4
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "(Preview)"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, ""

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "onResume, mDrawingState:"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", this = "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    .line 39
    .line 40
    const-string v3, " , current = "

    .line 41
    .line 42
    const-string v4, "KeyguardMotionWallpaper"

    .line 43
    .line 44
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    .line 56
    .line 57
    if-ne v1, v0, :cond_2

    .line 58
    .line 59
    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    if-eq v0, v1, :cond_1

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-eq v0, v1, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    :cond_1
    const-string v0, "onResume, reload"

    .line 78
    .line 79
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->updateWallpaper()V

    .line 86
    .line 87
    .line 88
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 108
    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->registerSensor()V

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onSensorChanged: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " , mTimestamp = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mTimestamp:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " , timestamp = "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "KeyguardMotionWallpaper"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const v2, 0x1002b

    .line 53
    .line 54
    .line 55
    if-eq v0, v2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mTimestamp:J

    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    cmp-long v0, v2, v4

    .line 64
    .line 65
    if-eqz v0, :cond_b

    .line 66
    .line 67
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    aget v3, v0, v2

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    aget v5, v0, v4

    .line 74
    .line 75
    const/4 v6, 0x2

    .line 76
    aget v0, v0, v6

    .line 77
    .line 78
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 79
    .line 80
    iget v7, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 81
    .line 82
    if-eq v7, v4, :cond_2

    .line 83
    .line 84
    const/4 v8, 0x3

    .line 85
    if-eq v7, v8, :cond_2

    .line 86
    .line 87
    iget v7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 88
    .line 89
    if-ne v7, v6, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move v7, v2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    move v7, v4

    .line 95
    :goto_1
    if-nez v7, :cond_4

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    cmpl-float v8, v8, v9

    .line 106
    .line 107
    if-gtz v8, :cond_3

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    cmpl-float v8, v8, v9

    .line 118
    .line 119
    if-lez v8, :cond_4

    .line 120
    .line 121
    :cond_3
    const-string p0, "axisY is not biggest, stop animation"

    .line 122
    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    if-eqz v7, :cond_6

    .line 128
    .line 129
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    cmpl-float v8, v8, v9

    .line 138
    .line 139
    if-gtz v8, :cond_5

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    cmpl-float v8, v8, v9

    .line 150
    .line 151
    if-lez v8, :cond_6

    .line 152
    .line 153
    :cond_5
    const-string p0, "axisX is not biggest, stop animation"

    .line 154
    .line 155
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_6
    iget v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 160
    .line 161
    iput v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 162
    .line 163
    if-eqz v7, :cond_7

    .line 164
    .line 165
    add-float v7, v8, v3

    .line 166
    .line 167
    iput v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    add-float v7, v8, v5

    .line 171
    .line 172
    iput v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 173
    .line 174
    :goto_2
    iget v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 175
    .line 176
    sub-float/2addr v7, v8

    .line 177
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    iput v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 182
    .line 183
    const-string v7, "axisX: "

    .line 184
    .line 185
    const-string v8, ", axisY: "

    .line 186
    .line 187
    const-string v9, ", axisZ: "

    .line 188
    .line 189
    invoke-static {v7, v3, v8, v5, v9}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v3, "mAngularSum: "

    .line 206
    .line 207
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v3, ", mDeltaOfAngularSum: "

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 221
    .line 222
    invoke-static {v0, v3, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-array v0, v6, [F

    .line 226
    .line 227
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 228
    .line 229
    aput v3, v0, v2

    .line 230
    .line 231
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 232
    .line 233
    aput v3, v0, v4

    .line 234
    .line 235
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-ge v2, v3, :cond_b

    .line 242
    .line 243
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 250
    .line 251
    iget v5, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 252
    .line 253
    iput v5, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    .line 254
    .line 255
    iget v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 256
    .line 257
    iget v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 258
    .line 259
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 260
    .line 261
    .line 262
    iget v5, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    .line 263
    .line 264
    iget v3, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 265
    .line 266
    if-eq v5, v3, :cond_a

    .line 267
    .line 268
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 269
    .line 270
    const/high16 v5, 0x40400000    # 3.0f

    .line 271
    .line 272
    cmpg-float v3, v3, v5

    .line 273
    .line 274
    if-gez v3, :cond_9

    .line 275
    .line 276
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 277
    .line 278
    if-eqz v3, :cond_8

    .line 279
    .line 280
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_a

    .line 285
    .line 286
    const-string v3, "mAlphaAnimator isRunning"

    .line 287
    .line 288
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;

    .line 292
    .line 293
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;

    .line 306
    .line 307
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    .line 313
    .line 314
    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_b
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 318
    .line 319
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mTimestamp:J

    .line 320
    .line 321
    :goto_5
    return-void
.end method

.method public final onUnlock()V
    .locals 2

    .line 1
    const-string v0, "KeyguardMotionWallpaper"

    .line 2
    .line 3
    const-string v1, "onUnlock()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_6

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const-string v4, "layer"

    .line 14
    .line 15
    if-eq v0, v3, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    if-eqz v2, :cond_5

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    .line 54
    .line 55
    .line 56
    move-object v2, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz v2, :cond_5

    .line 59
    .line 60
    const-string/jumbo v3, "type"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, v2, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->type:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-string v3, "id_path_image"

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, v2, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    move-object v1, v0

    .line 104
    :cond_5
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    return-object v1
.end method

.method public final registerSensor()V
    .locals 3

    .line 1
    const-string v0, "KeyguardMotionWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "registerSensor"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 15
    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 18
    .line 19
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const-string v0, "KeyguardMotionWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "reset()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->registerSensor()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final startAlphaAnimator(FFZ)V
    .locals 3

    .line 1
    const-string v0, "KeyguardMotionWallpaper"

    .line 2
    .line 3
    const-string v1, "mAlphaAnimator starts"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "prevAngularSum = "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " curAngularSum = "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    .line 37
    .line 38
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 39
    .line 40
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 44
    .line 45
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    .line 46
    .line 47
    :goto_0
    const/4 p1, 0x2

    .line 48
    new-array p1, p1, [F

    .line 49
    .line 50
    fill-array-data p1, :array_0

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    .line 60
    .line 61
    sub-float p1, p2, p1

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/high16 p3, 0x41800000    # 16.0f

    .line 68
    .line 69
    mul-float/2addr p1, p3

    .line 70
    float-to-int p1, p1

    .line 71
    iget-object p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    int-to-long v0, p1

    .line 74
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    iget-object p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterpolator:Lcom/samsung/android/view/animation/SineOut33;

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    new-instance p3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;

    .line 87
    .line 88
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    new-instance p2, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$4;

    .line 97
    .line 98
    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$4;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final unregisterSensor()V
    .locals 2

    .line 1
    const-string v0, "KeyguardMotionWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "unregisterSensor"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 16
    .line 17
    return-void
.end method

.method public final update()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "(Preview)"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    const-string v4, "KeyguardMotionWallpaper"

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v2, v3

    .line 43
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v2, "update() prev = "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ", new = "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->updateWallpaper()V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move-object v2, v3

    .line 82
    :goto_2
    const-string/jumbo v0, "same pkg, do not update() "

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 93
    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_3
    return-void
.end method

.method public final updateWallpaper()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 2
    .line 3
    const-string v1, "(Preview)"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "KeyguardMotionWallpaper"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    move-object v4, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v4, v2

    .line 29
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, " cancel loader = "

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 57
    .line 58
    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v1, v2

    .line 76
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string/jumbo v1, "updateWallpaper: start load = "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    .line 98
    .line 99
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    new-array v1, v1, [Ljava/lang/Void;

    .line 103
    .line 104
    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    .line 106
    .line 107
    return-void
.end method
