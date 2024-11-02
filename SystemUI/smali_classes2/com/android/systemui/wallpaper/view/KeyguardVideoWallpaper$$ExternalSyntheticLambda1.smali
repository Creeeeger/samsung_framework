.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

.field public final synthetic f$1:[Landroid/graphics/Bitmap;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/HandlerThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;[Landroid/graphics/Bitmap;IILandroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$1:[Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$4:Landroid/os/HandlerThread;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$1:[Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda1;->f$4:Landroid/os/HandlerThread;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v4, "KeyguardVideoWallpaper"

    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v6, "copy result = "

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v4, 0x0

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    iget-object v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v6, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 49
    .line 50
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v8, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 53
    .line 54
    iget-object p1, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getCurrentPosition()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    int-to-long v9, p1

    .line 61
    const-wide/16 v11, 0x3e8

    .line 62
    .line 63
    mul-long/2addr v9, v11

    .line 64
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-static {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    aput-object p1, v1, v4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    aput-object p1, v1, v4

    .line 79
    .line 80
    :cond_1
    :goto_0
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 82
    .line 83
    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p1
.end method
