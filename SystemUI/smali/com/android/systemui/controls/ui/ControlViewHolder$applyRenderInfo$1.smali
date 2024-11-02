.class final Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic $enabled:Z

.field final synthetic $fg:Landroid/content/res/ColorStateList;

.field final synthetic $newText:Ljava/lang/CharSequence;

.field final synthetic $ri:Lcom/android/systemui/controls/ui/RenderInfo;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    .line 10
    .line 11
    iget-object v4, v4, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateStatusRow$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 21
    .line 22
    if-eqz v1, :cond_2c

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    .line 41
    .line 42
    iget-object v5, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    .line 43
    .line 44
    iget-object v5, v5, Lcom/android/systemui/controls/ui/RenderInfo;->customRenderInfo$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/android/systemui/controls/ui/CustomRenderInfo;

    .line 51
    .line 52
    iget-object v5, v5, Lcom/android/systemui/controls/ui/CustomRenderInfo;->actionIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 61
    .line 62
    invoke-virtual {v7}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 67
    .line 68
    invoke-virtual {v8}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    sget-object v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    .line 73
    .line 74
    sget-object v10, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    .line 75
    .line 76
    sget-object v11, Lcom/android/systemui/controls/ui/CustomRenderInfo;->Companion:Lcom/android/systemui/controls/ui/CustomRenderInfo$Companion;

    .line 77
    .line 78
    iget-object v12, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 79
    .line 80
    iget-object v12, v12, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    sget-object v11, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->statusIconResourceMap:Ljava/util/Map;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/service/controls/CustomControl;->getStatusIconType()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Integer;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    sget-object v11, Lcom/android/systemui/controls/ui/CustomRenderInfo;->statusIconDrawableMap:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    check-cast v13, Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    if-nez v13, :cond_3

    .line 128
    .line 129
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-virtual {v13, v0, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-virtual {v11, v0, v13}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    const/4 v13, 0x0

    .line 146
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    if-nez v2, :cond_4

    .line 150
    .line 151
    goto/16 :goto_17

    .line 152
    .line 153
    :cond_4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getStatusTextColor()Landroid/content/res/ColorStateList;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    if-eqz v11, :cond_5

    .line 162
    .line 163
    iget-object v12, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->status:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    sget-boolean v11, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    .line 169
    .line 170
    const/4 v12, 0x0

    .line 171
    iget-object v14, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 172
    .line 173
    if-eqz v11, :cond_6

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutPadding()Z

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-eqz v11, :cond_6

    .line 180
    .line 181
    invoke-virtual {v14, v12, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 182
    .line 183
    .line 184
    :cond_6
    sget-boolean v11, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG:Z

    .line 185
    .line 186
    iget-object v3, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 187
    .line 188
    if-eqz v11, :cond_c

    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutShadowBg()Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    if-nez v11, :cond_c

    .line 195
    .line 196
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    iget v11, v11, Landroid/content/res/Configuration;->uiMode:I

    .line 205
    .line 206
    and-int/lit8 v11, v11, 0x30

    .line 207
    .line 208
    const/16 v12, 0x10

    .line 209
    .line 210
    if-ne v11, v12, :cond_c

    .line 211
    .line 212
    if-eqz v4, :cond_c

    .line 213
    .line 214
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    const v12, 0x7f080725

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    invoke-virtual {v11, v12, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    iget-object v12, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 230
    .line 231
    if-eqz v12, :cond_7

    .line 232
    .line 233
    sget-boolean v12, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    .line 234
    .line 235
    const/4 v15, 0x1

    .line 236
    if-ne v12, v15, :cond_8

    .line 237
    .line 238
    move v12, v15

    .line 239
    goto :goto_3

    .line 240
    :cond_7
    const/4 v15, 0x1

    .line 241
    :cond_8
    const/4 v12, 0x0

    .line 242
    :goto_3
    if-eqz v12, :cond_b

    .line 243
    .line 244
    iget-object v12, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 245
    .line 246
    if-eqz v12, :cond_9

    .line 247
    .line 248
    invoke-static {v3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-ne v12, v15, :cond_9

    .line 253
    .line 254
    const/4 v12, 0x1

    .line 255
    goto :goto_4

    .line 256
    :cond_9
    const/4 v12, 0x0

    .line 257
    :goto_4
    if-eqz v12, :cond_b

    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    const v15, 0x7f0701fc

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    instance-of v15, v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 271
    .line 272
    if-eqz v15, :cond_a

    .line 273
    .line 274
    move-object v15, v11

    .line 275
    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_a
    const/4 v15, 0x0

    .line 279
    :goto_5
    if-eqz v15, :cond_b

    .line 280
    .line 281
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 282
    .line 283
    move-object/from16 v16, v9

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 290
    .line 291
    .line 292
    move-result-object v15

    .line 293
    move-object/from16 v17, v10

    .line 294
    .line 295
    const/4 v10, 0x1

    .line 296
    invoke-static {v15, v12, v12, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    invoke-direct {v11, v9, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_b
    move-object/from16 v16, v9

    .line 305
    .line 306
    move-object/from16 v17, v10

    .line 307
    .line 308
    :goto_6
    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_c
    move-object/from16 v16, v9

    .line 313
    .line 314
    move-object/from16 v17, v10

    .line 315
    .line 316
    :goto_7
    if-eqz v4, :cond_d

    .line 317
    .line 318
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    const v9, 0x7f070230

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getFloat(I)F

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    goto :goto_8

    .line 330
    :cond_d
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    const v9, 0x7f07022f

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getFloat(I)F

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    :goto_8
    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 342
    .line 343
    .line 344
    sget-boolean v3, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 345
    .line 346
    const/16 v9, 0x8

    .line 347
    .line 348
    if-eqz v3, :cond_17

    .line 349
    .line 350
    sget-boolean v3, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 351
    .line 352
    if-eqz v3, :cond_e

    .line 353
    .line 354
    iget v3, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    .line 355
    .line 356
    const/4 v10, 0x1

    .line 357
    if-ne v3, v10, :cond_e

    .line 358
    .line 359
    const/4 v3, 0x1

    .line 360
    goto :goto_9

    .line 361
    :cond_e
    const/4 v3, 0x0

    .line 362
    :goto_9
    if-eqz v3, :cond_f

    .line 363
    .line 364
    goto :goto_d

    .line 365
    :cond_f
    iget-object v3, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 366
    .line 367
    if-eqz v3, :cond_17

    .line 368
    .line 369
    invoke-static {v6, v7, v8}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isCustomBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    iget-object v8, v3, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    .line 374
    .line 375
    if-eqz v6, :cond_16

    .line 376
    .line 377
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getActionIcon()Landroid/graphics/drawable/Icon;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    if-eqz v6, :cond_10

    .line 382
    .line 383
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 384
    .line 385
    .line 386
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 387
    .line 388
    goto :goto_a

    .line 389
    :cond_10
    const/4 v6, 0x0

    .line 390
    :goto_a
    if-nez v6, :cond_15

    .line 391
    .line 392
    const/4 v6, 0x0

    .line 393
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    instance-of v6, v5, Landroid/graphics/drawable/StateListDrawable;

    .line 397
    .line 398
    if-eqz v6, :cond_14

    .line 399
    .line 400
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    if-eqz v6, :cond_11

    .line 405
    .line 406
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    instance-of v6, v6, Landroid/graphics/drawable/StateListDrawable;

    .line 411
    .line 412
    if-nez v6, :cond_12

    .line 413
    .line 414
    :cond_11
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    .line 416
    .line 417
    :cond_12
    if-eqz v4, :cond_13

    .line 418
    .line 419
    move-object/from16 v5, v16

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_13
    move-object/from16 v5, v17

    .line 423
    .line 424
    :goto_b
    const/4 v6, 0x1

    .line 425
    invoke-virtual {v8, v5, v6}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 426
    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_14
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    .line 431
    .line 432
    :cond_15
    :goto_c
    iget-object v5, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    .line 433
    .line 434
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    iget-object v6, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 439
    .line 440
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    iput-object v6, v3, Lcom/android/systemui/controls/ui/view/ActionIconView;->subTitle:Ljava/lang/CharSequence;

    .line 445
    .line 446
    iput-object v5, v3, Lcom/android/systemui/controls/ui/view/ActionIconView;->title:Ljava/lang/CharSequence;

    .line 447
    .line 448
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/view/ActionIconView;->updateContentDescription()V

    .line 449
    .line 450
    .line 451
    const/4 v3, 0x0

    .line 452
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    goto :goto_d

    .line 456
    :cond_16
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    :cond_17
    :goto_d
    if-eqz v0, :cond_21

    .line 460
    .line 461
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 462
    .line 463
    if-eqz v0, :cond_18

    .line 464
    .line 465
    iget v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    .line 466
    .line 467
    const/4 v3, 0x1

    .line 468
    if-ne v0, v3, :cond_18

    .line 469
    .line 470
    const/4 v0, 0x1

    .line 471
    goto :goto_e

    .line 472
    :cond_18
    const/4 v0, 0x0

    .line 473
    :goto_e
    if-eqz v0, :cond_1f

    .line 474
    .line 475
    if-eqz v4, :cond_1d

    .line 476
    .line 477
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomStatusIcon()Landroid/graphics/drawable/Icon;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    if-eqz v0, :cond_1a

    .line 482
    .line 483
    iget-object v3, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 484
    .line 485
    if-eqz v3, :cond_19

    .line 486
    .line 487
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 488
    .line 489
    .line 490
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 491
    .line 492
    goto :goto_f

    .line 493
    :cond_19
    const/4 v0, 0x0

    .line 494
    :goto_f
    if-nez v0, :cond_1b

    .line 495
    .line 496
    :cond_1a
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 497
    .line 498
    if-eqz v0, :cond_1b

    .line 499
    .line 500
    const/4 v3, 0x0

    .line 501
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 502
    .line 503
    .line 504
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 505
    .line 506
    goto :goto_10

    .line 507
    :cond_1b
    const/4 v3, 0x0

    .line 508
    :goto_10
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    .line 509
    .line 510
    if-nez v0, :cond_1c

    .line 511
    .line 512
    goto :goto_11

    .line 513
    :cond_1c
    const/4 v4, 0x0

    .line 514
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    .line 516
    .line 517
    goto :goto_11

    .line 518
    :cond_1d
    const/4 v3, 0x0

    .line 519
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    .line 520
    .line 521
    if-nez v0, :cond_1e

    .line 522
    .line 523
    goto :goto_11

    .line 524
    :cond_1e
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    .line 526
    .line 527
    goto :goto_11

    .line 528
    :cond_1f
    const/4 v3, 0x0

    .line 529
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 530
    .line 531
    if-eqz v0, :cond_22

    .line 532
    .line 533
    sget-object v4, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    .line 534
    .line 535
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    if-eqz v4, :cond_20

    .line 540
    .line 541
    if-eqz v13, :cond_22

    .line 542
    .line 543
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    .line 545
    .line 546
    const/4 v4, 0x0

    .line 547
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    .line 549
    .line 550
    goto :goto_11

    .line 551
    :cond_20
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    .line 553
    .line 554
    goto :goto_11

    .line 555
    :cond_21
    const/4 v3, 0x0

    .line 556
    :cond_22
    :goto_11
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    .line 557
    .line 558
    if-eqz v0, :cond_26

    .line 559
    .line 560
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 561
    .line 562
    if-eqz v0, :cond_23

    .line 563
    .line 564
    iget v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    .line 565
    .line 566
    const/4 v4, 0x1

    .line 567
    if-ne v0, v4, :cond_23

    .line 568
    .line 569
    const/4 v15, 0x1

    .line 570
    goto :goto_12

    .line 571
    :cond_23
    const/4 v15, 0x0

    .line 572
    :goto_12
    if-eqz v15, :cond_24

    .line 573
    .line 574
    goto :goto_14

    .line 575
    :cond_24
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 576
    .line 577
    if-eqz v0, :cond_25

    .line 578
    .line 579
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 580
    .line 581
    iget-object v4, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 582
    .line 583
    iget-object v5, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 584
    .line 585
    iget-object v6, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 586
    .line 587
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationJson()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v20

    .line 591
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v21

    .line 595
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationStartFrame()I

    .line 596
    .line 597
    .line 598
    move-result v22

    .line 599
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationEndFrame()I

    .line 600
    .line 601
    .line 602
    move-result v23

    .line 603
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationRepeatCount()I

    .line 604
    .line 605
    .line 606
    move-result v24

    .line 607
    move-object/from16 v16, v0

    .line 608
    .line 609
    move-object/from16 v17, v4

    .line 610
    .line 611
    move-object/from16 v18, v5

    .line 612
    .line 613
    move-object/from16 v19, v6

    .line 614
    .line 615
    invoke-static/range {v16 .. v24}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->updateLottieIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/String;III)Lcom/airbnb/lottie/LottieAnimationView;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    goto :goto_13

    .line 620
    :cond_25
    move-object v0, v3

    .line 621
    :goto_13
    iput-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 622
    .line 623
    :cond_26
    :goto_14
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 624
    .line 625
    if-eqz v0, :cond_27

    .line 626
    .line 627
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_OVERLAY_CUSTOM_ICON:Z

    .line 628
    .line 629
    const/4 v4, 0x1

    .line 630
    if-ne v0, v4, :cond_27

    .line 631
    .line 632
    move v15, v4

    .line 633
    goto :goto_15

    .line 634
    :cond_27
    const/4 v15, 0x0

    .line 635
    :goto_15
    if-eqz v15, :cond_2c

    .line 636
    .line 637
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getOverlayCustomIcon()Landroid/graphics/drawable/Icon;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    if-eqz v0, :cond_2a

    .line 642
    .line 643
    iget-object v2, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 644
    .line 645
    if-eqz v2, :cond_28

    .line 646
    .line 647
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 648
    .line 649
    .line 650
    :cond_28
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 651
    .line 652
    if-nez v0, :cond_29

    .line 653
    .line 654
    goto :goto_16

    .line 655
    :cond_29
    const/4 v2, 0x0

    .line 656
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    .line 658
    .line 659
    :goto_16
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 660
    .line 661
    :cond_2a
    if-nez v3, :cond_2c

    .line 662
    .line 663
    iget-object v0, v1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 664
    .line 665
    if-nez v0, :cond_2b

    .line 666
    .line 667
    goto :goto_17

    .line 668
    :cond_2b
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 669
    .line 670
    .line 671
    :cond_2c
    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 672
    .line 673
    return-object v0
.end method
