.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEnableMDMWallpaper()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 4
    .line 5
    const-string v0, "onEnableMDMWallpaper"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x25d

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onMDMWallpaperChanged()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 4
    .line 5
    const-string v0, "onMDMWallpaperChanged"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x25e

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
