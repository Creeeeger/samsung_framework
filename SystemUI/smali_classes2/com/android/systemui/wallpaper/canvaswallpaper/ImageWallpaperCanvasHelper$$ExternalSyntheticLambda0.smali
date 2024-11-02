.class public final synthetic Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string/jumbo v2, "reload texture failed!"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmapUpdateConsumer:Ljava/util/function/Consumer;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object v3, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    xor-int/2addr v3, v2

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget-object v3, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget v3, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    .line 46
    .line 47
    if-ltz v3, :cond_3

    .line 48
    .line 49
    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_1
    move v3, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v3, v1

    .line 56
    :goto_2
    if-eqz p1, :cond_8

    .line 57
    .line 58
    iget v4, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 59
    .line 60
    const/4 v5, 0x2

    .line 61
    if-ne v4, v5, :cond_4

    .line 62
    .line 63
    move v4, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move v4, v1

    .line 66
    :goto_3
    if-nez v4, :cond_6

    .line 67
    .line 68
    iget-boolean v4, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    .line 69
    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    move v4, v1

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    :goto_4
    move v4, v2

    .line 76
    :goto_5
    iget-object v5, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 77
    .line 78
    if-eqz v5, :cond_8

    .line 79
    .line 80
    if-nez v4, :cond_8

    .line 81
    .line 82
    invoke-virtual {v5, p1, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V

    .line 83
    .line 84
    .line 85
    new-instance p0, Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-direct {p0, v1, v1, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v5, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 101
    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    invoke-virtual {v0, v2, p0, p0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 105
    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_7
    invoke-virtual {v0, v2, p0, v1}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 112
    .line 113
    if-eqz p1, :cond_9

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_9

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    .line 123
    .line 124
    :cond_9
    return-void
.end method
