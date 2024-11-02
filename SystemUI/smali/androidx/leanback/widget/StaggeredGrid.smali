.class public abstract Landroidx/leanback/widget/StaggeredGrid;
.super Landroidx/leanback/widget/Grid;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mFirstIndex:I

.field public final mLocations:Landroidx/collection/CircularArray;

.field public mPendingItem:Ljava/lang/Object;

.field public mPendingItemSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/CircularArray;

    .line 5
    .line 6
    const/16 v1, 0x40

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/collection/CircularArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final appendVisbleItemsWithCache(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 12
    .line 13
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    const v5, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-ltz v3, :cond_1

    .line 26
    .line 27
    add-int/lit8 v6, v3, 0x1

    .line 28
    .line 29
    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 30
    .line 31
    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 32
    .line 33
    invoke-virtual {v7, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget v3, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 39
    .line 40
    const/4 v6, -0x1

    .line 41
    if-eq v3, v6, :cond_2

    .line 42
    .line 43
    move v6, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v6, v2

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v3, v4

    .line 51
    if-gt v6, v3, :cond_c

    .line 52
    .line 53
    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 54
    .line 55
    if-ge v6, v3, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-le v6, v3, :cond_4

    .line 63
    .line 64
    return v2

    .line 65
    :cond_4
    move v3, v5

    .line 66
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    :goto_2
    if-ge v6, v1, :cond_b

    .line 71
    .line 72
    if-gt v6, v7, :cond_b

    .line 73
    .line 74
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    if-eq v3, v5, :cond_5

    .line 79
    .line 80
    iget v9, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 81
    .line 82
    add-int/2addr v3, v9

    .line 83
    :cond_5
    iget v9, v8, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 84
    .line 85
    iget-object v10, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 86
    .line 87
    check-cast v10, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 88
    .line 89
    iget-object v11, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v10, v6, v4, v11, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    iget v12, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 96
    .line 97
    if-eq v10, v12, :cond_6

    .line 98
    .line 99
    iput v10, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 100
    .line 101
    sub-int/2addr v7, v6

    .line 102
    invoke-virtual {v0, v7}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    .line 103
    .line 104
    .line 105
    move v7, v6

    .line 106
    :cond_6
    iput v6, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 107
    .line 108
    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 109
    .line 110
    if-gez v8, :cond_7

    .line 111
    .line 112
    iput v6, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 113
    .line 114
    :cond_7
    iget-object v8, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 115
    .line 116
    aget-object v11, v11, v2

    .line 117
    .line 118
    check-cast v8, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 119
    .line 120
    invoke-virtual {v8, v11, v10, v9, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    .line 121
    .line 122
    .line 123
    if-nez p2, :cond_8

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    return v4

    .line 132
    :cond_8
    if-ne v3, v5, :cond_9

    .line 133
    .line 134
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 135
    .line 136
    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 137
    .line 138
    invoke-virtual {v3, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    :cond_9
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 143
    .line 144
    sub-int/2addr v8, v4

    .line 145
    if-ne v9, v8, :cond_a

    .line 146
    .line 147
    if-eqz p2, :cond_a

    .line 148
    .line 149
    return v4

    .line 150
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_b
    return v2

    .line 154
    :cond_c
    :goto_3
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    invoke-virtual {v0, p0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 159
    .line 160
    .line 161
    return v2
.end method

.method public final appendVisibleItemToRow(III)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 12
    .line 13
    add-int/lit8 v1, p1, -0x1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iget-object v2, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-gez v0, :cond_7

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/collection/CircularArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_6

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    if-ne p1, v0, :cond_6

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_1
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 50
    .line 51
    if-lt v0, v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget v4, v4, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 58
    .line 59
    if-ne v4, p2, :cond_2

    .line 60
    .line 61
    move v4, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v4, v3

    .line 67
    :goto_2
    if-nez v4, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :cond_4
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 74
    .line 75
    if-eqz v4, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 82
    .line 83
    neg-int v4, v4

    .line 84
    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 85
    .line 86
    sub-int/2addr v4, v5

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 93
    .line 94
    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 95
    .line 96
    add-int/2addr v4, v5

    .line 97
    :goto_3
    add-int/2addr v0, v1

    .line 98
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-gt v0, v5, :cond_8

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget v5, v5, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 109
    .line 110
    sub-int/2addr v4, v5

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move v4, v3

    .line 115
    goto :goto_5

    .line 116
    :cond_7
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 117
    .line 118
    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 119
    .line 120
    invoke-virtual {v4, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    sub-int v4, p3, v0

    .line 125
    .line 126
    :cond_8
    :goto_5
    new-instance v0, Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 127
    .line 128
    invoke-direct {v0, p2, v4, v3}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 129
    .line 130
    .line 131
    iget-object v4, v2, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 132
    .line 133
    iget v5, v2, Landroidx/collection/CircularArray;->tail:I

    .line 134
    .line 135
    aput-object v0, v4, v5

    .line 136
    .line 137
    add-int/2addr v5, v1

    .line 138
    iget v4, v2, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 139
    .line 140
    and-int/2addr v4, v5

    .line 141
    iput v4, v2, Landroidx/collection/CircularArray;->tail:I

    .line 142
    .line 143
    iget v5, v2, Landroidx/collection/CircularArray;->head:I

    .line 144
    .line 145
    if-ne v4, v5, :cond_9

    .line 146
    .line 147
    invoke-virtual {v2}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 151
    .line 152
    if-eqz v4, :cond_a

    .line 153
    .line 154
    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    .line 155
    .line 156
    iput v3, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    iput-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_a
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 163
    .line 164
    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 165
    .line 166
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 167
    .line 168
    invoke-virtual {v4, p1, v1, v5, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iput v4, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 173
    .line 174
    aget-object v4, v5, v3

    .line 175
    .line 176
    :goto_6
    invoke-virtual {v2}, Landroidx/collection/CircularArray;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-ne v2, v1, :cond_b

    .line 181
    .line 182
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 183
    .line 184
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 185
    .line 186
    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_b
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 190
    .line 191
    if-gez v2, :cond_c

    .line 192
    .line 193
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 194
    .line 195
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_c
    add-int/2addr v2, v1

    .line 199
    iput v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 200
    .line 201
    :goto_7
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 202
    .line 203
    iget p1, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 204
    .line 205
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 206
    .line 207
    invoke-virtual {p0, v4, p1, p2, p3}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    .line 208
    .line 209
    .line 210
    iget p0, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 211
    .line 212
    return p0
.end method

.method public final appendVisibleItems(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 4
    .line 5
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 44
    .line 45
    return p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 50
    .line 51
    throw p1
.end method

.method public abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    iput v0, v2, Landroidx/collection/CircularIntArray;->tail:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ltz p1, :cond_4

    .line 17
    .line 18
    :goto_1
    if-gt p1, p2, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 27
    .line 28
    aget-object v0, v0, v1

    .line 29
    .line 30
    iget v1, v0, Landroidx/collection/CircularIntArray;->tail:I

    .line 31
    .line 32
    add-int/lit8 v2, v1, 0x0

    .line 33
    .line 34
    iget v3, v0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    .line 35
    .line 36
    and-int/2addr v2, v3

    .line 37
    if-lez v2, :cond_3

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v2, v0, Landroidx/collection/CircularIntArray;->elements:[I

    .line 42
    .line 43
    add-int/lit8 v4, v1, -0x1

    .line 44
    .line 45
    and-int/2addr v3, v4

    .line 46
    aget v2, v2, v3

    .line 47
    .line 48
    add-int/lit8 v4, p1, -0x1

    .line 49
    .line 50
    if-ne v2, v4, :cond_3

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iput v3, v0, Landroidx/collection/CircularIntArray;->tail:I

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    .line 61
    .line 62
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_2
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    .line 69
    .line 70
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 80
    .line 81
    .line 82
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 86
    .line 87
    return-object p0
.end method

.method public final getLastIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/2addr p0, v0

    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 11
    .line 12
    return p0
.end method

.method public final bridge synthetic getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p0

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;
    .locals 2

    .line 2
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    .line 3
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    add-int/2addr v1, p1

    iget p0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    check-cast p0, Landroidx/leanback/widget/StaggeredGrid$Location;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    :cond_2
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    .line 8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final invalidateItemsAfter(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sub-int/2addr v0, p1

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/collection/CircularArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final prependVisbleItemsWithCache(IZ)Z
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 17
    .line 18
    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 19
    .line 20
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 31
    .line 32
    iget v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 33
    .line 34
    sub-int/2addr v5, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 37
    .line 38
    const/4 v4, -0x1

    .line 39
    if-eq v1, v4, :cond_2

    .line 40
    .line 41
    move v5, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v5, v2

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-gt v5, v1, :cond_a

    .line 49
    .line 50
    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 51
    .line 52
    add-int/lit8 v4, v1, -0x1

    .line 53
    .line 54
    if-ge v5, v4, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    if-ge v5, v1, :cond_4

    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    const v1, 0x7fffffff

    .line 61
    .line 62
    .line 63
    move v4, v2

    .line 64
    :goto_1
    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 65
    .line 66
    check-cast v6, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 67
    .line 68
    iget-object v6, v6, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 69
    .line 70
    iget v6, v6, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 71
    .line 72
    iget v7, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 73
    .line 74
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    :goto_2
    if-lt v5, v6, :cond_9

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    iget v8, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 85
    .line 86
    iget-object v9, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 87
    .line 88
    check-cast v9, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 89
    .line 90
    iget-object v10, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {v9, v5, v2, v10, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    iget v11, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 97
    .line 98
    if-eq v9, v11, :cond_5

    .line 99
    .line 100
    add-int/2addr v5, v3

    .line 101
    iget p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 102
    .line 103
    sub-int/2addr v5, p1

    .line 104
    invoke-virtual {v0, v5}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 105
    .line 106
    .line 107
    iget p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 108
    .line 109
    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 110
    .line 111
    aget-object p1, v10, v2

    .line 112
    .line 113
    iput-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 114
    .line 115
    iput v9, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    .line 116
    .line 117
    return v2

    .line 118
    :cond_5
    iput v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 119
    .line 120
    iget v11, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 121
    .line 122
    if-gez v11, :cond_6

    .line 123
    .line 124
    iput v5, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 125
    .line 126
    :cond_6
    iget-object v11, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 127
    .line 128
    aget-object v10, v10, v2

    .line 129
    .line 130
    sub-int/2addr v1, v4

    .line 131
    check-cast v11, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 132
    .line 133
    invoke-virtual {v11, v10, v9, v8, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    .line 134
    .line 135
    .line 136
    if-nez p2, :cond_7

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    return v3

    .line 145
    :cond_7
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 146
    .line 147
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 148
    .line 149
    invoke-virtual {v1, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    iget v4, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 154
    .line 155
    if-nez v8, :cond_8

    .line 156
    .line 157
    if-eqz p2, :cond_8

    .line 158
    .line 159
    return v3

    .line 160
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_9
    return v2

    .line 164
    :cond_a
    :goto_3
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    invoke-virtual {v0, p0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 169
    .line 170
    .line 171
    return v2
.end method

.method public final prependVisibleItemToRow(III)I
    .locals 8

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-ltz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v0, v1

    .line 31
    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 32
    .line 33
    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 34
    .line 35
    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    new-instance v3, Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v3, p2, v4, v4}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 45
    .line 46
    .line 47
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 48
    .line 49
    iget v6, v5, Landroidx/collection/CircularArray;->head:I

    .line 50
    .line 51
    add-int/lit8 v6, v6, -0x1

    .line 52
    .line 53
    iget v7, v5, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 54
    .line 55
    and-int/2addr v6, v7

    .line 56
    iput v6, v5, Landroidx/collection/CircularArray;->head:I

    .line 57
    .line 58
    iget-object v7, v5, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v3, v7, v6

    .line 61
    .line 62
    iget v7, v5, Landroidx/collection/CircularArray;->tail:I

    .line 63
    .line 64
    if-ne v6, v7, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    .line 74
    .line 75
    iput v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 76
    .line 77
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 81
    .line 82
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 83
    .line 84
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 91
    .line 92
    aget-object v5, v5, v4

    .line 93
    .line 94
    :goto_2
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 95
    .line 96
    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 97
    .line 98
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 99
    .line 100
    if-gez v1, :cond_5

    .line 101
    .line 102
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 103
    .line 104
    :cond_5
    iget-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 105
    .line 106
    if-nez p1, :cond_6

    .line 107
    .line 108
    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 109
    .line 110
    sub-int/2addr p3, p1

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 113
    .line 114
    add-int/2addr p3, p1

    .line 115
    :goto_3
    if-eqz v0, :cond_7

    .line 116
    .line 117
    sub-int/2addr v2, p3

    .line 118
    iput v2, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 119
    .line 120
    :cond_7
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 121
    .line 122
    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 123
    .line 124
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 125
    .line 126
    invoke-virtual {p0, v5, p1, p2, p3}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    .line 127
    .line 128
    .line 129
    iget p0, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 130
    .line 131
    return p0
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 4
    .line 5
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 44
    .line 45
    return p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 50
    .line 51
    throw p1
.end method

.method public abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
