.class public final Landroidx/leanback/widget/StaggeredGridDefault;
.super Landroidx/leanback/widget/StaggeredGrid;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/StaggeredGrid;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final appendVisibleItemsWithoutCache(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ltz v1, :cond_9

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-ge v1, v6, :cond_0

    .line 23
    .line 24
    return v4

    .line 25
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 26
    .line 27
    add-int/lit8 v6, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 34
    .line 35
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-gez v7, :cond_3

    .line 40
    .line 41
    move v8, v2

    .line 42
    move v7, v4

    .line 43
    :goto_0
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 44
    .line 45
    if-ge v7, v9, :cond_5

    .line 46
    .line 47
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 48
    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    :goto_1
    if-eq v8, v2, :cond_2

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 67
    .line 68
    if-eqz v8, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0, v7, v4, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(IZ[I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {p0, v7, v5, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(IZ[I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    :goto_2
    move v8, v7

    .line 80
    :cond_5
    :goto_3
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 81
    .line 82
    if-eqz v7, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-gt v7, v8, :cond_8

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-lt v7, v8, :cond_8

    .line 96
    .line 97
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 100
    .line 101
    if-ne v1, v7, :cond_8

    .line 102
    .line 103
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 104
    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    goto :goto_5

    .line 112
    :cond_7
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    :goto_5
    move v8, v1

    .line 117
    move v1, v4

    .line 118
    :cond_8
    move v7, v5

    .line 119
    goto :goto_8

    .line 120
    :cond_9
    iget v1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 121
    .line 122
    const/4 v6, -0x1

    .line 123
    if-eq v1, v6, :cond_a

    .line 124
    .line 125
    move v6, v1

    .line 126
    goto :goto_6

    .line 127
    :cond_a
    move v6, v4

    .line 128
    :goto_6
    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-lez v1, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 145
    .line 146
    add-int/2addr v1, v5

    .line 147
    goto :goto_7

    .line 148
    :cond_b
    move v1, v6

    .line 149
    :goto_7
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 150
    .line 151
    rem-int/2addr v1, v7

    .line 152
    move v7, v4

    .line 153
    move v8, v7

    .line 154
    :goto_8
    move v9, v4

    .line 155
    :goto_9
    iget v10, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 156
    .line 157
    if-ge v1, v10, :cond_1e

    .line 158
    .line 159
    if-eq v6, v0, :cond_1d

    .line 160
    .line 161
    if-nez p2, :cond_c

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-eqz v10, :cond_c

    .line 168
    .line 169
    goto/16 :goto_17

    .line 170
    .line 171
    :cond_c
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 172
    .line 173
    if-eqz v9, :cond_d

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    goto :goto_a

    .line 180
    :cond_d
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    :goto_a
    const v10, 0x7fffffff

    .line 185
    .line 186
    .line 187
    if-eq v9, v10, :cond_10

    .line 188
    .line 189
    if-ne v9, v2, :cond_e

    .line 190
    .line 191
    goto :goto_d

    .line 192
    :cond_e
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 193
    .line 194
    if-eqz v10, :cond_f

    .line 195
    .line 196
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 197
    .line 198
    :goto_b
    neg-int v10, v10

    .line 199
    goto :goto_c

    .line 200
    :cond_f
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 201
    .line 202
    :goto_c
    add-int/2addr v9, v10

    .line 203
    goto :goto_f

    .line 204
    :cond_10
    :goto_d
    if-nez v1, :cond_13

    .line 205
    .line 206
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 207
    .line 208
    if-eqz v9, :cond_11

    .line 209
    .line 210
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 211
    .line 212
    sub-int/2addr v9, v5

    .line 213
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    goto :goto_e

    .line 218
    :cond_11
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 219
    .line 220
    sub-int/2addr v9, v5

    .line 221
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    :goto_e
    if-eq v9, v10, :cond_15

    .line 226
    .line 227
    if-eq v9, v2, :cond_15

    .line 228
    .line 229
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 230
    .line 231
    if-eqz v10, :cond_12

    .line 232
    .line 233
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_12
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_13
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 240
    .line 241
    if-eqz v9, :cond_14

    .line 242
    .line 243
    add-int/lit8 v9, v1, -0x1

    .line 244
    .line 245
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    goto :goto_f

    .line 250
    :cond_14
    add-int/lit8 v9, v1, -0x1

    .line 251
    .line 252
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    :cond_15
    :goto_f
    add-int/lit8 v10, v6, 0x1

    .line 257
    .line 258
    invoke-virtual {p0, v6, v1, v9}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemToRow(III)I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v7, :cond_1b

    .line 263
    .line 264
    :goto_10
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 265
    .line 266
    if-eqz v11, :cond_16

    .line 267
    .line 268
    sub-int v11, v9, v6

    .line 269
    .line 270
    if-le v11, v8, :cond_1a

    .line 271
    .line 272
    goto :goto_11

    .line 273
    :cond_16
    add-int v11, v9, v6

    .line 274
    .line 275
    if-ge v11, v8, :cond_1a

    .line 276
    .line 277
    :goto_11
    if-eq v10, v0, :cond_19

    .line 278
    .line 279
    if-nez p2, :cond_17

    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    if-eqz v11, :cond_17

    .line 286
    .line 287
    goto :goto_13

    .line 288
    :cond_17
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 289
    .line 290
    if-eqz v11, :cond_18

    .line 291
    .line 292
    neg-int v6, v6

    .line 293
    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 294
    .line 295
    sub-int/2addr v6, v11

    .line 296
    goto :goto_12

    .line 297
    :cond_18
    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 298
    .line 299
    add-int/2addr v6, v11

    .line 300
    :goto_12
    add-int/2addr v9, v6

    .line 301
    add-int/lit8 v6, v10, 0x1

    .line 302
    .line 303
    invoke-virtual {p0, v10, v1, v9}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemToRow(III)I

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    move v12, v10

    .line 308
    move v10, v6

    .line 309
    move v6, v12

    .line 310
    goto :goto_10

    .line 311
    :cond_19
    :goto_13
    return v5

    .line 312
    :cond_1a
    :goto_14
    move v6, v10

    .line 313
    goto :goto_16

    .line 314
    :cond_1b
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 315
    .line 316
    if-eqz v6, :cond_1c

    .line 317
    .line 318
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    goto :goto_15

    .line 323
    :cond_1c
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    :goto_15
    move v7, v5

    .line 328
    move v8, v6

    .line 329
    goto :goto_14

    .line 330
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 331
    .line 332
    move v9, v5

    .line 333
    goto/16 :goto_9

    .line 334
    .line 335
    :cond_1d
    :goto_17
    return v9

    .line 336
    :cond_1e
    if-eqz p2, :cond_1f

    .line 337
    .line 338
    return v9

    .line 339
    :cond_1f
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 340
    .line 341
    if-eqz v1, :cond_20

    .line 342
    .line 343
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    goto :goto_18

    .line 348
    :cond_20
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    :goto_18
    move v8, v1

    .line 353
    move v1, v4

    .line 354
    goto/16 :goto_9
.end method

.method public final findRowEdgeLimitSearchIndex(Z)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 6
    .line 7
    :goto_0
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 8
    .line 9
    if-lt p1, v2, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 24
    .line 25
    sub-int/2addr v3, v0

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 33
    .line 34
    :goto_2
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 35
    .line 36
    if-gt p1, v2, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 43
    .line 44
    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 45
    .line 46
    sub-int/2addr v3, v0

    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    .line 49
    move v1, v0

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    return p1

    .line 56
    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    const/4 p0, -0x1

    .line 60
    return p0
.end method

.method public final findRowMax(IZ[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 14
    .line 15
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    add-int/lit8 v1, p1, 0x1

    .line 21
    .line 22
    move v3, v2

    .line 23
    move v5, v3

    .line 24
    move v6, v4

    .line 25
    move v2, v1

    .line 26
    move v1, v0

    .line 27
    :goto_0
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 28
    .line 29
    if-ge v6, v7, :cond_7

    .line 30
    .line 31
    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 32
    .line 33
    if-gt v2, v7, :cond_7

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 40
    .line 41
    add-int/2addr v1, v8

    .line 42
    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 43
    .line 44
    if-eq v7, v5, :cond_2

    .line 45
    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    if-le v1, v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    if-ge v1, v0, :cond_1

    .line 54
    .line 55
    :goto_1
    move v0, v1

    .line 56
    move p1, v2

    .line 57
    move v3, v7

    .line 58
    move v5, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    move v5, v7

    .line 61
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 65
    .line 66
    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/2addr v3, v0

    .line 73
    add-int/lit8 v5, p1, -0x1

    .line 74
    .line 75
    move v7, v4

    .line 76
    move v6, v5

    .line 77
    move v5, v2

    .line 78
    move-object v2, v1

    .line 79
    move v1, v0

    .line 80
    move v0, v3

    .line 81
    move v3, v5

    .line 82
    :goto_3
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 83
    .line 84
    if-ge v7, v8, :cond_7

    .line 85
    .line 86
    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 87
    .line 88
    if-lt v6, v8, :cond_7

    .line 89
    .line 90
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 91
    .line 92
    sub-int/2addr v1, v2

    .line 93
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget v8, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 98
    .line 99
    if-eq v8, v5, :cond_6

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 104
    .line 105
    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    add-int/2addr v5, v1

    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    if-le v5, v0, :cond_5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    if-ge v5, v0, :cond_5

    .line 118
    .line 119
    :goto_4
    move v0, v5

    .line 120
    move p1, v6

    .line 121
    move v3, v8

    .line 122
    move v5, v3

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    move v5, v8

    .line 125
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    if-eqz p3, :cond_8

    .line 129
    .line 130
    const/4 p0, 0x0

    .line 131
    aput v3, p3, p0

    .line 132
    .line 133
    aput p1, p3, v4

    .line 134
    .line 135
    :cond_8
    return v0
.end method

.method public final findRowMin(IZ[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 14
    .line 15
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 21
    .line 22
    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int v3, v0, v3

    .line 29
    .line 30
    add-int/lit8 v5, p1, -0x1

    .line 31
    .line 32
    move v7, v4

    .line 33
    move v6, v5

    .line 34
    move v5, v3

    .line 35
    move v3, v2

    .line 36
    :goto_0
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 37
    .line 38
    if-ge v7, v8, :cond_8

    .line 39
    .line 40
    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 41
    .line 42
    if-lt v6, v8, :cond_8

    .line 43
    .line 44
    iget v1, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v8, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 52
    .line 53
    if-eq v8, v3, :cond_2

    .line 54
    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 58
    .line 59
    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 60
    .line 61
    invoke-virtual {v3, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sub-int v3, v0, v3

    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    if-le v3, v5, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    if-ge v3, v5, :cond_1

    .line 73
    .line 74
    :goto_1
    move v5, v3

    .line 75
    move p1, v6

    .line 76
    move v2, v8

    .line 77
    move v3, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    move v3, v8

    .line 80
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 84
    .line 85
    move v3, v2

    .line 86
    move v5, v3

    .line 87
    move v6, v4

    .line 88
    move v2, v1

    .line 89
    move v1, v0

    .line 90
    :goto_3
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 91
    .line 92
    if-ge v6, v7, :cond_7

    .line 93
    .line 94
    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 95
    .line 96
    if-gt v2, v7, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 103
    .line 104
    add-int/2addr v1, v8

    .line 105
    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 106
    .line 107
    if-eq v7, v5, :cond_6

    .line 108
    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    if-le v1, v0, :cond_5

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    if-ge v1, v0, :cond_5

    .line 117
    .line 118
    :goto_4
    move v0, v1

    .line 119
    move p1, v2

    .line 120
    move v3, v7

    .line 121
    move v5, v3

    .line 122
    goto :goto_5

    .line 123
    :cond_5
    move v5, v7

    .line 124
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move v5, v0

    .line 128
    move v2, v3

    .line 129
    :cond_8
    if-eqz p3, :cond_9

    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    aput v2, p3, p0

    .line 133
    .line 134
    aput p1, p3, v4

    .line 135
    .line 136
    :cond_9
    return v5
.end method

.method public final getRowMax(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 13
    .line 14
    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 27
    .line 28
    if-ne v2, p1, :cond_1

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 32
    .line 33
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-gt v2, v3, :cond_6

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 46
    .line 47
    add-int/2addr v0, v4

    .line 48
    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 49
    .line 50
    if-ne v3, p1, :cond_2

    .line 51
    .line 52
    return v0

    .line 53
    :cond_2
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 55
    .line 56
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 57
    .line 58
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 71
    .line 72
    if-ne v3, p1, :cond_4

    .line 73
    .line 74
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 75
    .line 76
    :goto_1
    add-int/2addr v0, p0

    .line 77
    return v0

    .line 78
    :cond_4
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 79
    .line 80
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    :goto_2
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 83
    .line 84
    if-lt v3, v4, :cond_6

    .line 85
    .line 86
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 87
    .line 88
    sub-int/2addr v0, v2

    .line 89
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 94
    .line 95
    if-ne v4, p1, :cond_5

    .line 96
    .line 97
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    return v1
.end method

.method public final getRowMin(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 10
    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 14
    .line 15
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 16
    .line 17
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 30
    .line 31
    if-ne v3, p1, :cond_1

    .line 32
    .line 33
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 34
    .line 35
    :goto_0
    sub-int/2addr v0, p0

    .line 36
    return v0

    .line 37
    :cond_1
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 38
    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    :goto_1
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 42
    .line 43
    if-lt v3, v4, :cond_6

    .line 44
    .line 45
    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 46
    .line 47
    sub-int/2addr v0, v2

    .line 48
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 53
    .line 54
    if-ne v4, p1, :cond_2

    .line 55
    .line 56
    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 63
    .line 64
    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 77
    .line 78
    if-ne v2, p1, :cond_4

    .line 79
    .line 80
    return v0

    .line 81
    :cond_4
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 82
    .line 83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-gt v2, v3, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 96
    .line 97
    add-int/2addr v0, v4

    .line 98
    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 99
    .line 100
    if-ne v3, p1, :cond_5

    .line 101
    .line 102
    return v0

    .line 103
    :cond_5
    goto :goto_2

    .line 104
    :cond_6
    return v1
.end method

.method public final prependVisibleItemsWithoutCache(IZ)Z
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ltz v0, :cond_9

    .line 10
    .line 11
    iget v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 12
    .line 13
    if-le v0, v5, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    add-int/lit8 v5, v0, -0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-gez v6, :cond_3

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 33
    .line 34
    sub-int/2addr v6, v4

    .line 35
    move v7, v1

    .line 36
    :goto_0
    if-ltz v6, :cond_5

    .line 37
    .line 38
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 39
    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    :goto_1
    if-eq v7, v1, :cond_2

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 58
    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0, v6, v4, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(IZ[I)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {p0, v6, v3, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(IZ[I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    :goto_2
    move v7, v6

    .line 71
    :cond_5
    :goto_3
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 72
    .line 73
    if-eqz v6, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-lt v6, v7, :cond_8

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-gt v6, v7, :cond_8

    .line 87
    .line 88
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 89
    .line 90
    if-gez v0, :cond_8

    .line 91
    .line 92
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 93
    .line 94
    sub-int/2addr v0, v4

    .line 95
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 96
    .line 97
    if-eqz v6, :cond_7

    .line 98
    .line 99
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    :goto_5
    move v7, v6

    .line 109
    :cond_8
    move v6, v4

    .line 110
    goto :goto_8

    .line 111
    :cond_9
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 112
    .line 113
    const/4 v5, -0x1

    .line 114
    if-eq v0, v5, :cond_a

    .line 115
    .line 116
    move v5, v0

    .line 117
    goto :goto_6

    .line 118
    :cond_a
    move v5, v3

    .line 119
    :goto_6
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-lez v0, :cond_b

    .line 126
    .line 127
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 134
    .line 135
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 136
    .line 137
    add-int/2addr v0, v6

    .line 138
    sub-int/2addr v0, v4

    .line 139
    goto :goto_7

    .line 140
    :cond_b
    move v0, v5

    .line 141
    :goto_7
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 142
    .line 143
    rem-int/2addr v0, v6

    .line 144
    move v6, v3

    .line 145
    move v7, v6

    .line 146
    :goto_8
    move v8, v3

    .line 147
    :goto_9
    if-ltz v0, :cond_1e

    .line 148
    .line 149
    if-ltz v5, :cond_1d

    .line 150
    .line 151
    if-nez p2, :cond_c

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_c

    .line 158
    .line 159
    goto/16 :goto_17

    .line 160
    .line 161
    :cond_c
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 162
    .line 163
    if-eqz v8, :cond_d

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    goto :goto_a

    .line 170
    :cond_d
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    :goto_a
    const/high16 v9, -0x80000000

    .line 175
    .line 176
    if-eq v8, v1, :cond_10

    .line 177
    .line 178
    if-ne v8, v9, :cond_e

    .line 179
    .line 180
    goto :goto_d

    .line 181
    :cond_e
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 182
    .line 183
    if-eqz v9, :cond_f

    .line 184
    .line 185
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 186
    .line 187
    goto :goto_c

    .line 188
    :cond_f
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 189
    .line 190
    :goto_b
    neg-int v9, v9

    .line 191
    :goto_c
    add-int/2addr v8, v9

    .line 192
    goto :goto_f

    .line 193
    :cond_10
    :goto_d
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 194
    .line 195
    sub-int/2addr v8, v4

    .line 196
    if-ne v0, v8, :cond_13

    .line 197
    .line 198
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 199
    .line 200
    if-eqz v8, :cond_11

    .line 201
    .line 202
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    goto :goto_e

    .line 207
    :cond_11
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    :goto_e
    if-eq v8, v1, :cond_15

    .line 212
    .line 213
    if-eq v8, v9, :cond_15

    .line 214
    .line 215
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 216
    .line 217
    if-eqz v9, :cond_12

    .line 218
    .line 219
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 220
    .line 221
    goto :goto_c

    .line 222
    :cond_12
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 223
    .line 224
    goto :goto_b

    .line 225
    :cond_13
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 226
    .line 227
    if-eqz v8, :cond_14

    .line 228
    .line 229
    add-int/lit8 v8, v0, 0x1

    .line 230
    .line 231
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    goto :goto_f

    .line 236
    :cond_14
    add-int/lit8 v8, v0, 0x1

    .line 237
    .line 238
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    :cond_15
    :goto_f
    add-int/lit8 v9, v5, -0x1

    .line 243
    .line 244
    invoke-virtual {p0, v5, v0, v8}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemToRow(III)I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v6, :cond_1b

    .line 249
    .line 250
    :goto_10
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 251
    .line 252
    if-eqz v10, :cond_16

    .line 253
    .line 254
    add-int v10, v8, v5

    .line 255
    .line 256
    if-ge v10, v7, :cond_1a

    .line 257
    .line 258
    goto :goto_11

    .line 259
    :cond_16
    sub-int v10, v8, v5

    .line 260
    .line 261
    if-le v10, v7, :cond_1a

    .line 262
    .line 263
    :goto_11
    if-ltz v9, :cond_19

    .line 264
    .line 265
    if-nez p2, :cond_17

    .line 266
    .line 267
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    if-eqz v10, :cond_17

    .line 272
    .line 273
    goto :goto_13

    .line 274
    :cond_17
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 275
    .line 276
    if-eqz v10, :cond_18

    .line 277
    .line 278
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 279
    .line 280
    add-int/2addr v5, v10

    .line 281
    goto :goto_12

    .line 282
    :cond_18
    neg-int v5, v5

    .line 283
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 284
    .line 285
    sub-int/2addr v5, v10

    .line 286
    :goto_12
    add-int/2addr v8, v5

    .line 287
    add-int/lit8 v5, v9, -0x1

    .line 288
    .line 289
    invoke-virtual {p0, v9, v0, v8}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemToRow(III)I

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    move v11, v9

    .line 294
    move v9, v5

    .line 295
    move v5, v11

    .line 296
    goto :goto_10

    .line 297
    :cond_19
    :goto_13
    return v4

    .line 298
    :cond_1a
    :goto_14
    move v5, v9

    .line 299
    goto :goto_16

    .line 300
    :cond_1b
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 301
    .line 302
    if-eqz v5, :cond_1c

    .line 303
    .line 304
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    goto :goto_15

    .line 309
    :cond_1c
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    :goto_15
    move v6, v4

    .line 314
    move v7, v5

    .line 315
    goto :goto_14

    .line 316
    :goto_16
    add-int/lit8 v0, v0, -0x1

    .line 317
    .line 318
    move v8, v4

    .line 319
    goto/16 :goto_9

    .line 320
    .line 321
    :cond_1d
    :goto_17
    return v8

    .line 322
    :cond_1e
    if-eqz p2, :cond_1f

    .line 323
    .line 324
    return v8

    .line 325
    :cond_1f
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 326
    .line 327
    if-eqz v0, :cond_20

    .line 328
    .line 329
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    goto :goto_18

    .line 334
    :cond_20
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    :goto_18
    move v7, v0

    .line 339
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 340
    .line 341
    sub-int/2addr v0, v4

    .line 342
    goto/16 :goto_9
.end method
