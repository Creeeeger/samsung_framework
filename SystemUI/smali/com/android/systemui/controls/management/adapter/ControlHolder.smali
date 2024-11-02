.class public final Lcom/android/systemui/controls/management/adapter/ControlHolder;
.super Lcom/android/systemui/controls/management/adapter/Holder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final holders:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->holders:Ljava/util/Map;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/MainModel;)V
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 9
    .line 10
    if-eqz p1, :cond_1f

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v1, :cond_b

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    .line 34
    .line 35
    iget-object v8, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    iget-object v7, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    sget-object v9, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 52
    .line 53
    const v9, 0x7f0701f9

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    new-array v7, v2, [I

    .line 73
    .line 74
    invoke-virtual {v8, v7, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 78
    .line 79
    .line 80
    const/high16 v7, 0x3f800000    # 1.0f

    .line 81
    .line 82
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 83
    .line 84
    .line 85
    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 86
    .line 87
    const/16 v8, 0x8

    .line 88
    .line 89
    if-eqz v7, :cond_3

    .line 90
    .line 91
    iget-object v7, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 92
    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    iget-object v9, v7, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    sget-boolean v9, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    .line 104
    .line 105
    if-eqz v9, :cond_3

    .line 106
    .line 107
    iget-object v7, v7, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIconProgress:Landroid/widget/ProgressBar;

    .line 108
    .line 109
    if-nez v7, :cond_2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_0
    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    .line 116
    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    iget-object v7, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 120
    .line 121
    if-eqz v7, :cond_4

    .line 122
    .line 123
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    .line 127
    .line 128
    if-eqz v7, :cond_5

    .line 129
    .line 130
    iget-object v7, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 131
    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 138
    .line 139
    .line 140
    :cond_5
    iget-object v7, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 141
    .line 142
    if-eqz v7, :cond_6

    .line 143
    .line 144
    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_OVERLAY_CUSTOM_ICON:Z

    .line 145
    .line 146
    if-ne v7, v4, :cond_6

    .line 147
    .line 148
    move v7, v4

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    move v7, v2

    .line 151
    :goto_1
    if-eqz v7, :cond_7

    .line 152
    .line 153
    iget-object v7, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 154
    .line 155
    if-eqz v7, :cond_7

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    instance-of v7, v6, Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 164
    .line 165
    if-eqz v7, :cond_8

    .line 166
    .line 167
    move-object v7, v6

    .line 168
    check-cast v7, Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 169
    .line 170
    invoke-virtual {v7}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    instance-of v7, v7, Landroid/service/controls/templates/StatelessTemplate;

    .line 175
    .line 176
    if-nez v7, :cond_a

    .line 177
    .line 178
    :cond_8
    iget-object v6, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;

    .line 179
    .line 180
    if-eqz v6, :cond_9

    .line 181
    .line 182
    invoke-interface {v6}, Lcom/android/systemui/controls/ui/CustomBehavior;->dispose()V

    .line 183
    .line 184
    .line 185
    iput-object v3, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;

    .line 186
    .line 187
    :cond_9
    iget-object v5, v5, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 188
    .line 189
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    .line 194
    .line 195
    move-object v6, v3

    .line 196
    :cond_a
    iput-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 197
    .line 198
    :cond_b
    iget-object v5, p1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 199
    .line 200
    if-nez v1, :cond_c

    .line 201
    .line 202
    iget-boolean v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    .line 203
    .line 204
    if-eqz v6, :cond_c

    .line 205
    .line 206
    goto/16 :goto_9

    .line 207
    .line 208
    :cond_c
    iput-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 215
    .line 216
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 217
    .line 218
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 219
    .line 220
    if-eqz v6, :cond_10

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    const/4 v9, 0x2

    .line 227
    if-ne v6, v9, :cond_d

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_d
    if-eqz p1, :cond_11

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    if-nez v1, :cond_11

    .line 247
    .line 248
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->chevronIcon:Landroid/widget/ImageView;

    .line 249
    .line 250
    if-nez v6, :cond_e

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->usePanel()Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_f

    .line 258
    .line 259
    move v7, v2

    .line 260
    goto :goto_2

    .line 261
    :cond_f
    const/4 v7, 0x4

    .line 262
    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_10
    :goto_3
    iget-object v6, v5, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    .line 267
    .line 268
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    iget-object v6, v5, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    .line 272
    .line 273
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    :cond_11
    :goto_4
    if-eqz p1, :cond_16

    .line 277
    .line 278
    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 279
    .line 280
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 281
    .line 282
    .line 283
    sget-boolean v6, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 284
    .line 285
    if-nez v6, :cond_12

    .line 286
    .line 287
    new-instance v6, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;

    .line 288
    .line 289
    invoke-direct {v6, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 293
    .line 294
    .line 295
    :cond_12
    iget-object p1, v5, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 298
    .line 299
    check-cast v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 300
    .line 301
    invoke-virtual {v6}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_13

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_13
    iget-object v7, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 309
    .line 310
    if-eqz v7, :cond_14

    .line 311
    .line 312
    iget-object v7, v7, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->controlId:Ljava/lang/String;

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_14
    move-object v7, v3

    .line 316
    :goto_5
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_16

    .line 321
    .line 322
    iget-object p1, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 323
    .line 324
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->showSettingsDialogIfNeeded(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    .line 328
    .line 329
    .line 330
    iget-object p1, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 331
    .line 332
    if-eqz p1, :cond_15

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->invoke()V

    .line 335
    .line 336
    .line 337
    :cond_15
    iput-object v3, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 338
    .line 339
    :cond_16
    :goto_6
    iget-boolean p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 340
    .line 341
    iput-boolean v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 342
    .line 343
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    iget v10, v10, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    .line 362
    .line 363
    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/systemui/controls/ui/ControlViewHolder;->findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;II)Ljava/util/function/Supplier;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-virtual {v0, v6, v7, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Ljava/util/function/Supplier;I)Lcom/android/systemui/controls/ui/Behavior;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    iput-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 372
    .line 373
    if-eqz v1, :cond_1c

    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    instance-of v7, v6, Lcom/android/systemui/controls/ui/CustomBehavior;

    .line 385
    .line 386
    if-eqz v7, :cond_17

    .line 387
    .line 388
    check-cast v6, Lcom/android/systemui/controls/ui/CustomBehavior;

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_17
    move-object v6, v3

    .line 392
    :goto_7
    iput-object v6, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;

    .line 393
    .line 394
    instance-of v7, v6, Lcom/android/systemui/controls/ui/CustomButtonBehavior;

    .line 395
    .line 396
    if-eqz v7, :cond_18

    .line 397
    .line 398
    move-object v3, v6

    .line 399
    check-cast v3, Lcom/android/systemui/controls/ui/CustomButtonBehavior;

    .line 400
    .line 401
    :cond_18
    if-eqz v3, :cond_1c

    .line 402
    .line 403
    invoke-interface {v3}, Lcom/android/systemui/controls/ui/CustomButtonBehavior;->getContentDescription()Ljava/lang/CharSequence;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    iget-object v6, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 408
    .line 409
    if-eqz v6, :cond_1a

    .line 410
    .line 411
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    if-lez v7, :cond_19

    .line 416
    .line 417
    move v7, v4

    .line 418
    goto :goto_8

    .line 419
    :cond_19
    move v7, v2

    .line 420
    :goto_8
    if-eqz v7, :cond_1a

    .line 421
    .line 422
    iput-object v3, v6, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionButtonDescription:Ljava/lang/CharSequence;

    .line 423
    .line 424
    invoke-virtual {v6}, Lcom/android/systemui/controls/ui/view/ActionIconView;->updateContentDescription()V

    .line 425
    .line 426
    .line 427
    :cond_1a
    iget-object v6, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 428
    .line 429
    iget-object v7, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 430
    .line 431
    iget-object v1, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    .line 432
    .line 433
    if-eqz v6, :cond_1b

    .line 434
    .line 435
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 440
    .line 441
    .line 442
    move-result-object v9

    .line 443
    iput-object v9, v6, Lcom/android/systemui/controls/ui/view/ActionIconView;->subTitle:Ljava/lang/CharSequence;

    .line 444
    .line 445
    iput-object v8, v6, Lcom/android/systemui/controls/ui/view/ActionIconView;->title:Ljava/lang/CharSequence;

    .line 446
    .line 447
    invoke-virtual {v6}, Lcom/android/systemui/controls/ui/view/ActionIconView;->updateContentDescription()V

    .line 448
    .line 449
    .line 450
    :cond_1b
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string/jumbo v8, "setCustomBehavior des = "

    .line 461
    .line 462
    .line 463
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v3, ", title = "

    .line 470
    .line 471
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v1, ", subtitle = "

    .line 478
    .line 479
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    const-string v3, "CustomControlViewHolder"

    .line 490
    .line 491
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    :cond_1c
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 495
    .line 496
    .line 497
    if-eqz p1, :cond_1d

    .line 498
    .line 499
    iget-boolean p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 500
    .line 501
    if-nez p1, :cond_1d

    .line 502
    .line 503
    move v2, v4

    .line 504
    :cond_1d
    if-eqz v2, :cond_1e

    .line 505
    .line 506
    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 507
    .line 508
    check-cast p1, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    .line 509
    .line 510
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 511
    .line 512
    .line 513
    :cond_1e
    :goto_9
    iget-object p1, v5, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 514
    .line 515
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->holders:Ljava/util/Map;

    .line 516
    .line 517
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    check-cast p0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 522
    .line 523
    :cond_1f
    return-void
.end method

.method public final updateDimStatus(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const v0, 0x7f07022a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
