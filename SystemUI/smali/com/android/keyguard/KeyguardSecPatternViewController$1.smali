.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    .line 3
    and-int/lit8 p1, p1, 0x20

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    .line 14
    .line 15
    if-eq v1, p1, :cond_2

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "night mode changed : "

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    .line 26
    .line 27
    const-string v3, " -> "

    .line 28
    .line 29
    const-string v4, "KeyguardSecPatternViewController"

    .line 30
    .line 31
    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    .line 35
    .line 36
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-wide v1, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    .line 45
    .line 46
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string p0, "Can\'t apply night mode! NOT supported OPEN THEME feature"

    .line 59
    .line 60
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    return-void
.end method
