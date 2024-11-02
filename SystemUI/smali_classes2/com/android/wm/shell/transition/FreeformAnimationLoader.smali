.class public final Lcom/android/wm/shell/transition/FreeformAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCornerRadius()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/16 v0, 0xe

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    float-to-int p0, p0

    .line 32
    int-to-float p0, p0

    .line 33
    return p0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v10, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget v0, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    .line 12
    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    move v4, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v1

    .line 18
    :goto_0
    iget-object v5, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    .line 19
    .line 20
    iget-object v6, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 21
    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    new-instance v7, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/graphics/PointF;

    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-float v4, v4

    .line 40
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    int-to-float v8, v8

    .line 45
    invoke-direct {v0, v4, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 46
    .line 47
    .line 48
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iget v5, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5, v4, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 67
    .line 68
    .line 69
    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 72
    .line 73
    if-ge v5, v4, :cond_2

    .line 74
    .line 75
    iget v4, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    .line 76
    .line 77
    cmpg-float v4, v4, v2

    .line 78
    .line 79
    if-gez v4, :cond_2

    .line 80
    .line 81
    move v9, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move v9, v1

    .line 84
    :goto_1
    const/4 v5, 0x0

    .line 85
    iget v8, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    .line 86
    .line 87
    move-object v4, v10

    .line 88
    move-object v6, v0

    .line 89
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget v5, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    .line 94
    .line 95
    new-instance v6, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;

    .line 96
    .line 97
    invoke-direct {v6, v10, v5, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;ILandroid/graphics/PointF;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_3
    const/4 v4, 0x2

    .line 105
    if-ne v0, v4, :cond_4

    .line 106
    .line 107
    move v0, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move v0, v1

    .line 110
    :goto_2
    if-eqz v0, :cond_7

    .line 111
    .line 112
    new-instance v7, Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Landroid/graphics/PointF;

    .line 122
    .line 123
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 124
    .line 125
    .line 126
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    int-to-float v4, v4

    .line 139
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    int-to-float v5, v5

    .line 144
    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 145
    .line 146
    .line 147
    :goto_3
    new-instance v4, Landroid/graphics/Rect;

    .line 148
    .line 149
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 150
    .line 151
    .line 152
    iget v5, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 153
    .line 154
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5, v4, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 159
    .line 160
    .line 161
    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 164
    .line 165
    if-ge v5, v4, :cond_6

    .line 166
    .line 167
    iget v4, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    .line 168
    .line 169
    cmpg-float v4, v4, v2

    .line 170
    .line 171
    if-gez v4, :cond_6

    .line 172
    .line 173
    move v9, v3

    .line 174
    goto :goto_4

    .line 175
    :cond_6
    move v9, v1

    .line 176
    :goto_4
    const/4 v5, 0x1

    .line 177
    iget v8, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    .line 178
    .line 179
    move-object v4, v10

    .line 180
    move-object v6, v0

    .line 181
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    goto :goto_5

    .line 186
    :cond_7
    const/4 v4, 0x0

    .line 187
    :goto_5
    if-eqz v4, :cond_8

    .line 188
    .line 189
    invoke-virtual {v10, v4}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    iget-boolean v0, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    return-void

    .line 197
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    .line 198
    .line 199
    const v4, 0x7f0101ab

    .line 200
    .line 201
    .line 202
    const v5, 0x7f0101b3

    .line 203
    .line 204
    .line 205
    if-eqz v0, :cond_10

    .line 206
    .line 207
    iget v0, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    .line 208
    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    move v6, v3

    .line 212
    goto :goto_6

    .line 213
    :cond_a
    move v6, v1

    .line 214
    :goto_6
    if-eqz v6, :cond_10

    .line 215
    .line 216
    iget v6, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    .line 217
    .line 218
    cmpl-float v2, v6, v2

    .line 219
    .line 220
    if-eqz v2, :cond_b

    .line 221
    .line 222
    sget-object p0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    .line 223
    .line 224
    invoke-virtual {v10, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_b
    if-ne v0, v3, :cond_c

    .line 229
    .line 230
    const v0, 0x7f0101b5

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_c
    const v0, 0x7f0101b6

    .line 235
    .line 236
    .line 237
    :goto_7
    invoke-virtual {v10, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    sget-object v6, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 242
    .line 243
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    .line 245
    .line 246
    if-eq v0, v5, :cond_d

    .line 247
    .line 248
    if-ne v0, v4, :cond_e

    .line 249
    .line 250
    :cond_d
    move v1, v3

    .line 251
    :cond_e
    if-eqz v1, :cond_f

    .line 252
    .line 253
    instance-of v0, v2, Landroid/view/animation/AnimationSet;

    .line 254
    .line 255
    if-eqz v0, :cond_f

    .line 256
    .line 257
    invoke-virtual {v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    move-object v1, v2

    .line 262
    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 263
    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/transition/AnimationLoader;->addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;)V

    .line 265
    .line 266
    .line 267
    :cond_f
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_10
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    .line 272
    .line 273
    if-eqz v0, :cond_11

    .line 274
    .line 275
    iget-boolean v0, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsFreeformMovingBehindSplitScreen:Z

    .line 276
    .line 277
    if-eqz v0, :cond_11

    .line 278
    .line 279
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_11
    iget-boolean v0, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 290
    .line 291
    iget v2, v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 292
    .line 293
    if-eq v2, v3, :cond_13

    .line 294
    .line 295
    const/4 v6, 0x3

    .line 296
    if-ne v2, v6, :cond_12

    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_12
    move v2, v1

    .line 300
    goto :goto_9

    .line 301
    :cond_13
    :goto_8
    move v2, v3

    .line 302
    :goto_9
    const/4 v6, -0x1

    .line 303
    if-eqz v2, :cond_15

    .line 304
    .line 305
    if-eqz v0, :cond_14

    .line 306
    .line 307
    move v0, v5

    .line 308
    goto :goto_a

    .line 309
    :cond_14
    const v0, 0x7f0101b4

    .line 310
    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_15
    invoke-virtual {v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_17

    .line 318
    .line 319
    if-eqz v0, :cond_16

    .line 320
    .line 321
    const v0, 0x7f0101aa

    .line 322
    .line 323
    .line 324
    goto :goto_a

    .line 325
    :cond_16
    move v0, v4

    .line 326
    goto :goto_a

    .line 327
    :cond_17
    move v0, v6

    .line 328
    :goto_a
    if-eq v0, v6, :cond_1b

    .line 329
    .line 330
    invoke-virtual {v10, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    if-eq v0, v5, :cond_18

    .line 335
    .line 336
    if-ne v0, v4, :cond_19

    .line 337
    .line 338
    :cond_18
    move v1, v3

    .line 339
    :cond_19
    if-eqz v1, :cond_1a

    .line 340
    .line 341
    instance-of v0, v2, Landroid/view/animation/AnimationSet;

    .line 342
    .line 343
    if-eqz v0, :cond_1a

    .line 344
    .line 345
    invoke-virtual {v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    move-object v1, v2

    .line 350
    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 351
    .line 352
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/transition/AnimationLoader;->addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;)V

    .line 353
    .line 354
    .line 355
    :cond_1a
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 356
    .line 357
    .line 358
    :cond_1b
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "FreeformAnimationLoader"

    .line 2
    .line 3
    return-object p0
.end method
