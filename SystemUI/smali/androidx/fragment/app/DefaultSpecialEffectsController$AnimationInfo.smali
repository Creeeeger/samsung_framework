.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

.field public final mIsPop:Z

.field public mLoadedAnim:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mLoadedAnim:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mIsPop:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mLoadedAnim:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mAnimation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 13
    .line 14
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    move v0, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v3

    .line 23
    :goto_0
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move v5, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget v5, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 30
    .line 31
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mIsPop:Z

    .line 32
    .line 33
    if-eqz v6, :cond_6

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    :goto_2
    move v2, v3

    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_4
    if-nez v2, :cond_5

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_5
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_6
    if-eqz v0, :cond_8

    .line 51
    .line 52
    if-nez v2, :cond_7

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_7
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_8
    if-nez v2, :cond_9

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_9
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 62
    .line 63
    :goto_3
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 64
    .line 65
    .line 66
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    if-eqz v6, :cond_a

    .line 70
    .line 71
    const v8, 0x7f0a0cc5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-eqz v6, :cond_a

    .line 79
    .line 80
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 81
    .line 82
    invoke-virtual {v6, v8, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_a
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 86
    .line 87
    if-eqz v6, :cond_b

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    if-eqz v6, :cond_b

    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_b
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 98
    .line 99
    if-nez v6, :cond_c

    .line 100
    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    new-instance v9, Landroid/util/TypedValue;

    .line 112
    .line 113
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 114
    .line 115
    .line 116
    const v10, 0x1010031

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v10, v9, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 120
    .line 121
    .line 122
    iget v8, v9, Landroid/util/TypedValue;->data:I

    .line 123
    .line 124
    const v9, 0x7f010229

    .line 125
    .line 126
    .line 127
    if-ne v2, v9, :cond_d

    .line 128
    .line 129
    const/4 v8, 0x0

    .line 130
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationZ(F)V

    .line 131
    .line 132
    .line 133
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const v9, 0x7f06065e

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-direct {v8, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_d
    const v9, 0x7f010228

    .line 154
    .line 155
    .line 156
    const v10, 0x106000d

    .line 157
    .line 158
    .line 159
    if-ne v2, v9, :cond_e

    .line 160
    .line 161
    const/high16 v9, 0x3f800000    # 1.0f

    .line 162
    .line 163
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationZ(F)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    .line 176
    .line 177
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 178
    .line 179
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_e
    const v9, 0x7f010226

    .line 191
    .line 192
    .line 193
    if-ne v2, v9, :cond_f

    .line 194
    .line 195
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 196
    .line 197
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v9}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 220
    .line 221
    .line 222
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 223
    .line 224
    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    const v10, 0x7f06065d

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    if-eqz v6, :cond_f

    .line 250
    .line 251
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    .line 265
    .line 266
    :cond_f
    :goto_4
    if-nez v2, :cond_1a

    .line 267
    .line 268
    if-eqz v5, :cond_1a

    .line 269
    .line 270
    const/16 v1, 0x1001

    .line 271
    .line 272
    if-eq v5, v1, :cond_18

    .line 273
    .line 274
    const/16 v1, 0x2002

    .line 275
    .line 276
    if-eq v5, v1, :cond_16

    .line 277
    .line 278
    const/16 v1, 0x2005

    .line 279
    .line 280
    if-eq v5, v1, :cond_14

    .line 281
    .line 282
    const/16 v1, 0x1003

    .line 283
    .line 284
    if-eq v5, v1, :cond_12

    .line 285
    .line 286
    const/16 v1, 0x1004

    .line 287
    .line 288
    if-eq v5, v1, :cond_10

    .line 289
    .line 290
    const/4 v0, -0x1

    .line 291
    goto :goto_5

    .line 292
    :cond_10
    if-eqz v0, :cond_11

    .line 293
    .line 294
    const v0, 0x10100b8

    .line 295
    .line 296
    .line 297
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    goto :goto_5

    .line 302
    :cond_11
    const v0, 0x10100b9

    .line 303
    .line 304
    .line 305
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    goto :goto_5

    .line 310
    :cond_12
    if-eqz v0, :cond_13

    .line 311
    .line 312
    const v0, 0x7f020004

    .line 313
    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_13
    const v0, 0x7f020005

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_14
    if-eqz v0, :cond_15

    .line 321
    .line 322
    const v0, 0x10100ba

    .line 323
    .line 324
    .line 325
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    goto :goto_5

    .line 330
    :cond_15
    const v0, 0x10100bb

    .line 331
    .line 332
    .line 333
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    goto :goto_5

    .line 338
    :cond_16
    if-eqz v0, :cond_17

    .line 339
    .line 340
    const v0, 0x7f020002

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_17
    const v0, 0x7f020003

    .line 345
    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_18
    if-eqz v0, :cond_19

    .line 349
    .line 350
    const v0, 0x7f020006

    .line 351
    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_19
    const v0, 0x7f020007

    .line 355
    .line 356
    .line 357
    :goto_5
    move v2, v0

    .line 358
    :cond_1a
    if-eqz v2, :cond_1e

    .line 359
    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const-string v1, "anim"

    .line 369
    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_1c

    .line 375
    .line 376
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    if-eqz v1, :cond_1b

    .line 381
    .line 382
    new-instance v5, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 383
    .line 384
    invoke-direct {v5, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .line 386
    .line 387
    move-object v7, v5

    .line 388
    goto :goto_7

    .line 389
    :cond_1b
    move v3, v4

    .line 390
    goto :goto_6

    .line 391
    :catch_0
    move-exception p0

    .line 392
    throw p0

    .line 393
    :catch_1
    :cond_1c
    :goto_6
    if-nez v3, :cond_1e

    .line 394
    .line 395
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-eqz v1, :cond_1e

    .line 400
    .line 401
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 402
    .line 403
    invoke-direct {v3, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 404
    .line 405
    .line 406
    move-object v7, v3

    .line 407
    goto :goto_7

    .line 408
    :catch_2
    move-exception v1

    .line 409
    if-nez v0, :cond_1d

    .line 410
    .line 411
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    if-eqz p1, :cond_1e

    .line 416
    .line 417
    new-instance v7, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 418
    .line 419
    invoke-direct {v7, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    .line 420
    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_1d
    throw v1

    .line 424
    :cond_1e
    :goto_7
    iput-object v7, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mAnimation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 425
    .line 426
    iput-boolean v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mLoadedAnim:Z

    .line 427
    .line 428
    return-object v7
.end method
