.class public final Lcom/android/systemui/wallpaper/video/VideoPlayer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBouncer:Z

.field public final mContext:Landroid/content/Context;

.field public mFileInputStream:Ljava/io/FileInputStream;

.field public mHasSurface:Z

.field public mIsPendingStarted:Z

.field public mIsPrepared:Z

.field public mIsPreparing:Z

.field public mIsRenderingStarted:Z

.field public final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mMediaControlHandler:Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

.field public final mMetadataMap:Ljava/util/HashMap;

.field public final mOnInitCompleteListener:Lcom/android/systemui/wallpaper/video/VideoPlayer$2;

.field public final mRootView:Landroid/view/View;

.field public mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field public final mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public mStartPosition:I

.field public mSurface:Landroid/view/Surface;

.field public mVideoPlayerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/app/SemWallpaperResourcesInfo;Lcom/android/systemui/wallpaper/log/WallpaperLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsRenderingStarted:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mStartPosition:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    .line 25
    .line 26
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/android/systemui/wallpaper/video/VideoPlayer$2;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mRootView:Landroid/view/View;

    .line 47
    .line 48
    iput-object p4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 51
    .line 52
    new-instance p1, Landroid/os/HandlerThread;

    .line 53
    .line 54
    const-string p2, "VideoPlayer"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 65
    .line 66
    const/16 p1, 0xa

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 2
    .line 3
    const-string v0, "VideoPlayer"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "getCurrentFrame() mediaPlayer is null"

    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    const-string p0, "failed getCurrentFrame"

    .line 24
    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object v1
.end method

.method public final getCurrentPosition()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 2
    .line 3
    const-string v0, "VideoPlayer"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "getCurrentPosition() mediaPlayer is null"

    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    const-string p0, "failed getCurrentPosition()"

    .line 24
    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return v1
.end method

.method public final getThreadHandler()Landroid/os/Handler;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "thread is not alive :"

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 25
    .line 26
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 27
    .line 28
    const-string v3, "VideoPlayer"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    .line 37
    .line 38
    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 47
    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final getVideoFrameCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "releaseMediaPlayer() mp = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "VideoPlayer"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->release()V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p0, "releaseMediaPlayer() failed stop"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final releaseResource(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsRenderingStarted:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    move-object v1, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-eqz p4, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p1, p0, p4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p0, "VideoPlayer"

    .line 39
    .line 40
    const-string p1, "getVideoScreenSize() file is invalid"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/view/Surface;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final stopDrawing()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void

    .line 46
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :catch_2
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_3
    throw p0
.end method
