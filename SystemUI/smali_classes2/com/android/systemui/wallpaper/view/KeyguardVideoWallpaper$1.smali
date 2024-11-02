.class public final Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

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
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x3e9

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 15
    .line 16
    if-eqz p0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v0, "removeThumbnailView, position : "

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 31
    .line 32
    iget v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 33
    .line 34
    const-string v1, "KeyguardVideoWallpaper"

    .line 35
    .line 36
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v0, v1

    .line 61
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(ZZ)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 65
    .line 66
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-boolean v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    iput-boolean v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 78
    .line 79
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 80
    .line 81
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mStartPosition:I

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateDrawable(Z)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    return-void
.end method
