.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const-string p0, "KeyguardTransitionWallpaper"

    .line 19
    .line 20
    const-string v2, "capture start "

    .line 21
    .line 22
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mCaptureStart:Z

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->updateBitmap()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 32
    .line 33
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v1, v3

    .line 42
    :goto_0
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 43
    .line 44
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onWallpaperConsumed(IZ)V

    .line 45
    .line 46
    .line 47
    :goto_1
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$1;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-string v0, "KeyguardTransitionWallpaper"

    .line 60
    .line 61
    const-string v2, "onAnimationStart: Request dls color."

    .line 62
    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 69
    .line 70
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onWallpaperConsumed(IZ)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
