.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final DEBUG:Z

.field public final TAG:Ljava/lang/String;

.field public final allAppsComponentName:Landroid/content/ComponentName;

.field public mEnabled:Z

.field public final mRealWm:Landroid/view/IWindowSession;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->DEBUG:Z

    .line 27
    .line 28
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->mRealWm:Landroid/view/IWindowSession;

    .line 33
    .line 34
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsComponent()Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->allAppsComponentName:Landroid/content/ComponentName;

    .line 39
    .line 40
    return-void
.end method

.method public static varargs intValueIn(I[I)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    if-ne p0, v3, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method


# virtual methods
.method public final startSplitByTwoTouchSwipeIfPossible(ILjava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "startSplitByTwoTouchSwipeIfPossible: gestureFrom="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, " caller="

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const-string v3, "  mStageCoordinator is null."

    .line 42
    .line 43
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 48
    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    const-string v3, "  dynamic enabled=false"

    .line 52
    .line 53
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 58
    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    iget-boolean v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    move v3, v5

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move v3, v4

    .line 70
    :goto_0
    if-eqz v3, :cond_4

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    const-string v3, "  in video controls"

    .line 79
    .line 80
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    move v3, v4

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move v3, v5

    .line 86
    :goto_2
    if-nez v3, :cond_5

    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->mEnabled:Z

    .line 90
    .line 91
    if-nez v3, :cond_7

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    const-string p0, "  enabled=false"

    .line 96
    .line 97
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_6
    return-void

    .line 101
    :cond_7
    const/4 v3, 0x3

    .line 102
    const/4 v6, 0x4

    .line 103
    filled-new-array {v5, v3, v6}, [I

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {p1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-nez v7, :cond_9

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "  not allowed gestureFrom="

    .line 118
    .line 119
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, " callSite="

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_8
    return-void

    .line 141
    :cond_9
    const/4 p2, 0x2

    .line 142
    filled-new-array {v5, p2}, [I

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-static {p1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    xor-int/2addr v7, v5

    .line 151
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    .line 152
    .line 153
    iget-object v9, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    const/4 v10, -0x1

    .line 156
    if-eqz v8, :cond_12

    .line 157
    .line 158
    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-nez v8, :cond_12

    .line 163
    .line 164
    iget-object v8, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 165
    .line 166
    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-nez v8, :cond_a

    .line 171
    .line 172
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 173
    .line 174
    if-eqz v8, :cond_a

    .line 175
    .line 176
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportMultiSplitAppMinimumSize()Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_12

    .line 185
    .line 186
    :cond_a
    iget-object v8, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 187
    .line 188
    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_c

    .line 193
    .line 194
    if-eqz v1, :cond_b

    .line 195
    .line 196
    const-string p0, "  inMultiSplit. skip."

    .line 197
    .line 198
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_b
    return-void

    .line 202
    :cond_c
    iget-object v8, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 203
    .line 204
    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    iget-object v9, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 209
    .line 210
    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_11

    .line 215
    .line 216
    filled-new-array {v4, v5}, [I

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-static {v8, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-nez v9, :cond_e

    .line 225
    .line 226
    if-eqz v1, :cond_d

    .line 227
    .line 228
    const-string p0, "  inSplit. but division is not set."

    .line 229
    .line 230
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_d
    return-void

    .line 234
    :cond_e
    if-nez v8, :cond_f

    .line 235
    .line 236
    move v4, v5

    .line 237
    :cond_f
    filled-new-array {p2, v6}, [I

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-static {p1, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    xor-int/2addr v4, v6

    .line 246
    if-nez v4, :cond_11

    .line 247
    .line 248
    if-eqz v1, :cond_10

    .line 249
    .line 250
    const-string p0, "  inSplit. gestureFrom is not fit in split."

    .line 251
    .line 252
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_10
    return-void

    .line 256
    :cond_11
    filled-new-array {v5, v3}, [I

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-static {p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    xor-int/2addr v3, v5

    .line 265
    goto :goto_4

    .line 266
    :cond_12
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 267
    .line 268
    invoke-virtual {v9}, Landroid/content/Context;->getDisplayId()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    iget v8, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 277
    .line 278
    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 279
    .line 280
    if-le v8, v3, :cond_13

    .line 281
    .line 282
    move v3, p2

    .line 283
    goto :goto_3

    .line 284
    :cond_13
    move v3, v5

    .line 285
    :goto_3
    filled-new-array {v5, p2}, [I

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-static {v3, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-nez v8, :cond_15

    .line 294
    .line 295
    if-eqz v1, :cond_14

    .line 296
    .line 297
    const-string p0, "  dl has no orientation."

    .line 298
    .line 299
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_14
    return-void

    .line 303
    :cond_15
    if-ne v3, p2, :cond_16

    .line 304
    .line 305
    move v4, v5

    .line 306
    :cond_16
    filled-new-array {p2, v6}, [I

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-static {p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->intValueIn(I[I)Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    xor-int/2addr v3, v4

    .line 315
    if-nez v3, :cond_18

    .line 316
    .line 317
    if-eqz v1, :cond_17

    .line 318
    .line 319
    const-string p0, "  gestureFrom is not fit."

    .line 320
    .line 321
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    :cond_17
    return-void

    .line 325
    :cond_18
    move v3, v10

    .line 326
    :goto_4
    if-eqz v1, :cond_1c

    .line 327
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v4, "enterSplitIfPossible: all apps position="

    .line 331
    .line 332
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    if-eq v7, v10, :cond_1b

    .line 336
    .line 337
    if-eqz v7, :cond_1a

    .line 338
    .line 339
    if-eq v7, v5, :cond_19

    .line 340
    .line 341
    const-string/jumbo v4, "unknown="

    .line 342
    .line 343
    .line 344
    invoke-static {v4, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    goto :goto_5

    .line 349
    :cond_19
    const-string v4, "bottomOrRight"

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_1a
    const-string/jumbo v4, "topOrLeft"

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_1b
    const-string/jumbo v4, "undefined"

    .line 357
    .line 358
    .line 359
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    :cond_1c
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    iget-object v1, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 378
    .line 379
    iget v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 380
    .line 381
    if-ne v7, v1, :cond_1d

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_1d
    move v5, p2

    .line 385
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda0;

    .line 390
    .line 391
    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 395
    .line 396
    .line 397
    move-result p2

    .line 398
    if-eqz p2, :cond_1e

    .line 399
    .line 400
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda1;

    .line 405
    .line 406
    invoke-direct {v0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda1;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 414
    .line 415
    .line 416
    move-result-object p2

    .line 417
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;

    .line 418
    .line 419
    invoke-direct {v0, p0, p1, v7, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;III)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 423
    .line 424
    .line 425
    :cond_1e
    return-void
.end method
