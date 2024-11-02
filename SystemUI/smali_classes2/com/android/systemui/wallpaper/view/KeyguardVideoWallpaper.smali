.class public final Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentUserId:I

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

.field public mIsBlurEnabled:Z

.field public mIsCleanUp:Z

.field public mIsPendingSurfaceViewAdd:Z

.field public mIsSurfaceViewAdded:Z

.field public mIsThumbnailViewAdded:Z

.field public final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mOnInfoListener:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;

.field public final mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

.field public final mRootView:Landroid/view/View;

.field public final mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public mShowing:Z

.field public mStartPosition:I

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mSurfaceScaleInfo:Landroid/graphics/PointF;

.field public mSurfaceView:Landroid/view/SurfaceView;

.field public mThemePackage:Ljava/lang/String;

.field public mThumbnail:Landroid/graphics/drawable/Drawable;

.field public mThumbnailLoader:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;

.field public mThumbnailView:Landroid/widget/ImageView;

.field public mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field public mVideoFileName:Ljava/lang/String;

.field public mVideoFilePath:Ljava/lang/String;

.field public mVideoFileUri:Landroid/net/Uri;

.field public final mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field public mVideoScreenSize:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;ZZIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/systemui/pluginlock/PluginWallpaperManager;",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZZIZ)V"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-object v10, p1

    .line 3
    move-object/from16 v11, p11

    .line 4
    .line 5
    move/from16 v12, p16

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object/from16 v2, p6

    .line 11
    .line 12
    move-object/from16 v3, p8

    .line 13
    .line 14
    move-object/from16 v4, p9

    .line 15
    .line 16
    move-object/from16 v5, p12

    .line 17
    .line 18
    move/from16 v7, p13

    .line 19
    .line 20
    move/from16 v8, p14

    .line 21
    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZZZ)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 29
    .line 30
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 31
    .line 32
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 36
    .line 37
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 38
    .line 39
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 40
    .line 41
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 42
    .line 43
    iput v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 44
    .line 45
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    .line 46
    .line 47
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/os/Looper;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 57
    .line 58
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mOnInfoListener:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    iput-object v10, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    move/from16 v1, p15

    .line 68
    .line 69
    iput v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mCurrentUserId:I

    .line 70
    .line 71
    move-object/from16 v1, p10

    .line 72
    .line 73
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 74
    .line 75
    iput-object v11, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 76
    .line 77
    move-object/from16 v1, p3

    .line 78
    .line 79
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v1, p5

    .line 82
    .line 83
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 84
    .line 85
    move-object/from16 v1, p4

    .line 86
    .line 87
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 88
    .line 89
    move-object/from16 v1, p7

    .line 90
    .line 91
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRootView:Landroid/view/View;

    .line 98
    .line 99
    iget-boolean v2, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 100
    .line 101
    if-eqz v2, :cond_0

    .line 102
    .line 103
    iget-boolean v2, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    .line 104
    .line 105
    if-nez v2, :cond_0

    .line 106
    .line 107
    const/4 v0, 0x1

    .line 108
    :cond_0
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 109
    .line 110
    new-instance v0, Landroid/app/SemWallpaperResourcesInfo;

    .line 111
    .line 112
    invoke-direct {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 116
    .line 117
    new-instance v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 118
    .line 119
    invoke-direct {v2, p1, v1, v0, v11}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/app/SemWallpaperResourcesInfo;Lcom/android/systemui/wallpaper/log/WallpaperLogger;)V

    .line 120
    .line 121
    .line 122
    iput-object v2, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 123
    .line 124
    iput-boolean v12, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 125
    .line 126
    iput-boolean v12, v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    .line 127
    .line 128
    new-instance v0, Landroid/graphics/PointF;

    .line 129
    .line 130
    const/high16 v1, 0x3f800000    # 1.0f

    .line 131
    .line 132
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 133
    .line 134
    .line 135
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceScaleInfo:Landroid/graphics/PointF;

    .line 136
    .line 137
    move-object v0, p2

    .line 138
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v1, "KeyguardVideoWallpaper: path = "

    .line 155
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, " , fd = "

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", fileName = "

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, " , focus = "

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", mIsKeyguardShowing = "

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-boolean v1, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, " , mOccluded = "

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-boolean v1, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    .line 212
    .line 213
    const-string v2, "KeyguardVideoWallpaper"

    .line 214
    .line 215
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 219
    .line 220
    if-eqz v0, :cond_1

    .line 221
    .line 222
    const-string v0, "Showing state"

    .line 223
    .line 224
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->initSurfaceViewIfNeeded()V

    .line 228
    .line 229
    .line 230
    :cond_1
    iget-object v0, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 231
    .line 232
    if-eqz v0, :cond_2

    .line 233
    .line 234
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 235
    .line 236
    .line 237
    :cond_2
    return-void
