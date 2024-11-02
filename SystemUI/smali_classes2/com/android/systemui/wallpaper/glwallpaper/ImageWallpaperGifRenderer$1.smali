.class public final Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

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
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e9

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsPaused:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mPlayedMovieIndex:I

    .line 15
    .line 16
    int-to-long v0, p1

    .line 17
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mPausedMovieTime:J

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->drawGif(Landroid/view/SurfaceHolder;Z)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
