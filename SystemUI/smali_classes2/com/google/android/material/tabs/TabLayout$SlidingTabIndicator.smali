.class public final Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 14
    .line 15
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 16
    .line 17
    const/16 v3, 0xb

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    if-eq v2, v3, :cond_b

    .line 23
    .line 24
    const/16 v7, 0xc

    .line 25
    .line 26
    if-eq v2, v7, :cond_b

    .line 27
    .line 28
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 29
    .line 30
    if-eq v1, v6, :cond_1

    .line 31
    .line 32
    if-eq v2, v4, :cond_1

    .line 33
    .line 34
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mFirstTabGravity:I

    .line 35
    .line 36
    if-ne v0, v6, :cond_16

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 43
    .line 44
    iget v2, v1, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mFirstTabGravity:I

    .line 50
    .line 51
    if-ne v1, v6, :cond_2

    .line 52
    .line 53
    move v1, v5

    .line 54
    :goto_0
    if-ge v1, v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v8, -0x2

    .line 67
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    .line 69
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    .line 71
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v2, v7, p2}, Landroid/view/View;->measure(II)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v1, v5

    .line 82
    move v2, v1

    .line 83
    :goto_1
    if-ge v1, v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_3

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    if-gtz v2, :cond_5

    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/16 v7, 0x10

    .line 114
    .line 115
    invoke-static {v7, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(ILandroid/content/Context;)F

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    float-to-int v1, v1

    .line 120
    mul-int v7, v2, v0

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    mul-int/2addr v1, v4

    .line 127
    sub-int/2addr v8, v1

    .line 128
    if-gt v7, v8, :cond_a

    .line 129
    .line 130
    move v1, v5

    .line 131
    :goto_2
    if-ge v5, v0, :cond_8

    .line 132
    .line 133
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    .line 143
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 144
    .line 145
    if-ne v7, v2, :cond_6

    .line 146
    .line 147
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    .line 149
    cmpl-float v7, v7, v3

    .line 150
    .line 151
    if-eqz v7, :cond_7

    .line 152
    .line 153
    :cond_6
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 154
    .line 155
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 156
    .line 157
    move v1, v6

    .line 158
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 162
    .line 163
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 164
    .line 165
    if-nez v2, :cond_9

    .line 166
    .line 167
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mFirstTabGravity:I

    .line 168
    .line 169
    if-ne v2, v6, :cond_9

    .line 170
    .line 171
    iput v6, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 172
    .line 173
    :cond_9
    move v6, v1

    .line 174
    goto :goto_3

    .line 175
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 176
    .line 177
    iput v5, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 178
    .line 179
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 180
    .line 181
    .line 182
    :goto_3
    if-eqz v6, :cond_16

    .line 183
    .line 184
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_b

    .line 188
    .line 189
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->checkOverScreen()V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 193
    .line 194
    iget-boolean v2, v0, Lcom/google/android/material/tabs/TabLayout;->mIsOverScreen:Z

    .line 195
    .line 196
    if-eqz v2, :cond_c

    .line 197
    .line 198
    iget p1, v0, Lcom/google/android/material/tabs/TabLayout;->mOverScreenMaxWidth:I

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    new-array v2, v0, [I

    .line 210
    .line 211
    move v7, v5

    .line 212
    move v8, v7

    .line 213
    :goto_5
    if-ge v7, v0, :cond_e

    .line 214
    .line 215
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    if-nez v10, :cond_d

    .line 224
    .line 225
    iget-object v10, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 226
    .line 227
    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 228
    .line 229
    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    invoke-virtual {v9, v10, p2}, Landroid/view/View;->measure(II)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    iget-object v10, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 241
    .line 242
    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->mTabMinSideSpace:I

    .line 243
    .line 244
    mul-int/2addr v10, v4

    .line 245
    add-int/2addr v10, v9

    .line 246
    aput v10, v2, v7

    .line 247
    .line 248
    add-int/2addr v8, v10

    .line 249
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_e
    div-int v4, p1, v0

    .line 253
    .line 254
    if-le v8, p1, :cond_f

    .line 255
    .line 256
    :goto_6
    if-ge v5, v0, :cond_14

    .line 257
    .line 258
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 267
    .line 268
    aget v4, v2, v5

    .line 269
    .line 270
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 271
    .line 272
    add-int/lit8 v5, v5, 0x1

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_f
    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 276
    .line 277
    iget v7, v7, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 278
    .line 279
    if-ne v7, v3, :cond_12

    .line 280
    .line 281
    move v3, v5

    .line 282
    :goto_7
    if-ge v3, v0, :cond_11

    .line 283
    .line 284
    aget v7, v2, v3

    .line 285
    .line 286
    if-le v7, v4, :cond_10

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_11
    move v6, v5

    .line 293
    :cond_12
    :goto_8
    if-eqz v6, :cond_13

    .line 294
    .line 295
    sub-int v3, p1, v8

    .line 296
    .line 297
    div-int/2addr v3, v0

    .line 298
    :goto_9
    if-ge v5, v0, :cond_14

    .line 299
    .line 300
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    .line 310
    aget v6, v2, v5

    .line 311
    .line 312
    add-int/2addr v6, v3

    .line 313
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 314
    .line 315
    add-int/lit8 v5, v5, 0x1

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_13
    :goto_a
    if-ge v5, v0, :cond_14

    .line 319
    .line 320
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 329
    .line 330
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 331
    .line 332
    add-int/lit8 v5, v5, 0x1

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_14
    if-le v8, p1, :cond_15

    .line 336
    .line 337
    move p1, v8

    .line 338
    :cond_15
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 343
    .line 344
    .line 345
    :cond_16
    :goto_b
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
