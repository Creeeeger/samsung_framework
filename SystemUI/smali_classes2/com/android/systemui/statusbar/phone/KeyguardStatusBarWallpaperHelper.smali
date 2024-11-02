.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public fontColorFromWallPaper:I

.field public fontColorType:I

.field public intensity:F

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public listener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->updateIconsAndTextColors()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateIconsAndTextColors()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 5
    .line 6
    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 7
    .line 8
    const-wide/16 v2, 0x10

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq v1, v3, :cond_0

    .line 25
    .line 26
    const v0, -0x12000001

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/high16 v0, -0x4d000000

    .line 36
    .line 37
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorFromWallPaper:I

    .line 38
    .line 39
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    .line 40
    .line 41
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->intensity:F

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->listener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;

    .line 59
    .line 60
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 64
    .line 65
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x10

    .line 2
    .line 3
    and-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->updateIconsAndTextColors()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
