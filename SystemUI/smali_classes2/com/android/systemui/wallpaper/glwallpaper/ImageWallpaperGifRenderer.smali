.class public final Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBoundRect:Landroid/graphics/Rect;

.field public final mCenterCropOffset:Landroid/graphics/PointF;

.field public mCenterCropScale:F

.field public final mContext:Landroid/content/Context;

.field public mIsFinishedPlayGif:Z

.field public mIsPaused:Z

.field public mMovie:Landroid/graphics/Movie;

.field public final mMoviePaint:Landroid/graphics/Paint;

.field public final mOnDrawHandler:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;

.field public mPausedMovieTime:J

.field public mPlayedMovieIndex:I

.field public mStartedMovieTime:J

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMoviePaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsPaused:Z

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/PointF;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropOffset:Landroid/graphics/PointF;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    new-instance p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mOnDrawHandler:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final adjustCenterCropScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropOffset:Landroid/graphics/PointF;

    .line 2
    .line 3
    const-string v1, "ImageWallpaperGifRenderer"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-float v2, v2

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    int-to-float v3, v3

    .line 17
    div-float/2addr v2, v3

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    div-float/2addr v3, v4

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iput v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-float v4, v4

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    int-to-float v5, v5

    .line 45
    iget v6, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 46
    .line 47
    mul-float/2addr v5, v6

    .line 48
    sub-float/2addr v4, v5

    .line 49
    const/high16 v5, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v4, v5

    .line 52
    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    int-to-float p1, p1

    .line 59
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    int-to-float p2, p2

    .line 64
    iget v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 65
    .line 66
    mul-float/2addr p2, v4

    .line 67
    sub-float/2addr p1, p2

    .line 68
    div-float/2addr p1, v5

    .line 69
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 70
    .line 71
    const-string p1, "adjustScale  : "

    .line 72
    .line 73
    const-string p2, " , "

    .line 74
    .line 75
    invoke-static {p1, v2, p2, v3, p2}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget p0, v0, Landroid/graphics/PointF;->x:F

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget p0, v0, Landroid/graphics/PointF;->y:F

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_0
    const-string p1, "adjustScale : bound or movie is NULL"

    .line 109
    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    const/high16 p1, 0x3f800000    # 1.0f

    .line 114
    .line 115
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    invoke-virtual {v0, p0, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final drawGif(Landroid/view/SurfaceHolder;Z)V
    .locals 8

    .line 1
    const-string v0, "ImageWallpaperGifRenderer"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "drawGif: holder is null!"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string p0, "drawGif: mMovie is null!"

    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_a

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-gtz v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v1, 0x0

    .line 59
    :goto_0
    if-nez v1, :cond_4

    .line 60
    .line 61
    const-string p0, "drawGif: canvas is null!"

    .line 62
    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mPlayedMovieIndex:I

    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const-wide/16 v4, 0x0

    .line 76
    .line 77
    if-lt v2, v3, :cond_5

    .line 78
    .line 79
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 80
    .line 81
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    iget-wide v6, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 86
    .line 87
    cmp-long v4, v6, v4

    .line 88
    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    long-to-int v4, v2

    .line 92
    int-to-long v4, v4

    .line 93
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 94
    .line 95
    :cond_6
    iget-wide v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 96
    .line 97
    sub-long/2addr v2, v4

    .line 98
    long-to-int v2, v2

    .line 99
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-le v2, v3, :cond_7

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    .line 114
    .line 115
    if-eqz v3, :cond_8

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Landroid/graphics/Movie;->setTime(I)Z

    .line 121
    .line 122
    .line 123
    iput v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mPlayedMovieIndex:I

    .line 124
    .line 125
    const/high16 v2, -0x1000000

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 128
    .line 129
    .line 130
    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropOffset:Landroid/graphics/PointF;

    .line 139
    .line 140
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 141
    .line 142
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 143
    .line 144
    iget-object v5, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMoviePaint:Landroid/graphics/Paint;

    .line 145
    .line 146
    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception v2

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v4, "drawGif: GIF Exception "

    .line 154
    .line 155
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mOnDrawHandler:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;

    .line 173
    .line 174
    const/16 v3, 0x3e9

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    .line 178
    .line 179
    if-eqz p2, :cond_9

    .line 180
    .line 181
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mVisible:Z

    .line 182
    .line 183
    if-eqz p2, :cond_9

    .line 184
    .line 185
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    .line 186
    .line 187
    if-nez p0, :cond_9

    .line 188
    .line 189
    const-wide/16 v4, 0x32

    .line 190
    .line 191
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    .line 193
    .line 194
    :cond_9
    :try_start_1
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :catch_1
    const-string p0, "drawGif: Could not unlock surface."

    .line 199
    .line 200
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    :goto_2
    return-void

    .line 204
    :cond_a
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string p2, "drawGif :  incorrect size w = "

    .line 207
    .line 208
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/graphics/Movie;->width()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p2, " , h = "

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/graphics/Movie;->height()I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method public final setInputStreamToMovie(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    const-string v0, " movie size : w: "

    .line 2
    .line 3
    const-string v1, "ImageWallpaperGifRenderer"

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    :try_start_0
    const-string p0, " is is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    :try_start_2
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " , h: "

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/graphics/Movie;->height()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const-string p0, " movie is null"

    .line 68
    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    .line 72
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :catch_1
    move-exception p0

    .line 79
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_2
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    return-void

    .line 93
    :goto_3
    if-eqz p1, :cond_4

    .line 94
    .line 95
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :catch_3
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_4
    throw p0
.end method

.method public final setMediaPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setInputStreamToMovie(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final setThumbnail(Landroid/graphics/Bitmap;Landroid/view/SurfaceHolder;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ImageWallpaperGifRenderer"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Cannot draw onto the canvas as it\'s null"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mBoundRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v3, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->adjustCenterCropScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropScale:F

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mCenterCropOffset:Landroid/graphics/PointF;

    .line 43
    .line 44
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 45
    .line 46
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMoviePaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {v0, p1, v3, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    :try_start_1
    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_1
    const-string/jumbo p0, "setThumbnail: Could not unlock surface."

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "start, mIsPaused = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsPaused:Z

    .line 10
    .line 11
    const-string v2, "ImageWallpaperGifRenderer"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsPaused:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->drawGif(Landroid/view/SurfaceHolder;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v0, 0x3e9

    .line 34
    .line 35
    const-wide/16 v1, 0x32

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mOnDrawHandler:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "stop, mIsPaused = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsPaused:Z

    .line 10
    .line 11
    const-string v2, "ImageWallpaperGifRenderer"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    .line 18
    .line 19
    return-void
.end method

.method public final updateGif(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const-string v0, "ImageWallpaperGifRenderer"

    .line 2
    .line 3
    const-string v1, " updateGif true"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string/jumbo p0, "updateGif : movie is NULL"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mBoundRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Rect;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->adjustCenterCropScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->drawGif(Landroid/view/SurfaceHolder;Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
