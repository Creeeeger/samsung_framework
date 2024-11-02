.class public final Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isRetryShowing:Z

.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->$isRetryShowing:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    iget-object v8, v0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 4
    .line 5
    iget-boolean v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 6
    .line 7
    const-string/jumbo v2, "show isTipPopupShowing = "

    .line 8
    .line 9
    .line 10
    const-string v3, "SearcleTipPopup"

    .line 11
    .line 12
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v1, :cond_33

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v8}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string/jumbo v1, "startOpenAnimatorSet : There is a tipLayout that has already been created, but it has not yet been attachedToWindowed"

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto/16 :goto_18

    .line 41
    .line 42
    :cond_1
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const v6, 0x7f0d032b

    .line 49
    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/android/systemui/searcle/SearcleTipView;

    .line 57
    .line 58
    iput-object v5, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 59
    .line 60
    iget-object v6, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->onAttachStateChangeListener:Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    new-instance v6, Lcom/android/systemui/searcle/SearcleTipPopup$startOpenAnimatorSet$1;

    .line 70
    .line 71
    invoke-direct {v6, v8}, Lcom/android/systemui/searcle/SearcleTipPopup$startOpenAnimatorSet$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    .line 72
    .line 73
    .line 74
    iput-object v6, v5, Lcom/android/systemui/searcle/SearcleTipView;->dismiss:Ljava/lang/Runnable;

    .line 75
    .line 76
    :cond_2
    iget-object v5, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    const v6, 0x7f0a0961

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroid/widget/TextView;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move-object v5, v7

    .line 91
    :goto_0
    iget-object v6, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 92
    .line 93
    if-nez v5, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_5

    .line 101
    .line 102
    const v9, 0x7f130ee1

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const v9, 0x7f130ee0

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 125
    .line 126
    const/4 v9, 0x2

    .line 127
    if-ne v5, v9, :cond_6

    .line 128
    .line 129
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_6

    .line 134
    .line 135
    move v5, v2

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    move v5, v4

    .line 138
    :goto_3
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    iget-object v11, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 143
    .line 144
    if-eqz v11, :cond_7

    .line 145
    .line 146
    sget v7, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->$r8$clinit:I

    .line 147
    .line 148
    invoke-virtual {v11, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v12, "getDirection position = "

    .line 159
    .line 160
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v10, ", taskbar enable = "

    .line 167
    .line 168
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 182
    .line 183
    iget-object v7, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->defaultDisplay:Landroid/view/Display;

    .line 184
    .line 185
    const/4 v10, 0x4

    .line 186
    const/4 v11, 0x5

    .line 187
    const/4 v12, 0x6

    .line 188
    const/4 v13, 0x3

    .line 189
    if-eqz v3, :cond_d

    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    if-eqz v14, :cond_8

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_8
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    if-eqz v14, :cond_c

    .line 203
    .line 204
    if-eq v14, v2, :cond_9

    .line 205
    .line 206
    if-eq v14, v9, :cond_b

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_9
    iget-object v9, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 210
    .line 211
    if-eqz v9, :cond_a

    .line 212
    .line 213
    sget v14, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->$r8$clinit:I

    .line 214
    .line 215
    invoke-virtual {v9, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-ne v9, v2, :cond_a

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_a
    move v2, v4

    .line 223
    :goto_4
    if-eqz v2, :cond_f

    .line 224
    .line 225
    :cond_b
    move v4, v10

    .line 226
    goto :goto_6

    .line 227
    :cond_c
    move v4, v11

    .line 228
    goto :goto_6

    .line 229
    :cond_d
    if-eqz v5, :cond_f

    .line 230
    .line 231
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-ne v4, v2, :cond_e

    .line 240
    .line 241
    move v4, v12

    .line 242
    goto :goto_6

    .line 243
    :cond_e
    const/4 v2, 0x7

    .line 244
    move v4, v2

    .line 245
    goto :goto_6

    .line 246
    :cond_f
    :goto_5
    move v4, v13

    .line 247
    :goto_6
    invoke-virtual {v8}, Lcom/android/systemui/searcle/SearcleTipPopup;->getBubbleLayout()Landroid/widget/LinearLayout;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    if-eqz v9, :cond_10

    .line 252
    .line 253
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    goto :goto_7

    .line 258
    :cond_10
    const/4 v2, 0x0

    .line 259
    :goto_7
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    const v15, 0x7f0714c1

    .line 266
    .line 267
    .line 268
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    if-eq v4, v13, :cond_15

    .line 273
    .line 274
    const v13, 0x7f0714c0

    .line 275
    .line 276
    .line 277
    if-eq v4, v10, :cond_14

    .line 278
    .line 279
    if-eq v4, v11, :cond_13

    .line 280
    .line 281
    if-eq v4, v12, :cond_12

    .line 282
    .line 283
    const/4 v10, 0x7

    .line 284
    if-eq v4, v10, :cond_11

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_11
    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_12
    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 292
    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_13
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 296
    .line 297
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 306
    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_14
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_15
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 324
    .line 325
    :goto_8
    if-eqz v3, :cond_1b

    .line 326
    .line 327
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    if-eqz v10, :cond_16

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_16
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    if-eqz v6, :cond_1a

    .line 339
    .line 340
    const/4 v10, 0x1

    .line 341
    if-eq v6, v10, :cond_17

    .line 342
    .line 343
    const/4 v10, 0x2

    .line 344
    if-eq v6, v10, :cond_19

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_17
    iget-object v6, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 348
    .line 349
    if-eqz v6, :cond_18

    .line 350
    .line 351
    sget v11, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->$r8$clinit:I

    .line 352
    .line 353
    const/4 v11, 0x0

    .line 354
    invoke-virtual {v6, v11}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    if-ne v6, v10, :cond_18

    .line 359
    .line 360
    const/4 v6, 0x1

    .line 361
    goto :goto_9

    .line 362
    :cond_18
    const/4 v6, 0x0

    .line 363
    :goto_9
    if-eqz v6, :cond_1d

    .line 364
    .line 365
    :cond_19
    const v6, 0x800055

    .line 366
    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_1a
    const v6, 0x800053

    .line 370
    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_1b
    if-eqz v5, :cond_1d

    .line 374
    .line 375
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    const/4 v10, 0x1

    .line 384
    if-ne v6, v10, :cond_1c

    .line 385
    .line 386
    const v6, 0x800015

    .line 387
    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_1c
    const v6, 0x800013

    .line 391
    .line 392
    .line 393
    goto :goto_b

    .line 394
    :cond_1d
    :goto_a
    const/16 v6, 0x51

    .line 395
    .line 396
    :goto_b
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 397
    .line 398
    if-eqz v3, :cond_1f

    .line 399
    .line 400
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 409
    .line 410
    const v6, 0x3e82a993    # 0.2552f

    .line 411
    .line 412
    .line 413
    const/4 v10, 0x2

    .line 414
    if-ne v2, v10, :cond_1e

    .line 415
    .line 416
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 425
    .line 426
    goto :goto_c

    .line 427
    :cond_1e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 436
    .line 437
    goto :goto_c

    .line 438
    :cond_1f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 447
    .line 448
    const v6, 0x3f70a3d7    # 0.94f

    .line 449
    .line 450
    .line 451
    const/4 v10, 0x2

    .line 452
    if-ne v2, v10, :cond_20

    .line 453
    .line 454
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 463
    .line 464
    goto :goto_c

    .line 465
    :cond_20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 474
    .line 475
    :goto_c
    int-to-float v2, v2

    .line 476
    mul-float/2addr v2, v6

    .line 477
    float-to-int v2, v2

    .line 478
    invoke-virtual {v8}, Lcom/android/systemui/searcle/SearcleTipPopup;->getBubbleLayout()Landroid/widget/LinearLayout;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    if-eqz v6, :cond_21

    .line 483
    .line 484
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 485
    .line 486
    .line 487
    move-result-object v6

    .line 488
    goto :goto_d

    .line 489
    :cond_21
    const/4 v6, 0x0

    .line 490
    :goto_d
    if-nez v6, :cond_22

    .line 491
    .line 492
    goto :goto_e

    .line 493
    :cond_22
    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 494
    .line 495
    :goto_e
    iget-object v6, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 496
    .line 497
    if-eqz v6, :cond_23

    .line 498
    .line 499
    const/4 v10, 0x0

    .line 500
    invoke-virtual {v6, v10, v10}, Landroid/widget/FrameLayout;->measure(II)V

    .line 501
    .line 502
    .line 503
    :cond_23
    iget-object v6, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 504
    .line 505
    if-eqz v6, :cond_24

    .line 506
    .line 507
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 508
    .line 509
    .line 510
    move-result v6

    .line 511
    goto :goto_f

    .line 512
    :cond_24
    const/4 v6, 0x0

    .line 513
    :goto_f
    invoke-virtual {v8}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    .line 514
    .line 515
    .line 516
    iget-object v10, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimList:Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 519
    .line 520
    .line 521
    iget-object v11, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimList:Ljava/util/ArrayList;

    .line 522
    .line 523
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 524
    .line 525
    .line 526
    new-instance v12, Landroid/animation/AnimatorSet;

    .line 527
    .line 528
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 529
    .line 530
    .line 531
    iput-object v12, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimSet:Landroid/animation/AnimatorSet;

    .line 532
    .line 533
    new-instance v12, Landroid/animation/AnimatorSet;

    .line 534
    .line 535
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 536
    .line 537
    .line 538
    iput-object v12, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimSet:Landroid/animation/AnimatorSet;

    .line 539
    .line 540
    const/high16 v12, 0x40000000    # 2.0f

    .line 541
    .line 542
    if-nez v9, :cond_25

    .line 543
    .line 544
    goto :goto_12

    .line 545
    :cond_25
    if-eqz v3, :cond_26

    .line 546
    .line 547
    goto :goto_10

    .line 548
    :cond_26
    if-eqz v5, :cond_28

    .line 549
    .line 550
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    const/4 v13, 0x1

    .line 559
    if-ne v7, v13, :cond_27

    .line 560
    .line 561
    int-to-float v2, v2

    .line 562
    goto :goto_11

    .line 563
    :cond_27
    const/4 v2, 0x0

    .line 564
    goto :goto_11

    .line 565
    :cond_28
    :goto_10
    int-to-float v2, v2

    .line 566
    div-float/2addr v2, v12

    .line 567
    :goto_11
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 568
    .line 569
    .line 570
    :goto_12
    if-nez v9, :cond_29

    .line 571
    .line 572
    goto :goto_15

    .line 573
    :cond_29
    if-eqz v3, :cond_2a

    .line 574
    .line 575
    goto :goto_13

    .line 576
    :cond_2a
    if-eqz v5, :cond_2b

    .line 577
    .line 578
    int-to-float v2, v6

    .line 579
    div-float/2addr v2, v12

    .line 580
    goto :goto_14

    .line 581
    :cond_2b
    :goto_13
    int-to-float v2, v6

    .line 582
    :goto_14
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 583
    .line 584
    .line 585
    :goto_15
    sget v5, Lcom/android/systemui/searcle/SearcleTipPopup;->POSITION_DURATION:I

    .line 586
    .line 587
    const/4 v6, 0x0

    .line 588
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    const v2, 0x7f0714c2

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    int-to-float v7, v1

    .line 600
    sget-object v12, Lcom/android/systemui/searcle/SearcleTipPopup;->ELASTIC_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 601
    .line 602
    move-object v1, v8

    .line 603
    move-object v2, v9

    .line 604
    move v3, v4

    .line 605
    move v4, v5

    .line 606
    move v5, v6

    .line 607
    move v6, v7

    .line 608
    move-object v7, v12

    .line 609
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/searcle/SearcleTipPopup;->makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    const/4 v3, 0x2

    .line 617
    sget v13, Lcom/android/systemui/searcle/SearcleTipPopup;->SCALE_DURATION:I

    .line 618
    .line 619
    sget v14, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 620
    .line 621
    sget v15, Lcom/android/systemui/searcle/SearcleTipPopup;->DEST_SCALE:F

    .line 622
    .line 623
    move-object v1, v8

    .line 624
    move v4, v13

    .line 625
    move v5, v14

    .line 626
    move v6, v15

    .line 627
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/searcle/SearcleTipPopup;->makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    const/4 v3, 0x1

    .line 635
    sget v4, Lcom/android/systemui/searcle/SearcleTipPopup;->BUBBLE_ALPHA_DURATION:I

    .line 636
    .line 637
    const/4 v5, 0x0

    .line 638
    const/high16 v6, 0x3f800000    # 1.0f

    .line 639
    .line 640
    sget-object v7, Lcom/android/systemui/searcle/SearcleTipPopup;->SINE_IN_OUT_70_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 641
    .line 642
    move-object v1, v8

    .line 643
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/searcle/SearcleTipPopup;->makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 651
    .line 652
    const v7, 0x7f0a0960

    .line 653
    .line 654
    .line 655
    if-eqz v1, :cond_2c

    .line 656
    .line 657
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    goto :goto_16

    .line 662
    :cond_2c
    const/4 v1, 0x0

    .line 663
    :goto_16
    move-object v2, v1

    .line 664
    const/4 v3, 0x1

    .line 665
    sget v4, Lcom/android/systemui/searcle/SearcleTipPopup;->TEXT_ALPHA_DURATION:I

    .line 666
    .line 667
    const/4 v5, 0x0

    .line 668
    const/high16 v6, 0x3f800000    # 1.0f

    .line 669
    .line 670
    sget-object v16, Lcom/android/systemui/searcle/SearcleTipPopup;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 671
    .line 672
    move-object v1, v8

    .line 673
    move v0, v7

    .line 674
    move-object/from16 v7, v16

    .line 675
    .line 676
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/searcle/SearcleTipPopup;->makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimSet:Landroid/animation/AnimatorSet;

    .line 684
    .line 685
    if-eqz v1, :cond_2d

    .line 686
    .line 687
    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 688
    .line 689
    .line 690
    :cond_2d
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimSet:Landroid/animation/AnimatorSet;

    .line 691
    .line 692
    if-eqz v1, :cond_2e

    .line 693
    .line 694
    new-instance v2, Lcom/android/systemui/searcle/SearcleTipPopup$OpenAnimatorListener;

    .line 695
    .line 696
    const-string v3, "OpenAnim"

    .line 697
    .line 698
    invoke-direct {v2, v8, v3}, Lcom/android/systemui/searcle/SearcleTipPopup$OpenAnimatorListener;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 702
    .line 703
    .line 704
    :cond_2e
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimSet:Landroid/animation/AnimatorSet;

    .line 705
    .line 706
    if-eqz v1, :cond_2f

    .line 707
    .line 708
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 709
    .line 710
    .line 711
    :cond_2f
    const/4 v3, 0x2

    .line 712
    move-object v1, v8

    .line 713
    move-object v2, v9

    .line 714
    move v4, v13

    .line 715
    move v5, v15

    .line 716
    move v6, v14

    .line 717
    move-object v7, v12

    .line 718
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/searcle/SearcleTipPopup;->makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    const/4 v3, 0x1

    .line 726
    const/high16 v5, 0x3f800000    # 1.0f

    .line 727
    .line 728
    const/4 v6, 0x0

    .line 729
    move-object v1, v8

    .line 730
    move-object/from16 v7, v16

    .line 731
    .line 732
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/searcle/SearcleTipPopup;->makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    iget-object v1, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 740
    .line 741
    if-eqz v1, :cond_30

    .line 742
    .line 743
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    goto :goto_17

    .line 748
    :cond_30
    const/4 v0, 0x0

    .line 749
    :goto_17
    move-object v2, v0

    .line 750
    const/4 v3, 0x1

    .line 751
    const/4 v4, 0x0

    .line 752
    move-object v1, v8

    .line 753
    move v5, v15

    .line 754
    move v6, v14

    .line 755
    move-object/from16 v7, v16

    .line 756
    .line 757
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/searcle/SearcleTipPopup;->makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    iget-object v0, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimSet:Landroid/animation/AnimatorSet;

    .line 765
    .line 766
    if-eqz v0, :cond_31

    .line 767
    .line 768
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 769
    .line 770
    .line 771
    :cond_31
    iget-object v0, v8, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimSet:Landroid/animation/AnimatorSet;

    .line 772
    .line 773
    if-eqz v0, :cond_32

    .line 774
    .line 775
    new-instance v1, Lcom/android/systemui/searcle/SearcleTipPopup$CloseAnimatorListener;

    .line 776
    .line 777
    const-string v2, "CloseAnim"

    .line 778
    .line 779
    invoke-direct {v1, v8, v2}, Lcom/android/systemui/searcle/SearcleTipPopup$CloseAnimatorListener;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 783
    .line 784
    .line 785
    :cond_32
    const/4 v0, 0x1

    .line 786
    goto :goto_19

    .line 787
    :cond_33
    :goto_18
    const/4 v0, 0x0

    .line 788
    :goto_19
    move-object/from16 v1, p0

    .line 789
    .line 790
    iget-boolean v2, v1, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->$isRetryShowing:Z

    .line 791
    .line 792
    if-nez v2, :cond_34

    .line 793
    .line 794
    if-eqz v0, :cond_34

    .line 795
    .line 796
    sget-object v0, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->INSTANCE:Lcom/android/systemui/searcle/SearcleTipPopupUtil;

    .line 797
    .line 798
    iget-object v1, v1, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 799
    .line 800
    iget-object v1, v1, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    .line 801
    .line 802
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    const-string v0, "SearcleTipCount"

    .line 806
    .line 807
    const/4 v2, 0x0

    .line 808
    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    add-int/lit8 v2, v2, 0x1

    .line 813
    .line 814
    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 815
    .line 816
    .line 817
    :cond_34
    return-void
.end method
