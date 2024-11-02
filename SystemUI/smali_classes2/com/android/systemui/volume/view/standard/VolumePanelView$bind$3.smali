.class public final Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 10

    .line 1
    sget-object p1, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$showBlurRunnable$1;->INSTANCE:Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$showBlurRunnable$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const v1, 0x7f0a0cf4

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v1, 0x7f0a0cf1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ImageView;

    .line 27
    .line 28
    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 35
    .line 36
    new-instance v2, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;

    .line 37
    .line 38
    invoke-direct {v2, p1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;Landroid/widget/ImageView;)V

    .line 39
    .line 40
    .line 41
    move-object p1, v2

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 43
    .line 44
    iget-boolean v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const-string v4, "alpha"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x2

    .line 51
    const/high16 v7, 0x3f800000    # 1.0f

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget-object p0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 58
    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    move-object p0, v9

    .line 62
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move-object v9, v0

    .line 68
    :goto_1
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 83
    .line 84
    .line 85
    new-array v2, v6, [F

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    aput v9, v2, v5

    .line 92
    .line 93
    aput v7, v2, v3

    .line 94
    .line 95
    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-wide/16 v3, 0xc8

    .line 100
    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    .line 104
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 105
    .line 106
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    .line 111
    .line 112
    new-array v3, v6, [F

    .line 113
    .line 114
    fill-array-data v3, :array_0

    .line 115
    .line 116
    .line 117
    const-string/jumbo v4, "scaleX"

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewShowAnimation$scaleAnimator$1$1;

    .line 125
    .line 126
    invoke-direct {v4, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewShowAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 130
    .line 131
    .line 132
    const-wide/16 v4, 0x190

    .line 133
    .line 134
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    .line 136
    .line 137
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 138
    .line 139
    const v4, 0x3e6147ae    # 0.22f

    .line 140
    .line 141
    .line 142
    const/high16 v5, 0x3e800000    # 0.25f

    .line 143
    .line 144
    invoke-direct {v0, v4, v5, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 151
    .line 152
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 153
    .line 154
    .line 155
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 160
    .line 161
    .line 162
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewShowAnimation$1$1;

    .line 170
    .line 171
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewShowAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 178
    .line 179
    .line 180
    if-eqz v1, :cond_d

    .line 181
    .line 182
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_9

    .line 196
    .line 197
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 198
    .line 199
    iget-object v0, p1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 200
    .line 201
    if-nez v0, :cond_5

    .line 202
    .line 203
    move-object v0, v9

    .line 204
    :cond_5
    iget-object p1, p1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 205
    .line 206
    if-nez p1, :cond_6

    .line 207
    .line 208
    move-object p1, v9

    .line 209
    :cond_6
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 230
    .line 231
    .line 232
    new-array v0, v6, [F

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    aput v1, v0, v5

    .line 239
    .line 240
    aput v7, v0, v3

    .line 241
    .line 242
    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const-wide/16 v0, 0x64

    .line 247
    .line 248
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    .line 250
    .line 251
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 252
    .line 253
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 263
    .line 264
    iput-boolean v3, p1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isFirstTouch:Z

    .line 265
    .line 266
    iget-object v0, p1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 267
    .line 268
    if-nez v0, :cond_7

    .line 269
    .line 270
    move-object v0, v9

    .line 271
    :cond_7
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    sget-object v1, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    const-class v1, Landroid/os/PowerManager;

    .line 284
    .line 285
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    check-cast p1, Landroid/os/PowerManager;

    .line 290
    .line 291
    const-string v1, "AOD_VolumePanel"

    .line 292
    .line 293
    invoke-virtual {p1, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 298
    .line 299
    .line 300
    iput-object p1, v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 301
    .line 302
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 303
    .line 304
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 305
    .line 306
    if-nez p0, :cond_8

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_8
    move-object v9, p0

    .line 310
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-static {v3}, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;->requestAODVolumePanel(Z)V

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 318
    .line 319
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 320
    .line 321
    if-nez v0, :cond_a

    .line 322
    .line 323
    move-object v0, v9

    .line 324
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 325
    .line 326
    if-nez p0, :cond_b

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_b
    move-object v9, p0

    .line 330
    :goto_3
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 345
    .line 346
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 347
    .line 348
    invoke-direct {v2, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 349
    .line 350
    .line 351
    const/high16 v3, 0x43160000    # 150.0f

    .line 352
    .line 353
    const v4, 0x3f333333    # 0.7f

    .line 354
    .line 355
    .line 356
    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    iput-object v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 361
    .line 362
    invoke-virtual {p0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v7}, Landroid/view/View;->setScaleX(F)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v7}, Landroid/view/View;->setScaleY(F)V

    .line 369
    .line 370
    .line 371
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    .line 372
    .line 373
    if-eqz v3, :cond_c

    .line 374
    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    neg-int v3, v3

    .line 380
    goto :goto_4

    .line 381
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    :goto_4
    int-to-float v3, v3

    .line 386
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 387
    .line 388
    .line 389
    iput v8, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 390
    .line 391
    invoke-virtual {v2, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 392
    .line 393
    .line 394
    iput-object v2, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->singleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 395
    .line 396
    if-eqz v1, :cond_d

    .line 397
    .line 398
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 399
    .line 400
    .line 401
    :cond_d
    :goto_5
    return-void

    .line 402
    nop

    .line 403
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method