.end method


# virtual methods
.method public final addSurfaceViewIfNeeded()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->initSurfaceViewIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final cleanUp()V
    .locals 2

    .line 1
    const-string v0, "KeyguardVideoWallpaper"

    .line 2
    .line 3
    const-string v1, "cleanUp: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 20
    .line 21
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 28
    .line 29
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    return-void
.end method

.method public final drawVideo(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "drawVideo() "

    .line 7
    .line 8
    const-string v1, ", force = "

    .line 9
    .line 10
    const-string v2, ", mDozeParameters.shouldControlScreenOff() = "

    .line 11
    .line 12
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 19
    .line 20
    const-string v2, "KeyguardVideoWallpaper"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x3e9

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const v1, 0x493e0

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p0, v1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    if-nez p2, :cond_5

    .line 54
    .line 55
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 62
    .line 63
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 69
    .line 70
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    const-string p0, "drawVideo: isAODShowLockWallpaperEnabled. Delay stopDrawing until getting video frame is started."

    .line 79
    .line 80
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_4

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 93
    .line 94
    const-wide/16 p1, 0x320

    .line 95
    .line 96
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_0
    return-void

    .line 100
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final getCapturedWallpaper()Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 2
    .line 3
    const-string v1, "KeyguardVideoWallpaper"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "getCapturedWallpaper : stop video because need to get current frame. position = "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getCurrentPosition()I

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
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    filled-new-array {v0}, [Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 52
    .line 53
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    int-to-float v1, v1

    .line 69
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceScaleInfo:Landroid/graphics/PointF;

    .line 70
    .line 71
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 72
    .line 73
    mul-float/2addr v1, v2

    .line 74
    float-to-int v4, v1

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    int-to-float v1, v1

    .line 80
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceScaleInfo:Landroid/graphics/PointF;

    .line 81
    .line 82
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 83
    .line 84
    mul-float/2addr v1, v2

    .line 85
    float-to-int v5, v1

    .line 86
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 87
    .line 88
    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    aput-object v1, v0, v7

    .line 93
    .line 94
    new-instance v8, Landroid/os/HandlerThread;

    .line 95
    .line 96
    const-string v1, "PixelCopy"

    .line 97
    .line 98
    invoke-direct {v8, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 102
    .line 103
    .line 104
    monitor-enter v8

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 106
    .line 107
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    aget-object v10, v0, v7

    .line 112
    .line 113
    new-instance v11, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;

    .line 114
    .line 115
    move-object v1, v11

    .line 116
    move-object v2, p0

    .line 117
    move-object v3, v0

    .line 118
    move-object v6, v8

    .line 119
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;[Landroid/graphics/Bitmap;IILandroid/os/HandlerThread;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v9, v10, v11, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    const-wide/16 v1, 0xc8

    .line 130
    .line 131
    :try_start_1
    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    :try_start_2
    const-string p0, "KeyguardVideoWallpaper"

    .line 136
    .line 137
    const-string v1, "Failed to wait"

    .line 138
    .line 139
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 143
    .line 144
    .line 145
    :goto_0
    monitor-exit v8

    .line 146
    goto :goto_2

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    throw p0

    .line 150
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    aput-object p0, v0, v7

    .line 157
    .line 158
    :goto_2
    aget-object p0, v0, v7

    .line 159
    .line 160
    return-object p0
.end method

.method public final getCapturedWallpaperForBlur()Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "getCapturedWallpaperForBlur : bitmap = "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 31
    .line 32
    const-string v3, "KeyguardVideoWallpaper"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 48
    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_1
    return-object v0
.end method

.method public final getCurrentPosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getCurrentPosition()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final getDefaultFrameMillis()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/app/SemWallpaperResourcesInfo;->isBlackFirstFrame(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "KeyguardVideoWallpaper"

    .line 13
    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoFrameInfo(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoFrameCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 41
    .line 42
    const/16 v8, 0x20

    .line 43
    .line 44
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoFrameCount()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 64
    .line 65
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 68
    .line 69
    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    :cond_1
    if-lez v0, :cond_2

    .line 79
    .line 80
    if-lez v4, :cond_2

    .line 81
    .line 82
    if-lt v4, v0, :cond_2

    .line 83
    .line 84
    int-to-float p0, v5

    .line 85
    int-to-float v1, v0

    .line 86
    int-to-float v3, v4

    .line 87
    div-float/2addr v1, v3

    .line 88
    mul-float/2addr v1, p0

    .line 89
    float-to-int p0, v1

    .line 90
    move v1, p0

    .line 91
    :cond_2
    const-string p0, "getDefaultFrameMillis: "

    .line 92
    .line 93
    const-string v3, " , count = "

    .line 94
    .line 95
    const-string v5, " , requested index = "

    .line 96
    .line 97
    invoke-static {p0, v1, v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0, v0, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_MAISON_MARGIELA_EDITION:Z

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    sget-boolean v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 112
    .line 113
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    const-string v4, "/prism/etc/common/"

    .line 132
    .line 133
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    :goto_0
    if-eqz v0, :cond_5

    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 142
    .line 143
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 146
    .line 147
    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const-string p0, "getDefaultFrameMillis(omc): "

    .line 157
    .line 158
    invoke-static {p0, v1, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_1
    return v1
.end method

.method public final getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 8
    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string v4, "com.samsung.android.wallpaper.res"

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v2, "video_1.mp4"

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    sget v10, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 50
    .line 51
    invoke-virtual {v1, v10}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoWallpaperFileName(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "KeyguardVideoWallpaper"

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v5, "old file = "

    .line 72
    .line 73
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v5, ", default file name :"

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, " , which = "

    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {v0, v4, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const/4 v6, 0x0

    .line 125
    const-string v7, "com.samsung.android.wallpaper.res"

    .line 126
    .line 127
    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 128
    .line 129
    iget v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mCurrentUserId:I

    .line 130
    .line 131
    invoke-virtual/range {v5 .. v10}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v4, "Can\'t find resources or fail to openFD : "

    .line 140
    .line 141
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 154
    .line 155
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v4, "This file was already set. : "

    .line 164
    .line 165
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 178
    .line 179
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getDefaultFrameMillis()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsRenderingStarted:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getCapturedWallpaper()Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 30
    .line 31
    int-to-long v4, v0

    .line 32
    const-wide/16 v6, 0x3e8

    .line 33
    .line 34
    mul-long/2addr v4, v6

    .line 35
    move-object v0, v1

    .line 36
    move-object v1, v2

    .line 37
    move-object v2, v3

    .line 38
    move-object v3, p0

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    :goto_1
    return-object p0
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final initSurfaceViewIfNeeded()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "initSurfaceViewIfNeeded: mSurfaceView == null? : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " , showing = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 24
    .line 25
    const-string v2, "KeyguardVideoWallpaper"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Landroid/view/SurfaceView;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x1

    .line 42
    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v6}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 53
    .line 54
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    new-instance v0, Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public final isDefaultVideoWallpaper()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getDefaultWallpaperType(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v3

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 33
    .line 34
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isVideoWallpaperEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v2, v3

    .line 44
    :goto_1
    return v2
.end method

.method public final loadMediaPlayer(Z)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mVideoFileDescriptor = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " , mRetrieverFd = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "KeyguardVideoWallpaper"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v4, "VideoPlayer"

    .line 50
    .line 51
    const-string v5, ""

    .line 52
    .line 53
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    .line 54
    .line 55
    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 56
    .line 57
    .line 58
    const/16 v7, 0x280

    .line 59
    .line 60
    const/16 v8, 0x1e0

    .line 61
    .line 62
    :try_start_0
    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .line 64
    .line 65
    const/16 v0, 0x12

    .line 66
    .line 67
    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const/16 v1, 0x13

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v6, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    const/16 v2, 0x18

    .line 78
    .line 79
    :try_start_2
    invoke-virtual {v6, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :try_start_3
    const-string v3, "90"

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    const-string v3, "270"

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v5

    .line 110
    move v7, v3

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    :goto_0
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    :goto_1
    :try_start_7
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :catch_1
    move-exception v6

    .line 125
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catch_2
    move-exception v3

    .line 130
    move v8, v5

    .line 131
    move-object v5, v3

    .line 132
    goto :goto_2

    .line 133
    :catch_3
    move-exception v5

    .line 134
    goto :goto_2

    .line 135
    :catch_4
    move-exception v2

    .line 136
    move-object v9, v5

    .line 137
    move-object v5, v2

    .line 138
    move-object v2, v9

    .line 139
    goto :goto_2

    .line 140
    :catch_5
    move-exception v1

    .line 141
    move-object v2, v5

    .line 142
    move-object v5, v1

    .line 143
    move-object v1, v2

    .line 144
    goto :goto_2

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :catch_6
    move-exception v0

    .line 149
    move-object v1, v5

    .line 150
    move-object v2, v1

    .line 151
    move-object v5, v0

    .line 152
    move-object v0, v2

    .line 153
    :goto_2
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    const-string v3, "getVideoScreenSize() occur exception"

    .line 157
    .line 158
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 159
    .line 160
    .line 161
    :try_start_9
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_7
    move-exception v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    :goto_3
    move v3, v7

    .line 170
    move v5, v8

    .line 171
    :goto_4
    const-string v6, "getVideoScreenSize() w = "

    .line 172
    .line 173
    const-string v7, ", h = "

    .line 174
    .line 175
    const-string v8, ", r = "

    .line 176
    .line 177
    invoke-static {v6, v0, v7, v1, v8}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    new-instance v0, Landroid/graphics/Point;

    .line 192
    .line 193
    invoke-direct {v0, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    .line 197
    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_7

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoFrameCount()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    if-eqz p1, :cond_5

    .line 213
    .line 214
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 215
    .line 216
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 217
    .line 218
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 221
    .line 222
    const/16 v4, 0x20

    .line 223
    .line 224
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 225
    .line 226
    .line 227
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    if-eqz p1, :cond_7

    .line 236
    .line 237
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 238
    .line 239
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 240
    .line 241
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 244
    .line 245
    const/16 v4, 0x9

    .line 246
    .line 247
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 248
    .line 249
    .line 250
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 251
    .line 252
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    .line 253
    .line 254
    .line 255
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 256
    .line 257
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 258
    .line 259
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 262
    .line 263
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 264
    .line 265
    if-nez v0, :cond_8

    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    goto :goto_5

    .line 269
    :cond_8
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    :goto_5
    move-object v6, v0

    .line 274
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mOnInfoListener:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-instance v8, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;

    .line 281
    .line 282
    move-object v1, v8

    .line 283
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 290
    .line 291
    if-eqz v0, :cond_9

    .line 292
    .line 293
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    if-eqz v0, :cond_9

    .line 298
    .line 299
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 300
    .line 301
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 310
    .line 311
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateSurfaceScale(II)V

    .line 320
    .line 321
    .line 322
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateDrawable(Z)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :goto_6
    :try_start_a
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 327
    .line 328
    .line 329
    goto :goto_7

    .line 330
    :catch_8
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    .line 333
    .line 334
    :goto_7
    throw p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onConfigurationChanged: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 9
    .line 10
    const-string v2, "KeyguardVideoWallpaper"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateBlurState(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFaceAuthError()V
    .locals 2

    .line 1
    const-string v0, "KeyguardVideoWallpaper"

    .line 2
    .line 3
    const-string v1, "onFaceAuthError(), pause video"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onFingerprintAuthSuccess(Z)V
    .locals 1

    .line 1
    const-string p1, "KeyguardVideoWallpaper"

    .line 2
    .line 3
    const-string v0, "onFingerprintAuthSuccess()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_3

    .line 10
    .line 11
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getDefaultFrameMillis()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-lez p1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    invoke-direct {v3, v1, p1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 59
    .line 60
    iput-boolean p0, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    .line 61
    .line 62
    :cond_4
    return-void
.end method

.method public final onKeyguardShowing(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 2
    .line 3
    const-string v0, "onKeyguardShowing = "

    .line 4
    .line 5
    const-string v1, "KeyguardVideoWallpaper"

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-boolean p1, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 18
    .line 19
    if-nez p1, :cond_3

    .line 20
    .line 21
    iget-boolean p1, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 22
    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->loadMediaPlayer(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-ne p1, v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->addSurfaceViewIfNeeded()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 48
    .line 49
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const-string p1, "onLayout called : "

    .line 5
    .line 6
    const-string v0, " , "

    .line 7
    .line 8
    invoke-static {p1, p2, v0, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "KeyguardVideoWallpaper"

    .line 13
    .line 14
    invoke-static {p1, p4, v0, p5, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-static {p1, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isMainScreenRatio(II)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 37
    .line 38
    iget-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 39
    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    iget-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 43
    .line 44
    if-nez p3, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->addSurfaceViewIfNeeded()V

    .line 47
    .line 48
    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p4, "SurfaceView is added, visibility = "

    .line 52
    .line 53
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 57
    .line 58
    invoke-virtual {p4}, Landroid/view/SurfaceView;->getVisibility()I

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 73
    .line 74
    const/16 p3, 0x8

    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onPause: showing = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " , focus = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " , mBouncer = "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "KeyguardVideoWallpaper"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v2, 0x1

    .line 49
    const/4 v3, 0x0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIDEO_PLAY_RANDOM_POSITION:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 67
    .line 68
    iget-boolean v5, v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    .line 69
    .line 70
    if-nez v5, :cond_0

    .line 71
    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 79
    .line 80
    invoke-direct {v0, v4, v3, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string/jumbo v5, "videoDuration : "

    .line 105
    .line 106
    .line 107
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    new-instance v1, Ljava/util/Random;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 123
    .line 124
    .line 125
    if-lez v0, :cond_1

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 132
    .line 133
    if-eqz p0, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 140
    .line 141
    invoke-direct {v1, p0, v3, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 149
    .line 150
    if-nez v0, :cond_3

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 159
    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 163
    .line 164
    if-eqz p0, :cond_5

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 171
    .line 172
    invoke-direct {v1, p0, v3, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 180
    .line 181
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 182
    .line 183
    if-nez v0, :cond_5

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 186
    .line 187
    if-eqz p0, :cond_5

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 194
    .line 195
    invoke-direct {v1, p0, v3, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlock()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    .line 14
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    :cond_1
    move v2, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v2, v1

    .line 27
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 30
    .line 31
    const-string/jumbo v3, "onVisibilityChanged: "

    .line 32
    .line 33
    .line 34
    const-string v4, " , showingAndNotOccluded = "

    .line 35
    .line 36
    invoke-static {v3, p2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 41
    .line 42
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, " , showing = "

    .line 46
    .line 47
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    .line 52
    iget-boolean v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 53
    .line 54
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ", mIsSurfaceViewAdded = "

    .line 58
    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 63
    .line 64
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, " view = "

    .line 68
    .line 69
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 80
    .line 81
    const-string p2, "KeyguardVideoWallpaper"

    .line 82
    .line 83
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 91
    .line 92
    if-nez p1, :cond_5

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-boolean p2, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 99
    .line 100
    if-nez p2, :cond_3

    .line 101
    .line 102
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 103
    .line 104
    if-nez p1, :cond_3

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->loadMediaPlayer(Z)V

    .line 107
    .line 108
    .line 109
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 114
    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isMainScreenRatio(II)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_4

    .line 136
    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 138
    .line 139
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 140
    .line 141
    if-nez p1, :cond_7

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->addSurfaceViewIfNeeded()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 148
    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 157
    .line 158
    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    .line 161
    .line 162
    .line 163
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 164
    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 173
    .line 174
    :cond_7
    :goto_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    const-string v0, "hasWindowFocus = "

    .line 5
    .line 6
    const-string v1, " , state = "

    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", blur = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    .line 23
    .line 24
    const-string v2, "KeyguardVideoWallpaper"

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v2

    .line 42
    :goto_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    move v0, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v0, v2

    .line 61
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 72
    .line 73
    if-nez p1, :cond_6

    .line 74
    .line 75
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getDefaultFrameMillis()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-lez p1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    new-instance v4, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 108
    .line 109
    invoke-direct {v4, v0, p1, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 116
    .line 117
    .line 118
    :goto_3
    return-void
.end method

.method public final releaseMediaPlayer()V
    .locals 2

    .line 1
    const-string v0, "KeyguardVideoWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "releaseMediaPlayer()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setStartPosition(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 2
    .line 3
    const-string/jumbo v0, "setStartPosition: "

    .line 4
    .line 5
    .line 6
    const-string v1, "KeyguardVideoWallpaper"

    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput p1, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mStartPosition:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateDrawable(Z)V

    .line 19
    .line 20
    .line 21
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

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 2
    .line 3
    const-string/jumbo v0, "surfaceChanged: w = "

    .line 4
    .line 5
    .line 6
    const-string v1, ", h = "

    .line 7
    .line 8
    const-string v2, " , showing = "

    .line 9
    .line 10
    invoke-static {v0, p3, v1, p4, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " , surface = "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 36
    .line 37
    const-string v0, "KeyguardVideoWallpaper"

    .line 38
    .line 39
    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateSurfaceScale(II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "surfaceCreated: shoiwng = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " , frame = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ", prepared = "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 34
    .line 35
    iget-boolean v2, v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " , preparing = "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 46
    .line 47
    iget-boolean v2, v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " , focus = "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " , surface = "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 81
    .line 82
    const-string v2, "KeyguardVideoWallpaper"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v1, 0x1

    .line 92
    const/4 v2, 0x0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 96
    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 100
    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    move v0, v2

    .line 106
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 110
    .line 111
    iget-boolean v3, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 112
    .line 113
    if-nez v3, :cond_2

    .line 114
    .line 115
    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 116
    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->loadMediaPlayer(Z)V

    .line 120
    .line 121
    .line 122
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 132
    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 141
    .line 142
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 143
    .line 144
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "surfaceDestroyed: shoiwng = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " , surface = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 33
    .line 34
    const-string v1, "KeyguardVideoWallpaper"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 40
    .line 41
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 62
    .line 63
    return-void
.end method

.method public final update()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 22
    .line 23
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, ""

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 37
    .line 38
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    move v1, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v1, v3

    .line 49
    :goto_1
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iput-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 54
    .line 55
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 65
    .line 66
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 75
    .line 76
    :goto_2
    iput-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 104
    .line 105
    :goto_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 110
    .line 111
    iget v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mCurrentUserId:I

    .line 112
    .line 113
    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 124
    .line 125
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginWallpaperMgr:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 134
    .line 135
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperPath(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 144
    .line 145
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string/jumbo v1, "update new video wallpaper! path = "

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", pkg = "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, " , fileName = "

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, " , dls uri = "

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v1, "KeyguardVideoWallpaper"

    .line 193
    .line 194
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 210
    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    .line 215
    .line 216
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->loadMediaPlayer(Z)V

    .line 217
    .line 218
    .line 219
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 220
    .line 221
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 222
    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 225
    .line 226
    if-eqz p0, :cond_6

    .line 227
    .line 228
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 229
    .line 230
    .line 231
    :cond_6
    return-void
.end method

.method public final updateBlurState(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    const-string/jumbo v0, "updateBlurState: b = "

    .line 6
    .line 7
    .line 8
    const-string v1, ", f = "

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", s = "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 27
    .line 28
    const-string v2, "KeyguardVideoWallpaper"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move p1, v0

    .line 51
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final updateDrawState(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "updateDrawState() needDraw "

    .line 2
    .line 3
    .line 4
    const-string v1, ", mBouncer = "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " , focus = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "KeyguardVideoWallpaper"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 38
    .line 39
    .line 40
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    :cond_0
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public final updateDrawable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;

    .line 25
    .line 26
    :cond_1
    new-instance p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;

    .line 32
    .line 33
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/lang/Void;

    .line 37
    .line 38
    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public final updateSurfaceScale(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    .line 2
    .line 3
    const-string v1, "KeyguardVideoWallpaper"

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-lez p1, :cond_5

    .line 8
    .line 9
    if-gtz p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-string/jumbo p0, "updateSurfaceScale() mSurfaceView is null"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 25
    .line 26
    mul-int/2addr v2, p2

    .line 27
    int-to-float v2, v2

    .line 28
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    mul-int/2addr v0, p1

    .line 31
    int-to-float v0, v0

    .line 32
    div-float/2addr v2, v0

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    cmpl-float v3, v2, v0

    .line 36
    .line 37
    if-ltz v3, :cond_2

    .line 38
    .line 39
    move v3, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v3, v0

    .line 42
    :goto_0
    cmpg-float v4, v2, v0

    .line 43
    .line 44
    if-gtz v4, :cond_3

    .line 45
    .line 46
    div-float/2addr v0, v2

    .line 47
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceScaleInfo:Landroid/graphics/PointF;

    .line 48
    .line 49
    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 50
    .line 51
    iput v0, v2, Landroid/graphics/PointF;->y:F

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo v4, "updateSurfaceScale: video size = "

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, ", height = "

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v4, ", sx = "

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, ", sy = "

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/SurfaceView;->semResetRenderNodePosition()V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 103
    .line 104
    int-to-float p1, p1

    .line 105
    const/high16 v2, 0x3f000000    # 0.5f

    .line 106
    .line 107
    mul-float/2addr p1, v2

    .line 108
    int-to-float p2, p2

    .line 109
    mul-float/2addr p2, v2

    .line 110
    invoke-virtual {v1, p1}, Landroid/view/View;->setPivotX(F)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 123
    .line 124
    if-eqz p0, :cond_4

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void

    .line 139
    :cond_5
    :goto_1
    const-string/jumbo p0, "updateSurfaceScale() mVideoScreenSize is null"

    .line 140
    .line 141
    .line 142
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    return-void
.end method
