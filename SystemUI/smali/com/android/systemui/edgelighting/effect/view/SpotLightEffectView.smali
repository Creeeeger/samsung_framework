.class public Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimListener:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

.field public mCurrWidth:I

.field public mSpotlightDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 3
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 7
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 11
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 15
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f080784

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final startAnimation()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    iget v1, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 31
    .line 32
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 38
    .line 39
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    new-array v5, v4, [F

    .line 46
    .line 47
    fill-array-data v5, :array_0

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v6, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$1;

    .line 55
    .line 56
    invoke-direct {v6, v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v6, 0x64

    .line 63
    .line 64
    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 65
    .line 66
    .line 67
    new-instance v6, Landroid/view/animation/PathInterpolator;

    .line 68
    .line 69
    const v7, 0x3ea8f5c3    # 0.33f

    .line 70
    .line 71
    .line 72
    const v8, 0x3eb851ec    # 0.36f

    .line 73
    .line 74
    .line 75
    const v9, 0x3f2b851f    # 0.67f

    .line 76
    .line 77
    .line 78
    const/high16 v10, 0x3f800000    # 1.0f

    .line 79
    .line 80
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 87
    .line 88
    .line 89
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 90
    .line 91
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 92
    .line 93
    .line 94
    new-array v6, v4, [F

    .line 95
    .line 96
    fill-array-data v6, :array_1

    .line 97
    .line 98
    .line 99
    const-string/jumbo v11, "scaleX"

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-array v12, v4, [F

    .line 107
    .line 108
    fill-array-data v12, :array_2

    .line 109
    .line 110
    .line 111
    const-string/jumbo v13, "scaleY"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    const-wide/16 v14, 0x48f

    .line 119
    .line 120
    invoke-virtual {v5, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 121
    .line 122
    .line 123
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 124
    .line 125
    invoke-direct {v1, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    .line 130
    .line 131
    filled-new-array {v6, v12}, [Landroid/animation/Animator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 139
    .line 140
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 141
    .line 142
    .line 143
    new-array v6, v4, [F

    .line 144
    .line 145
    fill-array-data v6, :array_3

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    new-array v8, v4, [F

    .line 153
    .line 154
    fill-array-data v8, :array_4

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v13, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v1, v14, v15}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 162
    .line 163
    .line 164
    const-wide/16 v14, 0x23c

    .line 165
    .line 166
    invoke-virtual {v1, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 167
    .line 168
    .line 169
    new-instance v12, Landroid/view/animation/PathInterpolator;

    .line 170
    .line 171
    const v7, 0x3f266666    # 0.65f

    .line 172
    .line 173
    .line 174
    const v9, 0x3e851eb8    # 0.26f

    .line 175
    .line 176
    .line 177
    const/4 v14, 0x0

    .line 178
    invoke-direct {v12, v9, v14, v7, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    .line 183
    .line 184
    filled-new-array {v6, v8}, [Landroid/animation/Animator;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    .line 190
    .line 191
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 192
    .line 193
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 194
    .line 195
    .line 196
    new-array v7, v4, [F

    .line 197
    .line 198
    fill-array-data v7, :array_5

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    new-array v8, v4, [F

    .line 206
    .line 207
    fill-array-data v8, :array_6

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v13, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    const-wide/16 v14, 0x6c5

    .line 215
    .line 216
    invoke-virtual {v6, v14, v15}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 217
    .line 218
    .line 219
    const-wide/16 v14, 0x247

    .line 220
    .line 221
    invoke-virtual {v6, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 222
    .line 223
    .line 224
    new-instance v9, Landroid/view/animation/PathInterpolator;

    .line 225
    .line 226
    const v12, 0x3f28f5c3    # 0.66f

    .line 227
    .line 228
    .line 229
    const v14, 0x3f4a3d71    # 0.79f

    .line 230
    .line 231
    .line 232
    const v15, 0x3ea3d70a    # 0.32f

    .line 233
    .line 234
    .line 235
    const/4 v10, 0x0

    .line 236
    invoke-direct {v9, v15, v10, v12, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    .line 241
    .line 242
    filled-new-array {v7, v8}, [Landroid/animation/Animator;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 247
    .line 248
    .line 249
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 250
    .line 251
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 252
    .line 253
    .line 254
    new-array v8, v4, [F

    .line 255
    .line 256
    fill-array-data v8, :array_7

    .line 257
    .line 258
    .line 259
    invoke-static {v0, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    new-array v9, v4, [F

    .line 264
    .line 265
    fill-array-data v9, :array_8

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    const-wide/16 v14, 0x91d

    .line 273
    .line 274
    invoke-virtual {v7, v14, v15}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 275
    .line 276
    .line 277
    const-wide/16 v14, 0x23c

    .line 278
    .line 279
    invoke-virtual {v7, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 280
    .line 281
    .line 282
    new-instance v10, Landroid/view/animation/PathInterpolator;

    .line 283
    .line 284
    const v12, 0x3f8b851f    # 1.09f

    .line 285
    .line 286
    .line 287
    const v14, -0x41b33333    # -0.2f

    .line 288
    .line 289
    .line 290
    const v4, 0x3f2b851f    # 0.67f

    .line 291
    .line 292
    .line 293
    const v15, 0x3ea8f5c3    # 0.33f

    .line 294
    .line 295
    .line 296
    invoke-direct {v10, v15, v14, v4, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    .line 301
    .line 302
    filled-new-array {v8, v9}, [Landroid/animation/Animator;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 307
    .line 308
    .line 309
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 310
    .line 311
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 312
    .line 313
    .line 314
    const/4 v4, 0x2

    .line 315
    new-array v9, v4, [F

    .line 316
    .line 317
    fill-array-data v9, :array_9

    .line 318
    .line 319
    .line 320
    invoke-static {v0, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    new-array v4, v4, [F

    .line 325
    .line 326
    fill-array-data v4, :array_a

    .line 327
    .line 328
    .line 329
    invoke-static {v0, v13, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const-wide/16 v10, 0xb54

    .line 334
    .line 335
    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 336
    .line 337
    .line 338
    const-wide/16 v10, 0x25f

    .line 339
    .line 340
    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 341
    .line 342
    .line 343
    new-instance v10, Landroid/view/animation/PathInterpolator;

    .line 344
    .line 345
    const v11, 0x3eb33333    # 0.35f

    .line 346
    .line 347
    .line 348
    const v12, -0x43dc28f6    # -0.01f

    .line 349
    .line 350
    .line 351
    const/high16 v13, 0x3f800000    # 1.0f

    .line 352
    .line 353
    const v14, 0x3f2b851f    # 0.67f

    .line 354
    .line 355
    .line 356
    invoke-direct {v10, v11, v12, v14, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 360
    .line 361
    .line 362
    filled-new-array {v9, v4}, [Landroid/animation/Animator;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 367
    .line 368
    .line 369
    move-object v4, v5

    .line 370
    move-object v5, v1

    .line 371
    filled-new-array/range {v3 .. v8}, [Landroid/animation/Animator;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    nop

    .line 385
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_1
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_2
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6e147b    # 0.93f
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6e147b    # 0.93f
    .end array-data

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_5
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f7ae148    # 0.98f
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_6
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f7ae148    # 0.98f
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_7
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f6e147b    # 0.93f
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :array_8
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f6e147b    # 0.93f
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_9
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f0a3d71    # 0.54f
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_a
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f0a3d71    # 0.54f
    .end array-data
.end method

.method public final stopAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
