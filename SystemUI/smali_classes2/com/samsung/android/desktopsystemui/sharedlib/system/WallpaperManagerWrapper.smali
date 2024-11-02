.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperManagerWrapper"

.field private static final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private static final mWallpaperManager:Landroid/app/WallpaperManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;


# instance fields
.field private final mCurDisplayInfo:Landroid/view/DisplayInfo;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "wallpaper"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/WallpaperManager;

    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 22
    .line 23
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "display"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    new-instance v0, Landroid/view/DisplayInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 17
    .line 18
    return-void
.end method

.method private checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplay:Landroid/view/Display;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplay:Landroid/view/Display;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mDisplay:Landroid/view/Display;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 38
    .line 39
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 40
    .line 41
    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-string v4, "checkDeviceDensity deviceHeight = "

    .line 52
    .line 53
    const-string v5, ", deviceWidth = "

    .line 54
    .line 55
    const-string v6, ", bitmapWidth = "

    .line 56
    .line 57
    invoke-static {v4, v1, v5, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, ", bitmapHeight = "

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "WallpaperManagerWrapper"

    .line 85
    .line 86
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    if-ge v0, v3, :cond_1

    .line 90
    .line 91
    if-ge v1, v2, :cond_1

    .line 92
    .line 93
    int-to-float v0, v0

    .line 94
    int-to-float v3, v3

    .line 95
    div-float/2addr v0, v3

    .line 96
    int-to-float v1, v1

    .line 97
    int-to-float v2, v2

    .line 98
    div-float/2addr v1, v2

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo v2, "resize scale down.:"

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_1
    return-object p1
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    mul-float/2addr p0, p2

    .line 7
    float-to-int p0, p0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    mul-float/2addr v0, p2

    .line 14
    float-to-int p2, v0

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method


# virtual methods
.method public getBitmapForDex()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getBitmapForDex()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getBitmapForDexLock()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_0
    return-object v1
.end method

.method public getDrawableForDexLock(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WallpaperManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
