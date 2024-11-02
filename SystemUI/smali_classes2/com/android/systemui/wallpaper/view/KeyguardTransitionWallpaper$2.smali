.class public final Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

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
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "capture end "

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCaptureStart:Z

    .line 35
    .line 36
    const v2, 0x3f828f5c    # 1.02f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->initMatrix()Z

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 53
    .line 54
    const/16 v2, 0xff

    .line 55
    .line 56
    iput v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mTransitionAnimatorValue:I

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mUpdateListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const-string p1, "MSG_CAPTURE_FINISHED"

    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mUpdateListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->onDrawCompleted()V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 82
    .line 83
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onWallpaperConsumed(IZ)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method
