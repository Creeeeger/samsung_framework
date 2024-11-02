.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "onFolderStateChanged: isOpened = "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/16 p1, 0x12

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x6

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x2

    .line 35
    :goto_0
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 36
    .line 37
    if-eq v0, p1, :cond_5

    .line 38
    .line 39
    const-string v0, "onFolderStateChanged: which = "

    .line 40
    .line 41
    const-string v1, ", previous which = "

    .line 42
    .line 43
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 48
    .line 49
    const-string v2, "KeyguardWallpaperController"

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    const-string p1, "onFolderStateChanged, remove clean-up runnable"

    .line 64
    .line 65
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    const-string p1, "onFolderStateChanged, remove set background runnable"

    .line 80
    .line 81
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 92
    .line 93
    const/16 v0, 0x264

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    const-string p1, "onFolderStateChanged, remove MSG_WALLPAPER_DISPLAY_CHANGED"

    .line 102
    .line 103
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    const/4 p1, 0x0

    .line 112
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    return-void
.end method
