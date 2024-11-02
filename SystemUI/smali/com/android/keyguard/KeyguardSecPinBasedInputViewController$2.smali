.class public final Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

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
    .locals 7

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    .line 15
    .line 16
    const-string v4, "KeyguardSecPinBasedInputViewController"

    .line 17
    .line 18
    if-eq v3, v0, :cond_2

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v5, "night mode changed : "

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    .line 29
    .line 30
    const-string v6, " -> "

    .line 31
    .line 32
    invoke-static {v3, v5, v6, v0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    .line 36
    .line 37
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-wide v5, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    .line 46
    .line 47
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v5, v6, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string v0, "Can\'t apply night mode! NOT supported OPEN THEME feature"

    .line 60
    .line 61
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    .line 77
    .line 78
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 83
    .line 84
    if-eq p1, v0, :cond_4

    .line 85
    .line 86
    const-string/jumbo p1, "onConfigurationChanged()"

    .line 87
    .line 88
    .line 89
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->skipUpdateWhenCloseFolder()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    .line 104
    .line 105
    .line 106
    :cond_4
    return-void
.end method
