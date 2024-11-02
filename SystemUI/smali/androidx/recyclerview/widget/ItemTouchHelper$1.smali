.class public final Landroidx/recyclerview/widget/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    .line 7
    if-eqz v2, :cond_c

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 14
    .line 15
    const-wide/high16 v6, -0x8000000000000000L

    .line 16
    .line 17
    cmp-long v8, v4, v6

    .line 18
    .line 19
    if-nez v8, :cond_0

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-long v4, v2, v4

    .line 25
    .line 26
    :goto_0
    iget-object v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    .line 30
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    if-nez v9, :cond_1

    .line 33
    .line 34
    new-instance v9, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    :cond_1
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 42
    .line 43
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 44
    .line 45
    iget-object v10, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {v8, v10, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    if-eqz v9, :cond_3

    .line 57
    .line 58
    iget v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 59
    .line 60
    iget v11, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 61
    .line 62
    add-float/2addr v9, v11

    .line 63
    float-to-int v9, v9

    .line 64
    iget-object v11, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    sub-int v11, v9, v11

    .line 69
    .line 70
    iget-object v12, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    sub-int/2addr v11, v12

    .line 77
    iget v12, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 78
    .line 79
    cmpg-float v13, v12, v10

    .line 80
    .line 81
    if-gez v13, :cond_2

    .line 82
    .line 83
    if-gez v11, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    cmpl-float v11, v12, v10

    .line 87
    .line 88
    if-lez v11, :cond_3

    .line 89
    .line 90
    iget-object v11, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 91
    .line 92
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    add-int/2addr v11, v9

    .line 99
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 100
    .line 101
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    add-int/2addr v11, v9

    .line 104
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    iget-object v12, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    sub-int/2addr v9, v12

    .line 117
    sub-int/2addr v11, v9

    .line 118
    if-lez v11, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move v11, v14

    .line 122
    :goto_1
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_5

    .line 127
    .line 128
    iget v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 129
    .line 130
    iget v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 131
    .line 132
    add-float/2addr v8, v9

    .line 133
    float-to-int v8, v8

    .line 134
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 135
    .line 136
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 137
    .line 138
    sub-int v9, v8, v9

    .line 139
    .line 140
    iget-object v12, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    sub-int/2addr v9, v12

    .line 147
    iget v12, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 148
    .line 149
    cmpg-float v13, v12, v10

    .line 150
    .line 151
    if-gez v13, :cond_4

    .line 152
    .line 153
    if-gez v9, :cond_4

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    cmpl-float v9, v12, v10

    .line 157
    .line 158
    if-lez v9, :cond_5

    .line 159
    .line 160
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 161
    .line 162
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    add-int/2addr v9, v8

    .line 169
    iget-object v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 170
    .line 171
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    add-int/2addr v9, v8

    .line 174
    iget-object v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    .line 176
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    iget-object v10, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    .line 182
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    sub-int/2addr v8, v10

    .line 187
    sub-int/2addr v9, v8

    .line 188
    if-lez v9, :cond_5

    .line 189
    .line 190
    :goto_2
    move v15, v9

    .line 191
    goto :goto_3

    .line 192
    :cond_5
    move v15, v14

    .line 193
    :goto_3
    if-eqz v11, :cond_6

    .line 194
    .line 195
    iget-object v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 196
    .line 197
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .line 199
    iget-object v10, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 200
    .line 201
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    iget-object v12, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    .line 209
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    .line 210
    .line 211
    .line 212
    move-wide v12, v4

    .line 213
    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    :cond_6
    move v12, v11

    .line 218
    if-eqz v15, :cond_7

    .line 219
    .line 220
    iget-object v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 221
    .line 222
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    .line 224
    iget-object v10, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 225
    .line 226
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 227
    .line 228
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    iget-object v11, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 233
    .line 234
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    .line 235
    .line 236
    .line 237
    move v11, v15

    .line 238
    move v15, v12

    .line 239
    move-wide v12, v4

    .line 240
    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    move v11, v15

    .line 245
    move v15, v4

    .line 246
    goto :goto_4

    .line 247
    :cond_7
    move v11, v12

    .line 248
    :goto_4
    if-nez v11, :cond_9

    .line 249
    .line 250
    if-eqz v15, :cond_8

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_8
    iput-wide v6, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_9
    :goto_5
    iget-wide v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 257
    .line 258
    cmp-long v4, v4, v6

    .line 259
    .line 260
    if-nez v4, :cond_a

    .line 261
    .line 262
    iput-wide v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 263
    .line 264
    :cond_a
    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    invoke-virtual {v1, v11, v15}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 267
    .line 268
    .line 269
    const/4 v14, 0x1

    .line 270
    :goto_6
    if-eqz v14, :cond_c

    .line 271
    .line 272
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 273
    .line 274
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 275
    .line 276
    if-eqz v2, :cond_b

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 279
    .line 280
    .line 281
    :cond_b
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 282
    .line 283
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    .line 285
    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/recyclerview/widget/ItemTouchHelper$1;

    .line 286
    .line 287
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 291
    .line 292
    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    .line 294
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 295
    .line 296
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 297
    .line 298
    .line 299
    :cond_c
    return-void
.end method
