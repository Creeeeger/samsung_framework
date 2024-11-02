.class public final Landroidx/slice/widget/ListContent;
.super Landroidx/slice/widget/SliceContent;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mHeaderContent:Landroidx/slice/widget/RowContent;

.field public mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

.field public final mRowItems:Ljava/util/ArrayList;

.field public mSeeMoreContent:Landroidx/slice/widget/RowContent;

.field public mSliceActions:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 7
    iget-object p1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    return-void
.end method

.method public static getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    instance-of v1, p0, Landroidx/slice/widget/GridContent;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    check-cast p0, Landroidx/slice/widget/RowContent;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v2, Landroidx/slice/core/SliceActionImpl;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object p0, v1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 28
    .line 29
    const-string p1, "action"

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 p0, 0x5

    .line 40
    :goto_1
    return p0

    .line 41
    :cond_3
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const/4 p0, 0x6

    .line 46
    return p0

    .line 47
    :cond_4
    const/4 v1, 0x3

    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    return v1

    .line 57
    :cond_5
    if-eqz p1, :cond_8

    .line 58
    .line 59
    if-eqz p2, :cond_8

    .line 60
    .line 61
    move p0, v0

    .line 62
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ge p0, p1, :cond_7

    .line 67
    .line 68
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroidx/slice/core/SliceAction;

    .line 73
    .line 74
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    return v1

    .line 81
    :cond_6
    add-int/lit8 p0, p0, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_7
    return v0

    .line 85
    :cond_8
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-lez p0, :cond_9

    .line 92
    .line 93
    move v0, v1

    .line 94
    :cond_9
    return v0
.end method


