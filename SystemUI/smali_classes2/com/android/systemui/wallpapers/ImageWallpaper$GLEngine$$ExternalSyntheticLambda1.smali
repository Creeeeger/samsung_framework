.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$1:I

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$2:I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->finishRendering()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {v0, v0, v1, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 39
    .line 40
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 41
    .line 42
    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$1:I

    .line 43
    .line 44
    iget p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;->f$2:I

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 47
    .line 48
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->onSurfaceChanged(II)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
