.class public final Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# instance fields
.field public final layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public layoutHeightSpec:I

.field public layoutWidthSpec:I

.field public paddingBottom:I

.field public paddingHeight:I

.field public paddingTop:I

.field public paddingWidth:I

.field public final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    return-void
.end method

.method public static isSimilarSpec(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-ne p0, v2, :cond_2

    .line 23
    .line 24
    const/high16 p0, -0x80000000

    .line 25
    .line 26
    if-eq v1, p0, :cond_1

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    :cond_1
    if-ne p2, p1, :cond_2

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method


# virtual methods
.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 22
    .line 23
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 24
    .line 25
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 38
    .line 39
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 40
    .line 41
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 42
    .line 43
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 44
    .line 45
    add-int/2addr v8, v9

    .line 46
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 47
    .line 48
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v10, Landroid/view/View;

    .line 51
    .line 52
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    aget v12, v11, v12

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    const/4 v15, 0x2

    .line 62
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 63
    .line 64
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 65
    .line 66
    if-eq v12, v5, :cond_e

    .line 67
    .line 68
    if-eq v12, v15, :cond_d

    .line 69
    .line 70
    const/4 v6, 0x3

    .line 71
    if-eq v12, v6, :cond_a

    .line 72
    .line 73
    const/4 v6, 0x4

    .line 74
    if-eq v12, v6, :cond_3

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_3
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 80
    .line 81
    const/4 v12, -0x2

    .line 82
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 87
    .line 88
    if-ne v9, v5, :cond_4

    .line 89
    .line 90
    move v9, v5

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/4 v9, 0x0

    .line 93
    :goto_0
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 94
    .line 95
    if-eq v12, v5, :cond_5

    .line 96
    .line 97
    if-ne v12, v15, :cond_f

    .line 98
    .line 99
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-ne v12, v5, :cond_6

    .line 108
    .line 109
    const/4 v5, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const/4 v5, 0x0

    .line 112
    :goto_1
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 113
    .line 114
    if-eq v12, v15, :cond_9

    .line 115
    .line 116
    if-eqz v9, :cond_9

    .line 117
    .line 118
    if-eqz v9, :cond_7

    .line 119
    .line 120
    if-nez v5, :cond_9

    .line 121
    .line 122
    :cond_7
    instance-of v5, v10, Landroidx/constraintlayout/widget/Placeholder;

    .line 123
    .line 124
    if-nez v5, :cond_9

    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_8

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    const/4 v5, 0x0

    .line 134
    goto :goto_3

    .line 135
    :cond_9
    :goto_2
    const/4 v5, 0x1

    .line 136
    :goto_3
    if-eqz v5, :cond_f

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const/high16 v6, 0x40000000    # 2.0f

    .line 143
    .line 144
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    goto :goto_5

    .line 149
    :cond_a
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 150
    .line 151
    if-eqz v14, :cond_b

    .line 152
    .line 153
    iget v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 154
    .line 155
    const/4 v12, 0x0

    .line 156
    add-int/2addr v6, v12

    .line 157
    goto :goto_4

    .line 158
    :cond_b
    const/4 v6, 0x0

    .line 159
    :goto_4
    if-eqz v13, :cond_c

    .line 160
    .line 161
    iget v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 162
    .line 163
    add-int/2addr v6, v12

    .line 164
    :cond_c
    add-int/2addr v9, v6

    .line 165
    const/4 v6, -0x1

    .line 166
    invoke-static {v5, v9, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    goto :goto_5

    .line 171
    :cond_d
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 172
    .line 173
    const/4 v6, -0x2

    .line 174
    invoke-static {v5, v9, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    :goto_5
    move v6, v5

    .line 179
    goto :goto_6

    .line 180
    :cond_e
    const/high16 v5, 0x40000000    # 2.0f

    .line 181
    .line 182
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    :cond_f
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    aget v5, v11, v5

    .line 191
    .line 192
    const/4 v9, 0x1

    .line 193
    if-eq v5, v9, :cond_1b

    .line 194
    .line 195
    if-eq v5, v15, :cond_1a

    .line 196
    .line 197
    const/4 v7, 0x3

    .line 198
    if-eq v5, v7, :cond_17

    .line 199
    .line 200
    const/4 v7, 0x4

    .line 201
    if-eq v5, v7, :cond_10

    .line 202
    .line 203
    const/4 v5, 0x0

    .line 204
    goto/16 :goto_c

    .line 205
    .line 206
    :cond_10
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 207
    .line 208
    const/4 v7, -0x2

    .line 209
    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 214
    .line 215
    if-ne v7, v9, :cond_11

    .line 216
    .line 217
    move v7, v9

    .line 218
    goto :goto_7

    .line 219
    :cond_11
    const/4 v7, 0x0

    .line 220
    :goto_7
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 221
    .line 222
    if-eq v8, v9, :cond_12

    .line 223
    .line 224
    if-ne v8, v15, :cond_1c

    .line 225
    .line 226
    :cond_12
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-ne v8, v9, :cond_13

    .line 235
    .line 236
    const/4 v8, 0x1

    .line 237
    goto :goto_8

    .line 238
    :cond_13
    const/4 v8, 0x0

    .line 239
    :goto_8
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 240
    .line 241
    if-eq v9, v15, :cond_16

    .line 242
    .line 243
    if-eqz v7, :cond_16

    .line 244
    .line 245
    if-eqz v7, :cond_14

    .line 246
    .line 247
    if-nez v8, :cond_16

    .line 248
    .line 249
    :cond_14
    instance-of v7, v10, Landroidx/constraintlayout/widget/Placeholder;

    .line 250
    .line 251
    if-nez v7, :cond_16

    .line 252
    .line 253
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_15

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_15
    const/4 v7, 0x0

    .line 261
    goto :goto_a

    .line 262
    :cond_16
    :goto_9
    const/4 v7, 0x1

    .line 263
    :goto_a
    if-eqz v7, :cond_1c

    .line 264
    .line 265
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    const/high16 v7, 0x40000000    # 2.0f

    .line 270
    .line 271
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    goto :goto_c

    .line 276
    :cond_17
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 277
    .line 278
    if-eqz v14, :cond_18

    .line 279
    .line 280
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 281
    .line 282
    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 283
    .line 284
    const/4 v9, 0x0

    .line 285
    add-int/2addr v7, v9

    .line 286
    goto :goto_b

    .line 287
    :cond_18
    const/4 v7, 0x0

    .line 288
    :goto_b
    if-eqz v13, :cond_19

    .line 289
    .line 290
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 291
    .line 292
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 293
    .line 294
    add-int/2addr v7, v9

    .line 295
    :cond_19
    add-int/2addr v8, v7

    .line 296
    const/4 v7, -0x1

    .line 297
    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    goto :goto_c

    .line 302
    :cond_1a
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 303
    .line 304
    const/4 v7, -0x2

    .line 305
    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    goto :goto_c

    .line 310
    :cond_1b
    const/high16 v5, 0x40000000    # 2.0f

    .line 311
    .line 312
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    move v5, v7

    .line 317
    :cond_1c
    :goto_c
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 318
    .line 319
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 320
    .line 321
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 322
    .line 323
    if-eqz v7, :cond_1e

    .line 324
    .line 325
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 326
    .line 327
    const/16 v9, 0x100

    .line 328
    .line 329
    invoke-static {v8, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-eqz v8, :cond_1e

    .line 334
    .line 335
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    if-ne v8, v9, :cond_1e

    .line 344
    .line 345
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    if-ge v8, v9, :cond_1e

    .line 354
    .line 355
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    if-ne v8, v9, :cond_1e

    .line 364
    .line 365
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-ge v8, v7, :cond_1e

    .line 374
    .line 375
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 380
    .line 381
    if-ne v7, v8, :cond_1e

    .line 382
    .line 383
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-nez v7, :cond_1e

    .line 388
    .line 389
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 390
    .line 391
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    invoke-static {v7, v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    if-eqz v7, :cond_1d

    .line 400
    .line 401
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 402
    .line 403
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    invoke-static {v7, v5, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    if-eqz v7, :cond_1d

    .line 412
    .line 413
    const/4 v7, 0x1

    .line 414
    goto :goto_d

    .line 415
    :cond_1d
    const/4 v7, 0x0

    .line 416
    :goto_d
    if-eqz v7, :cond_1e

    .line 417
    .line 418
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 423
    .line 424
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 429
    .line 430
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 431
    .line 432
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 433
    .line 434
    return-void

    .line 435
    :cond_1e
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 436
    .line 437
    if-ne v3, v7, :cond_1f

    .line 438
    .line 439
    const/4 v8, 0x1

    .line 440
    goto :goto_e

    .line 441
    :cond_1f
    const/4 v8, 0x0

    .line 442
    :goto_e
    if-ne v4, v7, :cond_20

    .line 443
    .line 444
    const/4 v7, 0x1

    .line 445
    goto :goto_f

    .line 446
    :cond_20
    const/4 v7, 0x0

    .line 447
    :goto_f
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 448
    .line 449
    if-eq v4, v9, :cond_22

    .line 450
    .line 451
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 452
    .line 453
    if-ne v4, v11, :cond_21

    .line 454
    .line 455
    goto :goto_10

    .line 456
    :cond_21
    const/4 v12, 0x0

    .line 457
    goto :goto_11

    .line 458
    :cond_22
    :goto_10
    const/4 v12, 0x1

    .line 459
    :goto_11
    if-eq v3, v9, :cond_24

    .line 460
    .line 461
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 462
    .line 463
    if-ne v3, v4, :cond_23

    .line 464
    .line 465
    goto :goto_12

    .line 466
    :cond_23
    const/4 v3, 0x0

    .line 467
    goto :goto_13

    .line 468
    :cond_24
    :goto_12
    const/4 v3, 0x1

    .line 469
    :goto_13
    const/4 v4, 0x0

    .line 470
    if-eqz v8, :cond_25

    .line 471
    .line 472
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 473
    .line 474
    cmpl-float v9, v9, v4

    .line 475
    .line 476
    if-lez v9, :cond_25

    .line 477
    .line 478
    const/4 v9, 0x1

    .line 479
    goto :goto_14

    .line 480
    :cond_25
    const/4 v9, 0x0

    .line 481
    :goto_14
    if-eqz v7, :cond_26

    .line 482
    .line 483
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 484
    .line 485
    cmpl-float v4, v11, v4

    .line 486
    .line 487
    if-lez v4, :cond_26

    .line 488
    .line 489
    const/4 v4, 0x1

    .line 490
    goto :goto_15

    .line 491
    :cond_26
    const/4 v4, 0x0

    .line 492
    :goto_15
    if-nez v10, :cond_27

    .line 493
    .line 494
    return-void

    .line 495
    :cond_27
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 496
    .line 497
    .line 498
    move-result-object v11

    .line 499
    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 500
    .line 501
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 502
    .line 503
    const/4 v14, 0x1

    .line 504
    if-eq v13, v14, :cond_29

    .line 505
    .line 506
    if-eq v13, v15, :cond_29

    .line 507
    .line 508
    if-eqz v8, :cond_29

    .line 509
    .line 510
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 511
    .line 512
    if-nez v8, :cond_29

    .line 513
    .line 514
    if-eqz v7, :cond_29

    .line 515
    .line 516
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 517
    .line 518
    if-eqz v7, :cond_28

    .line 519
    .line 520
    goto :goto_16

    .line 521
    :cond_28
    const/4 v0, 0x0

    .line 522
    const/4 v3, -0x1

    .line 523
    const/4 v12, 0x0

    .line 524
    const/4 v13, 0x0

    .line 525
    const/4 v15, 0x0

    .line 526
    goto/16 :goto_1e

    .line 527
    .line 528
    :cond_29
    :goto_16
    instance-of v7, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 529
    .line 530
    if-eqz v7, :cond_2a

    .line 531
    .line 532
    instance-of v7, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 533
    .line 534
    if-eqz v7, :cond_2a

    .line 535
    .line 536
    move-object v7, v1

    .line 537
    check-cast v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 538
    .line 539
    move-object v8, v10

    .line 540
    check-cast v8, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 541
    .line 542
    invoke-virtual {v8, v7, v6, v5}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    .line 543
    .line 544
    .line 545
    goto :goto_17

    .line 546
    :cond_2a
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    .line 547
    .line 548
    .line 549
    :goto_17
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 550
    .line 551
    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 552
    .line 553
    const/4 v7, 0x0

    .line 554
    iput-boolean v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 555
    .line 556
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 565
    .line 566
    .line 567
    move-result v13

    .line 568
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 569
    .line 570
    if-lez v14, :cond_2b

    .line 571
    .line 572
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    .line 573
    .line 574
    .line 575
    move-result v14

    .line 576
    goto :goto_18

    .line 577
    :cond_2b
    move v14, v7

    .line 578
    :goto_18
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 579
    .line 580
    if-lez v15, :cond_2c

    .line 581
    .line 582
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    .line 583
    .line 584
    .line 585
    move-result v14

    .line 586
    :cond_2c
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 587
    .line 588
    if-lez v15, :cond_2d

    .line 589
    .line 590
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 591
    .line 592
    .line 593
    move-result v15

    .line 594
    move/from16 v16, v5

    .line 595
    .line 596
    goto :goto_19

    .line 597
    :cond_2d
    move/from16 v16, v5

    .line 598
    .line 599
    move v15, v8

    .line 600
    :goto_19
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 601
    .line 602
    if-lez v5, :cond_2e

    .line 603
    .line 604
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    .line 605
    .line 606
    .line 607
    move-result v15

    .line 608
    :cond_2e
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 609
    .line 610
    const/4 v5, 0x1

    .line 611
    invoke-static {v0, v5}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-nez v0, :cond_30

    .line 616
    .line 617
    const/high16 v0, 0x3f000000    # 0.5f

    .line 618
    .line 619
    if-eqz v9, :cond_2f

    .line 620
    .line 621
    if-eqz v12, :cond_2f

    .line 622
    .line 623
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 624
    .line 625
    int-to-float v4, v15

    .line 626
    mul-float/2addr v4, v3

    .line 627
    add-float/2addr v4, v0

    .line 628
    float-to-int v0, v4

    .line 629
    move v12, v0

    .line 630
    goto :goto_1a

    .line 631
    :cond_2f
    if-eqz v4, :cond_30

    .line 632
    .line 633
    if-eqz v3, :cond_30

    .line 634
    .line 635
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 636
    .line 637
    int-to-float v4, v14

    .line 638
    div-float/2addr v4, v3

    .line 639
    add-float/2addr v4, v0

    .line 640
    float-to-int v0, v4

    .line 641
    move v15, v0

    .line 642
    :cond_30
    move v12, v14

    .line 643
    :goto_1a
    if-ne v7, v12, :cond_32

    .line 644
    .line 645
    if-eq v8, v15, :cond_31

    .line 646
    .line 647
    goto :goto_1b

    .line 648
    :cond_31
    move v0, v12

    .line 649
    const/4 v3, -0x1

    .line 650
    const/4 v12, 0x0

    .line 651
    goto :goto_1e

    .line 652
    :cond_32
    :goto_1b
    if-eq v7, v12, :cond_33

    .line 653
    .line 654
    const/high16 v0, 0x40000000    # 2.0f

    .line 655
    .line 656
    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 657
    .line 658
    .line 659
    move-result v6

    .line 660
    goto :goto_1c

    .line 661
    :cond_33
    const/high16 v0, 0x40000000    # 2.0f

    .line 662
    .line 663
    :goto_1c
    if-eq v8, v15, :cond_34

    .line 664
    .line 665
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 666
    .line 667
    .line 668
    move-result v5

    .line 669
    goto :goto_1d

    .line 670
    :cond_34
    move/from16 v5, v16

    .line 671
    .line 672
    :goto_1d
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    .line 673
    .line 674
    .line 675
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 676
    .line 677
    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 678
    .line 679
    const/4 v12, 0x0

    .line 680
    iput-boolean v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 681
    .line 682
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    move v15, v3

    .line 695
    move v13, v4

    .line 696
    const/4 v3, -0x1

    .line 697
    :goto_1e
    if-eq v13, v3, :cond_35

    .line 698
    .line 699
    const/4 v3, 0x1

    .line 700
    goto :goto_1f

    .line 701
    :cond_35
    move v3, v12

    .line 702
    :goto_1f
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 703
    .line 704
    if-ne v0, v4, :cond_37

    .line 705
    .line 706
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 707
    .line 708
    if-eq v15, v4, :cond_36

    .line 709
    .line 710
    goto :goto_20

    .line 711
    :cond_36
    move v5, v12

    .line 712
    goto :goto_21

    .line 713
    :cond_37
    :goto_20
    const/4 v5, 0x1

    .line 714
    :goto_21
    iput-boolean v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 715
    .line 716
    iget-boolean v4, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 717
    .line 718
    if-eqz v4, :cond_38

    .line 719
    .line 720
    const/4 v9, 0x1

    .line 721
    goto :goto_22

    .line 722
    :cond_38
    move v9, v3

    .line 723
    :goto_22
    if-eqz v9, :cond_39

    .line 724
    .line 725
    const/4 v3, -0x1

    .line 726
    if-eq v13, v3, :cond_39

    .line 727
    .line 728
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 729
    .line 730
    if-eq v1, v13, :cond_39

    .line 731
    .line 732
    const/4 v1, 0x1

    .line 733
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 734
    .line 735
    :cond_39
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 736
    .line 737
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 738
    .line 739
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 740
    .line 741
    iput v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 742
    .line 743
    return-void
.end method