# virtual methods
.method public final getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p2, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget v0, p2, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p1, v2, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 27
    .line 28
    invoke-virtual {v3, p1, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :cond_1
    if-lez v0, :cond_2

    .line 37
    .line 38
    move v3, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v3, p1, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    .line 41
    .line 42
    :goto_0
    sub-int v4, v2, v3

    .line 43
    .line 44
    iget v5, p1, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    .line 45
    .line 46
    if-lt v4, v5, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    :goto_1
    if-eqz v1, :cond_4

    .line 51
    .line 52
    iget-boolean v1, p1, Landroidx/slice/widget/SliceStyle;->mExpandToAvailableHeight:Z

    .line 53
    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    move v2, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    if-gtz v0, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :goto_2
    iget-boolean v0, p2, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    .line 66
    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {p1, p0, v2, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iget-object p0, p0, Landroidx/slice/widget/DisplayedListItems;->mDisplayedItems:Ljava/util/List;

    .line 74
    .line 75
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    move p0, v2

    .line 81
    :goto_3
    return p0
.end method

.method public final getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_1
    const-string/jumbo v4, "shortcut"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v5, "title"

    .line 22
    .line 23
    .line 24
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v6, "action"

    .line 29
    .line 30
    invoke-static {v2, v6, v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string/jumbo v4, "text"

    .line 35
    .line 36
    .line 37
    const-string v7, "image"

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-static {v2, v7, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-static {v2, v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v8, v3

    .line 51
    move-object v9, v8

    .line 52
    :goto_0
    if-nez v2, :cond_3

    .line 53
    .line 54
    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 55
    .line 56
    invoke-static {v2, v6, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_3
    if-nez v8, :cond_4

    .line 61
    .line 62
    iget-object v6, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 63
    .line 64
    invoke-static {v6, v7, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    :cond_4
    if-nez v9, :cond_5

    .line 69
    .line 70
    iget-object v6, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 71
    .line 72
    invoke-static {v6, v4, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    :cond_5
    if-nez v8, :cond_6

    .line 77
    .line 78
    iget-object v5, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 79
    .line 80
    invoke-static {v5, v7, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    :cond_6
    if-nez v9, :cond_7

    .line 85
    .line 86
    iget-object v5, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 87
    .line 88
    invoke-static {v5, v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    :cond_7
    if-eqz v8, :cond_8

    .line 93
    .line 94
    invoke-static {v8}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    goto :goto_1

    .line 99
    :cond_8
    const/4 v4, 0x5

    .line 100
    :goto_1
    if-eqz v1, :cond_12

    .line 101
    .line 102
    iget-object v0, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 103
    .line 104
    const-string/jumbo v5, "slice"

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-nez v0, :cond_9

    .line 112
    .line 113
    goto/16 :goto_7

    .line 114
    .line 115
    :cond_9
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v8, :cond_a

    .line 124
    .line 125
    iget-object v5, v8, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v5, Landroidx/core/graphics/drawable/IconCompat;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_a
    move-object v5, v3

    .line 131
    :goto_2
    if-eqz v9, :cond_b

    .line 132
    .line 133
    iget-object v6, v9, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v6, Ljava/lang/CharSequence;

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_b
    move-object v6, v3

    .line 139
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    const/4 v9, 0x0

    .line 148
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    if-eqz v8, :cond_c

    .line 153
    .line 154
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_c
    move-object v8, v3

    .line 158
    :goto_4
    const/high16 v10, 0x4000000

    .line 159
    .line 160
    if-eqz v8, :cond_10

    .line 161
    .line 162
    if-nez v5, :cond_e

    .line 163
    .line 164
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 169
    .line 170
    if-eqz v5, :cond_d

    .line 171
    .line 172
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    goto :goto_5

    .line 183
    :cond_d
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 192
    .line 193
    invoke-static {v5, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    new-instance v11, Landroid/graphics/Canvas;

    .line 198
    .line 199
    invoke-direct {v11, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11}, Landroid/graphics/Canvas;->getWidth()I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    invoke-virtual {v4, v9, v9, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    :goto_5
    const/4 v5, 0x2

    .line 221
    move/from16 v17, v5

    .line 222
    .line 223
    move-object v5, v4

    .line 224
    move/from16 v4, v17

    .line 225
    .line 226
    :cond_e
    if-nez v6, :cond_f

    .line 227
    .line 228
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    :cond_f
    if-nez v2, :cond_10

    .line 233
    .line 234
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    if-eqz v7, :cond_10

    .line 241
    .line 242
    new-instance v2, Landroidx/slice/SliceItem;

    .line 243
    .line 244
    invoke-static {v1, v9, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 245
    .line 246
    .line 247
    move-result-object v12

    .line 248
    new-instance v7, Landroidx/slice/Slice$Builder;

    .line 249
    .line 250
    invoke-direct {v7, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    .line 254
    .line 255
    .line 256
    move-result-object v13

    .line 257
    const-string v14, "action"

    .line 258
    .line 259
    const/4 v15, 0x0

    .line 260
    new-array v0, v9, [Ljava/lang/String;

    .line 261
    .line 262
    move-object v11, v2

    .line 263
    move-object/from16 v16, v0

    .line 264
    .line 265
    invoke-direct/range {v11 .. v16}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_10
    if-nez v2, :cond_11

    .line 269
    .line 270
    new-instance v0, Landroid/content/Intent;

    .line 271
    .line 272
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-static {v1, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    new-instance v2, Landroidx/slice/SliceItem;

    .line 280
    .line 281
    const/4 v13, 0x0

    .line 282
    const-string v14, "action"

    .line 283
    .line 284
    const/4 v15, 0x0

    .line 285
    const/16 v16, 0x0

    .line 286
    .line 287
    move-object v11, v2

    .line 288
    invoke-direct/range {v11 .. v16}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_11
    if-eqz v6, :cond_13

    .line 292
    .line 293
    if-eqz v5, :cond_13

    .line 294
    .line 295
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    .line 296
    .line 297
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-direct {v0, v1, v5, v4, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_12
    if-eqz v8, :cond_13

    .line 306
    .line 307
    if-eqz v2, :cond_13

    .line 308
    .line 309
    if-eqz v9, :cond_13

    .line 310
    .line 311
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    .line 312
    .line 313
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iget-object v2, v8, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v2, Landroidx/core/graphics/drawable/IconCompat;

    .line 320
    .line 321
    iget-object v3, v9, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v3, Ljava/lang/CharSequence;

    .line 324
    .line 325
    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    :goto_6
    move-object v2, v0

    .line 329
    goto :goto_8

    .line 330
    :cond_13
    :goto_7
    move-object v2, v3

    .line 331
    :goto_8
    return-object v2
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
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

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

.method public final populate(Landroidx/slice/Slice;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v2, "slice"

    .line 9
    .line 10
    .line 11
    const-string v3, "actions"

    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-string/jumbo v5, "shortcut"

    .line 18
    .line 19
    .line 20
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-static {v4, v2, v6, v7}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v4, v7

    .line 33
    :goto_0
    const/4 v6, 0x0

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    new-instance v8, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    move v9, v6

    .line 46
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-ge v9, v10, :cond_3

    .line 51
    .line 52
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Landroidx/slice/SliceItem;

    .line 57
    .line 58
    new-instance v11, Landroidx/slice/core/SliceActionImpl;

    .line 59
    .line 60
    invoke-direct {v11, v10}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v9, v9, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object v8, v7

    .line 70
    :cond_3
    iput-object v8, v0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 71
    .line 72
    const-string v9, "list_item"

    .line 73
    .line 74
    const-string/jumbo v10, "shortcut"

    .line 75
    .line 76
    .line 77
    const-string v11, "actions"

    .line 78
    .line 79
    const-string v12, "keywords"

    .line 80
    .line 81
    const-string/jumbo v13, "ttl"

    .line 82
    .line 83
    .line 84
    const-string v14, "last_updated"

    .line 85
    .line 86
    const-string v15, "horizontal"

    .line 87
    .line 88
    const-string/jumbo v16, "selection_option"

    .line 89
    .line 90
    .line 91
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v1, v2, v7, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const/4 v8, 0x1

    .line 100
    const-string v9, "keywords"

    .line 101
    .line 102
    const-string/jumbo v10, "see_more"

    .line 103
    .line 104
    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    iget-object v11, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_4

    .line 114
    .line 115
    filled-new-array {v3, v9, v10}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-virtual {v4, v11}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_4

    .line 124
    .line 125
    const-string/jumbo v11, "text"

    .line 126
    .line 127
    .line 128
    invoke-static {v4, v11, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    if-eqz v11, :cond_4

    .line 133
    .line 134
    move v11, v8

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    move v11, v6

    .line 137
    :goto_2
    if-eqz v11, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move-object v4, v7

    .line 141
    :goto_3
    iget-object v11, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 142
    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    new-instance v12, Landroidx/slice/widget/RowContent;

    .line 146
    .line 147
    invoke-direct {v12, v4, v6}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 148
    .line 149
    .line 150
    iput-object v12, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 151
    .line 152
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_6
    filled-new-array {v10}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v1, v7, v7, v4}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    const-string v12, "action"

    .line 164
    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    iget-object v13, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-eqz v13, :cond_8

    .line 174
    .line 175
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v7}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-ne v13, v8, :cond_7

    .line 188
    .line 189
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    check-cast v13, Landroidx/slice/SliceItem;

    .line 194
    .line 195
    iget-object v13, v13, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_7

    .line 202
    .line 203
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    move-object v7, v4

    .line 208
    check-cast v7, Landroidx/slice/SliceItem;

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    move-object v7, v4

    .line 212
    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    .line 213
    .line 214
    new-instance v4, Landroidx/slice/widget/RowContent;

    .line 215
    .line 216
    const/4 v13, -0x1

    .line 217
    invoke-direct {v4, v7, v13}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 218
    .line 219
    .line 220
    iput-object v4, v0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    .line 221
    .line 222
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move v4, v6

    .line 227
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-ge v4, v7, :cond_e

    .line 232
    .line 233
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    check-cast v7, Landroidx/slice/SliceItem;

    .line 238
    .line 239
    iget-object v13, v7, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 240
    .line 241
    const-string/jumbo v14, "ttl"

    .line 242
    .line 243
    .line 244
    const-string v15, "last_updated"

    .line 245
    .line 246
    filled-new-array {v3, v10, v9, v14, v15}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    invoke-virtual {v7, v14}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-nez v14, :cond_d

    .line 255
    .line 256
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v14

    .line 260
    if-nez v14, :cond_a

    .line 261
    .line 262
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    if-eqz v13, :cond_d

    .line 267
    .line 268
    :cond_a
    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 269
    .line 270
    const-string v14, "list_item"

    .line 271
    .line 272
    if-nez v13, :cond_b

    .line 273
    .line 274
    invoke-virtual {v7, v14}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v13

    .line 278
    if-nez v13, :cond_b

    .line 279
    .line 280
    new-instance v13, Landroidx/slice/widget/RowContent;

    .line 281
    .line 282
    invoke-direct {v13, v7, v6}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 283
    .line 284
    .line 285
    iput-object v13, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 286
    .line 287
    invoke-virtual {v11, v6, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_b
    invoke-virtual {v7, v14}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    if-eqz v13, :cond_d

    .line 296
    .line 297
    const-string v13, "horizontal"

    .line 298
    .line 299
    invoke-virtual {v7, v13}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v13

    .line 303
    if-eqz v13, :cond_c

    .line 304
    .line 305
    new-instance v13, Landroidx/slice/widget/GridContent;

    .line 306
    .line 307
    invoke-direct {v13, v7, v4}, Landroidx/slice/widget/GridContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_c
    new-instance v13, Landroidx/slice/widget/RowContent;

    .line 315
    .line 316
    invoke-direct {v13, v7, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    :cond_d
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_e
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 326
    .line 327
    if-nez v1, :cond_f

    .line 328
    .line 329
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-lt v1, v8, :cond_f

    .line 334
    .line 335
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    check-cast v1, Landroidx/slice/widget/RowContent;

    .line 340
    .line 341
    iput-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 342
    .line 343
    iput-boolean v8, v1, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 344
    .line 345
    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-lez v1, :cond_10

    .line 350
    .line 351
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    sub-int/2addr v1, v8

    .line 356
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    instance-of v1, v1, Landroidx/slice/widget/GridContent;

    .line 361
    .line 362
    if-eqz v1, :cond_10

    .line 363
    .line 364
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    sub-int/2addr v1, v8

    .line 369
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Landroidx/slice/widget/GridContent;

    .line 374
    .line 375
    iput-boolean v8, v1, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    .line 376
    .line 377
    :cond_10
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 378
    .line 379
    if-eqz v1, :cond_11

    .line 380
    .line 381
    iget-object v1, v1, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_11
    const/4 v1, 0x0

    .line 385
    :goto_7
    if-nez v1, :cond_12

    .line 386
    .line 387
    const-string/jumbo v1, "title"

    .line 388
    .line 389
    .line 390
    filled-new-array {v5, v1}, [Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 395
    .line 396
    const/4 v3, 0x0

    .line 397
    invoke-static {v2, v12, v1, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    goto :goto_8

    .line 402
    :cond_12
    const/4 v3, 0x0

    .line 403
    :goto_8
    if-nez v1, :cond_13

    .line 404
    .line 405
    iget-object v1, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 406
    .line 407
    invoke-static {v1, v12, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    :cond_13
    if-eqz v1, :cond_14

    .line 412
    .line 413
    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    .line 414
    .line 415
    invoke-direct {v3, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 416
    .line 417
    .line 418
    :cond_14
    iput-object v3, v0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    .line 419
    .line 420
    return-void
.end method
