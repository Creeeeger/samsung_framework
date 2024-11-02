.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "ImageWallpaper[GifGLEngine]"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    const-string v2, "onStartedWakingUp : isSubDisplay = "

    .line 33
    .line 34
    invoke-static {v2, v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->updateGif(Landroid/view/SurfaceHolder;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const-string v0, "onStartedWakingUp : wake up in visible state"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->start()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v0, "onFinishedGoingToSleep"

    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 80
    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->stop()V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
