.class public final synthetic Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

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
    iget v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->draw()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->swapBuffer()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "ImageWallpaperVideoRenderer"

    .line 31
    .line 32
    const-string v2, "Surface is invalid. Reset EGL helper."

    .line 33
    .line 34
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->reset()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iput v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void

    .line 43
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
