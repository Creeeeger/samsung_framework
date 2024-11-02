.class public final synthetic Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field public final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$1:Landroid/view/Surface;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;->f$1:Landroid/view/Surface;

    .line 4
    .line 5
    const-string/jumbo v1, "setSurface() success, surface = "

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "setSurface() is null or not valid, surface = "

    .line 9
    .line 10
    .line 11
    iput-object p0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 12
    .line 13
    const-string v3, "VideoPlayer"

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    iput-boolean p0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    iput-boolean p0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v2, "setSurface: fail to setSurface, surface = "

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 92
    .line 93
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 94
    .line 95
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method
