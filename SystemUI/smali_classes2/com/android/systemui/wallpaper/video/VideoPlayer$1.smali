.class public final Lcom/android/systemui/wallpaper/video/VideoPlayer$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e9

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string p1, "Video playing time out (5minutes)"

    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 21
    .line 22
    const-string v0, "VideoPlayer"

    .line 23
    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
