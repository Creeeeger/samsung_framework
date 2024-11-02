.class public final Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public mCurrentUserId:I

.field public final mDimensions:Landroid/graphics/Rect;

.field public mDisplayId:I

.field public mIsVirtualDisplay:Z

.field public final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSubBitmap:Landroid/graphics/Bitmap;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWcgContent:Z


# direct methods
.method private constructor <init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    .line 6
    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;-><init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;)V

    return-void
.end method

.method public static getHash(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "null"

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final loadBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 3
    .line 4
    if-eqz v1, :cond_e

    .line 5
    .line 6
    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDisplayId:I

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const-string v4, "ImageWallpaperRenderer"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x9

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 18
    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 22
    .line 23
    const/16 v6, 0x11

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    if-ne v2, v5, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x5

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    if-nez p1, :cond_3

    .line 33
    .line 34
    :goto_0
    move v2, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move v2, v5

    .line 37
    :goto_1
    const-string v3, "loadBitmap: lidState = "

    .line 38
    .line 39
    const-string v6, " display id = "

    .line 40
    .line 41
    invoke-static {v3, p1, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDisplayId:I

    .line 46
    .line 47
    invoke-static {p1, v3, v4}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move p1, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_4
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mIsVirtualDisplay:Z

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    const/16 p1, 0x21

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    move p1, v5

    .line 64
    :goto_2
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    if-eqz v2, :cond_b

    .line 68
    .line 69
    and-int/lit8 v2, p1, 0x10

    .line 70
    .line 71
    const/16 v6, 0x10

    .line 72
    .line 73
    if-ne v2, v6, :cond_6

    .line 74
    .line 75
    move v2, v5

    .line 76
    goto :goto_3

    .line 77
    :cond_6
    move v2, v3

    .line 78
    :goto_3
    and-int/lit8 v6, p1, 0x20

    .line 79
    .line 80
    const/16 v7, 0x20

    .line 81
    .line 82
    if-ne v6, v7, :cond_7

    .line 83
    .line 84
    move v6, v5

    .line 85
    goto :goto_4

    .line 86
    :cond_7
    move v6, v3

    .line 87
    :goto_4
    if-nez v2, :cond_9

    .line 88
    .line 89
    if-eqz v6, :cond_8

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_8
    move v2, v3

    .line 93
    goto :goto_6

    .line 94
    :cond_9
    :goto_5
    move v2, v5

    .line 95
    :goto_6
    if-eqz v2, :cond_b

    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 98
    .line 99
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_a

    .line 106
    .line 107
    const-string p0, "loadCachedBitmapByWhich: from cover wallpaper controller"

    .line 108
    .line 109
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v5}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperBitmap(Z)Landroid/graphics/Bitmap;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    goto :goto_8

    .line 117
    :cond_a
    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    const/4 v5, 0x3

    .line 122
    if-ne v2, v5, :cond_b

    .line 123
    .line 124
    const-string p0, "loadCachedBitmapByWhich: Just return null in case of custom pack."

    .line 125
    .line 126
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto :goto_8

    .line 130
    :cond_b
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    .line 131
    .line 132
    if-eqz v0, :cond_d

    .line 133
    .line 134
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v0, "loadCachedBitmapByWhich: get cached bitmap "

    .line 143
    .line 144
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    goto :goto_7

    .line 162
    :cond_c
    const-string v0, "loadCachedBitmapByWhich: from wallpaper manager "

    .line 163
    .line 164
    invoke-static {v0, p1, v4}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCurrentUserId:I

    .line 168
    .line 169
    invoke-virtual {v1, p0, v3, p1, v3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 174
    .line 175
    .line 176
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 177
    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_d
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCurrentUserId:I

    .line 181
    .line 182
    invoke-virtual {v1, p0, v3, p1, v3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    :goto_7
    move-object v0, p0

    .line 187
    :cond_e
    :goto_8
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getHash(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getHash(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string/jumbo p0, "}"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public final use(Ljava/util/function/Consumer;)V
    .locals 7

    .line 1
    const-string v0, "Load bitmap w: "

    .line 2
    .line 3
    const-string v1, "WallpaperTexture: release 0x"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    :goto_0
    if-nez v4, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->loadBitmap(I)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iput-object v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iput-object v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    :goto_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    invoke-virtual {v3, v5}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    .line 60
    .line 61
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 64
    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    const-string v3, "ImageWallpaperRenderer"

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " , h : "

    .line 83
    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-virtual {v0, v6, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    const-string v0, "ImageWallpaperRenderer"

    .line 117
    .line 118
    const-string v3, "Can\'t get bitmap"

    .line 119
    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    .line 131
    monitor-enter p1

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_8

    .line 139
    .line 140
    if-eqz v4, :cond_8

    .line 141
    .line 142
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    .line 143
    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    const-string v2, "ImageWallpaperRenderer"

    .line 147
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 154
    .line 155
    invoke-static {v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getHash(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, " , "

    .line 163
    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getHash(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", refCount="

    .line 177
    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 192
    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    .line 197
    .line 198
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 199
    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    .line 204
    .line 205
    :cond_7
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 209
    .line 210
    :cond_8
    monitor-exit p1

    .line 211
    return-void

    .line 212
    :catchall_0
    move-exception p0

    .line 213
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    throw p0

    .line 215
    :catchall_1
    move-exception p0

    .line 216
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    throw p0
.end method
