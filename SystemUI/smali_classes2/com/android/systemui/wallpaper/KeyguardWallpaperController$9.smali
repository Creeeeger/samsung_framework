.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMultipackApplied(II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const-string v1, "lockscreen_wallpaper"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "lockscreen_wallpaper_sub"

    .line 12
    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "put settings "

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    move p2, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p2, 0x0

    .line 37
    :goto_1
    invoke-virtual {v2, p2}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled(Z)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    if-eqz p1, :cond_6

    .line 52
    .line 53
    if-eq p1, v0, :cond_5

    .line 54
    .line 55
    const/4 p2, 0x2

    .line 56
    if-eq p1, p2, :cond_4

    .line 57
    .line 58
    const/4 p2, 0x3

    .line 59
    if-eq p1, p2, :cond_3

    .line 60
    .line 61
    const-string p1, "UNKNOWN"

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const-string p1, "APPLY_MULTIPACK_RESULT_FAIL_DLS_INTERNAL_ERROR"

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const-string p1, "APPLY_MULTIPACK_RESULT_FAIL_LIVE_WALLPAPER"

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const-string p1, "APPLY_MULTIPACK_RESULT_FAIL_RETRY_COUNT_OVER"

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_6
    const-string p1, "APPLY_MULTIPACK_RESULT_SUCCESS"

    .line 74
    .line 75
    :goto_2
    const-string p2, "onMultipackApplied: reason = "

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
