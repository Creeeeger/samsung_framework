.class public Lcom/android/systemui/keyguardimage/KeyguardImageProvider;
.super Landroid/content/ContentProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field public mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field public mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field public final mHandler:Landroid/os/Handler;

.field public mWasShortcutEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget p0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 13
    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    const-string p0, "image/jpeg"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "image/png"

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "KeyguardImageProvider"

    .line 4
    .line 5
    const-string/jumbo v2, "openFile() %s / pid: %d"

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v2, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_19

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    move-object/from16 v3, p1

    .line 35
    .line 36
    invoke-static {v0, v3, v2}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_18

    .line 41
    .line 42
    const-string v5, "KeyguardImageProvider"

    .line 43
    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v7, "openFile() imageOption "

    .line 47
    .line 48
    .line 49
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const-string v5, "image/png"

    .line 67
    .line 68
    iget v6, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    const/4 v8, 0x0

    .line 72
    if-eq v6, v7, :cond_16

    .line 73
    .line 74
    const/4 v9, 0x5

    .line 75
    if-ne v6, v9, :cond_0

    .line 76
    .line 77
    goto/16 :goto_e

    .line 78
    .line 79
    :cond_0
    const/4 v9, 0x2

    .line 80
    if-eq v6, v9, :cond_13

    .line 81
    .line 82
    const/4 v10, 0x4

    .line 83
    if-ne v6, v10, :cond_1

    .line 84
    .line 85
    goto/16 :goto_b

    .line 86
    .line 87
    :cond_1
    const/4 v11, 0x3

    .line 88
    if-ne v6, v11, :cond_2

    .line 89
    .line 90
    move v6, v7

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v6, v2

    .line 93
    :goto_0
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v12, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 95
    .line 96
    if-nez v12, :cond_3

    .line 97
    .line 98
    new-array v12, v7, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 99
    .line 100
    new-instance v13, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    .line 101
    .line 102
    invoke-direct {v13, v0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    aput-object v13, v12, v2

    .line 106
    .line 107
    iput-object v12, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 108
    .line 109
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    const-string v13, "lockscreen_show_shortcut"

    .line 115
    .line 116
    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-ne v12, v7, :cond_4

    .line 121
    .line 122
    move v12, v7

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move v12, v2

    .line 125
    :goto_1
    const-string v13, "KeyguardImageProvider"

    .line 126
    .line 127
    const-string v14, "getImageCreator isShortcutEnabled= "

    .line 128
    .line 129
    const-string v15, ", wasShortcutEnabled= "

    .line 130
    .line 131
    invoke-static {v14, v12, v15}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    iget-boolean v15, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    .line 136
    .line 137
    invoke-static {v14, v15, v13}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-boolean v13, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    .line 141
    .line 142
    if-eq v13, v12, :cond_5

    .line 143
    .line 144
    move v13, v7

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move v13, v2

    .line 147
    :goto_2
    iput-boolean v12, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mWasShortcutEnabled:Z

    .line 148
    .line 149
    if-nez v12, :cond_6

    .line 150
    .line 151
    if-nez v6, :cond_6

    .line 152
    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 155
    .line 156
    monitor-exit p0

    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :catchall_0
    move-exception v0

    .line 160
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    throw v0

    .line 162
    :cond_6
    monitor-enter p0

    .line 163
    if-eqz v12, :cond_8

    .line 164
    .line 165
    :try_start_2
    iget-object v14, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 166
    .line 167
    if-eqz v14, :cond_7

    .line 168
    .line 169
    array-length v14, v14

    .line 170
    if-ge v14, v11, :cond_8

    .line 171
    .line 172
    :cond_7
    new-array v14, v11, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 173
    .line 174
    iget-object v15, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 175
    .line 176
    aget-object v15, v15, v2

    .line 177
    .line 178
    aput-object v15, v14, v2

    .line 179
    .line 180
    new-instance v15, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;

    .line 181
    .line 182
    invoke-direct {v15, v0}, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    aput-object v15, v14, v7

    .line 186
    .line 187
    new-instance v15, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;

    .line 188
    .line 189
    invoke-direct {v15, v0}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    aput-object v15, v14, v9

    .line 193
    .line 194
    iput-object v14, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catchall_1
    move-exception v0

    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_8
    if-nez v12, :cond_9

    .line 201
    .line 202
    iget-object v14, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 203
    .line 204
    if-nez v14, :cond_9

    .line 205
    .line 206
    iget-object v14, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 207
    .line 208
    iput-object v14, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 209
    .line 210
    :cond_9
    :goto_3
    iget-object v14, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 211
    .line 212
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    if-eqz v6, :cond_d

    .line 214
    .line 215
    monitor-enter p0

    .line 216
    :try_start_3
    iget-object v6, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 217
    .line 218
    if-eqz v6, :cond_a

    .line 219
    .line 220
    if-eqz v13, :cond_c

    .line 221
    .line 222
    :cond_a
    iput-object v8, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 223
    .line 224
    if-eqz v12, :cond_b

    .line 225
    .line 226
    new-array v6, v10, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 227
    .line 228
    new-instance v10, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;

    .line 229
    .line 230
    invoke-direct {v10, v0}, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    aput-object v10, v6, v2

    .line 234
    .line 235
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 236
    .line 237
    aget-object v0, v0, v2

    .line 238
    .line 239
    aput-object v0, v6, v7

    .line 240
    .line 241
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 242
    .line 243
    aget-object v10, v0, v7

    .line 244
    .line 245
    aput-object v10, v6, v9

    .line 246
    .line 247
    aget-object v0, v0, v9

    .line 248
    .line 249
    aput-object v0, v6, v11

    .line 250
    .line 251
    iput-object v6, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_b
    new-array v6, v9, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 255
    .line 256
    new-instance v9, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;

    .line 257
    .line 258
    invoke-direct {v9, v0}, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    aput-object v9, v6, v2

    .line 262
    .line 263
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 264
    .line 265
    aget-object v0, v0, v2

    .line 266
    .line 267
    aput-object v0, v6, v7

    .line 268
    .line 269
    iput-object v6, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 270
    .line 271
    :cond_c
    :goto_4
    iget-object v0, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 272
    .line 273
    monitor-exit p0

    .line 274
    goto :goto_5

    .line 275
    :catchall_2
    move-exception v0

    .line 276
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 277
    throw v0

    .line 278
    :cond_d
    move-object v0, v14

    .line 279
    :goto_5
    iget v6, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 280
    .line 281
    if-ne v6, v11, :cond_e

    .line 282
    .line 283
    const-string v5, "image/jpeg"

    .line 284
    .line 285
    :cond_e
    iget v6, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 286
    .line 287
    iget v9, v4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 288
    .line 289
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 290
    .line 291
    invoke-static {v6, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    new-instance v9, Landroid/graphics/Canvas;

    .line 296
    .line 297
    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    .line 299
    .line 300
    new-instance v10, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 301
    .line 302
    invoke-direct {v10, v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 303
    .line 304
    .line 305
    iget-object v11, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    .line 306
    .line 307
    new-instance v12, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;

    .line 308
    .line 309
    invoke-direct {v12, v0, v4, v10, v7}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    .line 314
    .line 315
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 316
    .line 317
    const-wide/16 v11, 0xbb8

    .line 318
    .line 319
    invoke-virtual {v10, v11, v12, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    move-object v4, v0

    .line 324
    check-cast v4, Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 325
    .line 326
    if-eqz v4, :cond_10

    .line 327
    .line 328
    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-lez v0, :cond_10

    .line 333
    .line 334
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    if-eqz v7, :cond_f

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    check-cast v7, Landroid/util/Pair;

    .line 349
    .line 350
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v10, Landroid/graphics/Bitmap;

    .line 353
    .line 354
    new-instance v11, Landroid/graphics/Rect;

    .line 355
    .line 356
    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 357
    .line 358
    move-object v13, v12

    .line 359
    check-cast v13, Landroid/graphics/Point;

    .line 360
    .line 361
    iget v13, v13, Landroid/graphics/Point;->x:I

    .line 362
    .line 363
    move-object v14, v12

    .line 364
    check-cast v14, Landroid/graphics/Point;

    .line 365
    .line 366
    iget v14, v14, Landroid/graphics/Point;->y:I

    .line 367
    .line 368
    check-cast v12, Landroid/graphics/Point;

    .line 369
    .line 370
    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 371
    .line 372
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 373
    .line 374
    .line 375
    move-result v15

    .line 376
    add-int/2addr v12, v15

    .line 377
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v7, Landroid/graphics/Point;

    .line 380
    .line 381
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 382
    .line 383
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 384
    .line 385
    .line 386
    move-result v15

    .line 387
    add-int/2addr v7, v15

    .line 388
    invoke-direct {v11, v13, v14, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v9, v10, v8, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :catch_0
    move-exception v0

    .line 400
    goto :goto_7

    .line 401
    :catch_1
    move-exception v0

    .line 402
    move-object v4, v8

    .line 403
    :goto_7
    move-object v8, v0

    .line 404
    :cond_10
    :goto_8
    if-nez v8, :cond_11

    .line 405
    .line 406
    if-nez v4, :cond_17

    .line 407
    .line 408
    :cond_11
    const-string v0, "KeyguardImageProvider"

    .line 409
    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string/jumbo v2, "openFile failed "

    .line 413
    .line 414
    .line 415
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    if-eqz v8, :cond_12

    .line 419
    .line 420
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    goto :goto_9

    .line 425
    :cond_12
    const-string v2, ""

    .line 426
    .line 427
    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 438
    .line 439
    const-string/jumbo v1, "operation failed"

    .line 440
    .line 441
    .line 442
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0

    .line 446
    :goto_a
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 447
    throw v0

    .line 448
    :catchall_3
    move-exception v0

    .line 449
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 450
    throw v0

    .line 451
    :cond_13
    :goto_b
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 452
    .line 453
    invoke-direct {v0, v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 454
    .line 455
    .line 456
    iget-object v6, v1, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    .line 457
    .line 458
    new-instance v7, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;

    .line 459
    .line 460
    invoke-direct {v7, v1, v4, v0, v2}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    .line 465
    .line 466
    :try_start_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 467
    .line 468
    const-wide/16 v6, 0xbb8

    .line 469
    .line 470
    invoke-virtual {v0, v6, v7, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    move-object v4, v0

    .line 475
    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 476
    .line 477
    if-nez v4, :cond_14

    .line 478
    .line 479
    :try_start_9
    const-string v0, "KeyguardImageProvider"

    .line 480
    .line 481
    const-string/jumbo v6, "openFile, clock bitmap is null"

    .line 482
    .line 483
    .line 484
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 485
    .line 486
    .line 487
    goto :goto_d

    .line 488
    :catch_2
    move-exception v0

    .line 489
    goto :goto_c

    .line 490
    :catch_3
    move-exception v0

    .line 491
    move-object v4, v8

    .line 492
    :goto_c
    move-object v8, v0

    .line 493
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    .line 495
    .line 496
    :cond_14
    :goto_d
    if-nez v8, :cond_15

    .line 497
    .line 498
    goto :goto_f

    .line 499
    :cond_15
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 500
    .line 501
    const-string/jumbo v1, "operation failed"

    .line 502
    .line 503
    .line 504
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v0

    .line 508
    :cond_16
    :goto_e
    const-string v5, "image/jpeg"

    .line 509
    .line 510
    new-instance v0, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;

    .line 511
    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    invoke-direct {v0, v6}, Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;-><init>(Landroid/content/Context;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v4, v8}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    :goto_f
    move-object v6, v4

    .line 524
    :cond_17
    const/4 v4, 0x0

    .line 525
    new-instance v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;

    .line 526
    .line 527
    invoke-direct {v0, v2}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;-><init>(I)V

    .line 528
    .line 529
    .line 530
    move-object/from16 v1, p0

    .line 531
    .line 532
    move-object/from16 v2, p1

    .line 533
    .line 534
    move-object v3, v5

    .line 535
    move-object v5, v6

    .line 536
    move-object v6, v0

    .line 537
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    return-object v0

    .line 542
    :cond_18
    const-string v0, "KeyguardImageProvider"

    .line 543
    .line 544
    const-string/jumbo v1, "wrong uri"

    .line 545
    .line 546
    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 551
    .line 552
    const-string/jumbo v1, "wrong uri"

    .line 553
    .line 554
    .line 555
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw v0

    .line 559
    :cond_19
    const-string v0, "KeyguardImageProvider"

    .line 560
    .line 561
    const-string/jumbo v1, "not prepared"

    .line 562
    .line 563
    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 568
    .line 569
    const-string v1, "illegal state"

    .line 570
    .line 571
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
