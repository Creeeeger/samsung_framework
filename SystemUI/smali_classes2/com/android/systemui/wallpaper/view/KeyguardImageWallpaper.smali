.class public final Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/tilt/Drawer;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAlphaPaint:Landroid/graphics/Paint;

.field public mBitmapHeight:I

.field public mBitmapWidth:I

.field public mCache:Landroid/graphics/Bitmap;

.field public final mColorProvider:Ljavax/inject/Provider;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mCurrentWhich:I

.field public final mDrawMatrix:Landroid/graphics/Matrix;

.field public final mDrawPaint:Landroid/graphics/Paint;

.field public final mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field public final mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field public final mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLastBottom:I

.field public mLastRight:I

.field public final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public mNeedToRedraw:Z

.field public mOldBitmap:Landroid/graphics/Bitmap;

.field public mOriginDx:I

.field public mOriginDy:I

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mShouldEnableScreenRotation:Z

.field public mSmartCroppedResult:Landroid/graphics/Rect;

.field public final mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

.field public mUpdateWallpaperSequence:I

.field public mUseCache:Z

.field public mViewHeight:I

.field public mViewWidth:I

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "IZ",
            "Lcom/android/systemui/pluginlock/PluginWallpaperManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move-object v8, p1

    .line 3
    move/from16 v9, p5

    .line 4
    .line 5
    move/from16 v10, p6

    .line 6
    .line 7
    move-object/from16 v11, p7

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object/from16 v4, p4

    .line 15
    .line 16
    move-object/from16 v5, p10

    .line 17
    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/Paint;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 48
    .line 49
    new-instance v1, Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    iput-boolean v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 57
    .line 58
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 63
    .line 64
    iput v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    .line 65
    .line 66
    iput-boolean v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 67
    .line 68
    const-string v1, "KeyguardImageWallpaper: which = "

    .line 69
    .line 70
    const-string v3, " , useCache = "

    .line 71
    .line 72
    const-string v4, "KeyguardImageWallpaper"

    .line 73
    .line 74
    invoke-static {v1, v9, v3, v10, v4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v8, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    iput v9, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v1, "wallpaper"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/app/WallpaperManager;

    .line 92
    .line 93
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iput-boolean v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    .line 100
    .line 101
    iput-boolean v10, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 102
    .line 103
    move-object/from16 v1, p11

    .line 104
    .line 105
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mColorProvider:Ljavax/inject/Provider;

    .line 106
    .line 107
    move-object/from16 v1, p8

    .line 108
    .line 109
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 110
    .line 111
    iput-object v11, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 112
    .line 113
    move-object/from16 v1, p9

    .line 114
    .line 115
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 116
    .line 117
    if-eqz v10, :cond_2

    .line 118
    .line 119
    move-object v1, v11

    .line 120
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_2

    .line 127
    .line 128
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 129
    .line 130
    if-nez v3, :cond_0

    .line 131
    .line 132
    iput-boolean v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_1

    .line 140
    .line 141
    const/4 v1, 0x1

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    move v1, v2

    .line 144
    :goto_0
    if-eqz v1, :cond_2

    .line 145
    .line 146
    iput-boolean v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 147
    .line 148
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 149
    .line 150
    invoke-direct {v1, p1, v9}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    .line 151
    .line 152
    .line 153
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 154
    .line 155
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isEnableTilt(Landroid/content/Context;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 164
    .line 165
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/Drawer;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 169
    .line 170
    :cond_3
    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    .line 173
    .line 174
    .line 175
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 176
    .line 177
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 178
    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    iget-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 182
    .line 183
    if-nez v0, :cond_4

    .line 184
    .line 185
    invoke-static/range {p5 .. p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    const-string v0, "KeyguardImageWallpaper: recycle cache"

    .line 192
    .line 193
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    invoke-static/range {p5 .. p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 197
    .line 198
    .line 199
    :cond_4
    new-instance v0, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;

    .line 200
    .line 201
    invoke-direct {v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v9}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateWallpaper(I)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    const-string v0, "KeyguardImageWallpaper"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "recycleBitmap: bmp = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    .line 32
    .line 33
    :cond_0
    monitor-exit p0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0

    .line 38
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final canRotate()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mShouldEnableScreenRotation:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move v0, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v0, v3

    .line 31
    :goto_1
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 43
    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    :cond_4
    return v1

    .line 55
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isRotationRequired()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v1, "canRotate: which = "

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " , isRotatingWallpaper = "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "KeyguardImageWallpaper"

    .line 84
    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return p0
.end method

.method public final checkPreCondition(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "KeyguardImageWallpaper"

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p0, "checkPreCondition: Cached wallpaper is null or is recycled"

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "checkPreCondition: getHeight()  = "

    .line 19
    .line 20
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {p1, p0, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const-string p0, "checkPreCondition: getHeight() is same with statusBar height."

    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_1
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 62
    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    :cond_3
    :goto_0
    const-string p0, "checkPreCondition: mViewWidth == 0 || mViewHeight == 0"

    .line 69
    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return v0
.end method

.method public final cleanUp()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 3
    .line 4
    const-string v1, "KeyguardImageWallpaper"

    .line 5
    .line 6
    const-string v2, "cleanUp()"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 26
    .line 27
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v4, "recycleCaches: WallpaperUtils.getCurrentWhich() = "

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 36
    .line 37
    invoke-static {v2, v4, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 41
    .line 42
    check-cast v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    if-ne v2, v4, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v3, 0x0

    .line 56
    :goto_0
    const-string/jumbo v2, "recycleCaches: isDlsBitmap="

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 79
    .line 80
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x3

    .line 89
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 90
    .line 91
    return-void
.end method

.method public final getIntelligentCropHints()Ljava/util/ArrayList;
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 9
    .line 10
    :goto_0
    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 18
    .line 19
    :goto_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    :goto_2
    const/4 v4, 0x0

    .line 29
    const-string v5, "KeyguardImageWallpaper"

    .line 30
    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 38
    .line 39
    check-cast v6, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 40
    .line 41
    invoke-virtual {v6, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 48
    .line 49
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperIntelligentCrop(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "getIntelligentCropHintsFromDls: from DLS."

    .line 56
    .line 57
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    sget-boolean v6, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 62
    .line 63
    const-string v7, "getIntelligentCropHintsFromDls: from FBE."

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 68
    .line 69
    iget v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 70
    .line 71
    invoke-virtual {v6, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isFbeWallpaper(I)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 84
    .line 85
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 96
    .line 97
    invoke-virtual {v6, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v6, 0x3

    .line 102
    if-ne v1, v6, :cond_5

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 105
    .line 106
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    move-object v0, v4

    .line 117
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isFbeWallpaper(I)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_7

    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 130
    .line 131
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_7

    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 140
    .line 141
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 142
    .line 143
    invoke-virtual {v0, v2, p0}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-nez p0, :cond_6

    .line 148
    .line 149
    const-string p0, "getIntelligentCropHints: extras is null."

    .line 150
    .line 151
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    return-object v4

    .line 155
    :cond_6
    const-string v0, "cropHints"

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string p0, "getIntelligentCropHints: from WMS."

    .line 162
    .line 163
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_7
    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0
.end method

.method public final getOperatorWallpaper()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v1, v2, v2}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    return-object v2
.end method

.method public final getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/graphics/Canvas;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final init(I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "KeyguardImageWallpaper"

    .line 4
    .line 5
    const-string v2, "init: dy = "

    .line 6
    .line 7
    const-string v3, "init: dx = "

    .line 8
    .line 9
    const-string v4, "init: scale = "

    .line 10
    .line 11
    const-string v5, "init: mViewHeight = "

    .line 12
    .line 13
    const-string v6, "init: mViewWidth = "

    .line 14
    .line 15
    const-string v7, "init: mBitmapHeight = "

    .line 16
    .line 17
    const-string v8, "init: mBitmapWidth = "

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    iget v10, v0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    .line 24
    .line 25
    sub-int/2addr v9, v10

    .line 26
    iget v10, v0, Landroid/widget/FrameLayout;->mPaddingRight:I

    .line 27
    .line 28
    sub-int/2addr v9, v10

    .line 29
    iput v9, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    iget v10, v0, Landroid/widget/FrameLayout;->mPaddingTop:I

    .line 36
    .line 37
    sub-int/2addr v9, v10

    .line 38
    iget v10, v0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    .line 39
    .line 40
    sub-int/2addr v9, v10

    .line 41
    iput v9, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->checkPreCondition(I)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-nez v10, :cond_0

    .line 49
    .line 50
    const-string v2, "init: Fail to check precondition"

    .line 51
    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 v2, -0x1

    .line 56
    iput v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    .line 57
    .line 58
    iput v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    iput v2, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 62
    .line 63
    return v9

    .line 64
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    iput v10, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 73
    .line 74
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    iput v10, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapHeight:I

    .line 83
    .line 84
    iget v11, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 85
    .line 86
    iget v12, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 87
    .line 88
    mul-int v13, v11, v12

    .line 89
    .line 90
    iget v14, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 91
    .line 92
    mul-int v15, v14, v10

    .line 93
    .line 94
    if-le v13, v15, :cond_1

    .line 95
    .line 96
    int-to-float v13, v12

    .line 97
    int-to-float v15, v10

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    int-to-float v13, v14

    .line 100
    int-to-float v15, v11

    .line 101
    :goto_0
    div-float/2addr v13, v15

    .line 102
    const/high16 v15, 0x3f800000    # 1.0f

    .line 103
    .line 104
    mul-float/2addr v13, v15

    .line 105
    int-to-float v14, v14

    .line 106
    int-to-float v11, v11

    .line 107
    mul-float/2addr v11, v13

    .line 108
    sub-float/2addr v14, v11

    .line 109
    const/high16 v11, 0x3f000000    # 0.5f

    .line 110
    .line 111
    mul-float/2addr v14, v11

    .line 112
    int-to-float v12, v12

    .line 113
    int-to-float v10, v10

    .line 114
    mul-float/2addr v10, v13

    .line 115
    sub-float/2addr v12, v10

    .line 116
    mul-float/2addr v12, v11

    .line 117
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    iput v10, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDx:I

    .line 122
    .line 123
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    iput v10, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDy:I

    .line 128
    .line 129
    iget-object v10, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 130
    .line 131
    invoke-virtual {v10, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 132
    .line 133
    .line 134
    iget-object v10, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 135
    .line 136
    iget v11, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDx:I

    .line 137
    .line 138
    int-to-float v11, v11

    .line 139
    iget v15, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDy:I

    .line 140
    .line 141
    int-to-float v15, v15

    .line 142
    invoke-virtual {v10, v11, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    .line 144
    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v8, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 151
    .line 152
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapHeight:I

    .line 168
    .line 169
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget v6, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 185
    .line 186
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 202
    .line 203
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    iget-object v2, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 259
    .line 260
    if-eqz v2, :cond_2

    .line 261
    .line 262
    invoke-interface {v2}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 263
    .line 264
    .line 265
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    const/4 v0, 0x1

    .line 269
    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v3, "init: which = "

    .line 274
    .line 275
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    move/from16 v3, p1

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .line 292
    .line 293
    return v9
.end method

.method public final isFbeWallpaper(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeRequired(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isRotationRequired()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "lockscreen_wallpaper_transparent"

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_1
    if-nez v0, :cond_4

    .line 31
    .line 32
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 43
    .line 44
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    move p0, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move p0, v1

    .line 55
    :goto_2
    if-eqz p0, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move v2, v1

    .line 59
    :cond_4
    :goto_3
    return v2
.end method

.method public final isSmartCropRequired()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "lockscreen_wallpaper_transparent"

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_1
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x10

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v0, 0x4

    .line 42
    :goto_2
    or-int/lit8 v0, v0, 0x2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    sget-boolean v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 47
    .line 48
    new-instance v4, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-direct {v4, v3, v0, v5}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getImageCategory()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    xor-int/2addr v0, v2

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 69
    .line 70
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isCustomPackApplied()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move v2, v1

    .line 80
    :cond_5
    :goto_3
    return v2
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onAttachedToWindow: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "KeyguardImageWallpaper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Z)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onBackDropLayoutChange()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "KeyguardImageWallpaper"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "onBackDropLayoutChange: Rotation of lockscreen wallpaper is not allowed."

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 26
    .line 27
    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 28
    .line 29
    const-string v3, "onBackDropLayoutChange: prevRotation = "

    .line 30
    .line 31
    const-string v4, ", curRotation = "

    .line 32
    .line 33
    invoke-static {v3, v0, v4, v2, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eq v0, v2, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateRotationState()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateRotationState()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onDetachedFromWindow: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "KeyguardImageWallpaper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 18
    .line 19
    :goto_0
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "KeyguardImageWallpaper"

    .line 25
    .line 26
    if-eqz v4, :cond_23

    .line 27
    .line 28
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 33
    .line 34
    if-eqz v7, :cond_22

    .line 35
    .line 36
    iget v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapHeight:I

    .line 37
    .line 38
    if-nez v7, :cond_1

    .line 39
    .line 40
    goto/16 :goto_15

    .line 41
    .line 42
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    .line 44
    .line 45
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 46
    .line 47
    iget v7, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 48
    .line 49
    const/4 v8, 0x3

    .line 50
    const/4 v9, 0x1

    .line 51
    if-eq v7, v9, :cond_3

    .line 52
    .line 53
    if-eq v7, v8, :cond_3

    .line 54
    .line 55
    iget v7, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 56
    .line 57
    if-ne v7, v5, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v5, v3

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    move v5, v9

    .line 63
    :goto_2
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    if-eqz v7, :cond_c

    .line 67
    .line 68
    iget-boolean v11, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 69
    .line 70
    if-eqz v11, :cond_c

    .line 71
    .line 72
    iget-object v11, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    iget-object v12, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {v12, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    .line 78
    .line 79
    iget-boolean v12, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 80
    .line 81
    if-eqz v12, :cond_a

    .line 82
    .line 83
    if-eqz v11, :cond_6

    .line 84
    .line 85
    iget-boolean v12, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    .line 86
    .line 87
    iget-object v14, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 88
    .line 89
    if-eqz v12, :cond_5

    .line 90
    .line 91
    iget-object v12, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 92
    .line 93
    invoke-virtual {v12}, Landroid/graphics/ColorMatrix;->reset()V

    .line 94
    .line 95
    .line 96
    iget-object v12, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 97
    .line 98
    iget-object v15, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 99
    .line 100
    iget v15, v15, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 101
    .line 102
    invoke-virtual {v12, v15}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 103
    .line 104
    .line 105
    iget-object v12, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 106
    .line 107
    iget v12, v12, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 108
    .line 109
    const/high16 v15, -0x3ccc0000    # -180.0f

    .line 110
    .line 111
    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    const/high16 v15, 0x43340000    # 180.0f

    .line 116
    .line 117
    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    div-float/2addr v12, v15

    .line 122
    const v15, 0x40490fdb    # (float)Math.PI

    .line 123
    .line 124
    .line 125
    mul-float/2addr v12, v15

    .line 126
    cmpl-float v15, v12, v10

    .line 127
    .line 128
    if-eqz v15, :cond_4

    .line 129
    .line 130
    move-object/from16 v16, v14

    .line 131
    .line 132
    float-to-double v13, v12

    .line 133
    move-object/from16 v17, v11

    .line 134
    .line 135
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v10

    .line 139
    double-to-float v10, v10

    .line 140
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 141
    .line 142
    .line 143
    move-result-wide v13

    .line 144
    double-to-float v11, v13

    .line 145
    const/16 v13, 0x19

    .line 146
    .line 147
    new-array v13, v13, [F

    .line 148
    .line 149
    const v14, 0x3f4978d5    # 0.787f

    .line 150
    .line 151
    .line 152
    mul-float/2addr v14, v10

    .line 153
    const v18, 0x3e5a1cac    # 0.213f

    .line 154
    .line 155
    .line 156
    add-float v14, v14, v18

    .line 157
    .line 158
    const v19, -0x41a5e354    # -0.213f

    .line 159
    .line 160
    .line 161
    mul-float v20, v11, v19

    .line 162
    .line 163
    add-float v20, v20, v14

    .line 164
    .line 165
    aput v20, v13, v3

    .line 166
    .line 167
    const v14, -0x40c8f5c3    # -0.715f

    .line 168
    .line 169
    .line 170
    mul-float v20, v10, v14

    .line 171
    .line 172
    const v21, 0x3f370a3d    # 0.715f

    .line 173
    .line 174
    .line 175
    add-float v20, v20, v21

    .line 176
    .line 177
    mul-float/2addr v14, v11

    .line 178
    add-float v14, v14, v20

    .line 179
    .line 180
    aput v14, v13, v9

    .line 181
    .line 182
    const v14, -0x426c8b44    # -0.072f

    .line 183
    .line 184
    .line 185
    mul-float/2addr v14, v10

    .line 186
    const v22, 0x3d9374bc    # 0.072f

    .line 187
    .line 188
    .line 189
    add-float v14, v14, v22

    .line 190
    .line 191
    const v23, 0x3f6d9168    # 0.928f

    .line 192
    .line 193
    .line 194
    mul-float v24, v11, v23

    .line 195
    .line 196
    add-float v24, v24, v14

    .line 197
    .line 198
    const/16 v25, 0x2

    .line 199
    .line 200
    aput v24, v13, v25

    .line 201
    .line 202
    const/4 v12, 0x0

    .line 203
    aput v12, v13, v8

    .line 204
    .line 205
    const/16 v24, 0x4

    .line 206
    .line 207
    aput v12, v13, v24

    .line 208
    .line 209
    mul-float v19, v19, v10

    .line 210
    .line 211
    add-float v19, v19, v18

    .line 212
    .line 213
    const v18, 0x3e126e98    # 0.143f

    .line 214
    .line 215
    .line 216
    mul-float v18, v18, v11

    .line 217
    .line 218
    add-float v18, v18, v19

    .line 219
    .line 220
    const/16 v25, 0x5

    .line 221
    .line 222
    aput v18, v13, v25

    .line 223
    .line 224
    const v18, 0x3e91eb86    # 0.28500003f

    .line 225
    .line 226
    .line 227
    mul-float v18, v18, v10

    .line 228
    .line 229
    add-float v18, v18, v21

    .line 230
    .line 231
    const v25, 0x3e0f5c29    # 0.14f

    .line 232
    .line 233
    .line 234
    mul-float v25, v25, v11

    .line 235
    .line 236
    add-float v25, v25, v18

    .line 237
    .line 238
    const/16 v18, 0x6

    .line 239
    .line 240
    aput v25, v13, v18

    .line 241
    .line 242
    const v18, -0x416f1aa0    # -0.283f

    .line 243
    .line 244
    .line 245
    mul-float v18, v18, v11

    .line 246
    .line 247
    add-float v18, v18, v14

    .line 248
    .line 249
    const/4 v14, 0x7

    .line 250
    aput v18, v13, v14

    .line 251
    .line 252
    const/16 v14, 0x8

    .line 253
    .line 254
    const/4 v12, 0x0

    .line 255
    aput v12, v13, v14

    .line 256
    .line 257
    const/16 v14, 0x9

    .line 258
    .line 259
    aput v12, v13, v14

    .line 260
    .line 261
    const v14, -0x40b6872b    # -0.787f

    .line 262
    .line 263
    .line 264
    mul-float/2addr v14, v11

    .line 265
    add-float v14, v14, v19

    .line 266
    .line 267
    const/16 v18, 0xa

    .line 268
    .line 269
    aput v14, v13, v18

    .line 270
    .line 271
    mul-float v21, v21, v11

    .line 272
    .line 273
    add-float v21, v21, v20

    .line 274
    .line 275
    const/16 v14, 0xb

    .line 276
    .line 277
    aput v21, v13, v14

    .line 278
    .line 279
    mul-float v10, v10, v23

    .line 280
    .line 281
    add-float v10, v10, v22

    .line 282
    .line 283
    mul-float v11, v11, v22

    .line 284
    .line 285
    add-float/2addr v11, v10

    .line 286
    const/16 v10, 0xc

    .line 287
    .line 288
    aput v11, v13, v10

    .line 289
    .line 290
    const/16 v10, 0xd

    .line 291
    .line 292
    const/4 v11, 0x0

    .line 293
    aput v11, v13, v10

    .line 294
    .line 295
    const/16 v10, 0xe

    .line 296
    .line 297
    aput v11, v13, v10

    .line 298
    .line 299
    const/16 v10, 0xf

    .line 300
    .line 301
    aput v11, v13, v10

    .line 302
    .line 303
    const/16 v10, 0x10

    .line 304
    .line 305
    aput v11, v13, v10

    .line 306
    .line 307
    const/16 v12, 0x11

    .line 308
    .line 309
    aput v11, v13, v12

    .line 310
    .line 311
    const/16 v12, 0x12

    .line 312
    .line 313
    const/high16 v14, 0x3f800000    # 1.0f

    .line 314
    .line 315
    aput v14, v13, v12

    .line 316
    .line 317
    const/16 v12, 0x13

    .line 318
    .line 319
    aput v11, v13, v12

    .line 320
    .line 321
    const/16 v12, 0x14

    .line 322
    .line 323
    aput v11, v13, v12

    .line 324
    .line 325
    const/16 v12, 0x15

    .line 326
    .line 327
    aput v11, v13, v12

    .line 328
    .line 329
    const/16 v12, 0x16

    .line 330
    .line 331
    aput v11, v13, v12

    .line 332
    .line 333
    const/16 v12, 0x17

    .line 334
    .line 335
    aput v11, v13, v12

    .line 336
    .line 337
    const/16 v11, 0x18

    .line 338
    .line 339
    aput v14, v13, v11

    .line 340
    .line 341
    iget-object v11, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 342
    .line 343
    new-instance v14, Landroid/graphics/ColorMatrix;

    .line 344
    .line 345
    invoke-direct {v14, v13}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11, v14}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 349
    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_4
    move-object/from16 v17, v11

    .line 353
    .line 354
    move-object/from16 v16, v14

    .line 355
    .line 356
    const/16 v10, 0x10

    .line 357
    .line 358
    const/16 v24, 0x4

    .line 359
    .line 360
    :goto_3
    new-instance v11, Landroid/graphics/ColorMatrixColorFilter;

    .line 361
    .line 362
    iget-object v13, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 363
    .line 364
    invoke-direct {v11, v13}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 365
    .line 366
    .line 367
    iput-object v11, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 368
    .line 369
    iget-object v13, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    .line 370
    .line 371
    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 372
    .line 373
    .line 374
    iget-object v11, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    .line 375
    .line 376
    move-object/from16 v13, v16

    .line 377
    .line 378
    iget v14, v13, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 379
    .line 380
    const/high16 v15, 0x437f0000    # 255.0f

    .line 381
    .line 382
    mul-float/2addr v14, v15

    .line 383
    float-to-int v14, v14

    .line 384
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_5
    move-object/from16 v17, v11

    .line 389
    .line 390
    move-object v13, v14

    .line 391
    const/high16 v15, 0x437f0000    # 255.0f

    .line 392
    .line 393
    const/16 v10, 0x10

    .line 394
    .line 395
    const/16 v24, 0x4

    .line 396
    .line 397
    :goto_4
    iget-object v11, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 398
    .line 399
    move-object/from16 v14, v17

    .line 400
    .line 401
    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 402
    .line 403
    .line 404
    iget v11, v13, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 405
    .line 406
    mul-float/2addr v11, v15

    .line 407
    float-to-int v11, v11

    .line 408
    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 409
    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_6
    const/16 v10, 0x10

    .line 413
    .line 414
    const/16 v24, 0x4

    .line 415
    .line 416
    :goto_5
    iget-object v11, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 417
    .line 418
    iget v11, v11, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 419
    .line 420
    const/4 v12, 0x0

    .line 421
    cmpl-float v13, v12, v11

    .line 422
    .line 423
    if-eqz v13, :cond_9

    .line 424
    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 430
    .line 431
    .line 432
    move-result v14

    .line 433
    div-int/lit8 v15, v13, 0x2

    .line 434
    .line 435
    div-int/lit8 v9, v14, 0x2

    .line 436
    .line 437
    int-to-float v15, v15

    .line 438
    int-to-float v9, v9

    .line 439
    invoke-virtual {v1, v11, v11, v15, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 440
    .line 441
    .line 442
    if-ge v13, v14, :cond_7

    .line 443
    .line 444
    const/4 v9, 0x1

    .line 445
    goto :goto_6

    .line 446
    :cond_7
    move v9, v3

    .line 447
    :goto_6
    sub-int v15, v13, v14

    .line 448
    .line 449
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 450
    .line 451
    .line 452
    move-result v15

    .line 453
    int-to-float v15, v15

    .line 454
    const/high16 v16, 0x40000000    # 2.0f

    .line 455
    .line 456
    div-float v15, v15, v16

    .line 457
    .line 458
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 459
    .line 460
    .line 461
    move-result v13

    .line 462
    int-to-float v13, v13

    .line 463
    const v14, 0x3d4ccccd    # 0.05f

    .line 464
    .line 465
    .line 466
    mul-float/2addr v13, v14

    .line 467
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    iget-object v14, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 472
    .line 473
    iget v14, v14, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 474
    .line 475
    mul-float/2addr v13, v14

    .line 476
    neg-float v13, v13

    .line 477
    div-float/2addr v13, v11

    .line 478
    if-eqz v9, :cond_8

    .line 479
    .line 480
    const/4 v9, 0x0

    .line 481
    invoke-virtual {v1, v13, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_8
    const/4 v9, 0x0

    .line 486
    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    .line 488
    .line 489
    :cond_9
    :goto_7
    iget-boolean v9, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 490
    .line 491
    if-eqz v9, :cond_b

    .line 492
    .line 493
    iget-object v7, v7, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

    .line 494
    .line 495
    invoke-virtual {v7, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    if-eqz v9, :cond_b

    .line 500
    .line 501
    invoke-virtual {v7, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    .line 503
    .line 504
    const/4 v9, 0x0

    .line 505
    invoke-virtual {v7, v9}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->handleMessage(Landroid/os/Message;)V

    .line 506
    .line 507
    .line 508
    goto :goto_8

    .line 509
    :cond_a
    const/16 v10, 0x10

    .line 510
    .line 511
    const/16 v24, 0x4

    .line 512
    .line 513
    :cond_b
    :goto_8
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 514
    .line 515
    iget-object v9, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 516
    .line 517
    invoke-virtual {v9}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 522
    .line 523
    .line 524
    goto :goto_9

    .line 525
    :cond_c
    const/16 v10, 0x10

    .line 526
    .line 527
    const/16 v24, 0x4

    .line 528
    .line 529
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 530
    .line 531
    const/16 v9, 0xff

    .line 532
    .line 533
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    .line 535
    .line 536
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 537
    .line 538
    const/4 v9, 0x0

    .line 539
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 540
    .line 541
    .line 542
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 543
    .line 544
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 545
    .line 546
    .line 547
    :goto_9
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 548
    .line 549
    .line 550
    move-result v7

    .line 551
    if-eqz v7, :cond_d

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_d
    move/from16 v10, v24

    .line 555
    .line 556
    :goto_a
    if-eqz v4, :cond_15

    .line 557
    .line 558
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    iget-object v11, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 567
    .line 568
    or-int/lit8 v12, v10, 0x2

    .line 569
    .line 570
    iget v13, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 571
    .line 572
    invoke-static {v12, v11, v13}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->getFilterData(ILandroid/content/Context;I)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v11

    .line 576
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 577
    .line 578
    .line 579
    move-result v12

    .line 580
    if-nez v12, :cond_e

    .line 581
    .line 582
    invoke-static {v4, v11}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    goto/16 :goto_d

    .line 587
    .line 588
    :cond_e
    iget-object v11, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 589
    .line 590
    iget-object v12, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 591
    .line 592
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 593
    .line 594
    .line 595
    move-result-wide v13

    .line 596
    invoke-static {v10}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->canApplyFilterOnHome(I)Ljava/lang/Boolean;

    .line 597
    .line 598
    .line 599
    move-result-object v15

    .line 600
    const-string v3, "HighlightFilterHelper"

    .line 601
    .line 602
    if-eqz v15, :cond_12

    .line 603
    .line 604
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 605
    .line 606
    .line 607
    move-result v17

    .line 608
    if-nez v17, :cond_f

    .line 609
    .line 610
    goto :goto_b

    .line 611
    :cond_f
    check-cast v12, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 612
    .line 613
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 614
    .line 615
    .line 616
    move-result v12

    .line 617
    if-eqz v12, :cond_10

    .line 618
    .line 619
    const-string v10, "canApplyFilterOnLock: DLS enabled"

    .line 620
    .line 621
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 625
    .line 626
    goto :goto_c

    .line 627
    :cond_10
    invoke-static {v11}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 628
    .line 629
    .line 630
    move-result-object v11

    .line 631
    invoke-virtual {v11, v10}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    .line 632
    .line 633
    .line 634
    move-result v11

    .line 635
    if-nez v11, :cond_11

    .line 636
    .line 637
    const-string v10, "canApplyFilterOnLock: Home & Lock is not paired."

    .line 638
    .line 639
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 643
    .line 644
    goto :goto_c

    .line 645
    :cond_11
    const-string v11, "canApplyFilterOnLock: true, mode = "

    .line 646
    .line 647
    const-string v12, ", elapsed = "

    .line 648
    .line 649
    invoke-static {v11, v10, v12}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    move-result-object v10

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 654
    .line 655
    .line 656
    move-result-wide v11

    .line 657
    sub-long/2addr v11, v13

    .line 658
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v10

    .line 665
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 669
    .line 670
    goto :goto_c

    .line 671
    :cond_12
    :goto_b
    new-instance v10, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    const-string v11, "canApplyFilterOnLock: Not applied on Home. result = "

    .line 674
    .line 675
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v10

    .line 685
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    :goto_c
    if-nez v15, :cond_13

    .line 689
    .line 690
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 691
    .line 692
    :cond_13
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-eqz v3, :cond_14

    .line 697
    .line 698
    iget-object v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 699
    .line 700
    invoke-static {v3}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->getFilterAmount(Lcom/android/systemui/util/SettingsHelper;)I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    invoke-static {v4, v3}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    move-object v4, v3

    .line 709
    :goto_d
    const/4 v3, 0x1

    .line 710
    goto :goto_e

    .line 711
    :cond_14
    const/4 v3, 0x0

    .line 712
    goto :goto_e

    .line 713
    :cond_15
    const/4 v3, 0x0

    .line 714
    const/4 v7, 0x0

    .line 715
    const/4 v9, 0x0

    .line 716
    :goto_e
    iget-object v10, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 717
    .line 718
    iget-object v11, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mColorProvider:Ljavax/inject/Provider;

    .line 719
    .line 720
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v11

    .line 724
    check-cast v11, Landroid/app/SemWallpaperColors;

    .line 725
    .line 726
    invoke-static {v10, v11}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F

    .line 727
    .line 728
    .line 729
    move-result-object v10

    .line 730
    if-eqz v10, :cond_16

    .line 731
    .line 732
    aget v8, v10, v8

    .line 733
    .line 734
    const/4 v11, 0x0

    .line 735
    aget v12, v10, v11

    .line 736
    .line 737
    const/4 v13, 0x1

    .line 738
    aget v13, v10, v13

    .line 739
    .line 740
    const/4 v14, 0x2

    .line 741
    aget v10, v10, v14

    .line 742
    .line 743
    invoke-static {v8, v12, v13, v10}, Landroid/graphics/Color;->argb(FFFF)I

    .line 744
    .line 745
    .line 746
    move-result v8

    .line 747
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    .line 748
    .line 749
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 750
    .line 751
    invoke-direct {v10, v8, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 752
    .line 753
    .line 754
    iget-object v12, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 755
    .line 756
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 757
    .line 758
    .line 759
    new-instance v10, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    const-string v12, "onDraw: draw filter color on ImageWallpaper "

    .line 762
    .line 763
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v8

    .line 773
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    goto :goto_f

    .line 777
    :cond_16
    const/4 v11, 0x0

    .line 778
    iget-object v8, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 779
    .line 780
    const/4 v10, 0x0

    .line 781
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 782
    .line 783
    .line 784
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->getIntelligentCropHints()Ljava/util/ArrayList;

    .line 785
    .line 786
    .line 787
    move-result-object v8

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 789
    .line 790
    .line 791
    iget-object v10, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 792
    .line 793
    if-nez v10, :cond_17

    .line 794
    .line 795
    const/4 v10, 0x0

    .line 796
    goto :goto_10

    .line 797
    :cond_17
    new-instance v12, Landroid/graphics/Point;

    .line 798
    .line 799
    iget v13, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 800
    .line 801
    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 802
    .line 803
    invoke-direct {v12, v13, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 804
    .line 805
    .line 806
    move-object v10, v12

    .line 807
    :goto_10
    invoke-static {v10, v8}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    .line 808
    .line 809
    .line 810
    move-result-object v8

    .line 811
    if-eqz v8, :cond_18

    .line 812
    .line 813
    const/4 v10, 0x1

    .line 814
    goto :goto_11

    .line 815
    :cond_18
    move v10, v11

    .line 816
    :goto_11
    new-instance v11, Landroid/graphics/Matrix;

    .line 817
    .line 818
    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 819
    .line 820
    .line 821
    if-eqz v8, :cond_1b

    .line 822
    .line 823
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 824
    .line 825
    .line 826
    move-result v12

    .line 827
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 828
    .line 829
    .line 830
    move-result v13

    .line 831
    iget v14, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 832
    .line 833
    int-to-float v14, v14

    .line 834
    int-to-float v12, v12

    .line 835
    div-float/2addr v14, v12

    .line 836
    iget v15, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 837
    .line 838
    int-to-float v15, v15

    .line 839
    int-to-float v13, v13

    .line 840
    div-float/2addr v15, v13

    .line 841
    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    .line 842
    .line 843
    .line 844
    move-result v14

    .line 845
    iget v15, v8, Landroid/graphics/Rect;->left:I

    .line 846
    .line 847
    neg-int v15, v15

    .line 848
    int-to-float v15, v15

    .line 849
    mul-float/2addr v15, v14

    .line 850
    mul-float/2addr v12, v14

    .line 851
    move/from16 v16, v3

    .line 852
    .line 853
    iget v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 854
    .line 855
    int-to-float v3, v3

    .line 856
    cmpl-float v17, v12, v3

    .line 857
    .line 858
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 859
    .line 860
    if-lez v17, :cond_19

    .line 861
    .line 862
    move/from16 v17, v2

    .line 863
    .line 864
    float-to-double v1, v15

    .line 865
    sub-float/2addr v12, v3

    .line 866
    move-object/from16 v20, v4

    .line 867
    .line 868
    float-to-double v3, v12

    .line 869
    div-double v3, v3, v18

    .line 870
    .line 871
    sub-double/2addr v1, v3

    .line 872
    double-to-float v15, v1

    .line 873
    goto :goto_12

    .line 874
    :cond_19
    move/from16 v17, v2

    .line 875
    .line 876
    move-object/from16 v20, v4

    .line 877
    .line 878
    :goto_12
    iget v1, v8, Landroid/graphics/Rect;->top:I

    .line 879
    .line 880
    neg-int v1, v1

    .line 881
    int-to-float v1, v1

    .line 882
    mul-float/2addr v1, v14

    .line 883
    mul-float/2addr v13, v14

    .line 884
    iget v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 885
    .line 886
    int-to-float v2, v2

    .line 887
    cmpl-float v3, v13, v2

    .line 888
    .line 889
    if-lez v3, :cond_1a

    .line 890
    .line 891
    float-to-double v3, v1

    .line 892
    sub-float/2addr v13, v2

    .line 893
    float-to-double v1, v13

    .line 894
    div-double v1, v1, v18

    .line 895
    .line 896
    sub-double/2addr v3, v1

    .line 897
    double-to-float v1, v3

    .line 898
    :cond_1a
    invoke-virtual {v11, v14, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 899
    .line 900
    .line 901
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    int-to-float v2, v2

    .line 906
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    int-to-float v1, v1

    .line 911
    invoke-virtual {v11, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 912
    .line 913
    .line 914
    goto :goto_13

    .line 915
    :cond_1b
    move/from16 v17, v2

    .line 916
    .line 917
    move/from16 v16, v3

    .line 918
    .line 919
    move-object/from16 v20, v4

    .line 920
    .line 921
    iget-object v11, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 922
    .line 923
    :goto_13
    const-string v1, "onDraw : bmpW="

    .line 924
    .line 925
    const-string v2, ", bmpH="

    .line 926
    .line 927
    const-string v3, ", src="

    .line 928
    .line 929
    invoke-static {v1, v7, v2, v9, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    const-string v2, ", mViewWidth="

    .line 937
    .line 938
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    iget v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 942
    .line 943
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    const-string v2, ", mViewHeight="

    .line 947
    .line 948
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    iget v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 952
    .line 953
    invoke-static {v1, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 954
    .line 955
    .line 956
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 957
    .line 958
    if-eqz v1, :cond_1c

    .line 959
    .line 960
    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 961
    .line 962
    if-eqz v1, :cond_1c

    .line 963
    .line 964
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 965
    .line 966
    move-object/from16 v2, p1

    .line 967
    .line 968
    move-object/from16 v4, v20

    .line 969
    .line 970
    invoke-virtual {v2, v4, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 971
    .line 972
    .line 973
    goto :goto_14

    .line 974
    :cond_1c
    move-object/from16 v2, p1

    .line 975
    .line 976
    move-object/from16 v4, v20

    .line 977
    .line 978
    if-eqz v5, :cond_1e

    .line 979
    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    if-eqz v1, :cond_1e

    .line 985
    .line 986
    if-nez v10, :cond_1e

    .line 987
    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isSmartCropRequired()Z

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    if-eqz v1, :cond_1e

    .line 993
    .line 994
    move/from16 v1, v17

    .line 995
    .line 996
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded(I)V

    .line 997
    .line 998
    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    const-string v3, "onDraw: landscape, mSmartCroppedResult="

    .line 1002
    .line 1003
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    iget-object v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 1007
    .line 1008
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    const-string v3, " viewW="

    .line 1012
    .line 1013
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    iget v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 1017
    .line 1018
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    const-string v3, " viewH="

    .line 1022
    .line 1023
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    iget v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 1027
    .line 1028
    invoke-static {v1, v3, v6}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 1032
    .line 1033
    if-eqz v1, :cond_1d

    .line 1034
    .line 1035
    new-instance v1, Landroid/graphics/RectF;

    .line 1036
    .line 1037
    iget v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 1038
    .line 1039
    int-to-float v3, v3

    .line 1040
    iget v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    .line 1041
    .line 1042
    int-to-float v5, v5

    .line 1043
    const/4 v6, 0x0

    .line 1044
    invoke-direct {v1, v6, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1045
    .line 1046
    .line 1047
    iget-object v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 1048
    .line 1049
    iget-object v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 1050
    .line 1051
    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1052
    .line 1053
    .line 1054
    goto :goto_14

    .line 1055
    :cond_1d
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 1056
    .line 1057
    invoke-virtual {v2, v4, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_14

    .line 1061
    :cond_1e
    const-string v1, "onDraw: cur bitmap"

    .line 1062
    .line 1063
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 1067
    .line 1068
    invoke-virtual {v2, v4, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1069
    .line 1070
    .line 1071
    :goto_14
    const/4 v1, 0x1

    .line 1072
    iput v1, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 1073
    .line 1074
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 1075
    .line 1076
    if-eqz v1, :cond_1f

    .line 1077
    .line 1078
    if-eq v1, v4, :cond_1f

    .line 1079
    .line 1080
    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 1081
    .line 1082
    .line 1083
    const/4 v1, 0x0

    .line 1084
    iput-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 1085
    .line 1086
    :cond_1f
    if-eqz v16, :cond_20

    .line 1087
    .line 1088
    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 1089
    .line 1090
    .line 1091
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1092
    .line 1093
    .line 1094
    const/4 v1, 0x0

    .line 1095
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 1096
    .line 1097
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 1098
    .line 1099
    if-eqz v1, :cond_21

    .line 1100
    .line 1101
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 1102
    .line 1103
    .line 1104
    move-result v1

    .line 1105
    if-eqz v1, :cond_21

    .line 1106
    .line 1107
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 1108
    .line 1109
    if-eqz v0, :cond_21

    .line 1110
    .line 1111
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDrawFinished()V

    .line 1112
    .line 1113
    .line 1114
    :cond_21
    return-void

    .line 1115
    :cond_22
    :goto_15
    const-string v0, "mBitmapWidth == 0 || mBitmapHeight == 0"

    .line 1116
    .line 1117
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    .line 1119
    .line 1120
    return-void

    .line 1121
    :cond_23
    const-string v1, "onDraw: Cached wallpaper is null or is recycled"

    .line 1122
    .line 1123
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    const/4 v1, 0x2

    .line 1127
    iput v1, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 1128
    .line 1129
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const-string v0, "onLayout:  changed = ["

    .line 5
    .line 6
    const-string v1, "], left = ["

    .line 7
    .line 8
    const-string v2, "], top = ["

    .line 9
    .line 10
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "], right = ["

    .line 15
    .line 16
    const-string v1, "], bottom = ["

    .line 17
    .line 18
    invoke-static {p2, p3, v0, p4, v1}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p3, "]"

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "KeyguardImageWallpaper"

    .line 34
    .line 35
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "onLayout: mLastRight = "

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", mLastBottom = "

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v0, "onLayout: mNeedToRedraw = "

    .line 70
    .line 71
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 75
    .line 76
    invoke-static {p2, v0, p3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-nez p1, :cond_0

    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    if-eqz p4, :cond_b

    .line 83
    .line 84
    if-nez p5, :cond_1

    .line 85
    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, p0, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    const-string p0, "onLayout: It is status bar size. Ignored."

    .line 99
    .line 100
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    .line 105
    .line 106
    const/4 p2, 0x1

    .line 107
    const/4 v0, 0x0

    .line 108
    if-ne p1, p4, :cond_4

    .line 109
    .line 110
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    .line 111
    .line 112
    if-eq p1, p5, :cond_3

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    move p1, v0

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    :goto_0
    move p1, p2

    .line 118
    :goto_1
    if-nez p1, :cond_6

    .line 119
    .line 120
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move p1, v0

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_2
    move p1, p2

    .line 128
    :goto_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 133
    .line 134
    if-nez v1, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isRotationRequired()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    .line 143
    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    if-eq v1, p4, :cond_7

    .line 147
    .line 148
    if-eq v1, p5, :cond_7

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_7
    move p2, v0

    .line 152
    :goto_4
    move v0, p2

    .line 153
    :cond_8
    if-eqz p1, :cond_b

    .line 154
    .line 155
    const-string p1, "onLayout: redraw needed. "

    .line 156
    .line 157
    const-string p2, ", "

    .line 158
    .line 159
    const-string v1, " , needSmartCrop = "

    .line 160
    .line 161
    invoke-static {p1, p4, p2, p5, v1}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1, v0, p3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 169
    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    const/4 p1, 0x6

    .line 173
    goto :goto_5

    .line 174
    :cond_9
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 175
    .line 176
    :goto_5
    if-eqz v0, :cond_a

    .line 177
    .line 178
    const/4 p2, 0x0

    .line 179
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 180
    .line 181
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 182
    .line 183
    invoke-virtual {p0, p2}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded(I)V

    .line 184
    .line 185
    .line 186
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->init(I)Z

    .line 187
    .line 188
    .line 189
    iput p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    .line 190
    .line 191
    iput p5, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    .line 192
    .line 193
    :cond_b
    :goto_6
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onResume, mDrawingState:"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 12
    .line 13
    const-string v2, "KeyguardImageWallpaper"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "onResume, reload"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 45
    .line 46
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateWallpaper(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    .line 66
    const/4 v2, -0x1

    .line 67
    if-ne v1, v2, :cond_3

    .line 68
    .line 69
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    .line 71
    if-eq v0, v2, :cond_5

    .line 72
    .line 73
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "onWindowFocusChanged: "

    .line 5
    .line 6
    .line 7
    const-string v1, "KeyguardImageWallpaper"

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x6

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->init(I)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final preInit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setTransitionAnimationListener(Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 2
    .line 3
    return-void
.end method

.method public final update()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 6
    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v1, "update userId="

    .line 10
    .line 11
    .line 12
    const-string v2, "KeyguardImageWallpaper"

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 21
    .line 22
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateWallpaper(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final updateBlurState(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateDrawState(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "updateDrawState: ["

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "KeyguardImageWallpaper"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "new: "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " prev:"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevState:Z

    .line 51
    .line 52
    const-string v2, "TiltColorController"

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimation(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimation(Z)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevState:Z

    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public final updateRotationState()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSmartCropRectIfNeeded(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isCustomPackApplied()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 19
    .line 20
    const-string v1, "KeyguardImageWallpaper"

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    sub-int/2addr v2, v0

    .line 29
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 30
    .line 31
    if-le v2, v0, :cond_1

    .line 32
    .line 33
    const-string/jumbo v0, "updateSmartCropRectIfNeeded: Invalid smart crop rect."

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_1
    const-string/jumbo v2, "updateSmartCropRectIfNeeded() needToUpdateCropRect: "

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 62
    .line 63
    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public final updateWallpaper(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateWallpaper() START useCache="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " , user id = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 20
    .line 21
    const-string v2, " , which = "

    .line 22
    .line 23
    const-string v3, "KeyguardImageWallpaper"

    .line 24
    .line 25
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 32
    .line 33
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    const-string/jumbo v2, "updateWallpaper: cancel update wallpaper"

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 59
    .line 60
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    new-instance v3, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Z)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 71
    .line 72
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 93
    .line 94
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    .line 103
    .line 104
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 105
    .line 106
    new-array v0, v0, [Ljava/lang/Void;

    .line 107
    .line 108
    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void
.end method
