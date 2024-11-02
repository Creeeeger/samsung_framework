.class public final Lcom/android/systemui/edgelighting/backup/BRUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/backup/BRUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/edgelighting/backup/BRUtils;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/backup/BRUtils;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method


# virtual methods
.method public final restoreSettingValue(ZLjava/io/File;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, v0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->itemsList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x1

    .line 15
    move v1, v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_15

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v3, v2, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, v2, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, " "

    .line 38
    .line 39
    const-string v6, "BRUtils_systemui"

    .line 40
    .line 41
    if-eqz v4, :cond_14

    .line 42
    .line 43
    if-eqz v3, :cond_14

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_2
    const-string v7, "edge_lighting_version"

    .line 50
    .line 51
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    const/4 v9, 0x0

    .line 56
    if-eqz v8, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-ne v2, v0, :cond_0

    .line 67
    .line 68
    move v1, v9

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    sget-boolean v7, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    .line 71
    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    const-string/jumbo v7, "turn_over_lighting"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const-string v7, "edge_lighting_basic_color_index"

    .line 85
    .line 86
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v3, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->rematchingSimilarColorChip(Landroid/content/ContentResolver;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    sparse-switch v7, :sswitch_data_0

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :sswitch_0
    const-string v7, "STRING_SYSTEM"

    .line 114
    .line 115
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_6

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_6
    const/16 v3, 0xb

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :sswitch_1
    const-string v7, "STRING_GLOBAL"

    .line 128
    .line 129
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_7

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_7
    const/16 v3, 0xa

    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :sswitch_2
    const-string v7, "EDGE_LIGHTING_CUSTOM_TEXT_FILTER"

    .line 142
    .line 143
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_8

    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :cond_8
    const/16 v3, 0x9

    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :sswitch_3
    const-string v7, "INT_SYSTEM"

    .line 156
    .line 157
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_9

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_9
    const/16 v3, 0x8

    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :sswitch_4
    const-string v7, "EDGE_LIGHTING_APP_LIST_SETTING"

    .line 170
    .line 171
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_a

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_a
    const/4 v3, 0x7

    .line 179
    goto :goto_2

    .line 180
    :sswitch_5
    const-string v7, "EDGE_LIGHTING_SETTINGS"

    .line 181
    .line 182
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_b

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_b
    const/4 v3, 0x6

    .line 190
    goto :goto_2

    .line 191
    :sswitch_6
    const-string v7, "INT_GLOBAL"

    .line 192
    .line 193
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_c

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_c
    const/4 v3, 0x5

    .line 201
    goto :goto_2

    .line 202
    :sswitch_7
    const-string v7, "INT_SHARED_PREFERENCE"

    .line 203
    .line 204
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-nez v3, :cond_d

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_d
    const/4 v3, 0x4

    .line 212
    goto :goto_2

    .line 213
    :sswitch_8
    const-string v7, "EDGE_LIGHTING_CUSTOM_COLOR_LIST_SETTING"

    .line 214
    .line 215
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-nez v3, :cond_e

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_e
    const/4 v3, 0x3

    .line 223
    goto :goto_2

    .line 224
    :sswitch_9
    const-string v7, "FLOAT_SYSTEM"

    .line 225
    .line 226
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-nez v3, :cond_f

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_f
    const/4 v3, 0x2

    .line 234
    goto :goto_2

    .line 235
    :sswitch_a
    const-string v7, "BOOLEAN_SHARED_PREFERENCE"

    .line 236
    .line 237
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_10

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_10
    move v3, v0

    .line 245
    goto :goto_2

    .line 246
    :sswitch_b
    const-string v7, "FLOAT_GLOBAL"

    .line 247
    .line 248
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-nez v3, :cond_11

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_11
    move v3, v9

    .line 256
    goto :goto_2

    .line 257
    :goto_1
    const/4 v3, -0x1

    .line 258
    :goto_2
    const-string v7, "cocktailbar_shared_prefs"

    .line 259
    .line 260
    packed-switch v3, :pswitch_data_0

    .line 261
    .line 262
    .line 263
    goto/16 :goto_3

    .line 264
    .line 265
    :pswitch_0
    const-string v3, "edge_lighting_style_type_str"

    .line 266
    .line 267
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-eqz v3, :cond_13

    .line 272
    .line 273
    if-eqz v1, :cond_12

    .line 274
    .line 275
    const-string/jumbo v3, "preload/basic"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_12

    .line 283
    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const-string/jumbo v7, "preload/noframe"

    .line 289
    .line 290
    .line 291
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    const-string v3, "edgelighting style will be restored from basic to noFrame"

    .line 295
    .line 296
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :pswitch_2
    new-instance v3, Landroid/content/ContentValues;

    .line 329
    .line 330
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v7, "custom_text_filter_color"

    .line 334
    .line 335
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    sget-object v8, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TEXT_FILTER_CONTENT_URI:Landroid/net/Uri;

    .line 343
    .line 344
    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 345
    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    .line 359
    .line 360
    goto/16 :goto_3

    .line 361
    .line 362
    :pswitch_4
    new-instance v3, Landroid/content/ContentValues;

    .line 363
    .line 364
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v7, "app_list"

    .line 368
    .line 369
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    sget-object v8, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->APP_LIST_CONTENT_URI:Landroid/net/Uri;

    .line 377
    .line 378
    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 379
    .line 380
    .line 381
    goto :goto_3

    .line 382
    :pswitch_5
    new-instance v3, Landroid/content/ContentValues;

    .line 383
    .line 384
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    sget-object v8, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 395
    .line 396
    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 397
    .line 398
    .line 399
    goto :goto_3

    .line 400
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    .line 410
    .line 411
    goto :goto_3

    .line 412
    :pswitch_7
    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    .line 426
    .line 427
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 428
    .line 429
    .line 430
    goto :goto_3

    .line 431
    :pswitch_8
    new-instance v3, Landroid/content/ContentValues;

    .line 432
    .line 433
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v7, "custom_color_list"

    .line 437
    .line 438
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    sget-object v8, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->CUSTOM_COLOR_LIST_CONTENT_URI:Landroid/net/Uri;

    .line 446
    .line 447
    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 448
    .line 449
    .line 450
    goto :goto_3

    .line 451
    :pswitch_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 460
    .line 461
    .line 462
    goto :goto_3

    .line 463
    :pswitch_a
    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 476
    .line 477
    .line 478
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 479
    .line 480
    .line 481
    goto :goto_3

    .line 482
    :pswitch_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 491
    .line 492
    .line 493
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string/jumbo v7, "restore Setting  Value - "

    .line 496
    .line 497
    .line 498
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :cond_14
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p0

    .line 543
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    :cond_15
    return-void

    .line 547
    :sswitch_data_0
    .sparse-switch
        -0x74aef0fa -> :sswitch_b
        -0x63917382 -> :sswitch_a
        -0x5f7b826e -> :sswitch_9
        -0x5f43df18 -> :sswitch_8
        -0x49e8137b -> :sswitch_7
        0xa99c213 -> :sswitch_6
        0xd2091f4 -> :sswitch_5
        0x1d9ce5de -> :sswitch_4
        0x1fcd309f -> :sswitch_3
        0x24c3938d -> :sswitch_2
        0x50311b91 -> :sswitch_1
        0x65648a1d -> :sswitch_0
    .end sparse-switch

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
