.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 6
    .line 7
    const-string v1, "onRotationChanged: newRotation="

    .line 8
    .line 9
    const-string v2, ", mRotation="

    .line 10
    .line 11
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 16
    .line 17
    iget v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 27
    .line 28
    const-string v2, "ImageWallpaper[GLEngine]"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 34
    .line 35
    iget v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 36
    .line 37
    if-eq v1, p1, :cond_0

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 42
    .line 43
    const-string v1, "onRotationChanged rotation is changed "

    .line 44
    .line 45
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 51
    .line 52
    iput p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 53
    .line 54
    iget-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v1, 0x3

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method
