.class public final Lcom/android/systemui/volume/view/icon/VolumeIconMotion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public lastAnimtor:Landroid/animation/Animator;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/store/VolumePanelStore;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p2, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p2, v0, p1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 13
    .line 14
    return-void
.end method

.method public static getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    move v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v3

    .line 11
    :goto_0
    if-nez v1, :cond_1

    .line 12
    .line 13
    neg-float v0, p0

    .line 14
    add-float/2addr v0, p1

    .line 15
    :cond_1
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    aput p0, p1, v3

    .line 19
    .line 20
    aput v0, p1, v2

    .line 21
    .line 22
    const-string/jumbo p0, "translationX"

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    int-to-long p1, p2

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public static startSplashAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6
    .line 7
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 10
    .line 11
    .line 12
    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 13
    .line 14
    new-instance v2, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 25
    .line 26
    .line 27
    const/high16 v2, 0x43960000    # 300.0f

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 30
    .line 31
    .line 32
    const v2, 0x3f147ae1    # 0.58f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 36
    .line 37
    .line 38
    iput-object p0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    .line 41
    .line 42
    .line 43
    const/high16 p0, 0x3f800000    # 1.0f

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final cancelLastAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 10
    .line 11
    return-void
.end method

.method public final startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    const/4 p6, 0x0

    .line 15
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    if-eqz p5, :cond_0

    .line 22
    .line 23
    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p6}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4, p6}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const p5, 0x7f071548

    .line 33
    .line 34
    .line 35
    iget-object p7, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p5, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    sget-object v0, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 42
    .line 43
    if-ne p8, v0, :cond_1

    .line 44
    .line 45
    const v1, 0x7f07154d

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const v1, 0x7f07158d

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v1, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ne p8, v0, :cond_2

    .line 57
    .line 58
    const v2, 0x7f07154b

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const v2, 0x7f07158b

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-static {v2, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eq p8, v0, :cond_3

    .line 70
    .line 71
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    const p5, 0x7f071599

    .line 76
    .line 77
    .line 78
    invoke-static {p5, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result p5

    .line 82
    const v1, 0x7f07159e

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const v2, 0x7f07159c

    .line 90
    .line 91
    .line 92
    invoke-static {v2, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    :cond_3
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    :cond_4
    if-ne p8, v0, :cond_5

    .line 109
    .line 110
    const p1, 0x7f071586

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    const p1, 0x7f071592

    .line 115
    .line 116
    .line 117
    :goto_2
    invoke-static {p1, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-ne p8, v0, :cond_6

    .line 122
    .line 123
    const p1, 0x7f071584

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    const p1, 0x7f071590

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-static {p1, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eq p8, v0, :cond_7

    .line 135
    .line 136
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    const p1, 0x7f0715a6

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const p1, 0x7f0715a4

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :cond_7
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 155
    .line 156
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 157
    .line 158
    .line 159
    const/4 p7, 0x2

    .line 160
    new-array p8, p7, [F

    .line 161
    .line 162
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    aput v0, p8, p6

    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    const/high16 v3, 0x3f000000    # 0.5f

    .line 170
    .line 171
    aput v3, p8, v0

    .line 172
    .line 173
    const-string v4, "alpha"

    .line 174
    .line 175
    invoke-static {p3, v4, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 176
    .line 177
    .line 178
    move-result-object p8

    .line 179
    filled-new-array {p8}, [Landroid/animation/Animator;

    .line 180
    .line 181
    .line 182
    move-result-object p8

    .line 183
    invoke-virtual {p1, p8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 184
    .line 185
    .line 186
    new-array p8, p7, [F

    .line 187
    .line 188
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    aput v5, p8, p6

    .line 193
    .line 194
    aput v3, p8, v0

    .line 195
    .line 196
    invoke-static {p4, v4, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 197
    .line 198
    .line 199
    move-result-object p8

    .line 200
    filled-new-array {p8}, [Landroid/animation/Animator;

    .line 201
    .line 202
    .line 203
    move-result-object p8

    .line 204
    invoke-virtual {p1, p8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 205
    .line 206
    .line 207
    const-wide/16 v3, 0x96

    .line 208
    .line 209
    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    .line 211
    .line 212
    new-instance p8, Landroid/view/animation/LinearInterpolator;

    .line 213
    .line 214
    invoke-direct {p8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    .line 219
    .line 220
    new-instance p8, Landroid/animation/AnimatorSet;

    .line 221
    .line 222
    invoke-direct {p8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 223
    .line 224
    .line 225
    new-array v3, p7, [F

    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    aput v4, v3, p6

    .line 232
    .line 233
    int-to-float p5, p5

    .line 234
    aput p5, v3, v0

    .line 235
    .line 236
    const-string/jumbo p5, "x"

    .line 237
    .line 238
    .line 239
    invoke-static {p2, p5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p8, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 248
    .line 249
    .line 250
    new-array p2, p7, [F

    .line 251
    .line 252
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    aput v3, p2, p6

    .line 257
    .line 258
    int-to-float v1, v1

    .line 259
    aput v1, p2, v0

    .line 260
    .line 261
    invoke-static {p3, p5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    invoke-virtual {p8, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 270
    .line 271
    .line 272
    new-array p2, p7, [F

    .line 273
    .line 274
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    aput p3, p2, p6

    .line 279
    .line 280
    int-to-float p3, v2

    .line 281
    aput p3, p2, v0

    .line 282
    .line 283
    invoke-static {p4, p5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {p8, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 292
    .line 293
    .line 294
    const-wide/16 p2, 0xc8

    .line 295
    .line 296
    invoke-virtual {p8, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 297
    .line 298
    .line 299
    new-instance p2, Landroid/view/animation/PathInterpolator;

    .line 300
    .line 301
    const p3, 0x3e6147ae    # 0.22f

    .line 302
    .line 303
    .line 304
    const/high16 p4, 0x3e800000    # 0.25f

    .line 305
    .line 306
    const/4 p5, 0x0

    .line 307
    const/high16 p6, 0x3f800000    # 1.0f

    .line 308
    .line 309
    invoke-direct {p2, p3, p4, p5, p6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p8, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    .line 314
    .line 315
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 316
    .line 317
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 318
    .line 319
    .line 320
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 325
    .line 326
    .line 327
    filled-new-array {p8}, [Landroid/animation/Animator;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 335
    .line 336
    .line 337
    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 338
    .line 339
    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    move-object/from16 v3, p5

    .line 7
    .line 8
    move-object/from16 v4, p6

    .line 9
    .line 10
    move-object/from16 v5, p9

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    .line 13
    .line 14
    .line 15
    sget-object v6, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    move-object/from16 v7, p7

    .line 23
    .line 24
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    move-object/from16 v8, p8

    .line 32
    .line 33
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const v4, 0x7f071549

    .line 48
    .line 49
    .line 50
    iget-object v6, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v4, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    sget-object v8, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 57
    .line 58
    if-ne v5, v8, :cond_1

    .line 59
    .line 60
    const v9, 0x7f07154e

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const v9, 0x7f07158e

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-static {v9, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-ne v5, v8, :cond_2

    .line 72
    .line 73
    const v10, 0x7f07154c

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const v10, 0x7f07158c

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-static {v10, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eq v5, v8, :cond_3

    .line 85
    .line 86
    sget-boolean v11, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 87
    .line 88
    if-eqz v11, :cond_3

    .line 89
    .line 90
    const v4, 0x7f07159a

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const v9, 0x7f07159f

    .line 98
    .line 99
    .line 100
    invoke-static {v9, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    const v10, 0x7f07159d

    .line 105
    .line 106
    .line 107
    invoke-static {v10, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_4

    .line 116
    .line 117
    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_7

    .line 122
    .line 123
    :cond_4
    if-ne v5, v8, :cond_5

    .line 124
    .line 125
    const v9, 0x7f071587

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    const v9, 0x7f071593

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-static {v9, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-ne v5, v8, :cond_6

    .line 137
    .line 138
    const v10, 0x7f071585

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    const v10, 0x7f071591

    .line 143
    .line 144
    .line 145
    :goto_3
    invoke-static {v10, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eq v5, v8, :cond_7

    .line 150
    .line 151
    sget-boolean v5, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 152
    .line 153
    if-eqz v5, :cond_7

    .line 154
    .line 155
    const v5, 0x7f0715a7

    .line 156
    .line 157
    .line 158
    invoke-static {v5, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    const v5, 0x7f0715a5

    .line 163
    .line 164
    .line 165
    invoke-static {v5, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    :cond_7
    const/4 v5, 0x2

    .line 170
    new-array v6, v5, [F

    .line 171
    .line 172
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    aput v8, v6, v7

    .line 177
    .line 178
    const/high16 v8, 0x3f000000    # 0.5f

    .line 179
    .line 180
    const/4 v11, 0x1

    .line 181
    aput v8, v6, v11

    .line 182
    .line 183
    const-string v8, "alpha"

    .line 184
    .line 185
    invoke-static {v2, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    new-array v12, v5, [F

    .line 190
    .line 191
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    aput v13, v12, v7

    .line 196
    .line 197
    const v13, 0x3dcccccd    # 0.1f

    .line 198
    .line 199
    .line 200
    aput v13, v12, v11

    .line 201
    .line 202
    invoke-static {v3, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    new-instance v12, Landroid/animation/AnimatorSet;

    .line 207
    .line 208
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 209
    .line 210
    .line 211
    filled-new-array {v6}, [Landroid/animation/Animator;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 216
    .line 217
    .line 218
    filled-new-array {v8}, [Landroid/animation/Animator;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 223
    .line 224
    .line 225
    const-wide/16 v13, 0x64

    .line 226
    .line 227
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 228
    .line 229
    .line 230
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    .line 231
    .line 232
    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    .line 237
    .line 238
    new-array v6, v5, [F

    .line 239
    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    aput v8, v6, v7

    .line 245
    .line 246
    int-to-float v4, v4

    .line 247
    aput v4, v6, v11

    .line 248
    .line 249
    const-string/jumbo v4, "x"

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-array v6, v5, [F

    .line 257
    .line 258
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    aput v8, v6, v7

    .line 263
    .line 264
    int-to-float v8, v9

    .line 265
    aput v8, v6, v11

    .line 266
    .line 267
    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    new-array v5, v5, [F

    .line 272
    .line 273
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    aput v6, v5, v7

    .line 278
    .line 279
    int-to-float v6, v10

    .line 280
    aput v6, v5, v11

    .line 281
    .line 282
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 287
    .line 288
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    .line 290
    .line 291
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 296
    .line 297
    .line 298
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 303
    .line 304
    .line 305
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 310
    .line 311
    .line 312
    const-wide/16 v1, 0xc8

    .line 313
    .line 314
    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 315
    .line 316
    .line 317
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 318
    .line 319
    const v2, 0x3e6147ae    # 0.22f

    .line 320
    .line 321
    .line 322
    const/high16 v3, 0x3e800000    # 0.25f

    .line 323
    .line 324
    const/4 v5, 0x0

    .line 325
    const/high16 v6, 0x3f800000    # 1.0f

    .line 326
    .line 327
    invoke-direct {v1, v2, v3, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    .line 332
    .line 333
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 334
    .line 335
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 336
    .line 337
    .line 338
    filled-new-array {v4}, [Landroid/animation/Animator;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 343
    .line 344
    .line 345
    filled-new-array {v12}, [Landroid/animation/Animator;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 350
    .line 351
    .line 352
    new-instance v2, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;

    .line 353
    .line 354
    move/from16 v3, p1

    .line 355
    .line 356
    move/from16 v4, p2

    .line 357
    .line 358
    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/icon/VolumeIconMotion;II)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 365
    .line 366
    .line 367
    iput-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 368
    .line 369
    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p9

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    .line 14
    .line 15
    .line 16
    sget-object v6, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 17
    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/16 v6, 0x8

    .line 22
    .line 23
    move-object/from16 v7, p7

    .line 24
    .line 25
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    move-object/from16 v8, p8

    .line 33
    .line 34
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object v4, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 49
    .line 50
    if-ne v5, v4, :cond_1

    .line 51
    .line 52
    const v6, 0x7f07154a

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const v6, 0x7f07158a

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v8, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v6, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const/4 v10, 0x0

    .line 70
    if-nez v9, :cond_3

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v9, v10

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :goto_1
    if-ne v5, v4, :cond_4

    .line 82
    .line 83
    const v6, 0x7f071583

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    const v6, 0x7f07158f

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-static {v6, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const v9, 0x3e99999a    # 0.3f

    .line 95
    .line 96
    .line 97
    :goto_3
    if-eq v5, v4, :cond_5

    .line 98
    .line 99
    sget-boolean v11, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 100
    .line 101
    if-eqz v11, :cond_5

    .line 102
    .line 103
    const v6, 0x7f07159b

    .line 104
    .line 105
    .line 106
    invoke-static {v6, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    :cond_5
    const/4 v11, 0x2

    .line 111
    new-array v12, v11, [F

    .line 112
    .line 113
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    aput v13, v12, v7

    .line 118
    .line 119
    const/4 v13, 0x1

    .line 120
    aput v9, v12, v13

    .line 121
    .line 122
    const-string v9, "alpha"

    .line 123
    .line 124
    invoke-static {v2, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    new-array v14, v11, [F

    .line 129
    .line 130
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    aput v15, v14, v7

    .line 135
    .line 136
    aput v10, v14, v13

    .line 137
    .line 138
    invoke-static {v3, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-instance v9, Landroid/animation/AnimatorSet;

    .line 143
    .line 144
    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 145
    .line 146
    .line 147
    filled-new-array {v12}, [Landroid/animation/Animator;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 152
    .line 153
    .line 154
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 159
    .line 160
    .line 161
    const-wide/16 v14, 0x64

    .line 162
    .line 163
    invoke-virtual {v9, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 164
    .line 165
    .line 166
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 167
    .line 168
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    .line 173
    .line 174
    new-array v3, v11, [F

    .line 175
    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    aput v12, v3, v7

    .line 181
    .line 182
    int-to-float v6, v6

    .line 183
    aput v6, v3, v13

    .line 184
    .line 185
    const-string/jumbo v6, "x"

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 193
    .line 194
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 195
    .line 196
    .line 197
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 202
    .line 203
    .line 204
    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_6

    .line 209
    .line 210
    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_9

    .line 215
    .line 216
    :cond_6
    if-ne v5, v4, :cond_7

    .line 217
    .line 218
    const v1, 0x7f071588

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_7
    const v1, 0x7f07158e

    .line 223
    .line 224
    .line 225
    :goto_4
    invoke-static {v1, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eq v5, v4, :cond_8

    .line 230
    .line 231
    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 232
    .line 233
    if-eqz v4, :cond_8

    .line 234
    .line 235
    const v1, 0x7f0715a8

    .line 236
    .line 237
    .line 238
    invoke-static {v1, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    :cond_8
    new-array v4, v11, [F

    .line 243
    .line 244
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    aput v5, v4, v7

    .line 249
    .line 250
    int-to-float v1, v1

    .line 251
    aput v1, v4, v13

    .line 252
    .line 253
    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 262
    .line 263
    .line 264
    :cond_9
    const-wide/16 v1, 0xc8

    .line 265
    .line 266
    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 267
    .line 268
    .line 269
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 270
    .line 271
    const/high16 v2, 0x3f800000    # 1.0f

    .line 272
    .line 273
    const v4, 0x3e6147ae    # 0.22f

    .line 274
    .line 275
    .line 276
    const/high16 v5, 0x3e800000    # 0.25f

    .line 277
    .line 278
    invoke-direct {v1, v4, v5, v10, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 285
    .line 286
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 287
    .line 288
    .line 289
    filled-new-array {v9}, [Landroid/animation/Animator;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 294
    .line 295
    .line 296
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 301
    .line 302
    .line 303
    new-instance v2, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMinAnimation$2$1;

    .line 304
    .line 305
    move/from16 v3, p1

    .line 306
    .line 307
    move/from16 v4, p2

    .line 308
    .line 309
    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMinAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/icon/VolumeIconMotion;II)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 316
    .line 317
    .line 318
    iput-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 319
    .line 320
    return-void
.end method

.method public final startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    const/4 p6, 0x4

    .line 14
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    if-eqz p5, :cond_0

    .line 21
    .line 22
    const/16 p6, 0x8

    .line 23
    .line 24
    invoke-virtual {p5, p6}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p5, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 34
    .line 35
    if-ne p8, p5, :cond_1

    .line 36
    .line 37
    const p6, 0x7f07154a

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const p6, 0x7f07158a

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p6, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result p6

    .line 50
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const p1, 0x7f071583

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result p6

    .line 63
    :cond_2
    if-eq p8, p5, :cond_3

    .line 64
    .line 65
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    const p1, 0x7f07159b

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 73
    .line 74
    .line 75
    move-result p6

    .line 76
    :cond_3
    const/4 p1, 0x2

    .line 77
    new-array p5, p1, [F

    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 80
    .line 81
    .line 82
    move-result p8

    .line 83
    aput p8, p5, v0

    .line 84
    .line 85
    const/4 p8, 0x1

    .line 86
    const/4 v1, 0x0

    .line 87
    aput v1, p5, p8

    .line 88
    .line 89
    const-string v2, "alpha"

    .line 90
    .line 91
    invoke-static {p3, v2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    new-array p5, p1, [F

    .line 96
    .line 97
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    aput v3, p5, v0

    .line 102
    .line 103
    aput v1, p5, p8

    .line 104
    .line 105
    invoke-static {p4, v2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    new-instance p5, Landroid/animation/AnimatorSet;

    .line 110
    .line 111
    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 112
    .line 113
    .line 114
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 119
    .line 120
    .line 121
    filled-new-array {p4}, [Landroid/animation/Animator;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 126
    .line 127
    .line 128
    const-wide/16 p3, 0x64

    .line 129
    .line 130
    invoke-virtual {p5, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 131
    .line 132
    .line 133
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    .line 134
    .line 135
    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    .line 140
    .line 141
    new-array p1, p1, [F

    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    aput p3, p1, v0

    .line 148
    .line 149
    int-to-float p3, p6

    .line 150
    aput p3, p1, p8

    .line 151
    .line 152
    const-string/jumbo p3, "x"

    .line 153
    .line 154
    .line 155
    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-wide/16 p2, 0xc8

    .line 160
    .line 161
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    .line 163
    .line 164
    new-instance p2, Landroid/view/animation/PathInterpolator;

    .line 165
    .line 166
    const/high16 p3, 0x3f800000    # 1.0f

    .line 167
    .line 168
    const p4, 0x3e6147ae    # 0.22f

    .line 169
    .line 170
    .line 171
    const/high16 p6, 0x3e800000    # 0.25f

    .line 172
    .line 173
    invoke-direct {p2, p4, p6, v1, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    .line 178
    .line 179
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 180
    .line 181
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 182
    .line 183
    .line 184
    filled-new-array {p5}, [Landroid/animation/Animator;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    .line 190
    .line 191
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 199
    .line 200
    .line 201
    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 202
    .line 203
    invoke-static {p7}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public final startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 10
    .line 11
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p5, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    .line 37
    .line 38
    const p6, 0x7f071583

    .line 39
    .line 40
    .line 41
    invoke-static {p6, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    new-instance p6, Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    new-array v2, v1, [F

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    aput v3, v2, v0

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    const/4 v4, 0x0

    .line 61
    aput v4, v2, v3

    .line 62
    .line 63
    const-string v5, "alpha"

    .line 64
    .line 65
    invoke-static {p3, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 74
    .line 75
    .line 76
    new-array p3, v1, [F

    .line 77
    .line 78
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    aput v2, p3, v0

    .line 83
    .line 84
    aput v4, p3, v3

    .line 85
    .line 86
    invoke-static {p4, v5, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 p3, 0x32

    .line 98
    .line 99
    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 100
    .line 101
    .line 102
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    .line 103
    .line 104
    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    .line 109
    .line 110
    new-array p3, v1, [F

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 113
    .line 114
    .line 115
    move-result p4

    .line 116
    aput p4, p3, v0

    .line 117
    .line 118
    int-to-float p4, p5

    .line 119
    aput p4, p3, v3

    .line 120
    .line 121
    const-string/jumbo p4, "x"

    .line 122
    .line 123
    .line 124
    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const-wide/16 p3, 0xc8

    .line 129
    .line 130
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    .line 132
    .line 133
    new-instance p3, Landroid/view/animation/PathInterpolator;

    .line 134
    .line 135
    const/high16 p4, 0x3f800000    # 1.0f

    .line 136
    .line 137
    const p5, 0x3e6147ae    # 0.22f

    .line 138
    .line 139
    .line 140
    const/high16 v0, 0x3e800000    # 0.25f

    .line 141
    .line 142
    invoke-direct {p3, p5, v0, v4, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    .line 147
    .line 148
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 149
    .line 150
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 151
    .line 152
    .line 153
    filled-new-array {p6}, [Landroid/animation/Animator;

    .line 154
    .line 155
    .line 156
    move-result-object p4

    .line 157
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 158
    .line 159
    .line 160
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 168
    .line 169
    .line 170
    iput-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final startVibrationAnimation(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0715ac

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const v2, 0x7f0715ad

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    neg-float v2, v0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/16 v4, 0x3c

    .line 23
    .line 24
    invoke-static {v3, v2, v4, p1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sub-float v5, v0, v1

    .line 29
    .line 30
    const/16 v6, 0x50

    .line 31
    .line 32
    invoke-static {v2, v5, v6, p1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v6, 0x2

    .line 37
    int-to-float v6, v6

    .line 38
    mul-float/2addr v1, v6

    .line 39
    sub-float/2addr v0, v1

    .line 40
    neg-float v0, v0

    .line 41
    const/16 v1, 0x64

    .line 42
    .line 43
    invoke-static {v5, v0, v1, p1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/16 v5, 0x78

    .line 48
    .line 49
    invoke-static {v0, v3, v5, p1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 56
    .line 57
    .line 58
    filled-new-array {v4, v2, v1, p1}, [Landroid/animation/Animator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    .line 73
    .line 74
    return-void
.end method
