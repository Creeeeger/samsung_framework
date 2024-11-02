.class public final Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;
.super Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v1, "WallpaperImageCreator"

    .line 2
    .line 3
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    const-class v0, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v4, v0

    .line 19
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 20
    .line 21
    sget-object v5, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 22
    .line 23
    sget-object v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 24
    .line 25
    new-instance v7, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 26
    .line 27
    invoke-direct {v7}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;-><init>()V

    .line 28
    .line 29
    .line 30
    move-object v0, p0

    .line 31
    move-object v2, p1

    .line 32
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
