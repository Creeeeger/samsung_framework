.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;

    .line 21
    .line 22
    invoke-direct {v4, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;I)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->doForAllChildTasks(Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;

    .line 31
    .line 32
    invoke-direct {v3, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->doForAllChildTasks(Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 42
    .line 43
    move-object/from16 v1, p1

    .line 44
    .line 45
    check-cast v1, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onFoldedStateChanged(Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 56
    .line 57
    move-object/from16 v1, p1

    .line 58
    .line 59
    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 60
    .line 61
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    iget v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 86
    .line 87
    if-nez v8, :cond_0

    .line 88
    .line 89
    move v8, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    move v8, v3

    .line 92
    :goto_1
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 93
    .line 94
    const/4 v13, -0x1

    .line 95
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 96
    .line 97
    if-eqz v9, :cond_2

    .line 98
    .line 99
    iget-boolean v9, v10, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 100
    .line 101
    if-eqz v9, :cond_2

    .line 102
    .line 103
    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v12, Landroid/graphics/Rect;

    .line 113
    .line 114
    iget-object v11, v11, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-direct {v12, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 117
    .line 118
    .line 119
    iget v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 120
    .line 121
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-static {v11, v3}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_1

    .line 132
    .line 133
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    move/from16 v16, v11

    .line 153
    .line 154
    move-object v3, v12

    .line 155
    move v12, v9

    .line 156
    goto :goto_3

    .line 157
    :cond_2
    const/4 v3, 0x0

    .line 158
    move v12, v13

    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    :goto_3
    if-eqz v8, :cond_3

    .line 162
    .line 163
    move v11, v14

    .line 164
    move v9, v15

    .line 165
    goto :goto_4

    .line 166
    :cond_3
    move v9, v14

    .line 167
    move v11, v15

    .line 168
    :goto_4
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 169
    .line 170
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 173
    .line 174
    .line 175
    if-eq v14, v13, :cond_4

    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-eqz v4, :cond_4

    .line 182
    .line 183
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 184
    .line 185
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_4
    if-eq v15, v13, :cond_5

    .line 193
    .line 194
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    if-eqz v4, :cond_5

    .line 199
    .line 200
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 201
    .line 202
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_5
    if-eq v12, v13, :cond_6

    .line 210
    .line 211
    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    if-eqz v4, :cond_6

    .line 216
    .line 217
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    .line 231
    .line 232
    const/4 v5, 0x2

    .line 233
    if-lt v4, v5, :cond_7

    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExcludeLoggingPackages:Ljava/util/List;

    .line 240
    .line 241
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    new-instance v13, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;

    .line 245
    .line 246
    invoke-direct {v13, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v4, v13}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_8

    .line 254
    .line 255
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 259
    .line 260
    .line 261
    :cond_8
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 262
    .line 263
    if-eqz v4, :cond_c

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_c

    .line 270
    .line 271
    new-instance v4, Lcom/android/wm/shell/util/SplitBounds;

    .line 272
    .line 273
    iget v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 274
    .line 275
    move-object v5, v4

    .line 276
    move-object v2, v8

    .line 277
    move-object v8, v3

    .line 278
    move-object v3, v10

    .line 279
    move v10, v11

    .line 280
    move v11, v12

    .line 281
    move-object/from16 p1, v2

    .line 282
    .line 283
    move v2, v12

    .line 284
    move/from16 v12, v16

    .line 285
    .line 286
    move-object/from16 v16, v3

    .line 287
    .line 288
    const/4 v3, -0x1

    .line 289
    invoke-direct/range {v5 .. v13}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIII)V

    .line 290
    .line 291
    .line 292
    if-eq v14, v3, :cond_b

    .line 293
    .line 294
    if-eq v15, v3, :cond_b

    .line 295
    .line 296
    if-eq v2, v3, :cond_b

    .line 297
    .line 298
    invoke-virtual {v1, v14, v15, v2, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->addSplitPair(IIILcom/android/wm/shell/util/SplitBounds;)V

    .line 299
    .line 300
    .line 301
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 302
    .line 303
    if-eqz v1, :cond_9

    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendPairLoggingLocked()V

    .line 306
    .line 307
    .line 308
    :cond_9
    move-object/from16 v5, p1

    .line 309
    .line 310
    move-object/from16 v2, v16

    .line 311
    .line 312
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    const/4 v3, 0x1

    .line 317
    xor-int/2addr v1, v3

    .line 318
    if-nez v1, :cond_a

    .line 319
    .line 320
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    .line 321
    .line 322
    if-eqz v1, :cond_10

    .line 323
    .line 324
    invoke-virtual {v0, v4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasSameRatioInGroupedTasks(Lcom/android/wm/shell/util/SplitBounds;Z)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-nez v1, :cond_10

    .line 329
    .line 330
    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 331
    .line 332
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/split/SplitWindowManager;->sendSplitStateChangedInfo(Z)V

    .line 336
    .line 337
    .line 338
    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_b
    move-object/from16 v5, p1

    .line 342
    .line 343
    move-object/from16 v2, v16

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_c
    move-object v5, v8

    .line 347
    move-object v2, v10

    .line 348
    const/4 v3, -0x1

    .line 349
    new-instance v4, Lcom/android/wm/shell/util/SplitBounds;

    .line 350
    .line 351
    invoke-direct {v4, v6, v7, v9, v11}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 352
    .line 353
    .line 354
    if-eq v14, v3, :cond_d

    .line 355
    .line 356
    if-eq v15, v3, :cond_d

    .line 357
    .line 358
    invoke-virtual {v1, v14, v15, v3, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->addSplitPair(IIILcom/android/wm/shell/util/SplitBounds;)V

    .line 359
    .line 360
    .line 361
    :cond_d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 362
    .line 363
    if-eqz v1, :cond_e

    .line 364
    .line 365
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendPairLoggingLocked()V

    .line 366
    .line 367
    .line 368
    :cond_e
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    const/4 v3, 0x1

    .line 373
    xor-int/2addr v1, v3

    .line 374
    if-nez v1, :cond_f

    .line 375
    .line 376
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    .line 377
    .line 378
    if-eqz v1, :cond_10

    .line 379
    .line 380
    const/4 v1, 0x0

    .line 381
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasSameRatioInGroupedTasks(Lcom/android/wm/shell/util/SplitBounds;Z)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-nez v3, :cond_10

    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_f
    const/4 v1, 0x0

    .line 389
    :goto_5
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 390
    .line 391
    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 392
    .line 393
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->sendSplitStateChangedInfo(Z)V

    .line 394
    .line 395
    .line 396
    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    .line 397
    .line 398
    :cond_10
    :goto_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
