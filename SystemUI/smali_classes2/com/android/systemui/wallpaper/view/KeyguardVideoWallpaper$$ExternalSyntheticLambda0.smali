.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInfo(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "onInfo: i = "

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " , i1 = "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p3, "KeyguardVideoWallpaper"

    .line 29
    .line 30
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    if-ne p2, p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsRenderingStarted:Z

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 42
    .line 43
    const/16 p2, 0x3e8

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method
