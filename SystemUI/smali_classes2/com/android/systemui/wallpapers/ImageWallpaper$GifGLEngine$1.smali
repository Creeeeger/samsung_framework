.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p0, "ImageWallpaper[GifGLEngine]"

    .line 10
    .line 11
    const-string p1, " mPluginGifWallpaperConsumer, skip, renderer is null"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
