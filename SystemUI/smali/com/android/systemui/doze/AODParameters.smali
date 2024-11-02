.class public final Lcom/android/systemui/doze/AODParameters;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAODSettingStateCallback:Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;

.field public mDozeAlwaysOn:Z

.field public mDozeUiState:Z

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/AODParameters;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mAODSettingStateCallback:Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/systemui/doze/AODParameters;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 19
    .line 20
    const-string p2, "aod_mode"

    .line 21
    .line 22
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string p2, "aod_tap_to_show_mode"

    .line 27
    .line 28
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string p2, "aod_mode_start_time"

    .line 33
    .line 34
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string p2, "aod_mode_end_time"

    .line 39
    .line 40
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string p2, "aod_show_for_new_noti"

    .line 45
    .line 46
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string p2, "aod_show_lockscreen_wallpaper"

    .line 51
    .line 52
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    filled-new-array/range {v1 .. v6}, [Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    .line 64
    .line 65
    .line 66
    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    new-instance p1, Lcom/android/systemui/doze/AODParameters$1;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/android/systemui/doze/AODParameters$1;-><init>(Lcom/android/systemui/doze/AODParameters;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p3, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public final updateDozeAlwaysOn()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 8
    .line 9
    const-string v3, "aod_tap_to_show_mode"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move v2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v4

    .line 26
    :goto_0
    iget-object v5, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 27
    .line 28
    const-string v6, "aod_show_for_new_noti"

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    move v5, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v5, v4

    .line 43
    :goto_1
    if-nez v1, :cond_2

    .line 44
    .line 45
    iput-boolean v4, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    .line 46
    .line 47
    goto :goto_5

    .line 48
    :cond_2
    if-nez v2, :cond_9

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 54
    .line 55
    const-string v2, "aod_mode_start_time"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 66
    .line 67
    const-string v2, "aod_mode_end_time"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-ne v1, v0, :cond_5

    .line 78
    .line 79
    :cond_4
    :goto_2
    move v0, v3

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/16 v5, 0xb

    .line 86
    .line 87
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/16 v6, 0xc

    .line 92
    .line 93
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    mul-int/lit8 v5, v5, 0x3c

    .line 98
    .line 99
    add-int/2addr v5, v2

    .line 100
    if-ge v1, v0, :cond_6

    .line 101
    .line 102
    if-lt v5, v1, :cond_7

    .line 103
    .line 104
    if-ge v5, v0, :cond_7

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    if-ge v5, v1, :cond_4

    .line 108
    .line 109
    if-ge v5, v0, :cond_7

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    move v0, v4

    .line 113
    :goto_3
    if-nez v0, :cond_8

    .line 114
    .line 115
    iput-boolean v4, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_8
    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_9
    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    .line 122
    .line 123
    :goto_5
    return-void
.end method
