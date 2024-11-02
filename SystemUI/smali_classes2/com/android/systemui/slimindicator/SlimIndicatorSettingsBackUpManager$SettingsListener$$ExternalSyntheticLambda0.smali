.class public final synthetic Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "icon_blacklist"

    .line 16
    .line 17
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mCachedBlackListDBValue:Ljava/lang/String;

    .line 26
    .line 27
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 36
    .line 37
    const-string/jumbo v3, "swipe_directly_to_quick_setting_area"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyArea:I

    .line 49
    .line 50
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 57
    .line 58
    const-string/jumbo v3, "swipe_directly_to_quick_setting_position"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mPanelSwipeDirectlyPosition:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixEnabled:Z

    .line 82
    .line 83
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 90
    .line 91
    const-string/jumbo v3, "quickstar_qs_tile_layout_custom_matrix_width"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixButtonWidth:I

    .line 103
    .line 104
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isApplyWallpaperThemeToNotif()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iput-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mNotificationApplyWallpaperThemeEnabled:Z

    .line 115
    .line 116
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 123
    .line 124
    const-string/jumbo v2, "quickstar_indicator_clock_date_format"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iput v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIndicatorClockDateFormat:I

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v2, "backUpValues(DONE) mIsBackup:"

    .line 140
    .line 141
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, " ["

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, "] >> ["

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, "]"

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "[QuickStar]SlimIndicatorSettingsBackUpManager"

    .line 179
    .line 180
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    .line 185
    .line 186
    return-void
.end method
