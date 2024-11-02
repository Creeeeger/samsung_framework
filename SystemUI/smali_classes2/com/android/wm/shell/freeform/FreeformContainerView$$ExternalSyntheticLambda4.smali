.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    sget-object v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const-string v4, ")"

    .line 22
    .line 23
    const-string v5, "[ContainerView] onTouch("

    .line 24
    .line 25
    const-string v6, "FreeformContainer"

    .line 26
    .line 27
    if-eqz v2, :cond_1c

    .line 28
    .line 29
    const/16 v7, 0xa

    .line 30
    .line 31
    const/4 v8, 0x2

    .line 32
    const/4 v9, 0x1

    .line 33
    if-eq v2, v9, :cond_6

    .line 34
    .line 35
    if-eq v2, v8, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    if-eq v2, p1, :cond_0

    .line 39
    .line 40
    goto/16 :goto_b

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringChainEndValue()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getY()F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 71
    .line 72
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-direct {p2, p0, v9}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    goto/16 :goto_b

    .line 81
    .line 82
    :cond_2
    iget-boolean v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 83
    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownX:F

    .line 87
    .line 88
    sub-float/2addr v0, p1

    .line 89
    float-to-double p1, v0

    .line 90
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownY:F

    .line 91
    .line 92
    sub-float/2addr v1, v0

    .line 93
    float-to-double v0, v1

    .line 94
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    double-to-float p1, p1

    .line 99
    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mThresholdToMove:I

    .line 100
    .line 101
    int-to-float p2, p2

    .line 102
    cmpl-float p1, p1, p2

    .line 103
    .line 104
    if-ltz p1, :cond_1e

    .line 105
    .line 106
    iput-boolean v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_3

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 122
    .line 123
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->show(Landroid/graphics/Rect;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iput-boolean v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 134
    .line 135
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringConfig(I)V

    .line 136
    .line 137
    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p1, "): Ready to move"

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto/16 :goto_b

    .line 163
    .line 164
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionX:F

    .line 172
    .line 173
    sub-float v2, v0, v2

    .line 174
    .line 175
    add-float/2addr v2, p2

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionY:F

    .line 184
    .line 185
    sub-float v2, v1, v2

    .line 186
    .line 187
    add-float/2addr v2, p2

    .line 188
    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    .line 189
    .line 190
    .line 191
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionX:F

    .line 192
    .line 193
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionY:F

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringChainEndValue()V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 208
    .line 209
    if-nez p1, :cond_5

    .line 210
    .line 211
    goto/16 :goto_b

    .line 212
    .line 213
    :cond_5
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 216
    .line 217
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_b

    .line 221
    .line 222
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v0, ") mIsAppIconMoving="

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 240
    .line 241
    invoke-static {p1, v0, v6}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 245
    .line 246
    const/16 v0, 0x1e

    .line 247
    .line 248
    if-eqz p1, :cond_19

    .line 249
    .line 250
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 254
    .line 255
    const/high16 p2, 0x442f0000    # 700.0f

    .line 256
    .line 257
    if-nez p1, :cond_7

    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 262
    .line 263
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 264
    .line 265
    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMaximumFlingVelocity:I

    .line 266
    .line 267
    int-to-float v10, v10

    .line 268
    const/16 v11, 0x3e8

    .line 269
    .line 270
    invoke-virtual {p1, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    .line 274
    .line 275
    iget-object v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    .line 277
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    iget-object v11, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 282
    .line 283
    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    invoke-virtual {p1, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    .line 291
    .line 292
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 293
    .line 294
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMinimumFlingVelocity:I

    .line 299
    .line 300
    int-to-float v10, v10

    .line 301
    cmpl-float p1, p1, v10

    .line 302
    .line 303
    if-gtz p1, :cond_8

    .line 304
    .line 305
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    .line 306
    .line 307
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 308
    .line 309
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMinimumFlingVelocity:I

    .line 314
    .line 315
    int-to-float v10, v10

    .line 316
    cmpl-float p1, p1, v10

    .line 317
    .line 318
    if-lez p1, :cond_d

    .line 319
    .line 320
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    .line 321
    .line 322
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 323
    .line 324
    const/4 v10, 0x0

    .line 325
    cmpg-float v10, p1, v10

    .line 326
    .line 327
    if-gez v10, :cond_9

    .line 328
    .line 329
    move v10, v9

    .line 330
    goto :goto_0

    .line 331
    :cond_9
    move v10, v3

    .line 332
    :goto_0
    if-eqz v10, :cond_a

    .line 333
    .line 334
    iget v11, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    .line 335
    .line 336
    iget v12, v1, Landroid/graphics/Rect;->left:I

    .line 337
    .line 338
    int-to-float v12, v12

    .line 339
    cmpg-float v11, v11, v12

    .line 340
    .line 341
    if-ltz v11, :cond_d

    .line 342
    .line 343
    :cond_a
    if-nez v10, :cond_b

    .line 344
    .line 345
    iget v11, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    .line 346
    .line 347
    iget v12, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 348
    .line 349
    int-to-float v12, v12

    .line 350
    add-float/2addr v11, v12

    .line 351
    iget v12, v1, Landroid/graphics/Rect;->right:I

    .line 352
    .line 353
    int-to-float v12, v12

    .line 354
    cmpl-float v11, v11, v12

    .line 355
    .line 356
    if-lez v11, :cond_b

    .line 357
    .line 358
    goto :goto_1

    .line 359
    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    cmpg-float p1, p1, p2

    .line 364
    .line 365
    if-gez p1, :cond_e

    .line 366
    .line 367
    if-eqz v10, :cond_c

    .line 368
    .line 369
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 376
    .line 377
    add-int/lit8 v11, v11, -0x1e

    .line 378
    .line 379
    int-to-float v11, v11

    .line 380
    cmpg-float p1, p1, v11

    .line 381
    .line 382
    if-ltz p1, :cond_d

    .line 383
    .line 384
    :cond_c
    if-nez v10, :cond_e

    .line 385
    .line 386
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 393
    .line 394
    int-to-float v10, v10

    .line 395
    add-float/2addr p1, v10

    .line 396
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 397
    .line 398
    add-int/2addr v1, v0

    .line 399
    int-to-float v1, v1

    .line 400
    cmpl-float p1, p1, v1

    .line 401
    .line 402
    if-lez p1, :cond_e

    .line 403
    .line 404
    :cond_d
    :goto_1
    move p1, v3

    .line 405
    goto :goto_2

    .line 406
    :cond_e
    move p1, v9

    .line 407
    :goto_2
    const/high16 v1, 0x420c0000    # 35.0f

    .line 408
    .line 409
    if-eqz p1, :cond_f

    .line 410
    .line 411
    iget-object v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    .line 412
    .line 413
    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 414
    .line 415
    div-float/2addr v10, p2

    .line 416
    mul-float/2addr v10, v1

    .line 417
    float-to-int v10, v10

    .line 418
    goto :goto_3

    .line 419
    :cond_f
    move v10, v3

    .line 420
    :goto_3
    if-eqz p1, :cond_10

    .line 421
    .line 422
    iget-object v11, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    .line 423
    .line 424
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 425
    .line 426
    div-float/2addr v11, p2

    .line 427
    mul-float/2addr v11, v1

    .line 428
    float-to-int p2, v11

    .line 429
    goto :goto_4

    .line 430
    :cond_10
    move p2, v3

    .line 431
    :goto_4
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 432
    .line 433
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 434
    .line 435
    if-nez v1, :cond_11

    .line 436
    .line 437
    move v1, v3

    .line 438
    goto :goto_5

    .line 439
    :cond_11
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 440
    .line 441
    iget-object v1, v1, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 442
    .line 443
    iget-boolean v1, v1, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 444
    .line 445
    :goto_5
    if-nez v1, :cond_18

    .line 446
    .line 447
    iget-object v11, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 448
    .line 449
    invoke-virtual {v11}, Landroid/widget/ImageButton;->getX()F

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    int-to-float v10, v10

    .line 454
    add-float/2addr v11, v10

    .line 455
    iget-object v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 456
    .line 457
    invoke-virtual {v10}, Landroid/widget/ImageButton;->getY()F

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    int-to-float p2, p2

    .line 462
    add-float/2addr v10, p2

    .line 463
    if-eqz p1, :cond_17

    .line 464
    .line 465
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 466
    .line 467
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 468
    .line 469
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 470
    .line 471
    int-to-float p2, p2

    .line 472
    cmpl-float p2, p2, v11

    .line 473
    .line 474
    if-lez p2, :cond_12

    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_12
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 478
    .line 479
    int-to-float p2, p2

    .line 480
    cmpg-float p2, p2, v11

    .line 481
    .line 482
    if-gez p2, :cond_13

    .line 483
    .line 484
    :goto_6
    move p2, v3

    .line 485
    goto :goto_7

    .line 486
    :cond_13
    move p2, v9

    .line 487
    :goto_7
    iget v12, p1, Landroid/graphics/Rect;->top:I

    .line 488
    .line 489
    int-to-float v12, v12

    .line 490
    cmpl-float v12, v12, v10

    .line 491
    .line 492
    if-lez v12, :cond_14

    .line 493
    .line 494
    goto :goto_8

    .line 495
    :cond_14
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 496
    .line 497
    int-to-float p1, p1

    .line 498
    cmpg-float p1, p1, v10

    .line 499
    .line 500
    if-gez p1, :cond_15

    .line 501
    .line 502
    :goto_8
    move p2, v3

    .line 503
    :cond_15
    if-eqz p2, :cond_16

    .line 504
    .line 505
    const/16 v7, 0x14

    .line 506
    .line 507
    :cond_16
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringConfig(I)V

    .line 508
    .line 509
    .line 510
    :cond_17
    invoke-virtual {p0, v11, v10, v3}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    .line 511
    .line 512
    .line 513
    :cond_18
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateSpringChainEndValue()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 524
    .line 525
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda5;

    .line 526
    .line 527
    invoke-direct {p2, p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Z)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    .line 532
    .line 533
    :cond_19
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 534
    .line 535
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    if-nez p1, :cond_1b

    .line 540
    .line 541
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 542
    .line 543
    if-nez p1, :cond_1b

    .line 544
    .line 545
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 546
    .line 547
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 548
    .line 549
    iget-boolean p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 550
    .line 551
    if-nez p1, :cond_1b

    .line 552
    .line 553
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    if-ne p1, v9, :cond_1a

    .line 558
    .line 559
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 560
    .line 561
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 562
    .line 563
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 564
    .line 565
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 570
    .line 571
    if-eqz p1, :cond_1b

    .line 572
    .line 573
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 574
    .line 575
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    goto :goto_9

    .line 579
    :cond_1a
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 580
    .line 581
    invoke-virtual {p0, v8, v9, v9}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 582
    .line 583
    .line 584
    :cond_1b
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_1c
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 608
    .line 609
    if-nez p1, :cond_1d

    .line 610
    .line 611
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 616
    .line 617
    goto :goto_a

    .line 618
    :cond_1d
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 619
    .line 620
    .line 621
    :goto_a
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 622
    .line 623
    .line 624
    iput-boolean v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 625
    .line 626
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownX:F

    .line 627
    .line 628
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionX:F

    .line 629
    .line 630
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstDownY:F

    .line 631
    .line 632
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastPositionY:F

    .line 633
    .line 634
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 635
    .line 636
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    .line 637
    .line 638
    .line 639
    move-result p1

    .line 640
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    .line 641
    .line 642
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 643
    .line 644
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getY()F

    .line 645
    .line 646
    .line 647
    move-result p1

    .line 648
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerY:F

    .line 649
    .line 650
    new-instance p0, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object p0

    .line 669
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    :cond_1e
    :goto_b
    return v3
.end method
