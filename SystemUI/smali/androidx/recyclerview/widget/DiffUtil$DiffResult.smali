.class public final Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field public final mDetectMoves:Z

.field public final mDiagonals:Ljava/util/List;

.field public final mNewItemStatuses:[I

.field public final mNewListSize:I

.field public final mOldItemStatuses:[I

.field public final mOldListSize:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 12
    .line 13
    .line 14
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 30
    .line 31
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    if-eqz p4, :cond_0

    .line 38
    .line 39
    const/4 p4, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    check-cast p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 46
    .line 47
    :goto_0
    if-eqz p4, :cond_1

    .line 48
    .line 49
    iget p5, p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 50
    .line 51
    if-nez p5, :cond_1

    .line 52
    .line 53
    iget p4, p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 54
    .line 55
    if-eqz p4, :cond_2

    .line 56
    .line 57
    :cond_1
    new-instance p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 58
    .line 59
    invoke-direct {p4, v0, v0, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v0, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    new-instance p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 66
    .line 67
    invoke-direct {p4, p3, p1, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    iget-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 82
    .line 83
    iget-object p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 86
    .line 87
    if-eqz p3, :cond_5

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 94
    .line 95
    move v2, v0

    .line 96
    :goto_1
    iget v3, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 97
    .line 98
    if-ge v2, v3, :cond_3

    .line 99
    .line 100
    iget v3, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 101
    .line 102
    add-int/2addr v3, v2

    .line 103
    iget v4, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 104
    .line 105
    add-int/2addr v4, v2

    .line 106
    invoke-virtual {p4, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    const/4 v5, 0x1

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/4 v5, 0x2

    .line 115
    :goto_2
    shl-int/lit8 v6, v4, 0x4

    .line 116
    .line 117
    or-int/2addr v6, v5

    .line 118
    aput v6, v1, v3

    .line 119
    .line 120
    shl-int/lit8 v3, v3, 0x4

    .line 121
    .line 122
    or-int/2addr v3, v5

    .line 123
    aput v3, p5, v4

    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 129
    .line 130
    if-eqz p0, :cond_b

    .line 131
    .line 132
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    move p1, v0

    .line 137
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    if-eqz p3, :cond_b

    .line 142
    .line 143
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    check-cast p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 148
    .line 149
    :goto_4
    iget v2, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 150
    .line 151
    if-ge p1, v2, :cond_a

    .line 152
    .line 153
    aget v2, v1, p1

    .line 154
    .line 155
    if-nez v2, :cond_9

    .line 156
    .line 157
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    move v3, v0

    .line 162
    move v4, v3

    .line 163
    :goto_5
    if-ge v3, v2, :cond_9

    .line 164
    .line 165
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 170
    .line 171
    :goto_6
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 172
    .line 173
    if-ge v4, v6, :cond_8

    .line 174
    .line 175
    aget v6, p5, v4

    .line 176
    .line 177
    if-nez v6, :cond_7

    .line 178
    .line 179
    invoke-virtual {p4, p1, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_7

    .line 184
    .line 185
    invoke-virtual {p4, p1, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    const/16 v2, 0x8

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_6
    const/4 v2, 0x4

    .line 195
    :goto_7
    shl-int/lit8 v3, v4, 0x4

    .line 196
    .line 197
    or-int/2addr v3, v2

    .line 198
    aput v3, v1, p1

    .line 199
    .line 200
    shl-int/lit8 v3, p1, 0x4

    .line 201
    .line 202
    or-int/2addr v2, v3

    .line 203
    aput v2, p5, v4

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_8
    iget v4, v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 210
    .line 211
    add-int/2addr v4, v6

    .line 212
    add-int/lit8 v3, v3, 0x1

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_a
    iget p1, p3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 219
    .line 220
    add-int/2addr p1, v2

    .line 221
    goto :goto_3

    .line 222
    :cond_b
    return-void
.end method

.method public static getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 2

    .line 1
    check-cast p0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 18
    .line 19
    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 20
    .line 21
    if-ne v1, p1, :cond_0

    .line 22
    .line 23
    iget-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    .line 24
    .line 25
    if-ne v1, p2, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 47
    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    check-cast v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 15
    .line 16
    .line 17
    move-object v1, v2

    .line 18
    :goto_0
    new-instance v2, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    sub-int/2addr v4, v5

    .line 31
    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 32
    .line 33
    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 34
    .line 35
    move v8, v7

    .line 36
    move v7, v6

    .line 37
    :goto_1
    if-ltz v4, :cond_b

    .line 38
    .line 39
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 44
    .line 45
    iget v10, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 46
    .line 47
    iget v11, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 48
    .line 49
    add-int/2addr v10, v11

    .line 50
    iget v12, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 51
    .line 52
    add-int v13, v11, v12

    .line 53
    .line 54
    :goto_2
    const/4 v14, 0x0

    .line 55
    iget-object v15, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 56
    .line 57
    iget-object v5, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 58
    .line 59
    if-le v7, v10, :cond_4

    .line 60
    .line 61
    add-int/lit8 v7, v7, -0x1

    .line 62
    .line 63
    aget v15, v15, v7

    .line 64
    .line 65
    and-int/lit8 v16, v15, 0xc

    .line 66
    .line 67
    if-eqz v16, :cond_2

    .line 68
    .line 69
    move-object/from16 v16, v3

    .line 70
    .line 71
    shr-int/lit8 v3, v15, 0x4

    .line 72
    .line 73
    invoke-static {v2, v3, v14}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    if-eqz v14, :cond_1

    .line 78
    .line 79
    iget v14, v14, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 80
    .line 81
    sub-int v14, v6, v14

    .line 82
    .line 83
    move/from16 v17, v8

    .line 84
    .line 85
    const/4 v8, 0x1

    .line 86
    sub-int/2addr v14, v8

    .line 87
    invoke-virtual {v1, v7, v14}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 88
    .line 89
    .line 90
    and-int/lit8 v15, v15, 0x4

    .line 91
    .line 92
    if-eqz v15, :cond_3

    .line 93
    .line 94
    invoke-virtual {v5, v7, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v14, v8, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_1
    move/from16 v17, v8

    .line 103
    .line 104
    const/4 v8, 0x1

    .line 105
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 106
    .line 107
    sub-int v5, v6, v7

    .line 108
    .line 109
    sub-int/2addr v5, v8

    .line 110
    invoke-direct {v3, v7, v5, v8}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_2
    move-object/from16 v16, v3

    .line 118
    .line 119
    move/from16 v17, v8

    .line 120
    .line 121
    const/4 v8, 0x1

    .line 122
    invoke-virtual {v1, v7, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v6, v6, -0x1

    .line 126
    .line 127
    :cond_3
    :goto_3
    move-object/from16 v3, v16

    .line 128
    .line 129
    move/from16 v8, v17

    .line 130
    .line 131
    const/4 v5, 0x1

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move-object/from16 v16, v3

    .line 134
    .line 135
    move/from16 v17, v8

    .line 136
    .line 137
    :goto_4
    if-le v8, v13, :cond_8

    .line 138
    .line 139
    add-int/lit8 v8, v8, -0x1

    .line 140
    .line 141
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 142
    .line 143
    aget v3, v3, v8

    .line 144
    .line 145
    and-int/lit8 v10, v3, 0xc

    .line 146
    .line 147
    if-eqz v10, :cond_6

    .line 148
    .line 149
    shr-int/lit8 v10, v3, 0x4

    .line 150
    .line 151
    const/4 v14, 0x1

    .line 152
    invoke-static {v2, v10, v14}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-nez v0, :cond_5

    .line 157
    .line 158
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 159
    .line 160
    sub-int v3, v6, v7

    .line 161
    .line 162
    const/4 v10, 0x0

    .line 163
    invoke-direct {v0, v8, v3, v10}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move/from16 v17, v10

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_5
    const/16 v17, 0x0

    .line 173
    .line 174
    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 175
    .line 176
    sub-int v0, v6, v0

    .line 177
    .line 178
    sub-int/2addr v0, v14

    .line 179
    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 180
    .line 181
    .line 182
    and-int/lit8 v0, v3, 0x4

    .line 183
    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    invoke-virtual {v5, v10, v8}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v1, v7, v14, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_6
    move/from16 v17, v14

    .line 195
    .line 196
    const/4 v14, 0x1

    .line 197
    invoke-virtual {v1, v7, v14}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 201
    .line 202
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    .line 203
    .line 204
    move/from16 v14, v17

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    move/from16 v17, v14

    .line 208
    .line 209
    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 210
    .line 211
    move v0, v7

    .line 212
    move v3, v12

    .line 213
    :goto_6
    if-ge v14, v11, :cond_a

    .line 214
    .line 215
    aget v8, v15, v0

    .line 216
    .line 217
    and-int/lit8 v8, v8, 0xf

    .line 218
    .line 219
    const/4 v9, 0x2

    .line 220
    if-ne v8, v9, :cond_9

    .line 221
    .line 222
    invoke-virtual {v5, v0, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    const/4 v9, 0x1

    .line 227
    invoke-virtual {v1, v0, v9, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_9
    const/4 v9, 0x1

    .line 232
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 233
    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    .line 236
    add-int/lit8 v14, v14, 0x1

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_a
    const/4 v9, 0x1

    .line 240
    add-int/lit8 v4, v4, -0x1

    .line 241
    .line 242
    move-object/from16 v0, p0

    .line 243
    .line 244
    move v5, v9

    .line 245
    move v8, v12

    .line 246
    move-object/from16 v3, v16

    .line 247
    .line 248
    goto/16 :goto_1

    .line 249
    .line 250
    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 251
    .line 252
    .line 253
    return-void
.end method
