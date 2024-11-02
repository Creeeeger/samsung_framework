.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;
.super Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isOneDirectionPosition(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x40

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method public final applyTransactionWithAnimation(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 7
    .line 8
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final changeLayout()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    .line 15
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 16
    .line 17
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 24
    .line 25
    if-eq v1, v4, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-nez v1, :cond_2

    .line 31
    .line 32
    const-string v1, "NaturalSwitchingChanger"

    .line 33
    .line 34
    const-string v2, "changeLayout: failed"

    .line 35
    .line 36
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    const-string v1, "1041"

    .line 52
    .line 53
    const-string v4, "Layout changed"

    .line 54
    .line 55
    invoke-static {v1, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    .line 60
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 61
    .line 62
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 69
    .line 70
    if-eq v1, v4, :cond_5e

    .line 71
    .line 72
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    .line 73
    .line 74
    const/4 v4, 0x4

    .line 75
    const/4 v5, 0x2

    .line 76
    const/4 v6, -0x1

    .line 77
    const/16 v7, 0x20

    .line 78
    .line 79
    const/16 v8, 0x10

    .line 80
    .line 81
    const/16 v9, 0x8

    .line 82
    .line 83
    if-eqz v1, :cond_50

    .line 84
    .line 85
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_50

    .line 92
    .line 93
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 99
    .line 100
    invoke-direct {v10}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v11, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 104
    .line 105
    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 106
    .line 107
    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 108
    .line 109
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eq v11, v2, :cond_6

    .line 114
    .line 115
    if-eq v11, v5, :cond_5

    .line 116
    .line 117
    if-eq v11, v4, :cond_4

    .line 118
    .line 119
    move v11, v6

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    move v11, v5

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    move v11, v2

    .line 124
    goto :goto_2

    .line 125
    :cond_6
    const/4 v11, 0x0

    .line 126
    :goto_2
    iget v12, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 127
    .line 128
    iget-object v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 129
    .line 130
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    iput v13, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 135
    .line 136
    iget-object v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 137
    .line 138
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    iput v13, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 143
    .line 144
    iget-object v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 145
    .line 146
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    iput v13, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 151
    .line 152
    iget-boolean v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    .line 153
    .line 154
    const/4 v14, 0x3

    .line 155
    const/4 v15, 0x5

    .line 156
    const/16 v3, 0x40

    .line 157
    .line 158
    if-eqz v13, :cond_18

    .line 159
    .line 160
    iget v11, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 161
    .line 162
    if-eq v11, v6, :cond_16

    .line 163
    .line 164
    invoke-static {v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    if-eq v11, v13, :cond_16

    .line 169
    .line 170
    iget v11, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 171
    .line 172
    if-eq v11, v5, :cond_8

    .line 173
    .line 174
    if-eq v11, v14, :cond_7

    .line 175
    .line 176
    if-eq v11, v4, :cond_8

    .line 177
    .line 178
    if-eq v11, v15, :cond_7

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    move v6, v2

    .line 182
    goto :goto_3

    .line 183
    :cond_8
    const/4 v6, 0x0

    .line 184
    :goto_3
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 185
    .line 186
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eq v6, v4, :cond_14

    .line 191
    .line 192
    iput v6, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 193
    .line 194
    invoke-static {v12}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->isOneDirectionPosition(I)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_15

    .line 199
    .line 200
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_b

    .line 207
    .line 208
    if-eq v12, v9, :cond_a

    .line 209
    .line 210
    if-ne v12, v8, :cond_9

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_9
    const/4 v4, 0x0

    .line 214
    goto :goto_5

    .line 215
    :cond_a
    :goto_4
    move v4, v2

    .line 216
    :goto_5
    iput v4, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_b
    if-eq v12, v9, :cond_d

    .line 220
    .line 221
    if-ne v12, v8, :cond_c

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    move v4, v2

    .line 225
    goto :goto_7

    .line 226
    :cond_d
    :goto_6
    const/4 v4, 0x0

    .line 227
    :goto_7
    iput v4, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 228
    .line 229
    :goto_8
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 230
    .line 231
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-nez v6, :cond_10

    .line 236
    .line 237
    if-eq v12, v9, :cond_e

    .line 238
    .line 239
    if-ne v12, v7, :cond_13

    .line 240
    .line 241
    :cond_e
    and-int/lit8 v3, v4, -0x21

    .line 242
    .line 243
    and-int/lit8 v3, v3, -0x9

    .line 244
    .line 245
    if-ne v12, v9, :cond_f

    .line 246
    .line 247
    or-int/lit8 v4, v3, 0x20

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_f
    or-int/lit8 v4, v3, 0x8

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_10
    if-eq v12, v8, :cond_11

    .line 254
    .line 255
    if-ne v12, v3, :cond_13

    .line 256
    .line 257
    :cond_11
    and-int/lit8 v4, v4, -0x11

    .line 258
    .line 259
    and-int/lit8 v4, v4, -0x41

    .line 260
    .line 261
    if-ne v12, v8, :cond_12

    .line 262
    .line 263
    or-int/2addr v4, v3

    .line 264
    goto :goto_9

    .line 265
    :cond_12
    or-int/2addr v4, v8

    .line 266
    :cond_13
    :goto_9
    iput v4, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_14
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 276
    .line 277
    iput v6, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 278
    .line 279
    iput v12, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 280
    .line 281
    :cond_15
    :goto_a
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 282
    .line 283
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    invoke-virtual {v3, v5, v4, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->swapStageTasks(IILandroid/window/WindowContainerTransaction;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_24

    .line 291
    .line 292
    :cond_16
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 293
    .line 294
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 299
    .line 300
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 301
    .line 302
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 307
    .line 308
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 309
    .line 310
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 315
    .line 316
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 317
    .line 318
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_17

    .line 323
    .line 324
    move v3, v2

    .line 325
    goto :goto_b

    .line 326
    :cond_17
    const/4 v3, 0x0

    .line 327
    :goto_b
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 328
    .line 329
    invoke-virtual {v4, v5, v3, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->swapStageTasks(IILandroid/window/WindowContainerTransaction;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_24

    .line 333
    .line 334
    :cond_18
    iget v13, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 335
    .line 336
    if-eq v13, v6, :cond_3c

    .line 337
    .line 338
    invoke-static {v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-eq v13, v6, :cond_3c

    .line 343
    .line 344
    iget v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 345
    .line 346
    if-eq v6, v5, :cond_1a

    .line 347
    .line 348
    if-eq v6, v14, :cond_19

    .line 349
    .line 350
    if-eq v6, v4, :cond_1a

    .line 351
    .line 352
    if-eq v6, v15, :cond_19

    .line 353
    .line 354
    const/4 v6, -0x1

    .line 355
    goto :goto_c

    .line 356
    :cond_19
    move v6, v2

    .line 357
    goto :goto_c

    .line 358
    :cond_1a
    const/4 v6, 0x0

    .line 359
    :goto_c
    iput v6, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 360
    .line 361
    if-ne v11, v5, :cond_1b

    .line 362
    .line 363
    iput v12, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 364
    .line 365
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 366
    .line 367
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 372
    .line 373
    goto/16 :goto_24

    .line 374
    .line 375
    :cond_1b
    invoke-static {v12}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->isOneDirectionPosition(I)Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_2e

    .line 380
    .line 381
    iget v4, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 382
    .line 383
    if-nez v11, :cond_1e

    .line 384
    .line 385
    if-eq v12, v9, :cond_1d

    .line 386
    .line 387
    if-ne v12, v8, :cond_1c

    .line 388
    .line 389
    goto :goto_d

    .line 390
    :cond_1c
    const/4 v5, 0x0

    .line 391
    goto :goto_e

    .line 392
    :cond_1d
    :goto_d
    move v5, v2

    .line 393
    :goto_e
    iput v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 394
    .line 395
    goto :goto_11

    .line 396
    :cond_1e
    if-ne v11, v2, :cond_21

    .line 397
    .line 398
    if-eq v12, v9, :cond_20

    .line 399
    .line 400
    if-ne v12, v8, :cond_1f

    .line 401
    .line 402
    goto :goto_f

    .line 403
    :cond_1f
    move v5, v2

    .line 404
    goto :goto_10

    .line 405
    :cond_20
    :goto_f
    const/4 v5, 0x0

    .line 406
    :goto_10
    iput v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 407
    .line 408
    :cond_21
    :goto_11
    iget v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 409
    .line 410
    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 411
    .line 412
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    if-eq v5, v6, :cond_28

    .line 417
    .line 418
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 419
    .line 420
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    iget v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 425
    .line 426
    if-eq v5, v14, :cond_24

    .line 427
    .line 428
    if-ne v5, v15, :cond_22

    .line 429
    .line 430
    goto :goto_12

    .line 431
    :cond_22
    and-int/lit8 v3, v4, -0x21

    .line 432
    .line 433
    and-int/lit8 v3, v3, -0x9

    .line 434
    .line 435
    if-ne v12, v9, :cond_23

    .line 436
    .line 437
    or-int/lit8 v3, v3, 0x20

    .line 438
    .line 439
    goto :goto_13

    .line 440
    :cond_23
    if-ne v12, v7, :cond_27

    .line 441
    .line 442
    or-int/lit8 v3, v3, 0x8

    .line 443
    .line 444
    goto :goto_13

    .line 445
    :cond_24
    :goto_12
    and-int/lit8 v4, v4, -0x11

    .line 446
    .line 447
    and-int/lit8 v4, v4, -0x41

    .line 448
    .line 449
    if-ne v12, v8, :cond_25

    .line 450
    .line 451
    or-int/lit8 v3, v4, 0x40

    .line 452
    .line 453
    goto :goto_13

    .line 454
    :cond_25
    if-ne v12, v3, :cond_26

    .line 455
    .line 456
    or-int/lit8 v3, v4, 0x10

    .line 457
    .line 458
    goto :goto_13

    .line 459
    :cond_26
    move v3, v4

    .line 460
    :cond_27
    :goto_13
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 461
    .line 462
    goto/16 :goto_24

    .line 463
    .line 464
    :cond_28
    iget v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 465
    .line 466
    if-eq v4, v5, :cond_2d

    .line 467
    .line 468
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 469
    .line 470
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    not-int v5, v12

    .line 475
    and-int/2addr v4, v5

    .line 476
    if-ne v12, v7, :cond_29

    .line 477
    .line 478
    or-int/lit8 v4, v4, 0x8

    .line 479
    .line 480
    goto :goto_14

    .line 481
    :cond_29
    if-ne v12, v9, :cond_2a

    .line 482
    .line 483
    or-int/lit8 v4, v4, 0x20

    .line 484
    .line 485
    goto :goto_14

    .line 486
    :cond_2a
    if-ne v12, v8, :cond_2b

    .line 487
    .line 488
    or-int/lit8 v4, v4, 0x40

    .line 489
    .line 490
    goto :goto_14

    .line 491
    :cond_2b
    if-ne v12, v3, :cond_2c

    .line 492
    .line 493
    or-int/lit8 v4, v4, 0x10

    .line 494
    .line 495
    :cond_2c
    :goto_14
    iput v4, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 496
    .line 497
    goto/16 :goto_24

    .line 498
    .line 499
    :cond_2d
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 500
    .line 501
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 506
    .line 507
    goto/16 :goto_24

    .line 508
    .line 509
    :cond_2e
    if-nez v11, :cond_35

    .line 510
    .line 511
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 512
    .line 513
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    if-nez v4, :cond_4f

    .line 518
    .line 519
    and-int/lit8 v4, v12, 0x8

    .line 520
    .line 521
    if-nez v4, :cond_30

    .line 522
    .line 523
    and-int/lit8 v5, v12, 0x10

    .line 524
    .line 525
    if-eqz v5, :cond_2f

    .line 526
    .line 527
    goto :goto_15

    .line 528
    :cond_2f
    const/4 v5, 0x0

    .line 529
    goto :goto_16

    .line 530
    :cond_30
    :goto_15
    move v5, v2

    .line 531
    :goto_16
    iput v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 532
    .line 533
    iget v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 534
    .line 535
    if-nez v5, :cond_32

    .line 536
    .line 537
    and-int/lit8 v4, v12, 0x40

    .line 538
    .line 539
    if-eqz v4, :cond_31

    .line 540
    .line 541
    and-int/lit8 v3, v12, -0x41

    .line 542
    .line 543
    or-int/lit8 v12, v3, 0x10

    .line 544
    .line 545
    goto :goto_17

    .line 546
    :cond_31
    and-int/lit8 v4, v12, 0x10

    .line 547
    .line 548
    if-eqz v4, :cond_34

    .line 549
    .line 550
    and-int/lit8 v4, v12, -0x11

    .line 551
    .line 552
    or-int/lit8 v12, v4, 0x40

    .line 553
    .line 554
    goto :goto_17

    .line 555
    :cond_32
    and-int/lit8 v3, v12, 0x20

    .line 556
    .line 557
    if-eqz v3, :cond_33

    .line 558
    .line 559
    and-int/lit8 v3, v12, -0x21

    .line 560
    .line 561
    or-int/lit8 v12, v3, 0x8

    .line 562
    .line 563
    goto :goto_17

    .line 564
    :cond_33
    if-eqz v4, :cond_34

    .line 565
    .line 566
    and-int/lit8 v3, v12, -0x9

    .line 567
    .line 568
    or-int/lit8 v12, v3, 0x20

    .line 569
    .line 570
    :cond_34
    :goto_17
    iput v12, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 571
    .line 572
    goto/16 :goto_24

    .line 573
    .line 574
    :cond_35
    if-ne v11, v2, :cond_4f

    .line 575
    .line 576
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 577
    .line 578
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    if-ne v4, v2, :cond_4f

    .line 583
    .line 584
    and-int/lit8 v4, v12, 0x8

    .line 585
    .line 586
    if-nez v4, :cond_37

    .line 587
    .line 588
    and-int/lit8 v5, v12, 0x10

    .line 589
    .line 590
    if-eqz v5, :cond_36

    .line 591
    .line 592
    goto :goto_18

    .line 593
    :cond_36
    move v5, v2

    .line 594
    goto :goto_19

    .line 595
    :cond_37
    :goto_18
    const/4 v5, 0x0

    .line 596
    :goto_19
    iput v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 597
    .line 598
    iget v5, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 599
    .line 600
    if-nez v5, :cond_39

    .line 601
    .line 602
    and-int/lit8 v4, v12, 0x40

    .line 603
    .line 604
    if-eqz v4, :cond_38

    .line 605
    .line 606
    and-int/lit8 v3, v12, -0x41

    .line 607
    .line 608
    or-int/lit8 v12, v3, 0x10

    .line 609
    .line 610
    goto :goto_1a

    .line 611
    :cond_38
    and-int/lit8 v4, v12, 0x10

    .line 612
    .line 613
    if-eqz v4, :cond_3b

    .line 614
    .line 615
    and-int/lit8 v4, v12, -0x11

    .line 616
    .line 617
    or-int/lit8 v12, v4, 0x40

    .line 618
    .line 619
    goto :goto_1a

    .line 620
    :cond_39
    and-int/lit8 v3, v12, 0x20

    .line 621
    .line 622
    if-eqz v3, :cond_3a

    .line 623
    .line 624
    and-int/lit8 v3, v12, -0x21

    .line 625
    .line 626
    or-int/lit8 v12, v3, 0x8

    .line 627
    .line 628
    goto :goto_1a

    .line 629
    :cond_3a
    if-eqz v4, :cond_3b

    .line 630
    .line 631
    and-int/lit8 v3, v12, -0x9

    .line 632
    .line 633
    or-int/lit8 v12, v3, 0x20

    .line 634
    .line 635
    :cond_3b
    :goto_1a
    iput v12, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 636
    .line 637
    goto/16 :goto_24

    .line 638
    .line 639
    :cond_3c
    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 640
    .line 641
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    .line 642
    .line 643
    .line 644
    move-result v6

    .line 645
    iput v6, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 646
    .line 647
    invoke-static {v12}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->isOneDirectionPosition(I)Z

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    if-eqz v6, :cond_42

    .line 652
    .line 653
    if-nez v11, :cond_3f

    .line 654
    .line 655
    if-eq v12, v9, :cond_3e

    .line 656
    .line 657
    if-ne v12, v8, :cond_3d

    .line 658
    .line 659
    goto :goto_1b

    .line 660
    :cond_3d
    const/4 v3, 0x0

    .line 661
    goto :goto_1c

    .line 662
    :cond_3e
    :goto_1b
    move v3, v2

    .line 663
    :goto_1c
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 664
    .line 665
    goto/16 :goto_24

    .line 666
    .line 667
    :cond_3f
    if-ne v11, v2, :cond_4f

    .line 668
    .line 669
    if-eq v12, v9, :cond_41

    .line 670
    .line 671
    if-ne v12, v8, :cond_40

    .line 672
    .line 673
    goto :goto_1d

    .line 674
    :cond_40
    move v3, v2

    .line 675
    goto :goto_1e

    .line 676
    :cond_41
    :goto_1d
    const/4 v3, 0x0

    .line 677
    :goto_1e
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 678
    .line 679
    goto/16 :goto_24

    .line 680
    .line 681
    :cond_42
    iget v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 682
    .line 683
    if-eq v6, v5, :cond_46

    .line 684
    .line 685
    if-eq v6, v14, :cond_45

    .line 686
    .line 687
    if-eq v6, v4, :cond_44

    .line 688
    .line 689
    if-eq v6, v15, :cond_43

    .line 690
    .line 691
    goto :goto_20

    .line 692
    :cond_43
    and-int/lit8 v4, v12, 0x40

    .line 693
    .line 694
    if-eqz v4, :cond_47

    .line 695
    .line 696
    goto :goto_1f

    .line 697
    :cond_44
    and-int/lit8 v4, v12, 0x20

    .line 698
    .line 699
    if-eqz v4, :cond_47

    .line 700
    .line 701
    goto :goto_1f

    .line 702
    :cond_45
    and-int/lit8 v4, v12, 0x10

    .line 703
    .line 704
    if-eqz v4, :cond_47

    .line 705
    .line 706
    goto :goto_1f

    .line 707
    :cond_46
    and-int/lit8 v4, v12, 0x8

    .line 708
    .line 709
    if-eqz v4, :cond_47

    .line 710
    .line 711
    :goto_1f
    move v4, v2

    .line 712
    goto :goto_21

    .line 713
    :cond_47
    :goto_20
    const/4 v4, 0x0

    .line 714
    :goto_21
    if-eqz v4, :cond_4d

    .line 715
    .line 716
    if-ne v11, v5, :cond_48

    .line 717
    .line 718
    iput v12, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 719
    .line 720
    goto :goto_24

    .line 721
    :cond_48
    iget v4, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 722
    .line 723
    if-nez v4, :cond_4a

    .line 724
    .line 725
    and-int/lit8 v4, v12, 0x40

    .line 726
    .line 727
    if-eqz v4, :cond_49

    .line 728
    .line 729
    and-int/lit8 v3, v12, -0x41

    .line 730
    .line 731
    or-int/lit8 v12, v3, 0x10

    .line 732
    .line 733
    goto :goto_22

    .line 734
    :cond_49
    and-int/lit8 v4, v12, 0x10

    .line 735
    .line 736
    if-eqz v4, :cond_4c

    .line 737
    .line 738
    and-int/lit8 v4, v12, -0x11

    .line 739
    .line 740
    or-int/lit8 v12, v4, 0x40

    .line 741
    .line 742
    goto :goto_22

    .line 743
    :cond_4a
    and-int/lit8 v3, v12, 0x20

    .line 744
    .line 745
    if-eqz v3, :cond_4b

    .line 746
    .line 747
    and-int/lit8 v3, v12, -0x21

    .line 748
    .line 749
    or-int/lit8 v12, v3, 0x8

    .line 750
    .line 751
    goto :goto_22

    .line 752
    :cond_4b
    and-int/lit8 v3, v12, 0x8

    .line 753
    .line 754
    if-eqz v3, :cond_4c

    .line 755
    .line 756
    and-int/lit8 v3, v12, -0x9

    .line 757
    .line 758
    or-int/lit8 v12, v3, 0x20

    .line 759
    .line 760
    :cond_4c
    :goto_22
    iput v12, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 761
    .line 762
    goto :goto_24

    .line 763
    :cond_4d
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 764
    .line 765
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    .line 766
    .line 767
    .line 768
    move-result v3

    .line 769
    if-nez v3, :cond_4e

    .line 770
    .line 771
    move v3, v2

    .line 772
    goto :goto_23

    .line 773
    :cond_4e
    const/4 v3, 0x0

    .line 774
    :goto_23
    iput v3, v10, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 775
    .line 776
    :cond_4f
    :goto_24
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 777
    .line 778
    invoke-virtual {v3, v10, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->applyTransactionWithAnimation(Landroid/window/WindowContainerTransaction;)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_2d

    .line 785
    .line 786
    :cond_50
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 787
    .line 788
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    .line 789
    .line 790
    .line 791
    move-result v1

    .line 792
    iget v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 793
    .line 794
    and-int/lit8 v6, v3, 0x8

    .line 795
    .line 796
    if-nez v6, :cond_52

    .line 797
    .line 798
    and-int/lit8 v6, v3, 0x20

    .line 799
    .line 800
    if-eqz v6, :cond_51

    .line 801
    .line 802
    goto :goto_25

    .line 803
    :cond_51
    move v6, v2

    .line 804
    goto :goto_26

    .line 805
    :cond_52
    :goto_25
    const/4 v6, 0x0

    .line 806
    :goto_26
    if-ne v1, v6, :cond_53

    .line 807
    .line 808
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 809
    .line 810
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 811
    .line 812
    .line 813
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 814
    .line 815
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideStagePosition()I

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 820
    .line 821
    .line 822
    move-result v3

    .line 823
    invoke-virtual {v2, v3, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 824
    .line 825
    .line 826
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 827
    .line 828
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->invertDividerPosition(Landroid/window/WindowContainerTransaction;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->applyTransactionWithAnimation(Landroid/window/WindowContainerTransaction;)V

    .line 832
    .line 833
    .line 834
    goto/16 :goto_2d

    .line 835
    .line 836
    :cond_53
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    .line 837
    .line 838
    if-eqz v1, :cond_5f

    .line 839
    .line 840
    and-int/lit8 v1, v3, 0x8

    .line 841
    .line 842
    if-nez v1, :cond_55

    .line 843
    .line 844
    and-int/lit8 v1, v3, 0x20

    .line 845
    .line 846
    if-eqz v1, :cond_54

    .line 847
    .line 848
    goto :goto_27

    .line 849
    :cond_54
    move v1, v2

    .line 850
    goto :goto_28

    .line 851
    :cond_55
    :goto_27
    const/4 v1, 0x0

    .line 852
    :goto_28
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 853
    .line 854
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 855
    .line 856
    .line 857
    new-instance v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 858
    .line 859
    invoke-direct {v6}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    .line 860
    .line 861
    .line 862
    iget-object v7, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 863
    .line 864
    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 865
    .line 866
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 867
    .line 868
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 869
    .line 870
    .line 871
    move-result v7

    .line 872
    if-eq v7, v2, :cond_57

    .line 873
    .line 874
    if-eq v7, v5, :cond_56

    .line 875
    .line 876
    if-eq v7, v4, :cond_58

    .line 877
    .line 878
    const/4 v5, -0x1

    .line 879
    goto :goto_29

    .line 880
    :cond_56
    move v5, v2

    .line 881
    goto :goto_29

    .line 882
    :cond_57
    const/4 v5, 0x0

    .line 883
    :cond_58
    :goto_29
    if-ne v5, v2, :cond_5b

    .line 884
    .line 885
    iget v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 886
    .line 887
    if-eq v4, v8, :cond_5a

    .line 888
    .line 889
    if-ne v4, v9, :cond_59

    .line 890
    .line 891
    goto :goto_2a

    .line 892
    :cond_59
    iput v2, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 893
    .line 894
    const/4 v4, 0x0

    .line 895
    goto :goto_2c

    .line 896
    :cond_5a
    :goto_2a
    const/4 v4, 0x0

    .line 897
    iput v4, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 898
    .line 899
    goto :goto_2c

    .line 900
    :cond_5b
    const/4 v4, 0x0

    .line 901
    iget v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 902
    .line 903
    if-eq v5, v8, :cond_5d

    .line 904
    .line 905
    if-ne v5, v9, :cond_5c

    .line 906
    .line 907
    goto :goto_2b

    .line 908
    :cond_5c
    iput v4, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 909
    .line 910
    goto :goto_2c

    .line 911
    :cond_5d
    :goto_2b
    iput v2, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 912
    .line 913
    :goto_2c
    iput v1, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 914
    .line 915
    iput v4, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 916
    .line 917
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 918
    .line 919
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;->applyTransactionWithAnimation(Landroid/window/WindowContainerTransaction;)V

    .line 923
    .line 924
    .line 925
    goto :goto_2d

    .line 926
    :cond_5e
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    .line 927
    .line 928
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 929
    .line 930
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    :cond_5f
    :goto_2d
    return-void
.end method
