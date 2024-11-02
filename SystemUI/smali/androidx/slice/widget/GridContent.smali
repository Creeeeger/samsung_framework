.class public final Landroidx/slice/widget/GridContent;
.super Landroidx/slice/widget/SliceContent;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAllImages:Z

.field public mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

.field public mFirstImageSize:Landroid/graphics/Point;

.field public final mGridContent:Ljava/util/ArrayList;

.field public mIsLastIndex:Z

.field public mLargestImageMode:I

.field public mMaxCellLineCount:I

.field public mPrimaryAction:Landroidx/slice/SliceItem;

.field public mSeeMoreItem:Landroidx/slice/SliceItem;

.field public mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    iput v2, v0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, v0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 20
    .line 21
    iput-object v2, v0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 22
    .line 23
    const-string/jumbo v3, "see_more"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iput-object v4, v0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const-string/jumbo v6, "slice"

    .line 34
    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    iget-object v4, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    iget-object v4, v0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-lez v7, :cond_0

    .line 63
    .line 64
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Landroidx/slice/SliceItem;

    .line 69
    .line 70
    iput-object v4, v0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 71
    .line 72
    :cond_0
    const-string/jumbo v4, "shortcut"

    .line 73
    .line 74
    .line 75
    const-string/jumbo v7, "title"

    .line 76
    .line 77
    .line 78
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string v7, "actions"

    .line 83
    .line 84
    filled-new-array {v7}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-static {v1, v6, v4, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iput-object v4, v0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    iput-boolean v4, v0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 96
    .line 97
    iget-object v7, v1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_8

    .line 104
    .line 105
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v6, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    move v7, v5

    .line 119
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    const-string v9, "content_description"

    .line 124
    .line 125
    if-ge v7, v8, :cond_6

    .line 126
    .line 127
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Landroidx/slice/SliceItem;

    .line 132
    .line 133
    invoke-static {v8, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    if-eqz v10, :cond_1

    .line 138
    .line 139
    move v10, v4

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    move v10, v5

    .line 142
    :goto_1
    if-nez v10, :cond_3

    .line 143
    .line 144
    const-string/jumbo v11, "shortcut"

    .line 145
    .line 146
    .line 147
    const-string/jumbo v12, "see_more"

    .line 148
    .line 149
    .line 150
    const-string v13, "keywords"

    .line 151
    .line 152
    const-string/jumbo v14, "ttl"

    .line 153
    .line 154
    .line 155
    const-string v15, "last_updated"

    .line 156
    .line 157
    const-string/jumbo v16, "overlay"

    .line 158
    .line 159
    .line 160
    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-virtual {v8, v10}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_2

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    move v10, v5

    .line 172
    goto :goto_3

    .line 173
    :cond_3
    :goto_2
    move v10, v4

    .line 174
    :goto_3
    iget-object v11, v8, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    if-eqz v9, :cond_4

    .line 181
    .line 182
    iput-object v8, v0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_4
    if-nez v10, :cond_5

    .line 186
    .line 187
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_6
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-ge v5, v1, :cond_9

    .line 198
    .line 199
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Landroidx/slice/SliceItem;

    .line 204
    .line 205
    iget-object v2, v1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-nez v2, :cond_7

    .line 212
    .line 213
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    .line 214
    .line 215
    invoke-direct {v2, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    .line 225
    .line 226
    invoke-direct {v2, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 230
    .line 231
    .line 232
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    .line 233
    .line 234
    .line 235
    return-void
.end method


# virtual methods
.method public final getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Landroid/graphics/Point;

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Landroid/graphics/Point;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 34
    .line 35
    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 36
    .line 37
    return-object p0
.end method

.method public final getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p2, p2, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    move p2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    iget v2, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 22
    .line 23
    iget-boolean v3, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 24
    .line 25
    iget-object v4, p1, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const/4 v5, 0x4

    .line 28
    if-eqz v3, :cond_6

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ne v3, v1, :cond_3

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    .line 41
    .line 42
    goto :goto_6

    .line 43
    :cond_2
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    .line 44
    .line 45
    goto :goto_6

    .line 46
    :cond_3
    if-nez v2, :cond_4

    .line 47
    .line 48
    goto :goto_5

    .line 49
    :cond_4
    if-ne v2, v5, :cond_5

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 56
    .line 57
    goto :goto_6

    .line 58
    :cond_5
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    .line 59
    .line 60
    goto :goto_6

    .line 61
    :cond_6
    iget v3, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 62
    .line 63
    if-le v3, v1, :cond_7

    .line 64
    .line 65
    move v3, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_7
    move v3, v0

    .line 68
    :goto_1
    iget-object v6, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 69
    .line 70
    if-eqz v6, :cond_8

    .line 71
    .line 72
    move v6, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_8
    move v6, v0

    .line 75
    :goto_2
    if-eqz v2, :cond_a

    .line 76
    .line 77
    const/4 v7, 0x5

    .line 78
    if-ne v2, v7, :cond_9

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_9
    move v7, v0

    .line 82
    goto :goto_4

    .line 83
    :cond_a
    :goto_3
    move v7, v1

    .line 84
    :goto_4
    if-ne v2, v5, :cond_c

    .line 85
    .line 86
    invoke-virtual {p0, v4}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 91
    .line 92
    if-eqz v3, :cond_b

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    :cond_b
    iget v2, p1, Landroidx/slice/widget/SliceStyle;->mGridRawImageTextHeight:I

    .line 96
    .line 97
    mul-int/2addr v1, v2

    .line 98
    add-int/2addr p2, v1

    .line 99
    goto :goto_6

    .line 100
    :cond_c
    if-eqz v3, :cond_d

    .line 101
    .line 102
    if-nez p2, :cond_d

    .line 103
    .line 104
    if-eqz v6, :cond_e

    .line 105
    .line 106
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_d
    if-eqz v7, :cond_f

    .line 110
    .line 111
    :cond_e
    :goto_5
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_f
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    .line 115
    .line 116
    :goto_6
    iget-boolean v1, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 117
    .line 118
    if-eqz v1, :cond_10

    .line 119
    .line 120
    iget v2, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    .line 121
    .line 122
    if-nez v2, :cond_10

    .line 123
    .line 124
    iget v2, p1, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_10
    move v2, v0

    .line 128
    :goto_7
    if-eqz v1, :cond_11

    .line 129
    .line 130
    iget-boolean p0, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    .line 131
    .line 132
    if-eqz p0, :cond_11

    .line 133
    .line 134
    iget v0, p1, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    .line 135
    .line 136
    :cond_11
    add-int/2addr p2, v2

    .line 137
    add-int/2addr v0, p2

    .line 138
    :goto_8
    return v0
.end method

.method public final isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v1, v2

    .line 22
    :goto_1
    return v1
.end method

.method public final processContent(Landroidx/slice/widget/GridContent$CellContent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p1, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v4, 0x3

    .line 20
    if-gt v0, v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v2

    .line 26
    :goto_1
    if-eqz v0, :cond_8

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p1, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ne v0, v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/slice/SliceItem;

    .line 54
    .line 55
    iget-object v0, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "image"

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    move v0, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v0, v1

    .line 68
    :goto_2
    if-nez v0, :cond_4

    .line 69
    .line 70
    iput-boolean v1, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 71
    .line 72
    :cond_4
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 73
    .line 74
    iget v3, p1, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 75
    .line 76
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 83
    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    iget-object v0, p1, Landroidx/slice/widget/GridContent$CellContent;->mImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    move v1, v2

    .line 91
    :cond_5
    if-eqz v1, :cond_6

    .line 92
    .line 93
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 94
    .line 95
    :cond_6
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 96
    .line 97
    const/4 v1, 0x5

    .line 98
    if-ne v0, v1, :cond_7

    .line 99
    .line 100
    iget p1, p1, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    iget p1, p1, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 104
    .line 105
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    :goto_3
    iput p1, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 110
    .line 111
    :cond_8
    return-void
.end method
