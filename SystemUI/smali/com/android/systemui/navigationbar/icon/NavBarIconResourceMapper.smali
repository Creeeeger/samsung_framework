.class public final Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

.field public final context:Landroid/content/Context;

.field public coverIcon:Z

.field public final defaultIconList:Ljava/util/Map;

.field public isRTL:Z

.field public final largeScreenIconList:Ljava/util/List;

.field public final largeScreenPostfix:Ljava/lang/String;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public preloadedIconSet:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field public final supportLargeCover:Lkotlin/jvm/functions/Function0;

.field public final supportThemeIcon:Lkotlin/jvm/functions/Function0;

.field public themeIcon:Z

.field public final themeIconList:Ljava/util/List;

.field public final themePostfix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 13
    .line 14
    move-object/from16 v1, p3

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    .line 17
    .line 18
    move-object/from16 v1, p4

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 21
    .line 22
    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 25
    .line 26
    const-string v2, "ic_samsung_sysbar_back"

    .line 27
    .line 28
    const-string v3, "ic_samsung_sysbar_back_dark"

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    new-instance v8, Lkotlin/Pair;

    .line 35
    .line 36
    invoke-direct {v8, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 40
    .line 41
    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 42
    .line 43
    invoke-direct {v1, v6, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    new-instance v9, Lkotlin/Pair;

    .line 47
    .line 48
    invoke-direct {v9, v6, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 52
    .line 53
    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 54
    .line 55
    const-string v12, "ic_samsung_sysbar_back_ime"

    .line 56
    .line 57
    const-string v13, "ic_samsung_sysbar_back_ime_dark"

    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    const/16 v15, 0x8

    .line 61
    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    move-object v10, v1

    .line 65
    move-object v11, v5

    .line 66
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    new-instance v10, Lkotlin/Pair;

    .line 70
    .line 71
    invoke-direct {v10, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 75
    .line 76
    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 77
    .line 78
    const-string v13, "ic_samsung_sysbar_back_ime"

    .line 79
    .line 80
    const-string v14, "ic_samsung_sysbar_back_ime_dark"

    .line 81
    .line 82
    const/4 v15, 0x0

    .line 83
    const/16 v16, 0x8

    .line 84
    .line 85
    const/16 v17, 0x0

    .line 86
    .line 87
    move-object v11, v1

    .line 88
    move-object v12, v4

    .line 89
    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    new-instance v11, Lkotlin/Pair;

    .line 93
    .line 94
    invoke-direct {v11, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 98
    .line 99
    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 100
    .line 101
    const-string v14, "ic_samsung_sysbar_home"

    .line 102
    .line 103
    const-string v15, "ic_samsung_sysbar_home_dark"

    .line 104
    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const/16 v17, 0x8

    .line 108
    .line 109
    const/16 v18, 0x0

    .line 110
    .line 111
    move-object v12, v1

    .line 112
    move-object v13, v3

    .line 113
    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    new-instance v12, Lkotlin/Pair;

    .line 117
    .line 118
    invoke-direct {v12, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 122
    .line 123
    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 124
    .line 125
    const-string v15, "ic_samsung_sysbar_recent"

    .line 126
    .line 127
    const-string v16, "ic_samsung_sysbar_recent_dark"

    .line 128
    .line 129
    const/16 v17, 0x0

    .line 130
    .line 131
    const/16 v18, 0x8

    .line 132
    .line 133
    const/16 v19, 0x0

    .line 134
    .line 135
    move-object v13, v1

    .line 136
    move-object v14, v2

    .line 137
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .line 139
    .line 140
    new-instance v13, Lkotlin/Pair;

    .line 141
    .line 142
    invoke-direct {v13, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 146
    .line 147
    new-instance v15, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 148
    .line 149
    const-string v16, "ic_samsung_sysbar_ime"

    .line 150
    .line 151
    const-string v17, "ic_samsung_sysbar_ime_dark"

    .line 152
    .line 153
    const/16 v18, 0x0

    .line 154
    .line 155
    const/16 v19, 0x8

    .line 156
    .line 157
    const/16 v20, 0x0

    .line 158
    .line 159
    move-object v14, v15

    .line 160
    move-object/from16 p1, v2

    .line 161
    .line 162
    move-object v2, v15

    .line 163
    move-object v15, v1

    .line 164
    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    .line 166
    .line 167
    new-instance v14, Lkotlin/Pair;

    .line 168
    .line 169
    invoke-direct {v14, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 173
    .line 174
    new-instance v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 175
    .line 176
    const-string v17, "ic_samsung_sysbar_accessibility_button"

    .line 177
    .line 178
    const-string v18, "ic_samsung_sysbar_accessibility_button_dark"

    .line 179
    .line 180
    const/16 v19, 0x0

    .line 181
    .line 182
    const/16 v20, 0x8

    .line 183
    .line 184
    const/16 v21, 0x0

    .line 185
    .line 186
    move-object v15, v2

    .line 187
    move-object/from16 v16, v1

    .line 188
    .line 189
    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    .line 191
    .line 192
    new-instance v15, Lkotlin/Pair;

    .line 193
    .line 194
    invoke-direct {v15, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 198
    .line 199
    new-instance v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 200
    .line 201
    const-string v18, "ic_samsung_sysbar_gesture_handle_hint"

    .line 202
    .line 203
    const-string v19, "ic_samsung_sysbar_gesture_handle_hint_dark"

    .line 204
    .line 205
    const/16 v20, 0x0

    .line 206
    .line 207
    const/16 v21, 0x8

    .line 208
    .line 209
    const/16 v22, 0x0

    .line 210
    .line 211
    move-object/from16 v16, v2

    .line 212
    .line 213
    move-object/from16 v17, v1

    .line 214
    .line 215
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 216
    .line 217
    .line 218
    move-object/from16 p2, v3

    .line 219
    .line 220
    new-instance v3, Lkotlin/Pair;

    .line 221
    .line 222
    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 226
    .line 227
    new-instance v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 228
    .line 229
    const-string v18, "ic_samsung_sysbar_gesture_handle_hint"

    .line 230
    .line 231
    const-string v19, "ic_samsung_sysbar_gesture_handle_hint_dark"

    .line 232
    .line 233
    const/16 v20, 0x0

    .line 234
    .line 235
    const/16 v21, 0x8

    .line 236
    .line 237
    const/16 v22, 0x0

    .line 238
    .line 239
    move-object/from16 v16, v2

    .line 240
    .line 241
    move-object/from16 v17, v1

    .line 242
    .line 243
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 244
    .line 245
    .line 246
    move-object/from16 p3, v4

    .line 247
    .line 248
    new-instance v4, Lkotlin/Pair;

    .line 249
    .line 250
    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 254
    .line 255
    new-instance v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 256
    .line 257
    const-string v18, "ic_samsung_sysbar_gesture_hint"

    .line 258
    .line 259
    const-string v19, "ic_samsung_sysbar_gesture_hint_dark"

    .line 260
    .line 261
    const/16 v20, 0x0

    .line 262
    .line 263
    const/16 v21, 0x8

    .line 264
    .line 265
    const/16 v22, 0x0

    .line 266
    .line 267
    move-object/from16 v16, v2

    .line 268
    .line 269
    move-object/from16 v17, v1

    .line 270
    .line 271
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 272
    .line 273
    .line 274
    move-object/from16 p4, v5

    .line 275
    .line 276
    new-instance v5, Lkotlin/Pair;

    .line 277
    .line 278
    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 282
    .line 283
    new-instance v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 284
    .line 285
    const-string v18, "ic_samsung_sysbar_gesture_hint_vi"

    .line 286
    .line 287
    const-string v19, "ic_samsung_sysbar_gesture_hint_vi"

    .line 288
    .line 289
    const/16 v20, 0x0

    .line 290
    .line 291
    const/16 v21, 0x8

    .line 292
    .line 293
    const/16 v22, 0x0

    .line 294
    .line 295
    move-object/from16 v16, v2

    .line 296
    .line 297
    move-object/from16 v17, v1

    .line 298
    .line 299
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 300
    .line 301
    .line 302
    move-object/from16 v22, v6

    .line 303
    .line 304
    new-instance v6, Lkotlin/Pair;

    .line 305
    .line 306
    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 310
    .line 311
    new-instance v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 312
    .line 313
    const-string v25, "ic_samsung_sysbar_navi_show"

    .line 314
    .line 315
    const-string v26, "ic_samsung_sysbar_navi_show_dark"

    .line 316
    .line 317
    const/16 v27, 0x0

    .line 318
    .line 319
    const/16 v28, 0x8

    .line 320
    .line 321
    const/16 v29, 0x0

    .line 322
    .line 323
    move-object/from16 v23, v2

    .line 324
    .line 325
    move-object/from16 v24, v1

    .line 326
    .line 327
    invoke-direct/range {v23 .. v29}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 328
    .line 329
    .line 330
    move-object/from16 v23, v7

    .line 331
    .line 332
    new-instance v7, Lkotlin/Pair;

    .line 333
    .line 334
    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 338
    .line 339
    new-instance v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 340
    .line 341
    const-string v26, "ic_samsung_sysbar_navi_hide"

    .line 342
    .line 343
    const-string v27, "ic_samsung_sysbar_navi_hide_dark"

    .line 344
    .line 345
    const/16 v28, 0x0

    .line 346
    .line 347
    const/16 v29, 0x8

    .line 348
    .line 349
    const/16 v30, 0x0

    .line 350
    .line 351
    move-object/from16 v24, v2

    .line 352
    .line 353
    move-object/from16 v25, v1

    .line 354
    .line 355
    invoke-direct/range {v24 .. v30}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 356
    .line 357
    .line 358
    new-instance v0, Lkotlin/Pair;

    .line 359
    .line 360
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v16, v3

    .line 364
    .line 365
    move-object/from16 v17, v4

    .line 366
    .line 367
    move-object/from16 v18, v5

    .line 368
    .line 369
    move-object/from16 v19, v6

    .line 370
    .line 371
    move-object/from16 v20, v7

    .line 372
    .line 373
    move-object/from16 v21, v0

    .line 374
    .line 375
    filled-new-array/range {v8 .. v21}, [Lkotlin/Pair;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    move-object/from16 v7, p0

    .line 384
    .line 385
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconList:Ljava/util/Map;

    .line 386
    .line 387
    move-object/from16 v1, v23

    .line 388
    .line 389
    move-object/from16 v0, p1

    .line 390
    .line 391
    move-object/from16 v2, v22

    .line 392
    .line 393
    move-object/from16 v8, p2

    .line 394
    .line 395
    move-object/from16 v3, p4

    .line 396
    .line 397
    move-object/from16 v9, p3

    .line 398
    .line 399
    move-object v4, v9

    .line 400
    move-object/from16 v10, p4

    .line 401
    .line 402
    move-object v5, v8

    .line 403
    move-object/from16 v11, v22

    .line 404
    .line 405
    move-object v6, v0

    .line 406
    filled-new-array/range {v1 .. v6}, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIconList:Ljava/util/List;

    .line 415
    .line 416
    move-object/from16 v0, v23

    .line 417
    .line 418
    filled-new-array {v0, v11, v10, v9, v8}, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenIconList:Ljava/util/List;

    .line 427
    .line 428
    const-string v0, "_theme"

    .line 429
    .line 430
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themePostfix:Ljava/lang/String;

    .line 431
    .line 432
    const-string v0, "_front"

    .line 433
    .line 434
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenPostfix:Ljava/lang/String;

    .line 435
    .line 436
    const-string v0, "NavBarIconResourceMapper"

    .line 437
    .line 438
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->TAG:Ljava/lang/String;

    .line 439
    .line 440
    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;

    .line 441
    .line 442
    invoke-direct {v0, v7}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;-><init>(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V

    .line 443
    .line 444
    .line 445
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportThemeIcon:Lkotlin/jvm/functions/Function0;

    .line 446
    .line 447
    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;

    .line 448
    .line 449
    invoke-direct {v0, v7}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;-><init>(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V

    .line 450
    .line 451
    .line 452
    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportLargeCover:Lkotlin/jvm/functions/Function0;

    .line 453
    .line 454
    return-void
.end method

.method public static final getIconResource$getThemeReplacedResName(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themePostfix:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "_samsung"

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method


# virtual methods
.method public final getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean v2, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    .line 10
    .line 11
    if-ne v2, v0, :cond_0

    .line 12
    .line 13
    move v2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isRTL:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    check-cast v4, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    invoke-static {v3, p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    check-cast v4, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-static {v3, p0, p1, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconTheme;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconList:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->addData(Lcom/samsung/systemui/splugins/navigationbar/IconType;Lcom/samsung/systemui/splugins/navigationbar/IconResource;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public final getGestureHandleDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->preloadedIconSet:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportThemeIcon:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 29
    .line 30
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isNavigationBarUseThemeDefault()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIconList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v0, v2

    .line 53
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportLargeCover:Lkotlin/jvm/functions/Function0;

    .line 56
    .line 57
    check-cast v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;->invoke()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenIconList:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    move v2, v1

    .line 80
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->coverIcon:Z

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconList:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    .line 89
    .line 90
    if-eqz p1, :cond_8

    .line 91
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenPostfix:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v3, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->lightRes:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-static {p0, v3}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource$getThemeReplacedResName(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->coverIcon:Z

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-static {v3, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    .line 114
    .line 115
    iget-object v4, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->darkRes:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-static {p0, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource$getThemeReplacedResName(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->coverIcon:Z

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-static {v4, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    .line 133
    .line 134
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    const-string v0, "android"

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const-string v6, "drawable"

    .line 150
    .line 151
    invoke-virtual {v5, v3, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5, v4, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    .line 164
    .line 165
    xor-int/2addr p0, v1

    .line 166
    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->needRtl:Z

    .line 167
    .line 168
    and-int/2addr p0, v1

    .line 169
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object p1, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 180
    .line 181
    invoke-direct {v1, p1, v3, v0, p0}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :cond_8
    const/4 p0, 0x0

    .line 186
    return-object p0
.end method

.method public final setPreloadedIconSet(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "setPreloadedIconSet() null: "

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->preloadedIconSet:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 29
    .line 30
    return-void
.end method
