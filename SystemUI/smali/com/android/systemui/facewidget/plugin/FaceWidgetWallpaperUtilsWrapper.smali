.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWallpaperUtils;


# instance fields
.field public final mCallbackMap:Ljava/util/HashMap;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getColorByName(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final hasAdaptiveColorResult()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isOpenThemeLook()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isWhiteSubUiWallpaper(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    int-to-long v1, p1

    .line 6
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 7
    .line 8
    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    .line 21
    move v0, p1

    .line 22
    :cond_1
    return v0
.end method

.method public final declared-synchronized registerCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->registerCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized registerCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    .locals 5

    const-string/jumbo v0, "registerCallback: flags = "

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$$ExternalSyntheticLambda0;-><init>()V

    .line 5
    new-instance v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;

    new-instance v3, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v4, Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    invoke-direct {v3, v4, p2, v1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {v3}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    invoke-direct {v2, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;-><init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p2, p3

    .line 7
    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "FaceWidgetWallpaperUtilsWrapper"

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v2, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 13
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized registerSubUiCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->registerCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public final declared-synchronized removeCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->removeCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 10
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized removeSubUiCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->removeCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method
