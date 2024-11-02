.class public final Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sScreenType:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWallpaperDataList:Ljava/util/Map;

.field public mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    :cond_0
    const/4 p1, 0x1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public static getKey(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    and-int/lit8 v1, p0, 0x10

    .line 8
    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    and-int/2addr p0, v1

    .line 16
    if-ne p0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :cond_2
    :goto_0
    return v0

    .line 21
    :cond_3
    :goto_1
    return p0
.end method


# virtual methods
.method public final getWallpaperType(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "getWallpaperType: WallpaperData is null for screen ["

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "]"

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "PluginHomeWallpaper"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p0, -0x2

    .line 49
    return p0
.end method

.method public final setWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setWallpaper() wallpaperType:"

    .line 2
    .line 3
    .line 4
    const-string v1, ", sourceType:"

    .line 5
    .line 6
    const-string v2, ", source:"

    .line 7
    .line 8
    invoke-static {v0, p2, v1, p3, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", screen:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", iCrops = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "PluginHomeWallpaper"

    .line 29
    .line 30
    invoke-static {v0, p5, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 55
    .line 56
    invoke-direct {v2, v3}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_0
    iget p1, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    .line 71
    .line 72
    const/4 v0, -0x2

    .line 73
    const/4 v4, 0x1

    .line 74
    if-eq p1, v0, :cond_2

    .line 75
    .line 76
    iget-object p1, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 77
    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    iget-object p1, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    :cond_1
    move p1, v4

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move p1, v3

    .line 87
    :goto_0
    iput p2, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    .line 88
    .line 89
    iput-object p5, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mIntelligentCrops:Ljava/lang/String;

    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    if-eqz p3, :cond_4

    .line 93
    .line 94
    const/4 p5, 0x2

    .line 95
    if-eq p3, p5, :cond_3

    .line 96
    .line 97
    const-string/jumbo p0, "setWallpaper() unsupported type!"

    .line 98
    .line 99
    .line 100
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    iput-object p2, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 109
    .line 110
    iput-object p3, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 111
    .line 112
    iput-object p2, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    .line 113
    .line 114
    move p2, v3

    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_4
    iput-object p4, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 118
    .line 119
    iput-object p2, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 120
    .line 121
    const-string p3, "[.^][^.]+$"

    .line 122
    .line 123
    const-string p5, ""

    .line 124
    .line 125
    invoke-virtual {p4, p3, p5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    const-string p5, "_rect.txt"

    .line 130
    .line 131
    invoke-static {p3, p5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    :try_start_0
    new-instance p5, Ljava/io/FileInputStream;

    .line 136
    .line 137
    invoke-direct {p5, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 141
    .line 142
    invoke-direct {v0, p5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 143
    .line 144
    .line 145
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    .line 146
    .line 147
    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    .line 149
    .line 150
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v6}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 155
    .line 156
    .line 157
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 159
    .line 160
    .line 161
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 162
    .line 163
    .line 164
    :try_start_6
    invoke-virtual {p5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catchall_0
    move-exception v6

    .line 169
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catchall_1
    move-exception v5

    .line 174
    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 178
    :catchall_2
    move-exception v5

    .line 179
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catchall_3
    move-exception v0

    .line 184
    :try_start_a
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 188
    :catchall_4
    move-exception v0

    .line 189
    :try_start_b
    invoke-virtual {p5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :catchall_5
    move-exception p5

    .line 194
    :try_start_c
    invoke-virtual {v0, p5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    :goto_3
    throw v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 198
    :catch_0
    move-exception p5

    .line 199
    invoke-virtual {p5}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :catch_1
    new-instance p5, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v0, "getRect, "

    .line 206
    .line 207
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v0, " is not available"

    .line 214
    .line 215
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p5

    .line 222
    invoke-static {v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    :goto_4
    new-instance p5, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v0, "getRect, rectPath: "

    .line 228
    .line 229
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p3, ", rect: "

    .line 236
    .line 237
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    iput-object p2, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    .line 251
    .line 252
    const-string/jumbo p2, "wallpaper_0"

    .line 253
    .line 254
    .line 255
    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string/jumbo p4, "setWallpaper() mWallpaperUpdateCallback:"

    .line 262
    .line 263
    .line 264
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object p4, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 268
    .line 269
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 280
    .line 281
    if-eqz p0, :cond_6

    .line 282
    .line 283
    if-nez p1, :cond_5

    .line 284
    .line 285
    if-eqz p2, :cond_5

    .line 286
    .line 287
    move v3, v4

    .line 288
    :cond_5
    invoke-interface {p0, v3}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    .line 289
    .line 290
    .line 291
    :cond_6
    return-void
.end method
