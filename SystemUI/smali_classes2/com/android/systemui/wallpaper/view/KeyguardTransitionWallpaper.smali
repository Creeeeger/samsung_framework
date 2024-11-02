.class public final Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBitmapHeight:I

.field public mBitmapWidth:I

.field public mCaptureStart:Z

.field public mCapturedBitmap:Landroid/graphics/Bitmap;

.field public mCapturedRotation:I

.field public mDrawMatrix:Landroid/graphics/Matrix;

.field public final mDrawPaint:Landroid/graphics/Paint;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public mRotation:I

.field public mTransitionAnimatorValue:I

.field public mUpdateListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

.field public final mValueAnimator:Landroid/animation/ValueAnimator;

.field public mViewHeight:I

.field public mViewWidth:I

.field public mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Lcom/android/systemui/pluginlock/PluginWallpaperManager;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;",
            "Z)V"
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p5

    .line 7
    move-object v5, p6

    .line 8
    move v6, p7

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mRotation:I

    .line 29
    .line 30
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCaptureStart:Z

    .line 31
    .line 32
    const/16 v2, 0xff

    .line 33
    .line 34
    iput v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mTransitionAnimatorValue:I

    .line 35
    .line 36
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedRotation:I

    .line 37
    .line 38
    new-instance v2, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 50
    .line 51
    .line 52
    move-object/from16 v0, p8

    .line 53
    .line 54
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 55
    .line 56
    move-object v0, p5

    .line 57
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 58
    .line 59
    move-object v0, p4

    .line 60
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 61
    .line 62
    new-array v0, v1, [F

    .line 63
    .line 64
    fill-array-data v0, :array_0

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 72
    .line 73
    const v2, 0x3ea3d70a    # 0.32f

    .line 74
    .line 75
    .line 76
    const v3, 0x3f1eb852    # 0.62f

    .line 77
    .line 78
    .line 79
    const v4, 0x3f35c28f    # 0.71f

    .line 80
    .line 81
    .line 82
    const/high16 v5, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v1, 0x1f4

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    .line 95
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$1;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 4
        0x437f0000    # 255.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    .line 1
    const-string v0, "KeyguardTransitionWallpaper"

    .line 2
    .line 3
    const-string v1, "cleanUp()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final initMatrix()Z
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "initMatrix: view width = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", view height = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " , bitmap = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " , "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "KeyguardTransitionWallpaper"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 59
    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedRotation:I

    .line 80
    .line 81
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mRotation:I

    .line 82
    .line 83
    const/high16 v4, 0x43870000    # 270.0f

    .line 84
    .line 85
    const/high16 v5, 0x42b40000    # 90.0f

    .line 86
    .line 87
    const/4 v6, 0x3

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x1

    .line 90
    const/high16 v9, 0x3f800000    # 1.0f

    .line 91
    .line 92
    if-eq v2, v3, :cond_2

    .line 93
    .line 94
    if-ne v2, v8, :cond_1

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapWidth:I

    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapHeight:I

    .line 111
    .line 112
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 113
    .line 114
    int-to-float v2, v2

    .line 115
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    int-to-float v3, v3

    .line 126
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    int-to-float v5, v5

    .line 131
    invoke-virtual {v0, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    move v2, v7

    .line 136
    :goto_0
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedRotation:I

    .line 137
    .line 138
    if-ne v3, v6, :cond_5

    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 141
    .line 142
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iput v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapWidth:I

    .line 147
    .line 148
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    iput v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapHeight:I

    .line 155
    .line 156
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 157
    .line 158
    int-to-float v3, v3

    .line 159
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 163
    .line 164
    .line 165
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    int-to-float v4, v4

    .line 170
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    int-to-float v5, v5

    .line 175
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 176
    .line 177
    .line 178
    move v7, v3

    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 182
    .line 183
    check-cast v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isCustomPackApplied()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_3

    .line 190
    .line 191
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 192
    .line 193
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapWidth:I

    .line 198
    .line 199
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 200
    .line 201
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapHeight:I

    .line 206
    .line 207
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 208
    .line 209
    int-to-float v3, v3

    .line 210
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapWidth:I

    .line 211
    .line 212
    int-to-float v4, v4

    .line 213
    div-float/2addr v3, v4

    .line 214
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 215
    .line 216
    int-to-float v4, v4

    .line 217
    int-to-float v2, v2

    .line 218
    div-float/2addr v4, v2

    .line 219
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 224
    .line 225
    int-to-float v2, v2

    .line 226
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapWidth:I

    .line 227
    .line 228
    int-to-float v3, v3

    .line 229
    mul-float/2addr v3, v9

    .line 230
    sub-float/2addr v2, v3

    .line 231
    const/high16 v3, 0x3f000000    # 0.5f

    .line 232
    .line 233
    mul-float v7, v2, v3

    .line 234
    .line 235
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 236
    .line 237
    int-to-float v2, v2

    .line 238
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mBitmapHeight:I

    .line 239
    .line 240
    int-to-float v4, v4

    .line 241
    mul-float/2addr v4, v9

    .line 242
    sub-float/2addr v2, v4

    .line 243
    mul-float/2addr v2, v3

    .line 244
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 245
    .line 246
    .line 247
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    int-to-float v3, v3

    .line 252
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    int-to-float v4, v4

    .line 257
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_3
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mRotation:I

    .line 262
    .line 263
    if-ne v2, v8, :cond_4

    .line 264
    .line 265
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 266
    .line 267
    .line 268
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 269
    .line 270
    int-to-float v2, v2

    .line 271
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 272
    .line 273
    .line 274
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    int-to-float v3, v3

    .line 279
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    int-to-float v4, v4

    .line 284
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_4
    if-ne v2, v6, :cond_6

    .line 289
    .line 290
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 291
    .line 292
    .line 293
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 294
    .line 295
    int-to-float v2, v2

    .line 296
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 297
    .line 298
    .line 299
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    int-to-float v3, v3

    .line 304
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    int-to-float v4, v4

    .line 309
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 310
    .line 311
    .line 312
    :cond_5
    :goto_1
    move v10, v7

    .line 313
    move v7, v2

    .line 314
    move v2, v10

    .line 315
    goto :goto_2

    .line 316
    :cond_6
    move v2, v7

    .line 317
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 318
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v3, "initMatrix : bmpW="

    .line 322
    .line 323
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 327
    .line 328
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v3, ", bmpH="

    .line 336
    .line 337
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 341
    .line 342
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v3, ", mViewWidth="

    .line 350
    .line 351
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 355
    .line 356
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v3, ", mViewHeight="

    .line 360
    .line 361
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 365
    .line 366
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v3, ", scale="

    .line 370
    .line 371
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v3, ", dx="

    .line 378
    .line 379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v3, ", dy="

    .line 386
    .line 387
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v2, ", mCapturedRotation="

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedRotation:I

    .line 399
    .line 400
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v2, ", mRotation="

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mRotation:I

    .line 409
    .line 410
    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    return v8

    .line 414
    :cond_7
    :goto_3
    const/4 p0, 0x0

    .line 415
    return p0
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
    const-string v0, "KeyguardTransitionWallpaper"

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
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mRotation:I

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mTransitionAnimatorValue:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onLayout(ZIIII)V
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
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mRotation:I

    .line 12
    .line 13
    const-string v0, "onLayout: changed = "

    .line 14
    .line 15
    const-string v1, ", left = "

    .line 16
    .line 17
    const-string v2, ", top = "

    .line 18
    .line 19
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, ", right = "

    .line 24
    .line 25
    const-string v1, ", bottom = "

    .line 26
    .line 27
    invoke-static {p1, p3, v0, p4, v1}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "KeyguardTransitionWallpaper"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    sub-int/2addr p4, p2

    .line 43
    iput p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 44
    .line 45
    sub-int/2addr p5, p3

    .line 46
    iput p5, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->initMatrix()Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onUnlock()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->cleanUp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final update()V
    .locals 3

    .line 1
    const-string/jumbo v0, "update: "

    .line 2
    .line 3
    .line 4
    const-string v1, "KeyguardTransitionWallpaper"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->cleanUp()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v2, "updateView: bitmap = "

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " , w = "

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewWidth:I

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " , h = "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mViewHeight:I

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " , mCaptureStart = "

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCaptureStart:Z

    .line 63
    .line 64
    invoke-static {v0, v2, v1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCaptureStart:Z

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 72
    .line 73
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method

.method public final updateBitmap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "KeyguardTransitionWallpaper"

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCaptureStart:Z

    .line 9
    .line 10
    const-string/jumbo v0, "updateBitmap: mWallpaperView is not set."

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mUpdateListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string/jumbo v0, "updateBitmap: onDrawCompleted."

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mUpdateListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->onDrawCompleted()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 32
    .line 33
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onWallpaperConsumed(IZ)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    instance-of v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const-string/jumbo v0, "updateBitmap: VIDEO"

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedRotation:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string/jumbo v0, "updateBitmap: IMAGE for now"

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mRotation:I

    .line 63
    .line 64
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedRotation:I

    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;

    .line 75
    .line 76
    const/16 v1, 0x3e8

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method
