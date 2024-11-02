.class public final Lcom/android/systemui/wallpaper/WallpaperAnalytics;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    return-void
.end method

.method public static getStatusId(ILcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;)Ljava/lang/String;
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x3c

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "getStatusId: mode is missing. which="

    .line 6
    .line 7
    const-string v1, "WallpaperAnalytics"

    .line 8
    .line 9
    invoke-static {v0, p0, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAnalytics$1;->$SwitchMap$com$android$systemui$wallpaper$WallpaperAnalytics$StatusField:[I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aget p1, v0, p1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string p1, "WS0004"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p1, "WS0002"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    const-string p1, "WS0003"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const-string p1, "WS0001"

    .line 50
    .line 51
    :goto_0
    if-eqz p1, :cond_5

    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_5

    .line 58
    .line 59
    const-string p0, "_C"

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_5
    return-object p1
.end method


# virtual methods
.method public final isSggApplied(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    const-string p1, "/"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-gez p1, :cond_3

    .line 38
    .line 39
    return v2

    .line 40
    :cond_3
    const/4 v0, 0x1

    .line 41
    add-int/2addr p1, v0

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    const-string/jumbo p1, "sgg"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    move v2, v0

    .line 62
    :cond_4
    return v2
.end method

.method public final setWallpaperStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "setWallpaperStatus: "

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " = "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "WallpaperAnalytics"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string/jumbo v1, "wallpaper_pref"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final updateWallpaperStatus(I)V
    .locals 12

    .line 1
    and-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    const-string v4, "WallpaperAnalytics"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-ne v0, v3, :cond_1

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string/jumbo v0, "updateWallpaperStatus : system&lock requested. which="

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    and-int/lit8 p1, p1, 0x3c

    .line 31
    .line 32
    or-int/lit8 v0, p1, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 35
    .line 36
    .line 37
    or-int/2addr p1, v1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    const-string/jumbo v5, "updateWallpaperStatus : which = "

    .line 63
    .line 64
    .line 65
    const-string v6, ". This model does not have Lockscreen wallpaper for cover display. Convering to main screen."

    .line 66
    .line 67
    invoke-static {v5, p1, v6, v4}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x6

    .line 71
    :cond_3
    and-int/lit8 v5, p1, 0x3c

    .line 72
    .line 73
    const/4 v6, 0x4

    .line 74
    iget-object v7, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getLidState()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    move v0, v3

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move v0, v2

    .line 90
    :goto_2
    and-int/lit8 p1, p1, 0x3

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    or-int/lit8 p1, p1, 0x10

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    or-int/2addr p1, v6

    .line 98
    :goto_3
    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget-object v8, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    if-eqz v8, :cond_7

    .line 111
    .line 112
    move-object v5, v8

    .line 113
    check-cast v5, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 114
    .line 115
    invoke-virtual {v5, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_7
    and-int/lit8 v0, p1, 0x3c

    .line 123
    .line 124
    invoke-virtual {v7, v0}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_8

    .line 129
    .line 130
    or-int/2addr v0, v3

    .line 131
    goto :goto_5

    .line 132
    :cond_8
    :goto_4
    move v0, p1

    .line 133
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string/jumbo v9, "updateWallpaperStatus : which="

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v9, ", sourceWhich="

    .line 145
    .line 146
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    const/4 v10, 0x3

    .line 168
    if-eqz v9, :cond_c

    .line 169
    .line 170
    if-eqz v8, :cond_c

    .line 171
    .line 172
    move-object v9, v8

    .line 173
    check-cast v9, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 174
    .line 175
    invoke-virtual {v9, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-eqz v11, :cond_c

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->isSggApplied(I)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_9
    iget-object v6, v9, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 189
    .line 190
    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 191
    .line 192
    iget-object v6, v6, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 193
    .line 194
    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_a

    .line 199
    .line 200
    if-eqz v6, :cond_a

    .line 201
    .line 202
    invoke-virtual {v6, v5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_a

    .line 207
    .line 208
    move v6, v3

    .line 209
    goto :goto_6

    .line 210
    :cond_a
    move v6, v2

    .line 211
    :goto_6
    if-eqz v6, :cond_b

    .line 212
    .line 213
    const-string v5, "Gallery Multi pack"

    .line 214
    .line 215
    goto :goto_9

    .line 216
    :cond_b
    invoke-virtual {v9, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isMultiPackApplied(I)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_12

    .line 221
    .line 222
    const-string v5, "Theme Multi pack"

    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_c
    invoke-virtual {v7, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_14

    .line 230
    .line 231
    if-eq v5, v3, :cond_13

    .line 232
    .line 233
    if-eq v5, v10, :cond_12

    .line 234
    .line 235
    if-eq v5, v6, :cond_11

    .line 236
    .line 237
    const/4 v6, 0x5

    .line 238
    if-eq v5, v6, :cond_10

    .line 239
    .line 240
    const/4 v6, 0x7

    .line 241
    if-eq v5, v6, :cond_e

    .line 242
    .line 243
    const/16 v6, 0x8

    .line 244
    .line 245
    if-eq v5, v6, :cond_d

    .line 246
    .line 247
    const-string v6, "getWallpaperTypeString: Unknown wpType. type="

    .line 248
    .line 249
    invoke-static {v6, v5, v4}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_d
    const-string v5, "Video"

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_e
    invoke-virtual {v7, v0}, Landroid/app/WallpaperManager;->isPreloadedLiveWallpaper(I)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_f

    .line 261
    .line 262
    const-string v5, "Internal live"

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_f
    const-string v5, "3rd party live"

    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_10
    const-string v5, "Gif"

    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_11
    const-string v5, "Animated"

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_12
    :goto_7
    const-string v5, "Multi pack"

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_13
    const-string v5, "Motion"

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_14
    :goto_8
    const-string v5, "Image"

    .line 281
    .line 282
    :goto_9
    sget-object v6, Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;->TYPE:Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;

    .line 283
    .line 284
    invoke-static {p1, v6}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->getStatusId(ILcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->setWallpaperStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    if-eqz v6, :cond_1a

    .line 300
    .line 301
    if-eqz v8, :cond_1a

    .line 302
    .line 303
    check-cast v8, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 304
    .line 305
    invoke-virtual {v8, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_1a

    .line 310
    .line 311
    iget-object v1, v8, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 312
    .line 313
    move-object v6, v1

    .line 314
    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 315
    .line 316
    iget-object v6, v6, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 317
    .line 318
    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_15

    .line 323
    .line 324
    if-eqz v6, :cond_15

    .line 325
    .line 326
    invoke-virtual {v6, v5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    if-eqz v6, :cond_15

    .line 331
    .line 332
    move v6, v3

    .line 333
    goto :goto_a

    .line 334
    :cond_15
    move v6, v2

    .line 335
    :goto_a
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 336
    .line 337
    iget-object v1, v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 338
    .line 339
    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_16

    .line 344
    .line 345
    if-eqz v1, :cond_16

    .line 346
    .line 347
    invoke-virtual {v1, v5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_16

    .line 352
    .line 353
    move v2, v3

    .line 354
    :cond_16
    invoke-virtual {v8, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isMultiPackApplied(I)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->isSggApplied(I)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    const-string v3, "getWallpaperSourceString: isCustomMultiPack = "

    .line 363
    .line 364
    const-string v5, ", isSgg = "

    .line 365
    .line 366
    const-string v7, ", isServiceWallpaper = "

    .line 367
    .line 368
    invoke-static {v3, v6, v5, v0, v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v5, ", isThemeMultiPack = "

    .line 376
    .line 377
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    if-eqz v0, :cond_17

    .line 391
    .line 392
    const-string v0, "SGG"

    .line 393
    .line 394
    goto/16 :goto_10

    .line 395
    .line 396
    :cond_17
    if-eqz v6, :cond_18

    .line 397
    .line 398
    goto/16 :goto_f

    .line 399
    .line 400
    :cond_18
    if-eqz v2, :cond_19

    .line 401
    .line 402
    const-string v0, "DLS"

    .line 403
    .line 404
    goto/16 :goto_10

    .line 405
    .line 406
    :cond_19
    if-eqz v1, :cond_1f

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_1a
    new-instance v2, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    .line 410
    .line 411
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    .line 412
    .line 413
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    invoke-direct {v2, v4, v0, v5}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentType()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    iget-object v6, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 433
    .line 434
    if-eqz v0, :cond_1b

    .line 435
    .line 436
    invoke-virtual {v6, v5}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    goto :goto_b

    .line 441
    :cond_1b
    iget-object v0, v6, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 442
    .line 443
    if-eqz v5, :cond_1c

    .line 444
    .line 445
    const-string/jumbo v5, "sub_display_system_wallpaper_transparency"

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    goto :goto_b

    .line 457
    :cond_1c
    const-string v5, "android.wallpaper.settings_systemui_transparency"

    .line 458
    .line 459
    invoke-virtual {v0, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    :goto_b
    if-eqz v0, :cond_20

    .line 468
    .line 469
    if-eq v0, v3, :cond_1e

    .line 470
    .line 471
    if-eq v0, v1, :cond_1d

    .line 472
    .line 473
    if-eq v0, v10, :cond_1d

    .line 474
    .line 475
    goto :goto_d

    .line 476
    :cond_1d
    :goto_c
    const-string v0, "Theme"

    .line 477
    .line 478
    goto :goto_10

    .line 479
    :cond_1e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-nez v0, :cond_1f

    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_1f
    :goto_d
    const-string v0, "Featured"

    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-nez v0, :cond_23

    .line 494
    .line 495
    const-string/jumbo v0, "prompt"

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_21

    .line 503
    .line 504
    const-string/jumbo v0, "prompt_g"

    .line 505
    .line 506
    .line 507
    goto :goto_10

    .line 508
    :cond_21
    const-string v0, "layered"

    .line 509
    .line 510
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_22

    .line 515
    .line 516
    goto :goto_f

    .line 517
    :cond_22
    :goto_e
    move-object v0, v4

    .line 518
    goto :goto_10

    .line 519
    :cond_23
    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getImageCategory()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-nez v1, :cond_24

    .line 528
    .line 529
    goto :goto_10

    .line 530
    :cond_24
    :goto_f
    const-string v0, "Custom"

    .line 531
    .line 532
    :goto_10
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;->FROM:Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;

    .line 533
    .line 534
    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->getStatusId(ILcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->setWallpaperStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    return-void
.end method
