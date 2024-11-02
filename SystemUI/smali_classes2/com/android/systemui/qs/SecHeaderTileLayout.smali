.class public final Lcom/android/systemui/qs/SecHeaderTileLayout;
.super Lcom/android/systemui/qs/TileLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mClippingBounds:Landroid/graphics/Rect;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    const/4 v2, -0x2

    .line 24
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 29
    .line 30
    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;->updateResources()Z

    .line 51
    .line 52
    .line 53
    const-string/jumbo p1, "open_anim"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final addTileView(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;->updateResources()Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;->updateResources()Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    sub-int/2addr p4, p2

    .line 4
    const/4 p2, 0x0

    .line 5
    const/16 p3, 0x2710

    .line 6
    .line 7
    invoke-virtual {p1, p2, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p3, 0x1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 32
    .line 33
    mul-int/lit8 p5, p5, 0x2

    .line 34
    .line 35
    sub-int/2addr p4, p5

    .line 36
    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 37
    .line 38
    mul-int v0, p1, p5

    .line 39
    .line 40
    sub-int v0, p4, v0

    .line 41
    .line 42
    if-lez v0, :cond_1

    .line 43
    .line 44
    add-int/lit8 p4, p1, -0x1

    .line 45
    .line 46
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    div-int/2addr v0, p4

    .line 51
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 52
    .line 53
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-nez p5, :cond_2

    .line 57
    .line 58
    move p1, p3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    div-int p5, p4, p5

    .line 61
    .line 62
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-ne p1, p3, :cond_4

    .line 72
    .line 73
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 74
    .line 75
    sub-int/2addr p4, p1

    .line 76
    div-int/lit8 p4, p4, 0x2

    .line 77
    .line 78
    iput p4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 82
    .line 83
    mul-int/2addr p5, p1

    .line 84
    sub-int/2addr p4, p5

    .line 85
    div-int/2addr p4, p1

    .line 86
    iput p4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 87
    .line 88
    :goto_1
    move p1, p2

    .line 89
    :goto_2
    iget-object p4, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    const/16 p5, 0x8

    .line 96
    .line 97
    if-ge p1, p4, :cond_6

    .line 98
    .line 99
    iget-object p4, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    check-cast p4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 106
    .line 107
    iget-object p4, p4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 108
    .line 109
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 110
    .line 111
    if-ge p1, v0, :cond_5

    .line 112
    .line 113
    move p5, p2

    .line 114
    :cond_5
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 121
    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-lez p1, :cond_8

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    move-object p4, p0

    .line 137
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-ne v1, p5, :cond_7

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 159
    .line 160
    invoke-virtual {v0, p4}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    goto :goto_3

    .line 165
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 166
    .line 167
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 168
    .line 169
    iget-object p4, p1, Lcom/android/systemui/qs/SecTileLayout;->columnsSupplier:Ljava/util/function/IntSupplier;

    .line 170
    .line 171
    invoke-interface {p4}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 172
    .line 173
    .line 174
    move-result p4

    .line 175
    new-instance p5, Lcom/android/systemui/qs/SecTileLayout$Counter;

    .line 176
    .line 177
    iget-object v0, p1, Lcom/android/systemui/qs/SecTileLayout;->rowsSupplier:Ljava/util/function/IntSupplier;

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    mul-int/2addr v0, p4

    .line 184
    if-le p0, v0, :cond_9

    .line 185
    .line 186
    move p0, v0

    .line 187
    :cond_9
    invoke-direct {p5, p0, p4}, Lcom/android/systemui/qs/SecTileLayout$Counter;-><init>(II)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p1, Lcom/android/systemui/qs/SecTileLayout;->getLayoutDirectionSupplier:Ljava/util/function/IntSupplier;

    .line 191
    .line 192
    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-ne p0, p3, :cond_a

    .line 197
    .line 198
    move p0, p3

    .line 199
    goto :goto_4

    .line 200
    :cond_a
    move p0, p2

    .line 201
    :goto_4
    iget-object v0, p1, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget-object v2, p1, Lcom/android/systemui/qs/SecTileLayout;->cellHeightSupplier:Ljava/util/function/IntSupplier;

    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    :cond_b
    :goto_5
    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    .line 214
    .line 215
    iget v4, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->indices:I

    .line 216
    .line 217
    if-ge v3, v4, :cond_c

    .line 218
    .line 219
    move v3, p3

    .line 220
    goto :goto_6

    .line 221
    :cond_c
    move v3, p2

    .line 222
    :goto_6
    if-eqz v3, :cond_e

    .line 223
    .line 224
    if-eqz p0, :cond_d

    .line 225
    .line 226
    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    .line 227
    .line 228
    sub-int v3, p4, v3

    .line 229
    .line 230
    add-int/lit8 v3, v3, -0x1

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_d
    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    .line 234
    .line 235
    :goto_7
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    iget-object v5, p1, Lcom/android/systemui/qs/SecTileLayout;->cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

    .line 240
    .line 241
    invoke-interface {v5}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    add-int/2addr v5, v4

    .line 246
    mul-int/2addr v5, v3

    .line 247
    iget-object v3, p1, Lcom/android/systemui/qs/SecTileLayout;->sidePaddingSupplier:Ljava/util/function/IntSupplier;

    .line 248
    .line 249
    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    add-int/2addr v3, v5

    .line 254
    iget v4, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->row:I

    .line 255
    .line 256
    iget-object v5, p1, Lcom/android/systemui/qs/SecTileLayout;->getRowTopFunction:Ljava/util/function/IntFunction;

    .line 257
    .line 258
    invoke-interface {v5, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Ljava/lang/Integer;

    .line 263
    .line 264
    iget v5, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    .line 265
    .line 266
    iget-object v6, p1, Lcom/android/systemui/qs/SecTileLayout;->records:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    check-cast v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 273
    .line 274
    iget-object v5, v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    add-int v7, v1, v3

    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    add-int/2addr v4, v2

    .line 287
    invoke-virtual {v5, v3, v6, v7, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 288
    .line 289
    .line 290
    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    .line 291
    .line 292
    add-int/2addr v3, p3

    .line 293
    iput v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    .line 294
    .line 295
    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    .line 296
    .line 297
    add-int/2addr v3, p3

    .line 298
    iput v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    .line 299
    .line 300
    iget v4, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->columns:I

    .line 301
    .line 302
    if-ne v3, v4, :cond_b

    .line 303
    .line 304
    iput p2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    .line 305
    .line 306
    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->row:I

    .line 307
    .line 308
    add-int/2addr v3, p3

    .line 309
    iput v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->row:I

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_e
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 31
    .line 32
    const/high16 v2, 0x40000000    # 2.0f

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 39
    .line 40
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 51
    .line 52
    if-gez p2, :cond_2

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move p1, v1

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ge p1, v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 40
    .line 41
    sget-object v2, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {p2, v2, v1, v3, v0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 41
    .line 42
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelStartEndPadding(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 60
    .line 61
    :cond_0
    return v1
.end method
