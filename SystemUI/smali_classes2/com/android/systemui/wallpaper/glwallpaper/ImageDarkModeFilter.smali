.class public final Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F
    .locals 12

    .line 1
    const-string v0, "ImageDarkModeFilter"

    .line 2
    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 18
    .line 19
    and-int/lit8 v1, v1, 0x20

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v3

    .line 28
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "display_night_theme"

    .line 33
    .line 34
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ne v4, v2, :cond_1

    .line 39
    .line 40
    move v4, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v4, v3

    .line 43
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v6, "isNightMode : Window = "

    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v6, "App = "

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 81
    .line 82
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v5, "isNightMode: "

    .line 95
    .line 96
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, " ui_mode "

    .line 103
    .line 104
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    move p0, v3

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    :goto_2
    move p0, v2

    .line 118
    :goto_3
    if-eqz p0, :cond_5

    .line 119
    .line 120
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 121
    .line 122
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 129
    .line 130
    const-string v1, "display_night_theme_wallpaper"

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-ne p0, v2, :cond_4

    .line 141
    .line 142
    move p0, v2

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    move p0, v3

    .line 145
    :goto_4
    const-string v1, "isApplyToWallpaper: "

    .line 146
    .line 147
    invoke-static {v1, p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    if-eqz p0, :cond_5

    .line 151
    .line 152
    move p0, v2

    .line 153
    goto :goto_5

    .line 154
    :cond_5
    move p0, v3

    .line 155
    :goto_5
    const/4 v1, 0x3

    .line 156
    const/4 v4, 0x2

    .line 157
    const/4 v5, 0x4

    .line 158
    const/high16 v6, 0x437f0000    # 255.0f

    .line 159
    .line 160
    if-eqz p0, :cond_7

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getDarkModeDimOpacity()F

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    const-string p1, "#000000"

    .line 167
    .line 168
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v10, " Dark mode enabled : opacity :"

    .line 187
    .line 188
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const/high16 v9, 0x3e800000    # 0.25f

    .line 202
    .line 203
    cmpl-float v10, p0, v9

    .line 204
    .line 205
    if-lez v10, :cond_6

    .line 206
    .line 207
    const-string p0, " Over limit dark mode opacity. So change opacity"

    .line 208
    .line 209
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move p0, v9

    .line 213
    :cond_6
    new-array v0, v5, [F

    .line 214
    .line 215
    int-to-float v5, v7

    .line 216
    div-float/2addr v5, v6

    .line 217
    aput v5, v0, v3

    .line 218
    .line 219
    int-to-float v3, v8

    .line 220
    div-float/2addr v3, v6

    .line 221
    aput v3, v0, v2

    .line 222
    .line 223
    int-to-float p1, p1

    .line 224
    div-float/2addr p1, v6

    .line 225
    aput p1, v0, v4

    .line 226
    .line 227
    aput p0, v0, v1

    .line 228
    .line 229
    return-object v0

    .line 230
    :cond_7
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getAdaptiveDimColor()I

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getAdaptiveDimOpacity()F

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    const/4 v7, 0x0

    .line 239
    cmpl-float v7, p1, v7

    .line 240
    .line 241
    if-lez v7, :cond_9

    .line 242
    .line 243
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v11, " Adaptive dim enabled : col"

    .line 258
    .line 259
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p0, " , opacity :"

    .line 266
    .line 267
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    new-array p0, v5, [F

    .line 281
    .line 282
    int-to-float v0, v7

    .line 283
    div-float/2addr v0, v6

    .line 284
    aput v0, p0, v3

    .line 285
    .line 286
    int-to-float v0, v8

    .line 287
    div-float/2addr v0, v6

    .line 288
    aput v0, p0, v2

    .line 289
    .line 290
    int-to-float v0, v9

    .line 291
    div-float/2addr v0, v6

    .line 292
    aput v0, p0, v4

    .line 293
    .line 294
    aput p1, p0, v1

    .line 295
    .line 296
    return-object p0

    .line 297
    :cond_8
    const-string p0, " color object is null"

    .line 298
    .line 299
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_9
    const/4 p0, 0x0

    .line 303
    return-object p0
.end method
