.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/WallpaperResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDelegateBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDrawFinished()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "onDrawFinished: chaged = "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 13
    .line 14
    const-string v2, "KeyguardWallpaperController"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->update()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final onPreviewReady()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "KeyguardWallpaperController"

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isPluginLockFbeCondition()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 29
    .line 30
    check-cast v3, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    move v0, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v1

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v0, "isFbeWallpaperInDisplay: true"

    .line 52
    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move v1, v3

    .line 57
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 58
    .line 59
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 60
    .line 61
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 66
    .line 67
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, "onPreviewReady"

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " , screenId = "

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method
