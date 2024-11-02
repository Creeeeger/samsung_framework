.class public final Lcom/android/wm/shell/bubbles/BubbleController$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleData$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/wm/shell/bubbles/BubbleController;->BUBBLE_BAR_ENABLED:Z

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureBubbleViewsAndWindowCreated()V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 13
    .line 14
    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v5, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    .line 22
    .line 23
    iget v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 24
    .line 25
    new-instance v6, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    .line 26
    .line 27
    invoke-direct {v6, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    .line 28
    .line 29
    .line 30
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 31
    .line 32
    iget-object v8, v7, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->ioScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 33
    .line 34
    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;

    .line 35
    .line 36
    invoke-direct {v9, v7, v3, v6, v4}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleDataRepository;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    invoke-static {v8, v4, v4, v9, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 44
    .line 45
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/4 v8, 0x1

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Lcom/android/wm/shell/bubbles/Bubble;

    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 75
    .line 76
    iput-boolean v8, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    .line 77
    .line 78
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 87
    .line 88
    iput-boolean v5, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    .line 89
    .line 90
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-interface {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 105
    .line 106
    invoke-virtual {v2, v1, v5}, Lcom/android/wm/shell/bubbles/BubbleController;->expandIfChanged(Lcom/android/wm/shell/bubbles/BubbleData$Update;Z)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v6, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 112
    .line 113
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    new-instance v6, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_17

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Landroid/util/Pair;

    .line 136
    .line 137
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v9, Lcom/android/wm/shell/bubbles/Bubble;

    .line 140
    .line 141
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v7, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    iget-object v10, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 150
    .line 151
    const/16 v11, 0x8

    .line 152
    .line 153
    const/4 v12, 0x5

    .line 154
    if-eqz v10, :cond_d

    .line 155
    .line 156
    move v13, v5

    .line 157
    :goto_3
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-ge v13, v14, :cond_a

    .line 162
    .line 163
    iget-object v14, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 164
    .line 165
    invoke-virtual {v14, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    instance-of v15, v14, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 170
    .line 171
    if-eqz v15, :cond_9

    .line 172
    .line 173
    check-cast v14, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 174
    .line 175
    iget-object v14, v14, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 176
    .line 177
    if-eqz v14, :cond_6

    .line 178
    .line 179
    invoke-interface {v14}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    goto :goto_4

    .line 184
    :cond_6
    move-object v14, v4

    .line 185
    :goto_4
    iget-object v15, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-eqz v14, :cond_9

    .line 192
    .line 193
    iget-object v14, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 194
    .line 195
    invoke-virtual {v14, v13}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    .line 196
    .line 197
    .line 198
    iget-object v13, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 199
    .line 200
    iget-object v14, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v13, v14}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    if-eqz v13, :cond_7

    .line 207
    .line 208
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_7
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 213
    .line 214
    .line 215
    iput-object v4, v9, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 216
    .line 217
    :goto_5
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    if-nez v13, :cond_8

    .line 225
    .line 226
    iget-boolean v13, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 227
    .line 228
    if-nez v13, :cond_8

    .line 229
    .line 230
    iget-object v13, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 231
    .line 232
    iget-object v14, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 233
    .line 234
    invoke-virtual {v14}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    invoke-virtual {v13, v14}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 239
    .line 240
    .line 241
    iget-object v13, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 242
    .line 243
    invoke-virtual {v13}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 244
    .line 245
    .line 246
    :cond_8
    invoke-virtual {v10, v9, v12}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 247
    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_a
    iget v13, v9, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 254
    .line 255
    and-int/2addr v13, v11

    .line 256
    if-eqz v13, :cond_b

    .line 257
    .line 258
    move v13, v8

    .line 259
    goto :goto_6

    .line 260
    :cond_b
    move v13, v5

    .line 261
    :goto_6
    if-eqz v13, :cond_c

    .line 262
    .line 263
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 264
    .line 265
    .line 266
    iput-object v4, v9, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 267
    .line 268
    invoke-virtual {v10, v9, v12}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 269
    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string/jumbo v13, "was asked to remove Bubble, but didn\'t find the view! "

    .line 275
    .line 276
    .line 277
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    const-string v13, "Bubbles"

    .line 288
    .line 289
    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    :cond_d
    :goto_7
    if-eq v7, v11, :cond_5

    .line 293
    .line 294
    const/16 v10, 0xe

    .line 295
    .line 296
    if-ne v7, v10, :cond_e

    .line 297
    .line 298
    goto/16 :goto_2

    .line 299
    .line 300
    :cond_e
    if-eq v7, v12, :cond_f

    .line 301
    .line 302
    const/16 v10, 0xc

    .line 303
    .line 304
    if-ne v7, v10, :cond_10

    .line 305
    .line 306
    :cond_f
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_10
    iget-object v10, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 310
    .line 311
    iget-object v11, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 312
    .line 313
    invoke-virtual {v11, v10}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    iget-object v13, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 318
    .line 319
    if-nez v10, :cond_16

    .line 320
    .line 321
    invoke-virtual {v11, v13}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    if-nez v10, :cond_14

    .line 326
    .line 327
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    if-eqz v10, :cond_13

    .line 332
    .line 333
    if-eq v7, v12, :cond_12

    .line 334
    .line 335
    const/16 v10, 0x9

    .line 336
    .line 337
    if-ne v7, v10, :cond_11

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_11
    move v7, v5

    .line 341
    goto :goto_9

    .line 342
    :cond_12
    :goto_8
    move v7, v8

    .line 343
    :goto_9
    if-eqz v7, :cond_14

    .line 344
    .line 345
    :cond_13
    const-string v7, "Bubbles"

    .line 346
    .line 347
    const-string v10, "hiding notification after bubble removed"

    .line 348
    .line 349
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 353
    .line 354
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    new-instance v10, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;

    .line 358
    .line 359
    invoke-direct {v10, v7, v13}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v7, v7, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 363
    .line 364
    invoke-interface {v7, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 365
    .line 366
    .line 367
    iput-boolean v8, v2, Lcom/android/wm/shell/bubbles/BubbleController;->isBubbleConversationOff:Z

    .line 368
    .line 369
    goto :goto_a

    .line 370
    :cond_14
    iget-boolean v7, v9, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    .line 371
    .line 372
    if-eqz v7, :cond_15

    .line 373
    .line 374
    invoke-virtual {v2, v9, v5}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 375
    .line 376
    .line 377
    :cond_15
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 378
    .line 379
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    new-instance v10, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 383
    .line 384
    invoke-direct {v10, v7, v13, v8}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V

    .line 385
    .line 386
    .line 387
    iget-object v7, v7, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 388
    .line 389
    invoke-interface {v7, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    .line 391
    .line 392
    :cond_16
    :goto_a
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 393
    .line 394
    new-instance v10, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;

    .line 395
    .line 396
    invoke-direct {v10, v2, v9, v8}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/Object;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    new-instance v9, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;

    .line 403
    .line 404
    invoke-direct {v9, v7, v13, v10}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 405
    .line 406
    .line 407
    iget-object v7, v7, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 408
    .line 409
    invoke-interface {v7, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_2

    .line 413
    .line 414
    :cond_17
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 415
    .line 416
    iget v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    invoke-static {v6}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    iget-object v7, v3, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 426
    .line 427
    monitor-enter v7

    .line 428
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .line 432
    .line 433
    move-object v10, v6

    .line 434
    check-cast v10, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v10

    .line 440
    :cond_18
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v11

    .line 444
    if-eqz v11, :cond_1a

    .line 445
    .line 446
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v11

    .line 450
    move-object v12, v11

    .line 451
    check-cast v12, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 452
    .line 453
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 454
    :try_start_1
    iget-object v13, v7, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 455
    .line 456
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v13

    .line 460
    check-cast v13, Ljava/util/List;

    .line 461
    .line 462
    if-nez v13, :cond_19

    .line 463
    .line 464
    new-instance v13, Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .line 468
    .line 469
    iget-object v14, v7, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 470
    .line 471
    invoke-virtual {v14, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    .line 473
    .line 474
    :cond_19
    :try_start_2
    monitor-exit v7

    .line 475
    new-instance v14, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;

    .line 476
    .line 477
    invoke-direct {v14, v12}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;-><init>(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V

    .line 478
    .line 479
    .line 480
    invoke-interface {v13, v14}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 481
    .line 482
    .line 483
    move-result v12

    .line 484
    if-eqz v12, :cond_18

    .line 485
    .line 486
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    goto :goto_b

    .line 490
    :catchall_0
    move-exception v0

    .line 491
    monitor-exit v7

    .line 492
    throw v0

    .line 493
    :cond_1a
    invoke-virtual {v7, v9}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->uncache(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 494
    .line 495
    .line 496
    monitor-exit v7

    .line 497
    check-cast v6, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    xor-int/2addr v2, v8

    .line 504
    if-eqz v2, :cond_1b

    .line 505
    .line 506
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V

    .line 507
    .line 508
    .line 509
    :cond_1b
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 510
    .line 511
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 512
    .line 513
    const/4 v6, 0x2

    .line 514
    if-nez v3, :cond_1c

    .line 515
    .line 516
    goto/16 :goto_11

    .line 517
    .line 518
    :cond_1c
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 519
    .line 520
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 521
    .line 522
    if-eqz v3, :cond_1e

    .line 523
    .line 524
    iget v9, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 525
    .line 526
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    iget-object v10, v7, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 538
    .line 539
    invoke-virtual {v10, v9, v3}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V

    .line 540
    .line 541
    .line 542
    check-cast v3, Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    xor-int/2addr v3, v8

    .line 549
    if-eqz v3, :cond_1d

    .line 550
    .line 551
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V

    .line 552
    .line 553
    .line 554
    :cond_1d
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 555
    .line 556
    iget-object v9, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 557
    .line 558
    invoke-virtual {v3, v9}, Lcom/android/wm/shell/bubbles/BubbleStackView;->addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 559
    .line 560
    .line 561
    :cond_1e
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 562
    .line 563
    if-eqz v3, :cond_1f

    .line 564
    .line 565
    iget-object v9, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 566
    .line 567
    invoke-virtual {v9, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v9, v3, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 574
    .line 575
    .line 576
    :cond_1f
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 577
    .line 578
    if-eqz v3, :cond_28

    .line 579
    .line 580
    iget v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 581
    .line 582
    iget-object v9, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    .line 583
    .line 584
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-static {v9}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    .line 588
    .line 589
    .line 590
    move-result-object v10

    .line 591
    iget-object v11, v7, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 592
    .line 593
    invoke-virtual {v11, v3, v10}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V

    .line 594
    .line 595
    .line 596
    check-cast v10, Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    xor-int/2addr v3, v8

    .line 603
    if-eqz v3, :cond_20

    .line 604
    .line 605
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V

    .line 606
    .line 607
    .line 608
    :cond_20
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 609
    .line 610
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;

    .line 614
    .line 615
    invoke-direct {v7, v3, v9, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/lang/Object;I)V

    .line 616
    .line 617
    .line 618
    iget-boolean v10, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 619
    .line 620
    if-nez v10, :cond_26

    .line 621
    .line 622
    iget-boolean v10, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 623
    .line 624
    if-eqz v10, :cond_21

    .line 625
    .line 626
    goto/16 :goto_f

    .line 627
    .line 628
    :cond_21
    if-nez v10, :cond_27

    .line 629
    .line 630
    invoke-interface {v9}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 631
    .line 632
    .line 633
    move-result-object v9

    .line 634
    new-instance v10, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;

    .line 635
    .line 636
    invoke-direct {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;-><init>()V

    .line 637
    .line 638
    .line 639
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 640
    .line 641
    .line 642
    move-result-object v9

    .line 643
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 644
    .line 645
    .line 646
    move-result-object v10

    .line 647
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v9

    .line 651
    check-cast v9, Ljava/util/List;

    .line 652
    .line 653
    iget-object v10, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 654
    .line 655
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    new-instance v11, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;

    .line 659
    .line 660
    invoke-direct {v11, v5, v10, v9}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    move v12, v5

    .line 664
    move v13, v12

    .line 665
    :goto_c
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 666
    .line 667
    .line 668
    move-result v14

    .line 669
    if-ge v12, v14, :cond_25

    .line 670
    .line 671
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v14

    .line 675
    check-cast v14, Landroid/view/View;

    .line 676
    .line 677
    iget-object v15, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 678
    .line 679
    invoke-virtual {v15, v14}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 680
    .line 681
    .line 682
    move-result v15

    .line 683
    if-ne v12, v15, :cond_22

    .line 684
    .line 685
    invoke-virtual {v10, v14, v12, v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveToFinalIndex(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 686
    .line 687
    .line 688
    move v4, v5

    .line 689
    move-object v15, v9

    .line 690
    goto :goto_e

    .line 691
    :cond_22
    if-nez v12, :cond_24

    .line 692
    .line 693
    if-eqz v14, :cond_23

    .line 694
    .line 695
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 696
    .line 697
    .line 698
    move-result-object v15

    .line 699
    iget-object v4, v10, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 700
    .line 701
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 702
    .line 703
    iget v6, v10, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSwapAnimationOffset:F

    .line 704
    .line 705
    sub-float/2addr v4, v6

    .line 706
    invoke-virtual {v15, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    move-object v15, v9

    .line 711
    const-wide/16 v8, 0x12c

    .line 712
    .line 713
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    new-instance v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;

    .line 718
    .line 719
    invoke-direct {v8, v10, v11, v14, v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;Landroid/view/View;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    const v8, 0x7f0a08b0

    .line 727
    .line 728
    .line 729
    invoke-virtual {v14, v8, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    goto :goto_d

    .line 733
    :cond_23
    move-object v15, v9

    .line 734
    goto :goto_d

    .line 735
    :cond_24
    move-object v15, v9

    .line 736
    invoke-virtual {v10, v14, v12, v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveToFinalIndex(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 737
    .line 738
    .line 739
    :goto_d
    const/4 v4, 0x1

    .line 740
    :goto_e
    or-int/2addr v13, v4

    .line 741
    add-int/lit8 v12, v12, 0x1

    .line 742
    .line 743
    move-object v9, v15

    .line 744
    const/4 v4, 0x0

    .line 745
    const/4 v6, 0x2

    .line 746
    const/4 v8, 0x1

    .line 747
    goto :goto_c

    .line 748
    :cond_25
    if-nez v13, :cond_27

    .line 749
    .line 750
    invoke-virtual {v11}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->run()V

    .line 751
    .line 752
    .line 753
    goto :goto_10

    .line 754
    :cond_26
    :goto_f
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;->run()V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateZOrder()V

    .line 761
    .line 762
    .line 763
    :cond_27
    :goto_10
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 764
    .line 765
    .line 766
    :cond_28
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    .line 767
    .line 768
    if-eqz v3, :cond_29

    .line 769
    .line 770
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 771
    .line 772
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 773
    .line 774
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 775
    .line 776
    .line 777
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 778
    .line 779
    if-eqz v3, :cond_29

    .line 780
    .line 781
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 782
    .line 783
    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    :cond_29
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 790
    .line 791
    if-eqz v3, :cond_2a

    .line 792
    .line 793
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 794
    .line 795
    if-eqz v4, :cond_2a

    .line 796
    .line 797
    const/4 v6, 0x1

    .line 798
    invoke-virtual {v4, v3, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setBubbleSuppressed(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 799
    .line 800
    .line 801
    :cond_2a
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 802
    .line 803
    if-eqz v3, :cond_2b

    .line 804
    .line 805
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 806
    .line 807
    if-eqz v4, :cond_2b

    .line 808
    .line 809
    invoke-virtual {v4, v3, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setBubbleSuppressed(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 810
    .line 811
    .line 812
    :cond_2b
    const/4 v3, 0x1

    .line 813
    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/bubbles/BubbleController;->expandIfChanged(Lcom/android/wm/shell/bubbles/BubbleData$Update;Z)V

    .line 814
    .line 815
    .line 816
    :goto_11
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 817
    .line 818
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 819
    .line 820
    const-string v3, "BubbleData.Listener.applyUpdate"

    .line 821
    .line 822
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    new-instance v4, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 826
    .line 827
    const/4 v6, 0x2

    .line 828
    invoke-direct {v4, v2, v3, v6}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V

    .line 829
    .line 830
    .line 831
    iget-object v2, v2, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 832
    .line 833
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 834
    .line 835
    .line 836
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 837
    .line 838
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 839
    .line 840
    if-nez v3, :cond_2c

    .line 841
    .line 842
    goto :goto_13

    .line 843
    :cond_2c
    iget-boolean v4, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    .line 844
    .line 845
    if-nez v4, :cond_2d

    .line 846
    .line 847
    const/4 v4, 0x4

    .line 848
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 849
    .line 850
    .line 851
    goto :goto_12

    .line 852
    :cond_2d
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->hasBubbles()Z

    .line 853
    .line 854
    .line 855
    move-result v3

    .line 856
    if-eqz v3, :cond_2e

    .line 857
    .line 858
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 859
    .line 860
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 861
    .line 862
    .line 863
    :cond_2e
    :goto_12
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 864
    .line 865
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateContentDescription()V

    .line 866
    .line 867
    .line 868
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 869
    .line 870
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubblesAcessibillityStates()V

    .line 871
    .line 872
    .line 873
    :goto_13
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 874
    .line 875
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 876
    .line 877
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 878
    .line 879
    const-string v0, "clearing mSuppressedGroupToNotifKeys = "

    .line 880
    .line 881
    monitor-enter v2

    .line 882
    :try_start_3
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    .line 883
    .line 884
    if-eqz v3, :cond_30

    .line 885
    .line 886
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 887
    .line 888
    if-eqz v3, :cond_2f

    .line 889
    .line 890
    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    goto :goto_14

    .line 895
    :cond_2f
    const/4 v4, 0x0

    .line 896
    :goto_14
    iput-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSelectedBubbleKey:Ljava/lang/String;

    .line 897
    .line 898
    :cond_30
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    .line 899
    .line 900
    if-eqz v3, :cond_31

    .line 901
    .line 902
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 903
    .line 904
    iput-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mIsStackExpanded:Z

    .line 905
    .line 906
    :cond_31
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    .line 907
    .line 908
    if-eqz v3, :cond_33

    .line 909
    .line 910
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 911
    .line 912
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 913
    .line 914
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 915
    .line 916
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 917
    .line 918
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 919
    .line 920
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    check-cast v0, Ljava/lang/String;

    .line 925
    .line 926
    if-eqz v0, :cond_32

    .line 927
    .line 928
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    .line 929
    .line 930
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 931
    .line 932
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    goto :goto_15

    .line 936
    :cond_32
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    .line 937
    .line 938
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 939
    .line 940
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    goto :goto_15

    .line 944
    :cond_33
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 945
    .line 946
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 947
    .line 948
    iget-boolean v3, v3, Lcom/android/wm/shell/bubbles/BubbleController;->isBubbleConversationOff:Z

    .line 949
    .line 950
    if-eqz v3, :cond_34

    .line 951
    .line 952
    const-string v3, "Bubbles"

    .line 953
    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    .line 955
    .line 956
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    iget-object v0, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    .line 972
    .line 973
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 974
    .line 975
    .line 976
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 977
    .line 978
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 979
    .line 980
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleController;->isBubbleConversationOff:Z

    .line 981
    .line 982
    :cond_34
    :goto_15
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 983
    .line 984
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 985
    .line 986
    .line 987
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 988
    .line 989
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    .line 990
    .line 991
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 992
    .line 993
    .line 994
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 995
    .line 996
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    .line 997
    .line 998
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 999
    .line 1000
    .line 1001
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedBubbleKeys:Ljava/util/HashSet;

    .line 1002
    .line 1003
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1004
    .line 1005
    .line 1006
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mShortcutIdToBubble:Ljava/util/HashMap;

    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1009
    .line 1010
    .line 1011
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1014
    .line 1015
    .line 1016
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 1017
    .line 1018
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    :cond_35
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v1

    .line 1026
    if-eqz v1, :cond_37

    .line 1027
    .line 1028
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1033
    .line 1034
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mShortcutIdToBubble:Ljava/util/HashMap;

    .line 1035
    .line 1036
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1037
    .line 1038
    if-eqz v4, :cond_36

    .line 1039
    .line 1040
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v4

    .line 1044
    goto :goto_17

    .line 1045
    :cond_36
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 1046
    .line 1047
    :goto_17
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 1051
    .line 1052
    .line 1053
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 1054
    .line 1055
    if-eqz v3, :cond_35

    .line 1056
    .line 1057
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    .line 1058
    .line 1059
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 1060
    .line 1061
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getTaskId()I

    .line 1062
    .line 1063
    .line 1064
    move-result v1

    .line 1065
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1070
    .line 1071
    .line 1072
    goto :goto_16

    .line 1073
    :cond_37
    monitor-exit v2

    .line 1074
    return-void

    .line 1075
    :catchall_1
    move-exception v0

    .line 1076
    monitor-exit v2

    .line 1077
    throw v0

    .line 1078
    :catchall_2
    move-exception v0

    .line 1079
    monitor-exit v7

    .line 1080
    throw v0
.end method
