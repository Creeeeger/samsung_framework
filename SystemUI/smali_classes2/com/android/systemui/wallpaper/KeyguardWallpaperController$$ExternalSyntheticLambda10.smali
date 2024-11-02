.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final synthetic f$1:Landroid/app/SemWallpaperColors;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;->f$1:Landroid/app/SemWallpaperColors;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;->f$1:Landroid/app/SemWallpaperColors;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 19
    .line 20
    const-string/jumbo v5, "setSemWallpaperColors: Nothing to do for which = "

    .line 21
    .line 22
    .line 23
    const-string v6, "KeyguardWallpaperColors"

    .line 24
    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    sget-boolean v9, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 30
    .line 31
    if-eqz v9, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    and-int/lit8 v9, p0, 0x2

    .line 35
    .line 36
    const/4 v10, 0x2

    .line 37
    if-eq v9, v10, :cond_2

    .line 38
    .line 39
    invoke-static {v5, p0, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_1
    :goto_0
    and-int/lit8 v9, p0, 0x2

    .line 45
    .line 46
    if-nez v9, :cond_2

    .line 47
    .line 48
    and-int/lit8 v9, p0, 0x10

    .line 49
    .line 50
    if-nez v9, :cond_2

    .line 51
    .line 52
    and-int/lit8 v9, p0, 0x20

    .line 53
    .line 54
    if-nez v9, :cond_2

    .line 55
    .line 56
    invoke-static {v5, p0, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    iget-object v5, v2, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object v5, v2, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 71
    .line 72
    :goto_1
    iget-object v9, v2, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    const-string/jumbo v10, "setSemWallpaperColors: userId = "

    .line 77
    .line 78
    .line 79
    const-string v11, ", colors = "

    .line 80
    .line 81
    invoke-static {v10, v3, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance v10, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 100
    .line 101
    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    const/4 v13, 0x0

    .line 110
    invoke-direct {v10, v1, v11, v12, v13}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    check-cast v11, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 118
    .line 119
    invoke-virtual {v2, v11, v10}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v11

    .line 123
    invoke-virtual {v5, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move-wide v11, v7

    .line 128
    :goto_2
    if-eqz v4, :cond_5

    .line 129
    .line 130
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_9

    .line 135
    .line 136
    :cond_5
    cmp-long v2, v11, v7

    .line 137
    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string/jumbo v4, "writeSettingsWallpaperColors() flags = "

    .line 143
    .line 144
    .line 145
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    if-nez v2, :cond_6

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    if-eqz v1, :cond_9

    .line 162
    .line 163
    const-wide/16 v2, 0x200

    .line 164
    .line 165
    and-long v4, v11, v2

    .line 166
    .line 167
    cmp-long v4, v4, v7

    .line 168
    .line 169
    const/4 v5, -0x2

    .line 170
    if-eqz v4, :cond_7

    .line 171
    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iget-object v3, v9, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string/jumbo v4, "white_lockscreen_wallpaper"

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 192
    .line 193
    .line 194
    iget-object v3, v9, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    iput v2, v3, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 201
    .line 202
    :cond_7
    const-wide/16 v2, 0x10

    .line 203
    .line 204
    and-long v13, v11, v2

    .line 205
    .line 206
    cmp-long v4, v13, v7

    .line 207
    .line 208
    if-eqz v4, :cond_8

    .line 209
    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-eqz v2, :cond_8

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    iget-object v3, v9, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    const-string/jumbo v4, "white_lockscreen_statusbar"

    .line 227
    .line 228
    .line 229
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 230
    .line 231
    .line 232
    iget-object v3, v9, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 233
    .line 234
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    iput v2, v3, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 239
    .line 240
    :cond_8
    const-wide/16 v2, 0x100

    .line 241
    .line 242
    and-long v13, v11, v2

    .line 243
    .line 244
    cmp-long v4, v13, v7

    .line 245
    .line 246
    if-eqz v4, :cond_9

    .line 247
    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-eqz v2, :cond_9

    .line 253
    .line 254
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iget-object v3, v9, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const-string/jumbo v4, "white_lockscreen_navigationbar"

    .line 265
    .line 266
    .line 267
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 268
    .line 269
    .line 270
    iget-object v3, v9, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    iput v2, v3, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 277
    .line 278
    :cond_9
    :goto_3
    move-wide v7, v11

    .line 279
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 280
    .line 281
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    invoke-virtual {v2, p0, v7, v8, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    .line 286
    .line 287
    .line 288
    iget-object p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 289
    .line 290
    if-eqz p0, :cond_a

    .line 291
    .line 292
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateThumbnail()V

    .line 293
    .line 294
    .line 295
    :cond_a
    return-void
.end method
