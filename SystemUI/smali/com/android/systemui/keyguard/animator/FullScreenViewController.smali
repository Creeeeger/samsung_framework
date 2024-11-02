.class public final Lcom/android/systemui/keyguard/animator/FullScreenViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

.field public final fullScreenViews:Ljava/util/List;

.field public isFullScreenModeShown:Z

.field public isFullscreenModeEnabled:Z

.field public final longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 p1, 0x4

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 p1, 0x5

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 p1, 0x6

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const/4 p1, 0x7

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/16 p1, 0x8

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const/16 p1, 0x9

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const/16 p1, 0xa

    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenViews:Ljava/util/List;

    .line 71
    .line 72
    new-instance p1, Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    .line 73
    .line 74
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;-><init>(Lcom/android/systemui/keyguard/animator/FullScreenViewController;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    .line 78
    .line 79
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 80
    .line 81
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final setFullScreenMode$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Z)V
    .locals 11

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    .line 2
    .line 3
    const-string/jumbo v0, "setFullScreenMode enabled="

    .line 4
    .line 5
    .line 6
    const-string v1, "KeyguardTouchAnimator"

    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_IN_33:Landroid/view/animation/Interpolator;

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const-wide/16 v1, 0x96

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const-wide/16 v1, 0x12c

    .line 52
    .line 53
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 57
    .line 58
    new-instance v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;

    .line 59
    .line 60
    invoke-direct {v1, p1, p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;-><init>(ZLcom/android/systemui/keyguard/animator/FullScreenViewController;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    .line 65
    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    const v2, 0x3f733333    # 0.95f

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v2, v1

    .line 75
    :goto_2
    if-eqz p1, :cond_5

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    :cond_5
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const/4 v5, 0x0

    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    goto :goto_3

    .line 91
    :cond_6
    move-object v4, v5

    .line 92
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v7, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenViews:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_8

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    move-object v9, v8

    .line 114
    check-cast v9, Ljava/lang/Number;

    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    invoke-virtual {p0, v9}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_7

    .line 125
    .line 126
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    .line 131
    .line 132
    const/16 v8, 0xa

    .line 133
    .line 134
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_9

    .line 150
    .line 151
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-virtual {p0, v8}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    const/4 v9, 0x1

    .line 183
    if-eqz v8, :cond_c

    .line 184
    .line 185
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    move-object v10, v8

    .line 190
    check-cast v10, Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    if-nez v10, :cond_b

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_b
    move v9, v3

    .line 200
    :goto_7
    if-eqz v9, :cond_a

    .line 201
    .line 202
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_e

    .line 215
    .line 216
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    check-cast v7, Landroid/view/View;

    .line 221
    .line 222
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_d

    .line 227
    .line 228
    if-eqz p1, :cond_d

    .line 229
    .line 230
    const/high16 v8, -0x40800000    # -1.0f

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_d
    move v8, v2

    .line 234
    :goto_9
    invoke-static {v0, v7, v8, v1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 235
    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_e
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 242
    .line 243
    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    if-eqz p1, :cond_f

    .line 249
    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 251
    .line 252
    .line 253
    move-result-wide v4

    .line 254
    iput-wide v4, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->mFullscreenModeStartTime:J

    .line 255
    .line 256
    goto :goto_b

    .line 257
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v6

    .line 261
    iget-wide v1, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->mFullscreenModeStartTime:J

    .line 262
    .line 263
    sub-long/2addr v6, v1

    .line 264
    const-wide/16 v1, 0x3e8

    .line 265
    .line 266
    cmp-long v1, v6, v1

    .line 267
    .line 268
    if-gez v1, :cond_10

    .line 269
    .line 270
    const-string v5, "1"

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_10
    const-wide/16 v1, 0x7d0

    .line 274
    .line 275
    cmp-long v1, v6, v1

    .line 276
    .line 277
    if-gez v1, :cond_11

    .line 278
    .line 279
    const-string v5, "2"

    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_11
    const-wide/16 v1, 0xfa0

    .line 283
    .line 284
    cmp-long v1, v6, v1

    .line 285
    .line 286
    if-gez v1, :cond_12

    .line 287
    .line 288
    const-string v5, "3"

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_12
    const-wide/16 v1, 0x1b58

    .line 292
    .line 293
    cmp-long v1, v6, v1

    .line 294
    .line 295
    if-gez v1, :cond_13

    .line 296
    .line 297
    const-string v5, "4"

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_13
    const-wide/16 v1, 0x2710

    .line 301
    .line 302
    cmp-long v1, v6, v1

    .line 303
    .line 304
    if-gez v1, :cond_14

    .line 305
    .line 306
    const-string v5, "5"

    .line 307
    .line 308
    goto :goto_a

    .line 309
    :cond_14
    if-ltz v1, :cond_15

    .line 310
    .line 311
    const-string v5, "6"

    .line 312
    .line 313
    :cond_15
    :goto_a
    sget-object v1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 314
    .line 315
    const-string v2, "1011"

    .line 316
    .line 317
    invoke-static {v1, v2, v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_b
    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 326
    .line 327
    const/4 v4, 0x2

    .line 328
    if-eqz v2, :cond_17

    .line 329
    .line 330
    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 331
    .line 332
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v2, :cond_17

    .line 337
    .line 338
    const-string v2, "KeyguardFingerprint"

    .line 339
    .line 340
    if-eqz p1, :cond_16

    .line 341
    .line 342
    const-string/jumbo p1, "onFullScreenModeChanged is true. FP will be stop!"

    .line 343
    .line 344
    .line 345
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 349
    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_16
    const-string/jumbo p1, "onFullScreenModeChanged is false. FP will be start!"

    .line 353
    .line 354
    .line 355
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 359
    .line 360
    .line 361
    :cond_17
    :goto_c
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    .line 370
    .line 371
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 372
    .line 373
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 374
    .line 375
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 376
    .line 377
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSupportTouchAndHoldToEdit()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_18

    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_18
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_1a

    .line 389
    .line 390
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 391
    .line 392
    if-eqz v0, :cond_19

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 403
    .line 404
    if-nez v0, :cond_19

    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_19
    move v9, v3

    .line 408
    :cond_1a
    :goto_d
    if-eqz v9, :cond_1b

    .line 409
    .line 410
    goto :goto_e

    .line 411
    :cond_1b
    if-eqz p0, :cond_1c

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 422
    .line 423
    if-ne p0, v4, :cond_1c

    .line 424
    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    const v0, 0x7f131118

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    invoke-static {p1, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 441
    .line 442
    .line 443
    :cond_1c
    :goto_e
    return-void
.end method
