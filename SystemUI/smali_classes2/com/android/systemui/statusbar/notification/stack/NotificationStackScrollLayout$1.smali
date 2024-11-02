.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    .line 5
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayState:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eq v2, v3, :cond_7e

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v2, v3, :cond_7e

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_47

    .line 23
    .line 24
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 30
    .line 31
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const/4 v3, 0x0

    .line 41
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ge v3, v5, :cond_4

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtIndex(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    instance-of v7, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 64
    .line 65
    if-eqz v7, :cond_2

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    :goto_1
    iget v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 77
    .line 78
    add-int/2addr v5, v7

    .line 79
    iget v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 80
    .line 81
    if-ge v6, v7, :cond_3

    .line 82
    .line 83
    add-int/2addr v7, v5

    .line 84
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 91
    .line 92
    .line 93
    :goto_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 94
    .line 95
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_5

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    :goto_3
    iput v5, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    .line 112
    .line 113
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    .line 114
    .line 115
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    const/4 v8, 0x0

    .line 128
    :goto_4
    if-ge v8, v7, :cond_6

    .line 129
    .line 130
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 135
    .line 136
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 143
    .line 144
    iget-object v14, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 145
    .line 146
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    neg-int v7, v7

    .line 150
    int-to-float v7, v7

    .line 151
    iput v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 152
    .line 153
    iput v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 154
    .line 155
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    iget-object v15, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 165
    .line 166
    .line 167
    const/4 v8, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    :goto_5
    const-class v16, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 170
    .line 171
    if-ge v8, v7, :cond_a

    .line 172
    .line 173
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 178
    .line 179
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-eq v11, v2, :cond_9

    .line 184
    .line 185
    iget-object v11, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 186
    .line 187
    if-ne v10, v11, :cond_7

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_7
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 191
    .line 192
    iput v9, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 193
    .line 194
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    add-int/lit8 v9, v9, 0x1

    .line 198
    .line 199
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    check-cast v11, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 204
    .line 205
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 209
    .line 210
    iget-boolean v11, v11, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mChildAnimatable:Z

    .line 211
    .line 212
    iput-boolean v11, v12, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->isAnimatable:Z

    .line 213
    .line 214
    instance-of v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 215
    .line 216
    if-eqz v11, :cond_9

    .line 217
    .line 218
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 219
    .line 220
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 225
    .line 226
    if-eqz v10, :cond_9

    .line 227
    .line 228
    if-eqz v11, :cond_9

    .line 229
    .line 230
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    :cond_8
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    if-eqz v11, :cond_9

    .line 239
    .line 240
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 245
    .line 246
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    if-eq v12, v2, :cond_8

    .line 251
    .line 252
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 253
    .line 254
    iput v9, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 255
    .line 256
    add-int/lit8 v9, v9, 0x1

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_9
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    check-cast v2, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 267
    .line 268
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mChildAnimatable:Z

    .line 269
    .line 270
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 271
    .line 272
    neg-int v2, v2

    .line 273
    int-to-float v2, v2

    .line 274
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    iget-object v12, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    .line 279
    .line 280
    if-eqz v4, :cond_b

    .line 281
    .line 282
    move-object v4, v12

    .line 283
    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 284
    .line 285
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_c

    .line 290
    .line 291
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-eqz v4, :cond_c

    .line 296
    .line 297
    :cond_b
    const/4 v4, 0x0

    .line 298
    add-float/2addr v2, v4

    .line 299
    :cond_c
    const/4 v4, 0x0

    .line 300
    iput-object v4, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 301
    .line 302
    const/4 v6, 0x0

    .line 303
    :goto_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    iget-object v11, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    .line 308
    .line 309
    if-ge v6, v7, :cond_10

    .line 310
    .line 311
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 316
    .line 317
    if-lez v6, :cond_d

    .line 318
    .line 319
    add-int/lit8 v8, v6, -0x1

    .line 320
    .line 321
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_d
    move-object v8, v4

    .line 329
    :goto_9
    invoke-static {v11, v6, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-eqz v8, :cond_e

    .line 334
    .line 335
    iget v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 336
    .line 337
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    invoke-virtual {v3, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    add-float/2addr v2, v8

    .line 346
    :cond_e
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 347
    .line 348
    if-eqz v8, :cond_f

    .line 349
    .line 350
    iget v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    .line 351
    .line 352
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    int-to-float v8, v8

    .line 357
    sub-float/2addr v9, v8

    .line 358
    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 359
    .line 360
    sub-float/2addr v9, v8

    .line 361
    cmpl-float v8, v2, v9

    .line 362
    .line 363
    if-ltz v8, :cond_f

    .line 364
    .line 365
    instance-of v8, v7, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 366
    .line 367
    if-nez v8, :cond_f

    .line 368
    .line 369
    iget-object v8, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 370
    .line 371
    if-nez v8, :cond_f

    .line 372
    .line 373
    iput-object v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 374
    .line 375
    :cond_f
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    int-to-float v7, v7

    .line 380
    add-float/2addr v2, v7

    .line 381
    iget v7, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 382
    .line 383
    add-float/2addr v2, v7

    .line 384
    add-int/lit8 v6, v6, 0x1

    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_10
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_12

    .line 392
    .line 393
    move-object v2, v12

    .line 394
    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 395
    .line 396
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-eqz v2, :cond_11

    .line 401
    .line 402
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_11

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_11
    const/4 v2, 0x0

    .line 410
    goto :goto_b

    .line 411
    :cond_12
    :goto_a
    iget v2, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 412
    .line 413
    const/4 v4, 0x0

    .line 414
    add-float/2addr v2, v4

    .line 415
    iput v2, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 416
    .line 417
    iget v2, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 418
    .line 419
    add-float/2addr v2, v4

    .line 420
    iput v2, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 421
    .line 422
    move v2, v4

    .line 423
    :goto_b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGroupExpandInterpolationY:F

    .line 428
    .line 429
    const/4 v2, 0x0

    .line 430
    :goto_c
    const/high16 v6, 0x3f800000    # 1.0f

    .line 431
    .line 432
    if-ge v2, v4, :cond_2a

    .line 433
    .line 434
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    move-object v10, v7

    .line 439
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 440
    .line 441
    iget-object v9, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 442
    .line 443
    const/4 v7, 0x0

    .line 444
    iput v7, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 445
    .line 446
    instance-of v7, v10, Lcom/android/systemui/statusbar/NotificationShelf;

    .line 447
    .line 448
    if-eqz v7, :cond_13

    .line 449
    .line 450
    iget v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 451
    .line 452
    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGroupExpandInterpolationY:F

    .line 453
    .line 454
    sub-float/2addr v7, v8

    .line 455
    iput v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 456
    .line 457
    :cond_13
    if-lez v2, :cond_14

    .line 458
    .line 459
    add-int/lit8 v7, v2, -0x1

    .line 460
    .line 461
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 466
    .line 467
    goto :goto_d

    .line 468
    :cond_14
    const/4 v7, 0x0

    .line 469
    :goto_d
    invoke-static {v11, v2, v10, v7}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 474
    .line 475
    .line 476
    move-result v8

    .line 477
    if-nez v8, :cond_15

    .line 478
    .line 479
    if-eqz v7, :cond_15

    .line 480
    .line 481
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 482
    .line 483
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 484
    .line 485
    .line 486
    move-result v8

    .line 487
    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    iget v8, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 492
    .line 493
    mul-float/2addr v6, v7

    .line 494
    add-float/2addr v6, v8

    .line 495
    iput v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 496
    .line 497
    iget v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 498
    .line 499
    add-float/2addr v6, v7

    .line 500
    iput v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 501
    .line 502
    :cond_15
    iget v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 503
    .line 504
    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 505
    .line 506
    .line 507
    iget v6, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 508
    .line 509
    iget v7, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 510
    .line 511
    int-to-float v7, v7

    .line 512
    add-float/2addr v6, v7

    .line 513
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 514
    .line 515
    add-float v17, v6, v7

    .line 516
    .line 517
    iget-boolean v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 518
    .line 519
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    .line 520
    .line 521
    .line 522
    move-result v18

    .line 523
    iget v6, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 524
    .line 525
    const/4 v7, 0x0

    .line 526
    cmpl-float v6, v6, v7

    .line 527
    .line 528
    if-ltz v6, :cond_16

    .line 529
    .line 530
    const/4 v6, 0x1

    .line 531
    goto :goto_e

    .line 532
    :cond_16
    const/4 v6, 0x0

    .line 533
    :goto_e
    move/from16 v19, v6

    .line 534
    .line 535
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 536
    .line 537
    move-object v6, v3

    .line 538
    move/from16 v20, v7

    .line 539
    .line 540
    move-object v7, v9

    .line 541
    move/from16 v21, v4

    .line 542
    .line 543
    move-object v4, v9

    .line 544
    move/from16 v9, v18

    .line 545
    .line 546
    move-object v0, v10

    .line 547
    move/from16 v10, v19

    .line 548
    .line 549
    move-object/from16 v18, v11

    .line 550
    .line 551
    move/from16 v11, v17

    .line 552
    .line 553
    move-object/from16 v17, v12

    .line 554
    .line 555
    move/from16 v12, v20

    .line 556
    .line 557
    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->maybeUpdateHeadsUpIsVisible(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZZZFF)V

    .line 558
    .line 559
    .line 560
    instance-of v6, v0, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 561
    .line 562
    if-eqz v6, :cond_1f

    .line 563
    .line 564
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 565
    .line 566
    const/4 v7, 0x1

    .line 567
    xor-int/2addr v6, v7

    .line 568
    iget-object v8, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 569
    .line 570
    if-eqz v8, :cond_17

    .line 571
    .line 572
    move v8, v7

    .line 573
    goto :goto_f

    .line 574
    :cond_17
    const/4 v8, 0x0

    .line 575
    :goto_f
    if-eqz v6, :cond_18

    .line 576
    .line 577
    iput-boolean v7, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 578
    .line 579
    goto/16 :goto_1c

    .line 580
    .line 581
    :cond_18
    iget v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 582
    .line 583
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 584
    .line 585
    .line 586
    move-result v7

    .line 587
    int-to-float v7, v7

    .line 588
    add-float/2addr v6, v7

    .line 589
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    .line 590
    .line 591
    cmpl-float v6, v6, v7

    .line 592
    .line 593
    if-lez v6, :cond_19

    .line 594
    .line 595
    const/4 v6, 0x1

    .line 596
    goto :goto_10

    .line 597
    :cond_19
    const/4 v6, 0x0

    .line 598
    :goto_10
    move-object v9, v4

    .line 599
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;

    .line 600
    .line 601
    if-nez v8, :cond_1e

    .line 602
    .line 603
    if-nez v6, :cond_1e

    .line 604
    .line 605
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    .line 606
    .line 607
    if-eqz v6, :cond_1d

    .line 608
    .line 609
    const/4 v6, 0x0

    .line 610
    :goto_11
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 611
    .line 612
    .line 613
    move-result v7

    .line 614
    if-ge v6, v7, :cond_1c

    .line 615
    .line 616
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    check-cast v7, Landroid/view/View;

    .line 621
    .line 622
    instance-of v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 623
    .line 624
    if-nez v8, :cond_1a

    .line 625
    .line 626
    goto :goto_12

    .line 627
    :cond_1a
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 628
    .line 629
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    .line 630
    .line 631
    .line 632
    move-result v7

    .line 633
    if-nez v7, :cond_1b

    .line 634
    .line 635
    const/4 v6, 0x1

    .line 636
    goto :goto_13

    .line 637
    :cond_1b
    :goto_12
    add-int/lit8 v6, v6, 0x1

    .line 638
    .line 639
    goto :goto_11

    .line 640
    :cond_1c
    const/4 v6, 0x0

    .line 641
    :goto_13
    if-nez v6, :cond_1d

    .line 642
    .line 643
    goto :goto_14

    .line 644
    :cond_1d
    const/4 v6, 0x0

    .line 645
    goto :goto_15

    .line 646
    :cond_1e
    :goto_14
    const/4 v6, 0x1

    .line 647
    :goto_15
    iput-boolean v6, v9, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;->hideContent:Z

    .line 648
    .line 649
    goto/16 :goto_1c

    .line 650
    .line 651
    :cond_1f
    instance-of v6, v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 652
    .line 653
    if-eqz v6, :cond_20

    .line 654
    .line 655
    sget-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_STYLE_EMPTY_SHADE:Z

    .line 656
    .line 657
    if-nez v6, :cond_20

    .line 658
    .line 659
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    .line 660
    .line 661
    iget v7, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMarginBottom:I

    .line 662
    .line 663
    add-int/2addr v6, v7

    .line 664
    int-to-float v6, v6

    .line 665
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 666
    .line 667
    sub-float/2addr v6, v7

    .line 668
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    int-to-float v7, v7

    .line 673
    sub-float/2addr v6, v7

    .line 674
    const/high16 v7, 0x40000000    # 2.0f

    .line 675
    .line 676
    div-float/2addr v6, v7

    .line 677
    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 678
    .line 679
    .line 680
    goto :goto_1a

    .line 681
    :cond_20
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 682
    .line 683
    .line 684
    move-result-object v6

    .line 685
    if-eq v0, v6, :cond_26

    .line 686
    .line 687
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 688
    .line 689
    if-eqz v6, :cond_22

    .line 690
    .line 691
    const/4 v6, 0x0

    .line 692
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 693
    .line 694
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 695
    .line 696
    if-eqz v6, :cond_21

    .line 697
    .line 698
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 699
    .line 700
    .line 701
    move-result v6

    .line 702
    if-lt v2, v6, :cond_21

    .line 703
    .line 704
    const/4 v6, 0x1

    .line 705
    goto :goto_16

    .line 706
    :cond_21
    const/4 v6, 0x0

    .line 707
    :goto_16
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 708
    .line 709
    goto :goto_1a

    .line 710
    :cond_22
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 711
    .line 712
    if-eqz v6, :cond_26

    .line 713
    .line 714
    move-object/from16 v12, v17

    .line 715
    .line 716
    check-cast v12, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 717
    .line 718
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 719
    .line 720
    .line 721
    move-result v6

    .line 722
    if-eqz v6, :cond_23

    .line 723
    .line 724
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 725
    .line 726
    .line 727
    move-result v6

    .line 728
    if-eqz v6, :cond_23

    .line 729
    .line 730
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 731
    .line 732
    .line 733
    move-result v6

    .line 734
    if-nez v6, :cond_23

    .line 735
    .line 736
    const/4 v6, 0x1

    .line 737
    goto :goto_17

    .line 738
    :cond_23
    const/4 v6, 0x0

    .line 739
    :goto_17
    iget-boolean v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 740
    .line 741
    if-eqz v7, :cond_25

    .line 742
    .line 743
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 744
    .line 745
    const/high16 v8, 0x3f800000    # 1.0f

    .line 746
    .line 747
    cmpl-float v7, v7, v8

    .line 748
    .line 749
    if-eqz v7, :cond_25

    .line 750
    .line 751
    if-eqz v6, :cond_24

    .line 752
    .line 753
    goto :goto_18

    .line 754
    :cond_24
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    .line 755
    .line 756
    goto :goto_19

    .line 757
    :cond_25
    :goto_18
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight$1()I

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    int-to-float v6, v6

    .line 762
    :goto_19
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 763
    .line 764
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    .line 765
    .line 766
    .line 767
    move-result v7

    .line 768
    int-to-float v7, v7

    .line 769
    sub-float/2addr v6, v7

    .line 770
    const/4 v7, 0x0

    .line 771
    sub-float/2addr v6, v7

    .line 772
    invoke-virtual {v3, v0, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateViewWithShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;F)V

    .line 773
    .line 774
    .line 775
    :cond_26
    :goto_1a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 780
    .line 781
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 782
    .line 783
    .line 784
    move-result v6

    .line 785
    if-nez v6, :cond_28

    .line 786
    .line 787
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 788
    .line 789
    .line 790
    move-result v6

    .line 791
    if-nez v6, :cond_28

    .line 792
    .line 793
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsingRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 794
    .line 795
    if-ne v6, v0, :cond_27

    .line 796
    .line 797
    const/4 v6, 0x1

    .line 798
    goto :goto_1b

    .line 799
    :cond_27
    const/4 v6, 0x0

    .line 800
    :goto_1b
    if-nez v6, :cond_28

    .line 801
    .line 802
    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 803
    .line 804
    int-to-float v6, v6

    .line 805
    const/high16 v7, 0x3f800000    # 1.0f

    .line 806
    .line 807
    mul-float/2addr v6, v7

    .line 808
    float-to-int v6, v6

    .line 809
    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 810
    .line 811
    :cond_28
    :goto_1c
    iget v6, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMaxGroupExpandedBottomGap:F

    .line 812
    .line 813
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPreviousGroupExpandFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    .line 814
    .line 815
    .line 816
    move-result v7

    .line 817
    const/4 v8, 0x0

    .line 818
    invoke-static {v8, v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 819
    .line 820
    .line 821
    move-result v6

    .line 822
    iput v6, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGroupExpandInterpolationY:F

    .line 823
    .line 824
    iget v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 825
    .line 826
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 827
    .line 828
    .line 829
    move-result v8

    .line 830
    int-to-float v8, v8

    .line 831
    iget v9, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 832
    .line 833
    add-float/2addr v8, v9

    .line 834
    const/high16 v9, 0x3f800000    # 1.0f

    .line 835
    .line 836
    mul-float/2addr v8, v9

    .line 837
    add-float/2addr v8, v6

    .line 838
    add-float/2addr v8, v7

    .line 839
    iput v8, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 840
    .line 841
    iget v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 842
    .line 843
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 844
    .line 845
    .line 846
    move-result v7

    .line 847
    int-to-float v7, v7

    .line 848
    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 849
    .line 850
    add-float/2addr v7, v8

    .line 851
    add-float/2addr v7, v6

    .line 852
    iput v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 853
    .line 854
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 855
    .line 856
    iget v6, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 857
    .line 858
    const/4 v7, 0x4

    .line 859
    iput v7, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 860
    .line 861
    const/4 v7, 0x0

    .line 862
    cmpg-float v6, v6, v7

    .line 863
    .line 864
    if-gtz v6, :cond_29

    .line 865
    .line 866
    const/4 v6, 0x2

    .line 867
    iput v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 868
    .line 869
    :cond_29
    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 870
    .line 871
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 872
    .line 873
    add-float/2addr v0, v6

    .line 874
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 875
    .line 876
    .line 877
    add-int/lit8 v2, v2, 0x1

    .line 878
    .line 879
    move-object/from16 v0, p0

    .line 880
    .line 881
    move-object/from16 v12, v17

    .line 882
    .line 883
    move-object/from16 v11, v18

    .line 884
    .line 885
    move/from16 v4, v21

    .line 886
    .line 887
    goto/16 :goto_c

    .line 888
    .line 889
    :cond_2a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    const/4 v2, 0x0

    .line 894
    :goto_1d
    if-ge v2, v0, :cond_2c

    .line 895
    .line 896
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 901
    .line 902
    instance-of v6, v4, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 903
    .line 904
    if-eqz v6, :cond_2b

    .line 905
    .line 906
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    .line 907
    .line 908
    .line 909
    move-result v6

    .line 910
    if-nez v6, :cond_2d

    .line 911
    .line 912
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    .line 913
    .line 914
    .line 915
    move-result v4

    .line 916
    if-eqz v4, :cond_2b

    .line 917
    .line 918
    goto :goto_1e

    .line 919
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 920
    .line 921
    goto :goto_1d

    .line 922
    :cond_2c
    const/4 v2, -0x1

    .line 923
    :cond_2d
    :goto_1e
    add-int/lit8 v0, v0, -0x1

    .line 924
    .line 925
    const/4 v4, 0x0

    .line 926
    :goto_1f
    if-ltz v0, :cond_35

    .line 927
    .line 928
    if-ne v0, v2, :cond_2e

    .line 929
    .line 930
    const/4 v6, 0x1

    .line 931
    goto :goto_20

    .line 932
    :cond_2e
    const/4 v6, 0x0

    .line 933
    :goto_20
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v7

    .line 937
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 938
    .line 939
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 940
    .line 941
    const/4 v9, 0x0

    .line 942
    int-to-float v9, v9

    .line 943
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    .line 944
    .line 945
    .line 946
    move-result v10

    .line 947
    if-eqz v10, :cond_30

    .line 948
    .line 949
    iget-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 950
    .line 951
    if-nez v10, :cond_30

    .line 952
    .line 953
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 954
    .line 955
    .line 956
    move-result v10

    .line 957
    if-nez v10, :cond_30

    .line 958
    .line 959
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 960
    .line 961
    iget v11, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 962
    .line 963
    int-to-float v11, v11

    .line 964
    iget v12, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 965
    .line 966
    add-float/2addr v11, v12

    .line 967
    cmpg-float v12, v10, v11

    .line 968
    .line 969
    if-gez v12, :cond_30

    .line 970
    .line 971
    const/4 v6, 0x0

    .line 972
    cmpl-float v6, v4, v6

    .line 973
    .line 974
    const/high16 v12, 0x3f800000    # 1.0f

    .line 975
    .line 976
    if-eqz v6, :cond_2f

    .line 977
    .line 978
    add-float/2addr v4, v12

    .line 979
    goto :goto_21

    .line 980
    :cond_2f
    sub-float/2addr v11, v10

    .line 981
    iget v6, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 982
    .line 983
    int-to-float v6, v6

    .line 984
    div-float/2addr v11, v6

    .line 985
    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    .line 986
    .line 987
    .line 988
    move-result v6

    .line 989
    add-float/2addr v4, v6

    .line 990
    :goto_21
    iget v6, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 991
    .line 992
    int-to-float v6, v6

    .line 993
    mul-float/2addr v6, v4

    .line 994
    add-float/2addr v6, v9

    .line 995
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 996
    .line 997
    .line 998
    goto :goto_24

    .line 999
    :cond_30
    if-eqz v6, :cond_34

    .line 1000
    .line 1001
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1002
    .line 1003
    if-nez v6, :cond_31

    .line 1004
    .line 1005
    const/4 v6, 0x0

    .line 1006
    goto :goto_22

    .line 1007
    :cond_31
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    .line 1008
    .line 1009
    .line 1010
    move-result v6

    .line 1011
    :goto_22
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight$1()I

    .line 1012
    .line 1013
    .line 1014
    move-result v10

    .line 1015
    sub-int/2addr v10, v6

    .line 1016
    int-to-float v10, v10

    .line 1017
    iget v11, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 1018
    .line 1019
    int-to-float v11, v11

    .line 1020
    add-float/2addr v10, v11

    .line 1021
    iget v11, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 1022
    .line 1023
    add-float/2addr v10, v11

    .line 1024
    iget v11, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1025
    .line 1026
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 1027
    .line 1028
    .line 1029
    move-result v12

    .line 1030
    int-to-float v12, v12

    .line 1031
    add-float/2addr v11, v12

    .line 1032
    iget v12, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 1033
    .line 1034
    add-float/2addr v11, v12

    .line 1035
    cmpl-float v12, v10, v11

    .line 1036
    .line 1037
    if-lez v12, :cond_32

    .line 1038
    .line 1039
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_24

    .line 1043
    :cond_32
    sub-float/2addr v11, v10

    .line 1044
    int-to-float v6, v6

    .line 1045
    div-float/2addr v11, v6

    .line 1046
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v6

    .line 1050
    if-eqz v6, :cond_33

    .line 1051
    .line 1052
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1053
    .line 1054
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1055
    .line 1056
    goto :goto_23

    .line 1057
    :cond_33
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1058
    .line 1059
    :goto_23
    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    .line 1060
    .line 1061
    .line 1062
    move-result v6

    .line 1063
    iget v10, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 1064
    .line 1065
    int-to-float v10, v10

    .line 1066
    mul-float/2addr v6, v10

    .line 1067
    add-float/2addr v6, v9

    .line 1068
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 1069
    .line 1070
    .line 1071
    goto :goto_24

    .line 1072
    :cond_34
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 1073
    .line 1074
    .line 1075
    :goto_24
    iget v6, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 1076
    .line 1077
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeaderVisibleAmount()F

    .line 1078
    .line 1079
    .line 1080
    move-result v7

    .line 1081
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1082
    .line 1083
    sub-float/2addr v9, v7

    .line 1084
    iget v7, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 1085
    .line 1086
    int-to-float v7, v7

    .line 1087
    mul-float/2addr v9, v7

    .line 1088
    add-float/2addr v9, v6

    .line 1089
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 1090
    .line 1091
    .line 1092
    add-int/lit8 v0, v0, -0x1

    .line 1093
    .line 1094
    goto/16 :goto_1f

    .line 1095
    .line 1096
    :cond_35
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1097
    .line 1098
    .line 1099
    move-result v0

    .line 1100
    iget v2, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 1101
    .line 1102
    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 1103
    .line 1104
    int-to-float v4, v4

    .line 1105
    sub-float/2addr v2, v4

    .line 1106
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v4

    .line 1110
    if-eqz v4, :cond_36

    .line 1111
    .line 1112
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1113
    .line 1114
    if-eqz v4, :cond_36

    .line 1115
    .line 1116
    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1117
    .line 1118
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 1119
    .line 1120
    sub-float/2addr v6, v7

    .line 1121
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    .line 1122
    .line 1123
    invoke-static {v2, v6, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 1124
    .line 1125
    .line 1126
    move-result v6

    .line 1127
    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1128
    .line 1129
    .line 1130
    :cond_36
    const/4 v4, 0x0

    .line 1131
    const/4 v6, 0x0

    .line 1132
    :goto_25
    if-ge v4, v0, :cond_41

    .line 1133
    .line 1134
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v7

    .line 1138
    check-cast v7, Landroid/view/View;

    .line 1139
    .line 1140
    instance-of v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1141
    .line 1142
    if-nez v8, :cond_37

    .line 1143
    .line 1144
    goto/16 :goto_28

    .line 1145
    .line 1146
    :cond_37
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1147
    .line 1148
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 1149
    .line 1150
    if-nez v8, :cond_38

    .line 1151
    .line 1152
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1153
    .line 1154
    if-nez v8, :cond_38

    .line 1155
    .line 1156
    goto/16 :goto_28

    .line 1157
    .line 1158
    :cond_38
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1159
    .line 1160
    if-nez v6, :cond_39

    .line 1161
    .line 1162
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    .line 1163
    .line 1164
    .line 1165
    move-result v9

    .line 1166
    if-eqz v9, :cond_39

    .line 1167
    .line 1168
    iget-boolean v9, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 1169
    .line 1170
    if-nez v9, :cond_39

    .line 1171
    .line 1172
    const/4 v6, 0x1

    .line 1173
    iput v6, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 1174
    .line 1175
    move-object v6, v7

    .line 1176
    :cond_39
    if-ne v6, v7, :cond_3a

    .line 1177
    .line 1178
    const/4 v9, 0x1

    .line 1179
    goto :goto_26

    .line 1180
    :cond_3a
    const/4 v9, 0x0

    .line 1181
    :goto_26
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1182
    .line 1183
    iget v11, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1184
    .line 1185
    int-to-float v11, v11

    .line 1186
    add-float/2addr v10, v11

    .line 1187
    iget-boolean v11, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 1188
    .line 1189
    if-eqz v11, :cond_3b

    .line 1190
    .line 1191
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    .line 1192
    .line 1193
    .line 1194
    move-result v11

    .line 1195
    if-eqz v11, :cond_3b

    .line 1196
    .line 1197
    iget-boolean v11, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 1198
    .line 1199
    if-nez v11, :cond_3b

    .line 1200
    .line 1201
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    .line 1202
    .line 1203
    .line 1204
    :cond_3b
    iget-boolean v11, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 1205
    .line 1206
    if-eqz v11, :cond_3f

    .line 1207
    .line 1208
    iget v11, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1209
    .line 1210
    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    .line 1211
    .line 1212
    .line 1213
    move-result v11

    .line 1214
    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 1218
    .line 1219
    .line 1220
    move-result v11

    .line 1221
    iget v12, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1222
    .line 1223
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 1224
    .line 1225
    .line 1226
    move-result v11

    .line 1227
    iput v11, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1228
    .line 1229
    const/4 v11, 0x0

    .line 1230
    iput-boolean v11, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1231
    .line 1232
    if-nez v6, :cond_3c

    .line 1233
    .line 1234
    const/4 v11, 0x0

    .line 1235
    goto :goto_27

    .line 1236
    :cond_3c
    iget-object v11, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1237
    .line 1238
    :goto_27
    if-eqz v11, :cond_3e

    .line 1239
    .line 1240
    if-nez v9, :cond_3e

    .line 1241
    .line 1242
    iget-boolean v12, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 1243
    .line 1244
    if-eqz v12, :cond_3d

    .line 1245
    .line 1246
    iget v12, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1247
    .line 1248
    iget v11, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1249
    .line 1250
    int-to-float v11, v11

    .line 1251
    add-float/2addr v12, v11

    .line 1252
    cmpl-float v10, v10, v12

    .line 1253
    .line 1254
    if-lez v10, :cond_3e

    .line 1255
    .line 1256
    :cond_3d
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 1257
    .line 1258
    .line 1259
    move-result v10

    .line 1260
    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1261
    .line 1262
    :cond_3e
    iget-boolean v10, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 1263
    .line 1264
    if-nez v10, :cond_3f

    .line 1265
    .line 1266
    if-eqz v9, :cond_3f

    .line 1267
    .line 1268
    iget v10, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 1269
    .line 1270
    if-lez v10, :cond_3f

    .line 1271
    .line 1272
    iget v11, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1273
    .line 1274
    int-to-float v10, v10

    .line 1275
    sub-float/2addr v11, v10

    .line 1276
    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1277
    .line 1278
    .line 1279
    :cond_3f
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1280
    .line 1281
    if-eqz v7, :cond_40

    .line 1282
    .line 1283
    iget-boolean v7, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 1284
    .line 1285
    if-nez v7, :cond_40

    .line 1286
    .line 1287
    if-eqz v9, :cond_40

    .line 1288
    .line 1289
    iget v7, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1290
    .line 1291
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    .line 1292
    .line 1293
    .line 1294
    move-result v7

    .line 1295
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1296
    .line 1297
    .line 1298
    const/4 v7, 0x0

    .line 1299
    iput-boolean v7, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1300
    .line 1301
    :cond_40
    :goto_28
    add-int/lit8 v4, v4, 0x1

    .line 1302
    .line 1303
    goto/16 :goto_25

    .line 1304
    .line 1305
    :cond_41
    invoke-virtual {v3, v14, v5}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 1306
    .line 1307
    .line 1308
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    .line 1309
    .line 1310
    if-eqz v0, :cond_43

    .line 1311
    .line 1312
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 1313
    .line 1314
    .line 1315
    move-result v0

    .line 1316
    if-eqz v0, :cond_42

    .line 1317
    .line 1318
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 1319
    .line 1320
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1321
    .line 1322
    cmpl-float v0, v0, v2

    .line 1323
    .line 1324
    if-eqz v0, :cond_43

    .line 1325
    .line 1326
    :cond_42
    const/4 v0, 0x1

    .line 1327
    goto :goto_29

    .line 1328
    :cond_43
    const/4 v0, 0x0

    .line 1329
    :goto_29
    iget-boolean v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    .line 1330
    .line 1331
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1332
    .line 1333
    .line 1334
    move-result v4

    .line 1335
    const/4 v6, 0x0

    .line 1336
    :goto_2a
    if-ge v6, v4, :cond_44

    .line 1337
    .line 1338
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v7

    .line 1342
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1343
    .line 1344
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1345
    .line 1346
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 1347
    .line 1348
    iput-boolean v2, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 1349
    .line 1350
    add-int/lit8 v6, v6, 0x1

    .line 1351
    .line 1352
    goto :goto_2a

    .line 1353
    :cond_44
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 1354
    .line 1355
    .line 1356
    move-result v0

    .line 1357
    if-eqz v0, :cond_45

    .line 1358
    .line 1359
    const/4 v0, 0x0

    .line 1360
    goto :goto_2b

    .line 1361
    :cond_45
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 1362
    .line 1363
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 1364
    .line 1365
    int-to-float v2, v2

    .line 1366
    sub-float/2addr v0, v2

    .line 1367
    :goto_2b
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    .line 1368
    .line 1369
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1370
    .line 1371
    .line 1372
    move-result v4

    .line 1373
    const/4 v6, 0x0

    .line 1374
    const/4 v7, 0x1

    .line 1375
    const/4 v8, 0x0

    .line 1376
    :goto_2c
    if-ge v6, v4, :cond_51

    .line 1377
    .line 1378
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v9

    .line 1382
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1383
    .line 1384
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1385
    .line 1386
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    .line 1387
    .line 1388
    .line 1389
    move-result v11

    .line 1390
    if-eqz v11, :cond_46

    .line 1391
    .line 1392
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 1393
    .line 1394
    if-eqz v11, :cond_47

    .line 1395
    .line 1396
    :cond_46
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 1397
    .line 1398
    .line 1399
    move-result v2

    .line 1400
    :cond_47
    iget v11, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1401
    .line 1402
    iget v12, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1403
    .line 1404
    int-to-float v12, v12

    .line 1405
    add-float/2addr v12, v11

    .line 1406
    move/from16 v17, v0

    .line 1407
    .line 1408
    instance-of v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1409
    .line 1410
    if-eqz v0, :cond_48

    .line 1411
    .line 1412
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 1413
    .line 1414
    .line 1415
    move-result v0

    .line 1416
    if-eqz v0, :cond_48

    .line 1417
    .line 1418
    const/4 v0, 0x1

    .line 1419
    goto :goto_2d

    .line 1420
    :cond_48
    const/4 v0, 0x0

    .line 1421
    :goto_2d
    move/from16 v18, v4

    .line 1422
    .line 1423
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 1424
    .line 1425
    if-eqz v4, :cond_4b

    .line 1426
    .line 1427
    if-nez v7, :cond_4b

    .line 1428
    .line 1429
    if-nez v0, :cond_49

    .line 1430
    .line 1431
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v4

    .line 1435
    if-eqz v4, :cond_4b

    .line 1436
    .line 1437
    if-nez v7, :cond_4b

    .line 1438
    .line 1439
    :cond_49
    cmpl-float v4, v12, v8

    .line 1440
    .line 1441
    if-lez v4, :cond_4b

    .line 1442
    .line 1443
    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 1444
    .line 1445
    if-nez v4, :cond_4b

    .line 1446
    .line 1447
    sub-float v4, v12, v8

    .line 1448
    .line 1449
    move/from16 v19, v8

    .line 1450
    .line 1451
    iget-boolean v8, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mEnableNotificationClipping:Z

    .line 1452
    .line 1453
    if-eqz v8, :cond_4a

    .line 1454
    .line 1455
    float-to-int v4, v4

    .line 1456
    goto :goto_2e

    .line 1457
    :cond_4a
    const/4 v4, 0x0

    .line 1458
    :goto_2e
    iput v4, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 1459
    .line 1460
    goto :goto_2f

    .line 1461
    :cond_4b
    move/from16 v19, v8

    .line 1462
    .line 1463
    const/4 v4, 0x0

    .line 1464
    iput v4, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 1465
    .line 1466
    :goto_2f
    iget-boolean v4, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 1467
    .line 1468
    if-nez v4, :cond_4c

    .line 1469
    .line 1470
    cmpg-float v4, v11, v2

    .line 1471
    .line 1472
    if-gez v4, :cond_4c

    .line 1473
    .line 1474
    sub-float v4, v2, v11

    .line 1475
    .line 1476
    float-to-int v4, v4

    .line 1477
    iput v4, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 1478
    .line 1479
    goto :goto_30

    .line 1480
    :cond_4c
    const/4 v4, 0x0

    .line 1481
    iput v4, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 1482
    .line 1483
    :goto_30
    if-eqz v7, :cond_4d

    .line 1484
    .line 1485
    move v8, v12

    .line 1486
    goto :goto_31

    .line 1487
    :cond_4d
    move/from16 v8, v19

    .line 1488
    .line 1489
    :goto_31
    if-eqz v0, :cond_4e

    .line 1490
    .line 1491
    const/4 v4, 0x0

    .line 1492
    move v7, v4

    .line 1493
    :cond_4e
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    .line 1494
    .line 1495
    .line 1496
    move-result v4

    .line 1497
    if-nez v4, :cond_50

    .line 1498
    .line 1499
    if-eqz v0, :cond_4f

    .line 1500
    .line 1501
    goto :goto_32

    .line 1502
    :cond_4f
    move v11, v12

    .line 1503
    :goto_32
    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    .line 1504
    .line 1505
    .line 1506
    move-result v0

    .line 1507
    move v2, v0

    .line 1508
    :cond_50
    add-int/lit8 v6, v6, 0x1

    .line 1509
    .line 1510
    move/from16 v0, v17

    .line 1511
    .line 1512
    move/from16 v4, v18

    .line 1513
    .line 1514
    goto/16 :goto_2c

    .line 1515
    .line 1516
    :cond_51
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1517
    .line 1518
    .line 1519
    move-result v0

    .line 1520
    const/4 v2, 0x0

    .line 1521
    :goto_33
    if-ge v2, v0, :cond_53

    .line 1522
    .line 1523
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v3

    .line 1527
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1528
    .line 1529
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1530
    .line 1531
    if-lt v2, v13, :cond_52

    .line 1532
    .line 1533
    const/4 v4, 0x1

    .line 1534
    goto :goto_34

    .line 1535
    :cond_52
    const/4 v4, 0x0

    .line 1536
    :goto_34
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 1537
    .line 1538
    add-int/lit8 v2, v2, 0x1

    .line 1539
    .line 1540
    goto :goto_33

    .line 1541
    :cond_53
    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1542
    .line 1543
    if-nez v0, :cond_54

    .line 1544
    .line 1545
    goto/16 :goto_3c

    .line 1546
    .line 1547
    :cond_54
    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1548
    .line 1549
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1550
    .line 1551
    check-cast v3, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 1552
    .line 1553
    if-nez v2, :cond_55

    .line 1554
    .line 1555
    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 1556
    .line 1557
    int-to-float v4, v4

    .line 1558
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 1559
    .line 1560
    add-float/2addr v4, v6

    .line 1561
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1562
    .line 1563
    .line 1564
    :cond_55
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 1565
    .line 1566
    if-eqz v4, :cond_69

    .line 1567
    .line 1568
    if-eqz v2, :cond_69

    .line 1569
    .line 1570
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1571
    .line 1572
    if-nez v4, :cond_56

    .line 1573
    .line 1574
    goto/16 :goto_3c

    .line 1575
    .line 1576
    :cond_56
    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1577
    .line 1578
    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1579
    .line 1580
    int-to-float v7, v7

    .line 1581
    add-float/2addr v6, v7

    .line 1582
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 1583
    .line 1584
    iget v7, v7, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    .line 1585
    .line 1586
    const/4 v8, 0x1

    .line 1587
    if-eq v7, v8, :cond_57

    .line 1588
    .line 1589
    const/4 v7, 0x1

    .line 1590
    goto :goto_35

    .line 1591
    :cond_57
    const/4 v7, 0x0

    .line 1592
    :goto_35
    if-eqz v7, :cond_58

    .line 1593
    .line 1594
    iget v7, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1595
    .line 1596
    const/4 v8, 0x0

    .line 1597
    add-int/2addr v7, v8

    .line 1598
    int-to-float v7, v7

    .line 1599
    goto :goto_36

    .line 1600
    :cond_58
    const/4 v8, 0x0

    .line 1601
    const/4 v7, 0x0

    .line 1602
    :goto_36
    add-float/2addr v6, v7

    .line 1603
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 1607
    .line 1608
    .line 1609
    move-result v7

    .line 1610
    iput v7, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1611
    .line 1612
    int-to-float v7, v8

    .line 1613
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 1614
    .line 1615
    .line 1616
    iput v8, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 1617
    .line 1618
    iget-boolean v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 1619
    .line 1620
    if-eqz v7, :cond_5d

    .line 1621
    .line 1622
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v7

    .line 1626
    if-nez v7, :cond_5d

    .line 1627
    .line 1628
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 1629
    .line 1630
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1631
    .line 1632
    if-eqz v8, :cond_59

    .line 1633
    .line 1634
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    .line 1635
    .line 1636
    .line 1637
    move-result v8

    .line 1638
    if-eqz v8, :cond_59

    .line 1639
    .line 1640
    const/4 v8, 0x1

    .line 1641
    goto :goto_37

    .line 1642
    :cond_59
    const/4 v8, 0x0

    .line 1643
    :goto_37
    if-eqz v8, :cond_5a

    .line 1644
    .line 1645
    invoke-static {v7}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    .line 1646
    .line 1647
    .line 1648
    move-result v7

    .line 1649
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1650
    .line 1651
    .line 1652
    goto :goto_39

    .line 1653
    :cond_5a
    iget-boolean v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    .line 1654
    .line 1655
    if-nez v8, :cond_5c

    .line 1656
    .line 1657
    sget-object v8, Lcom/android/systemui/flags/Flags;->LARGE_SHADE_GRANULAR_ALPHA_INTERPOLATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 1658
    .line 1659
    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 1660
    .line 1661
    check-cast v9, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 1662
    .line 1663
    invoke-virtual {v9, v8}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v8

    .line 1667
    if-nez v8, :cond_5b

    .line 1668
    .line 1669
    goto :goto_38

    .line 1670
    :cond_5b
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    .line 1671
    .line 1672
    invoke-interface {v8, v7}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationContentAlpha(F)F

    .line 1673
    .line 1674
    .line 1675
    move-result v7

    .line 1676
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1677
    .line 1678
    .line 1679
    goto :goto_39

    .line 1680
    :cond_5c
    :goto_38
    invoke-static {v7}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    .line 1681
    .line 1682
    .line 1683
    move-result v7

    .line 1684
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1685
    .line 1686
    .line 1687
    goto :goto_39

    .line 1688
    :cond_5d
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 1689
    .line 1690
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1691
    .line 1692
    sub-float v7, v8, v7

    .line 1693
    .line 1694
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1695
    .line 1696
    .line 1697
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 1698
    .line 1699
    iget v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 1700
    .line 1701
    sub-float/2addr v8, v9

    .line 1702
    iget-object v9, v7, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 1703
    .line 1704
    if-eqz v9, :cond_5e

    .line 1705
    .line 1706
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    .line 1707
    .line 1708
    .line 1709
    move-result v9

    .line 1710
    if-nez v9, :cond_5e

    .line 1711
    .line 1712
    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 1713
    .line 1714
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1715
    .line 1716
    .line 1717
    :cond_5e
    :goto_39
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 1718
    .line 1719
    if-nez v7, :cond_68

    .line 1720
    .line 1721
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1722
    .line 1723
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1724
    .line 1725
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    .line 1726
    .line 1727
    .line 1728
    move-result v7

    .line 1729
    if-nez v7, :cond_5f

    .line 1730
    .line 1731
    const/4 v7, 0x1

    .line 1732
    goto :goto_3a

    .line 1733
    :cond_5f
    const/4 v7, 0x0

    .line 1734
    :goto_3a
    iput-boolean v7, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 1735
    .line 1736
    const/4 v7, 0x0

    .line 1737
    iput-boolean v7, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 1738
    .line 1739
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 1740
    .line 1741
    .line 1742
    move-result v7

    .line 1743
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 1744
    .line 1745
    .line 1746
    iget-boolean v7, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 1747
    .line 1748
    iput-boolean v7, v3, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 1749
    .line 1750
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1751
    .line 1752
    iput-object v7, v3, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1753
    .line 1754
    iget v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 1755
    .line 1756
    const/4 v8, -0x1

    .line 1757
    if-eq v7, v8, :cond_60

    .line 1758
    .line 1759
    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 1760
    .line 1761
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    .line 1762
    .line 1763
    .line 1764
    move-result v7

    .line 1765
    iput v7, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 1766
    .line 1767
    :cond_60
    iget-boolean v7, v3, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 1768
    .line 1769
    const/4 v8, 0x1

    .line 1770
    if-eq v7, v8, :cond_61

    .line 1771
    .line 1772
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 1773
    .line 1774
    .line 1775
    move-result v7

    .line 1776
    if-eqz v7, :cond_61

    .line 1777
    .line 1778
    iget v7, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 1779
    .line 1780
    const/4 v8, 0x0

    .line 1781
    add-int/2addr v7, v8

    .line 1782
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 1783
    .line 1784
    .line 1785
    move-result v9

    .line 1786
    int-to-float v9, v9

    .line 1787
    const/high16 v10, 0x3fc00000    # 1.5f

    .line 1788
    .line 1789
    mul-float/2addr v9, v10

    .line 1790
    int-to-float v7, v7

    .line 1791
    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    .line 1792
    .line 1793
    .line 1794
    move-result v7

    .line 1795
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    .line 1796
    .line 1797
    .line 1798
    move-result v2

    .line 1799
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 1800
    .line 1801
    .line 1802
    move-result v8

    .line 1803
    sub-int/2addr v2, v8

    .line 1804
    int-to-float v2, v2

    .line 1805
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    .line 1806
    .line 1807
    .line 1808
    move-result v2

    .line 1809
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 1810
    .line 1811
    .line 1812
    move-result v7

    .line 1813
    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1814
    .line 1815
    sub-float/2addr v7, v4

    .line 1816
    div-float/2addr v7, v2

    .line 1817
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1818
    .line 1819
    cmpg-float v2, v7, v2

    .line 1820
    .line 1821
    if-gez v2, :cond_61

    .line 1822
    .line 1823
    const/4 v2, 0x1

    .line 1824
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 1825
    .line 1826
    :cond_61
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1827
    .line 1828
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 1829
    .line 1830
    if-eqz v4, :cond_65

    .line 1831
    .line 1832
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 1833
    .line 1834
    if-eqz v4, :cond_62

    .line 1835
    .line 1836
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFullyExpanding:Z

    .line 1837
    .line 1838
    if-nez v4, :cond_65

    .line 1839
    .line 1840
    :cond_62
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsClosing:Z

    .line 1841
    .line 1842
    if-eqz v4, :cond_63

    .line 1843
    .line 1844
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 1845
    .line 1846
    if-nez v4, :cond_65

    .line 1847
    .line 1848
    :cond_63
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 1849
    .line 1850
    if-eqz v4, :cond_64

    .line 1851
    .line 1852
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsExpandAnimating:Z

    .line 1853
    .line 1854
    if-nez v2, :cond_65

    .line 1855
    .line 1856
    :cond_64
    const/4 v2, 0x0

    .line 1857
    goto :goto_3b

    .line 1858
    :cond_65
    const/4 v2, 0x1

    .line 1859
    :goto_3b
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1860
    .line 1861
    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1862
    .line 1863
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1864
    .line 1865
    .line 1866
    move-result v2

    .line 1867
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1868
    .line 1869
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 1870
    .line 1871
    if-eqz v4, :cond_66

    .line 1872
    .line 1873
    iget-object v4, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1874
    .line 1875
    if-eqz v4, :cond_66

    .line 1876
    .line 1877
    if-lez v2, :cond_66

    .line 1878
    .line 1879
    const/4 v4, 0x1

    .line 1880
    sub-int/2addr v2, v4

    .line 1881
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v2

    .line 1885
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1886
    .line 1887
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1888
    .line 1889
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1890
    .line 1891
    if-eqz v2, :cond_66

    .line 1892
    .line 1893
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1894
    .line 1895
    :cond_66
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 1896
    .line 1897
    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    .line 1898
    .line 1899
    add-float/2addr v2, v4

    .line 1900
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight$1()I

    .line 1901
    .line 1902
    .line 1903
    move-result v4

    .line 1904
    int-to-float v4, v4

    .line 1905
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 1906
    .line 1907
    int-to-float v7, v7

    .line 1908
    add-float/2addr v4, v7

    .line 1909
    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 1910
    .line 1911
    add-float/2addr v4, v7

    .line 1912
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v0

    .line 1916
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v0

    .line 1920
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1921
    .line 1922
    const/4 v7, 0x2

    .line 1923
    if-ne v0, v7, :cond_67

    .line 1924
    .line 1925
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    .line 1926
    .line 1927
    iget v7, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1928
    .line 1929
    int-to-float v7, v7

    .line 1930
    add-float/2addr v0, v7

    .line 1931
    cmpl-float v0, v0, v2

    .line 1932
    .line 1933
    if-lez v0, :cond_67

    .line 1934
    .line 1935
    const/4 v0, 0x1

    .line 1936
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1937
    .line 1938
    :cond_67
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    .line 1939
    .line 1940
    .line 1941
    move-result v0

    .line 1942
    iget v2, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1943
    .line 1944
    int-to-float v2, v2

    .line 1945
    sub-float/2addr v0, v2

    .line 1946
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1947
    .line 1948
    .line 1949
    goto :goto_3c

    .line 1950
    :cond_68
    const/4 v0, 0x0

    .line 1951
    throw v0

    .line 1952
    :cond_69
    const/4 v0, 0x1

    .line 1953
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1954
    .line 1955
    const/16 v0, 0x40

    .line 1956
    .line 1957
    iput v0, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 1958
    .line 1959
    const/4 v0, 0x0

    .line 1960
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 1961
    .line 1962
    :goto_3c
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v0

    .line 1966
    :cond_6a
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1967
    .line 1968
    .line 1969
    move-result v2

    .line 1970
    if-eqz v2, :cond_7b

    .line 1971
    .line 1972
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v2

    .line 1976
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1977
    .line 1978
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1979
    .line 1980
    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 1981
    .line 1982
    if-eqz v4, :cond_6b

    .line 1983
    .line 1984
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v4

    .line 1988
    if-ne v2, v4, :cond_6b

    .line 1989
    .line 1990
    const/4 v4, 0x1

    .line 1991
    goto :goto_3e

    .line 1992
    :cond_6b
    const/4 v4, 0x0

    .line 1993
    :goto_3e
    if-eqz v4, :cond_6c

    .line 1994
    .line 1995
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1996
    .line 1997
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1998
    .line 1999
    .line 2000
    goto/16 :goto_44

    .line 2001
    .line 2002
    :cond_6c
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2003
    .line 2004
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 2005
    .line 2006
    .line 2007
    move-result v6

    .line 2008
    if-eqz v6, :cond_6d

    .line 2009
    .line 2010
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 2011
    .line 2012
    sub-float/2addr v4, v6

    .line 2013
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2014
    .line 2015
    .line 2016
    goto/16 :goto_44

    .line 2017
    .line 2018
    :cond_6d
    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 2019
    .line 2020
    if-eqz v4, :cond_76

    .line 2021
    .line 2022
    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 2023
    .line 2024
    sget-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_STYLE_TABLET_BG:Z

    .line 2025
    .line 2026
    if-nez v6, :cond_76

    .line 2027
    .line 2028
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    .line 2029
    .line 2030
    .line 2031
    move-result v6

    .line 2032
    if-nez v6, :cond_76

    .line 2033
    .line 2034
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 2035
    .line 2036
    .line 2037
    move-result v6

    .line 2038
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 2039
    .line 2040
    .line 2041
    move-result v7

    .line 2042
    iget v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationTopRatio:F

    .line 2043
    .line 2044
    sget-object v9, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    .line 2045
    .line 2046
    const/16 v9, 0x9

    .line 2047
    .line 2048
    if-le v9, v6, :cond_6e

    .line 2049
    .line 2050
    goto :goto_3f

    .line 2051
    :cond_6e
    move v6, v9

    .line 2052
    :goto_3f
    const/16 v9, 0x14

    .line 2053
    .line 2054
    if-le v9, v7, :cond_6f

    .line 2055
    .line 2056
    goto :goto_40

    .line 2057
    :cond_6f
    move v7, v9

    .line 2058
    :goto_40
    const v9, 0x3f733333    # 0.95f

    .line 2059
    .line 2060
    .line 2061
    sub-float v10, v9, v8

    .line 2062
    .line 2063
    int-to-float v11, v7

    .line 2064
    div-float/2addr v10, v11

    .line 2065
    int-to-float v11, v6

    .line 2066
    mul-float/2addr v11, v10

    .line 2067
    add-float/2addr v11, v8

    .line 2068
    cmpl-float v8, v9, v11

    .line 2069
    .line 2070
    if-lez v8, :cond_70

    .line 2071
    .line 2072
    move v9, v11

    .line 2073
    :cond_70
    sub-int/2addr v7, v6

    .line 2074
    const/4 v6, 0x1

    .line 2075
    sub-int/2addr v7, v6

    .line 2076
    int-to-float v7, v7

    .line 2077
    const v8, 0x3ba3d70a    # 0.005f

    .line 2078
    .line 2079
    .line 2080
    mul-float/2addr v7, v8

    .line 2081
    const v8, 0x3d3851ec    # 0.045f

    .line 2082
    .line 2083
    .line 2084
    cmpl-float v10, v8, v7

    .line 2085
    .line 2086
    if-lez v10, :cond_71

    .line 2087
    .line 2088
    goto :goto_41

    .line 2089
    :cond_71
    move v7, v8

    .line 2090
    :goto_41
    int-to-float v6, v6

    .line 2091
    sub-float v8, v6, v9

    .line 2092
    .line 2093
    sub-float/2addr v8, v7

    .line 2094
    cmpg-float v10, v4, v9

    .line 2095
    .line 2096
    if-gez v10, :cond_72

    .line 2097
    .line 2098
    const/4 v4, 0x0

    .line 2099
    goto :goto_43

    .line 2100
    :cond_72
    sub-float/2addr v6, v7

    .line 2101
    cmpl-float v6, v4, v6

    .line 2102
    .line 2103
    if-lez v6, :cond_73

    .line 2104
    .line 2105
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2106
    .line 2107
    goto :goto_43

    .line 2108
    :cond_73
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2109
    .line 2110
    cmpg-float v10, v4, v6

    .line 2111
    .line 2112
    if-nez v10, :cond_74

    .line 2113
    .line 2114
    const/4 v10, 0x1

    .line 2115
    goto :goto_42

    .line 2116
    :cond_74
    const/4 v10, 0x0

    .line 2117
    :goto_42
    if-eqz v10, :cond_75

    .line 2118
    .line 2119
    const/4 v10, 0x0

    .line 2120
    cmpg-float v7, v7, v10

    .line 2121
    .line 2122
    if-gez v7, :cond_75

    .line 2123
    .line 2124
    move v4, v6

    .line 2125
    goto :goto_43

    .line 2126
    :cond_75
    sub-float/2addr v4, v9

    .line 2127
    div-float/2addr v4, v8

    .line 2128
    :goto_43
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2129
    .line 2130
    .line 2131
    :cond_76
    :goto_44
    instance-of v2, v2, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 2132
    .line 2133
    if-eqz v2, :cond_77

    .line 2134
    .line 2135
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 2136
    .line 2137
    .line 2138
    move-result v2

    .line 2139
    if-eqz v2, :cond_77

    .line 2140
    .line 2141
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 2142
    .line 2143
    invoke-static {v2}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    .line 2144
    .line 2145
    .line 2146
    move-result v2

    .line 2147
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2148
    .line 2149
    .line 2150
    :cond_77
    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2151
    .line 2152
    if-eqz v2, :cond_6a

    .line 2153
    .line 2154
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2155
    .line 2156
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 2157
    .line 2158
    if-eqz v4, :cond_78

    .line 2159
    .line 2160
    goto/16 :goto_3d

    .line 2161
    .line 2162
    :cond_78
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 2163
    .line 2164
    iget v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 2165
    .line 2166
    iget-boolean v6, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 2167
    .line 2168
    if-eqz v6, :cond_79

    .line 2169
    .line 2170
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 2171
    .line 2172
    .line 2173
    move-result v6

    .line 2174
    if-eqz v6, :cond_79

    .line 2175
    .line 2176
    const/4 v6, 0x1

    .line 2177
    goto :goto_45

    .line 2178
    :cond_79
    const/4 v6, 0x0

    .line 2179
    :goto_45
    cmpl-float v2, v4, v2

    .line 2180
    .line 2181
    if-gez v2, :cond_7a

    .line 2182
    .line 2183
    if-eqz v6, :cond_6a

    .line 2184
    .line 2185
    :cond_7a
    const/4 v2, 0x0

    .line 2186
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2187
    .line 2188
    .line 2189
    goto/16 :goto_3d

    .line 2190
    .line 2191
    :cond_7b
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 2192
    .line 2193
    .line 2194
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextTopPaddingChange:Z

    .line 2195
    .line 2196
    if-eqz v0, :cond_7c

    .line 2197
    .line 2198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2199
    .line 2200
    const-string v2, "mAnimateNextTopPaddingChange : updateChildren "

    .line 2201
    .line 2202
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2203
    .line 2204
    .line 2205
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    .line 2206
    .line 2207
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 2208
    .line 2209
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 2210
    .line 2211
    .line 2212
    move-result v2

    .line 2213
    xor-int/lit8 v2, v2, 0x1

    .line 2214
    .line 2215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2216
    .line 2217
    .line 2218
    const-string v2, " : "

    .line 2219
    .line 2220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    .line 2222
    .line 2223
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2224
    .line 2225
    const-string v3, "StackScroller"

    .line 2226
    .line 2227
    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 2228
    .line 2229
    .line 2230
    :cond_7c
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    .line 2231
    .line 2232
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 2233
    .line 2234
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 2235
    .line 2236
    .line 2237
    move-result v0

    .line 2238
    xor-int/lit8 v0, v0, 0x1

    .line 2239
    .line 2240
    if-nez v0, :cond_7d

    .line 2241
    .line 2242
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2243
    .line 2244
    if-nez v0, :cond_7d

    .line 2245
    .line 2246
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    .line 2247
    .line 2248
    .line 2249
    goto :goto_46

    .line 2250
    :cond_7d
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startAnimationToState$1()V

    .line 2251
    .line 2252
    .line 2253
    :goto_46
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v0

    .line 2257
    check-cast v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 2258
    .line 2259
    const/4 v2, 0x1

    .line 2260
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNeedAnimForRemoval:Z

    .line 2261
    .line 2262
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2263
    .line 2264
    const/4 v1, 0x0

    .line 2265
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mProgressingShadeLockedFromNotiIcon:Z

    .line 2266
    .line 2267
    move-object/from16 v0, p0

    .line 2268
    .line 2269
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2270
    .line 2271
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 2272
    .line 2273
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v1

    .line 2277
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2278
    .line 2279
    .line 2280
    return v2

    .line 2281
    :cond_7e
    :goto_47
    return v4
.end method
