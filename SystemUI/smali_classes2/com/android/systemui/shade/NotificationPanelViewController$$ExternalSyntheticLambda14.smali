.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda14;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda14;->f$1:F

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    cmpl-float v2, v0, v4

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/16 v5, 0xc

    .line 20
    .line 21
    invoke-direct {v2, v1, v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    sub-float v5, v0, v2

    .line 44
    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansionInternal(FZ)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 53
    .line 54
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    iput v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 59
    .line 60
    const/high16 v8, 0x3f800000    # 1.0f

    .line 61
    .line 62
    cmpg-float v9, v7, v8

    .line 63
    .line 64
    if-gez v9, :cond_2

    .line 65
    .line 66
    cmpl-float v7, v7, v4

    .line 67
    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 71
    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    iput v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 75
    .line 76
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->end()V

    .line 81
    .line 82
    .line 83
    :cond_2
    cmpl-float v7, v2, v4

    .line 84
    .line 85
    if-nez v7, :cond_3

    .line 86
    .line 87
    move v7, v4

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 90
    .line 91
    div-float/2addr v7, v2

    .line 92
    :goto_0
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    iput v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 97
    .line 98
    iget v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 99
    .line 100
    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 101
    .line 102
    iput v9, v10, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 103
    .line 104
    iput v7, v10, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 105
    .line 106
    iput v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 107
    .line 108
    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 109
    .line 110
    iput v7, v9, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 111
    .line 112
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-nez v7, :cond_4

    .line 117
    .line 118
    iget v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 119
    .line 120
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-gtz v7, :cond_5

    .line 125
    .line 126
    :cond_4
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-lez v7, :cond_7

    .line 131
    .line 132
    iget v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 133
    .line 134
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-nez v7, :cond_7

    .line 139
    .line 140
    :cond_5
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 143
    .line 144
    .line 145
    const-string/jumbo v9, "setExpandedHeightInternal"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v9, "(h:"

    .line 152
    .line 153
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, ")"

    .line 160
    .line 161
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v9, ", mHeightAnimator is null?"

    .line 165
    .line 166
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    if-nez v9, :cond_6

    .line 172
    .line 173
    move v9, v6

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    move v9, v3

    .line 176
    :goto_1
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v9, ", mTracking:"

    .line 180
    .line 181
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 185
    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v9, ", mExpandedHeight:"

    .line 190
    .line 191
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 195
    .line 196
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v9, ", maxPanelHeight:"

    .line 200
    .line 201
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, ", mClosing:"

    .line 208
    .line 209
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 213
    .line 214
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, ", mExpandedFraction("

    .line 218
    .line 219
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v2, " >> "

    .line 226
    .line 227
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 231
    .line 232
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 239
    .line 240
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 241
    .line 242
    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelStateInfoLog(Ljava/lang/StringBuilder;Z)V

    .line 243
    .line 244
    .line 245
    :cond_7
    iget v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 246
    .line 247
    cmpg-float v2, v0, v4

    .line 248
    .line 249
    if-gtz v2, :cond_8

    .line 250
    .line 251
    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 252
    .line 253
    const-string v12, "onHeightUpdated: fully collapsed."

    .line 254
    .line 255
    iget v13, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 262
    .line 263
    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 264
    .line 265
    move/from16 v16, v2

    .line 266
    .line 267
    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/shade/ShadeLogger;->logExpansionChanged(Ljava/lang/String;FZZF)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_9

    .line 276
    .line 277
    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 278
    .line 279
    const-string v12, "onHeightUpdated: fully expanded."

    .line 280
    .line 281
    iget v13, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    .line 284
    .line 285
    .line 286
    move-result v14

    .line 287
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 288
    .line 289
    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 290
    .line 291
    move/from16 v16, v2

    .line 292
    .line 293
    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/shade/ShadeLogger;->logExpansionChanged(Ljava/lang/String;FZZF)V

    .line 294
    .line 295
    .line 296
    :cond_9
    :goto_2
    iget-boolean v2, v10, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 297
    .line 298
    if-eqz v2, :cond_a

    .line 299
    .line 300
    invoke-virtual {v10}, Lcom/android/systemui/shade/QuickSettingsController;->isExpandImmediate()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-nez v2, :cond_a

    .line 305
    .line 306
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 307
    .line 308
    if-eqz v2, :cond_c

    .line 309
    .line 310
    iget-boolean v2, v10, Lcom/android/systemui/shade/QuickSettingsController;->mExpandedWhenExpandingStarted:Z

    .line 311
    .line 312
    if-eqz v2, :cond_c

    .line 313
    .line 314
    :cond_a
    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 315
    .line 316
    const/4 v5, 0x2

    .line 317
    if-le v2, v5, :cond_b

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_b
    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 321
    .line 322
    .line 323
    :cond_c
    :goto_3
    iget-boolean v2, v10, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 324
    .line 325
    if-nez v2, :cond_f

    .line 326
    .line 327
    iget-boolean v2, v10, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 328
    .line 329
    if-eqz v2, :cond_e

    .line 330
    .line 331
    iget-boolean v2, v10, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 332
    .line 333
    if-nez v2, :cond_e

    .line 334
    .line 335
    iget-object v2, v10, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 336
    .line 337
    if-eqz v2, :cond_d

    .line 338
    .line 339
    move v2, v6

    .line 340
    goto :goto_4

    .line 341
    :cond_d
    move v2, v3

    .line 342
    :goto_4
    if-nez v2, :cond_e

    .line 343
    .line 344
    iget-boolean v2, v10, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionFromOverscroll:Z

    .line 345
    .line 346
    if-nez v2, :cond_e

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_e
    move v2, v3

    .line 350
    goto :goto_6

    .line 351
    :cond_f
    :goto_5
    move v2, v6

    .line 352
    :goto_6
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 353
    .line 354
    if-eqz v5, :cond_11

    .line 355
    .line 356
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 357
    .line 358
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    .line 359
    .line 360
    if-eqz v7, :cond_11

    .line 361
    .line 362
    iget v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    .line 363
    .line 364
    int-to-float v7, v7

    .line 365
    cmpl-float v7, v0, v7

    .line 366
    .line 367
    if-lez v7, :cond_10

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_10
    move v7, v3

    .line 371
    goto :goto_8

    .line 372
    :cond_11
    :goto_7
    move v7, v6

    .line 373
    :goto_8
    if-eqz v2, :cond_14

    .line 374
    .line 375
    if-eqz v7, :cond_14

    .line 376
    .line 377
    if-eqz v5, :cond_12

    .line 378
    .line 379
    move v2, v8

    .line 380
    goto :goto_9

    .line 381
    :cond_12
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-eqz v2, :cond_13

    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    int-to-float v2, v2

    .line 392
    div-float v2, v0, v2

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_13
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 396
    .line 397
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 398
    .line 399
    iget v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 400
    .line 401
    int-to-float v5, v5

    .line 402
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    int-to-float v2, v2

    .line 407
    add-float/2addr v2, v5

    .line 408
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 409
    .line 410
    iget v5, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 411
    .line 412
    invoke-virtual {v10, v5}, Lcom/android/systemui/shade/QuickSettingsController;->calculatePanelHeightExpanded(I)I

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    int-to-float v5, v5

    .line 417
    sub-float v7, v0, v2

    .line 418
    .line 419
    sub-float/2addr v5, v2

    .line 420
    div-float v2, v7, v5

    .line 421
    .line 422
    :goto_9
    iget v5, v10, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 423
    .line 424
    int-to-float v7, v5

    .line 425
    iget v9, v10, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 426
    .line 427
    sub-int/2addr v9, v5

    .line 428
    int-to-float v5, v9

    .line 429
    mul-float/2addr v2, v5

    .line 430
    add-float/2addr v2, v7

    .line 431
    invoke-virtual {v10, v2}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 432
    .line 433
    .line 434
    :cond_14
    sget-boolean v2, Lcom/android/systemui/QpRune;->PANEL_DATA_USAGE_LABEL:Z

    .line 435
    .line 436
    if-eqz v2, :cond_17

    .line 437
    .line 438
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    .line 439
    .line 440
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 445
    .line 446
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 447
    .line 448
    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMaxPanelHeightSupplier:Ljava/util/function/IntSupplier;

    .line 449
    .line 450
    invoke-interface {v7}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    int-to-float v7, v7

    .line 455
    div-float v7, v0, v7

    .line 456
    .line 457
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    .line 466
    .line 467
    .line 468
    move-result v9

    .line 469
    if-nez v9, :cond_15

    .line 470
    .line 471
    iget-boolean v9, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    .line 472
    .line 473
    if-nez v9, :cond_15

    .line 474
    .line 475
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    .line 476
    .line 477
    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->animateLabelAlpha(Landroid/view/View;Z)V

    .line 478
    .line 479
    .line 480
    goto :goto_a

    .line 481
    :cond_15
    cmpg-float v8, v7, v8

    .line 482
    .line 483
    if-gez v8, :cond_16

    .line 484
    .line 485
    iget-boolean v8, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    .line 486
    .line 487
    if-eqz v8, :cond_16

    .line 488
    .line 489
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    .line 490
    .line 491
    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->animateLabelAlpha(Landroid/view/View;Z)V

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_16
    cmpl-float v4, v7, v4

    .line 496
    .line 497
    if-nez v4, :cond_17

    .line 498
    .line 499
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    .line 500
    .line 501
    :cond_17
    :goto_a
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 502
    .line 503
    .line 504
    iget v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 505
    .line 506
    if-ne v0, v6, :cond_18

    .line 507
    .line 508
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 509
    .line 510
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 511
    .line 512
    .line 513
    :cond_18
    invoke-virtual {v10}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updatePanelExpanded()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateGestureExclusionRect()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 526
    .line 527
    .line 528
    return-void
.end method
