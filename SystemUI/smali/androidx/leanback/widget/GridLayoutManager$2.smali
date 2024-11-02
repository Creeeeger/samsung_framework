.class public final Landroidx/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/leanback/widget/Grid$Provider;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addItem(Ljava/lang/Object;III)V
    .locals 8

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/view/View;

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 7
    .line 8
    if-eq p4, p1, :cond_0

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-ne p4, p1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 16
    .line 17
    iget-boolean p1, p1, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 18
    .line 19
    iget-object p4, v6, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p4, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 24
    .line 25
    iget p4, p1, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p4, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 29
    .line 30
    iget p4, p1, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    .line 31
    .line 32
    iget p1, p1, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    .line 33
    .line 34
    sub-int/2addr p4, p1

    .line 35
    :cond_2
    :goto_0
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 36
    .line 37
    iget-boolean p1, p1, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    xor-int/2addr p1, v7

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    add-int/2addr p2, p4

    .line 44
    move v4, p2

    .line 45
    move v3, p4

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    sub-int p1, p4, p2

    .line 48
    .line 49
    move v3, p1

    .line 50
    move v4, p4

    .line 51
    :goto_1
    invoke-virtual {v6, p3}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object p2, v6, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 56
    .line 57
    iget-object p2, p2, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    .line 58
    .line 59
    iget p2, p2, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 60
    .line 61
    add-int/2addr p1, p2

    .line 62
    iget p2, v6, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 63
    .line 64
    sub-int v5, p1, p2

    .line 65
    .line 66
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 72
    .line 73
    move v2, p3

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->layoutChild(Landroid/view/View;IIII)V

    .line 75
    .line 76
    .line 77
    iget-object p0, v6, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 78
    .line 79
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 80
    .line 81
    if-nez p0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v6}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget p0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 87
    .line 88
    and-int/lit8 p0, p0, 0x3

    .line 89
    .line 90
    if-eq p0, v7, :cond_8

    .line 91
    .line 92
    iget-object p0, v6, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 93
    .line 94
    if-eqz p0, :cond_8

    .line 95
    .line 96
    iget-boolean p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    .line 97
    .line 98
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p2, p1, v7}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(IZ)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 111
    .line 112
    :cond_5
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    if-lez p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    :cond_6
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 125
    .line 126
    if-gez p1, :cond_8

    .line 127
    .line 128
    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    :cond_7
    iget p1, p2, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 135
    .line 136
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 139
    .line 140
    .line 141
    :cond_8
    return-void
.end method

.method public final createItem(IZ[Ljava/lang/Object;Z)I
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 4
    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput-object v2, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v1, :cond_11

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    const/4 v4, 0x1

    .line 42
    if-eqz p4, :cond_1

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-eqz p2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 64
    .line 65
    if-eq p2, v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 71
    .line 72
    if-eqz p2, :cond_d

    .line 73
    .line 74
    iget-boolean p4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    .line 75
    .line 76
    if-nez p4, :cond_d

    .line 77
    .line 78
    iget p4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 79
    .line 80
    if-nez p4, :cond_4

    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_4
    iget-object v1, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 85
    .line 86
    if-lez p4, :cond_5

    .line 87
    .line 88
    iget p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 89
    .line 90
    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_5
    iget p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 94
    .line 95
    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :goto_1
    iget v5, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 99
    .line 100
    if-eqz v5, :cond_c

    .line 101
    .line 102
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-nez v5, :cond_6

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_8

    .line 117
    .line 118
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_7

    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_8

    .line 129
    .line 130
    :cond_7
    move v6, v4

    .line 131
    goto :goto_2

    .line 132
    :cond_8
    move v6, v3

    .line 133
    :goto_2
    if-nez v6, :cond_9

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_9
    iput p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 137
    .line 138
    iput v3, v1, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 139
    .line 140
    iget v2, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 141
    .line 142
    if-lez v2, :cond_a

    .line 143
    .line 144
    add-int/lit8 v2, v2, -0x1

    .line 145
    .line 146
    iput v2, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    iput v2, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 152
    .line 153
    :goto_3
    move-object v2, v5

    .line 154
    :goto_4
    iget v5, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 155
    .line 156
    if-lez v5, :cond_b

    .line 157
    .line 158
    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 159
    .line 160
    :goto_5
    add-int/2addr p4, v5

    .line 161
    goto :goto_1

    .line 162
    :cond_b
    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 163
    .line 164
    :goto_6
    sub-int/2addr p4, v5

    .line 165
    goto :goto_1

    .line 166
    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 167
    .line 168
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_d

    .line 173
    .line 174
    iget p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 175
    .line 176
    or-int/lit8 p2, p2, 0x20

    .line 177
    .line 178
    iput p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 181
    .line 182
    .line 183
    iget p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 184
    .line 185
    and-int/lit8 p2, p2, -0x21

    .line 186
    .line 187
    iput p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 188
    .line 189
    :cond_d
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-static {v0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 198
    .line 199
    and-int/lit8 v1, p4, 0x3

    .line 200
    .line 201
    if-eq v1, v4, :cond_e

    .line 202
    .line 203
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 204
    .line 205
    if-ne p1, p4, :cond_10

    .line 206
    .line 207
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 208
    .line 209
    if-ne p2, p1, :cond_10

    .line 210
    .line 211
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 212
    .line 213
    if-nez p1, :cond_10

    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 216
    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_e
    and-int/lit8 v1, p4, 0x4

    .line 220
    .line 221
    if-nez v1, :cond_10

    .line 222
    .line 223
    and-int/lit8 p4, p4, 0x10

    .line 224
    .line 225
    if-nez p4, :cond_f

    .line 226
    .line 227
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 228
    .line 229
    if-ne p1, v1, :cond_f

    .line 230
    .line 231
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 232
    .line 233
    if-ne p2, v1, :cond_f

    .line 234
    .line 235
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 236
    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_f
    if-eqz p4, :cond_10

    .line 240
    .line 241
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 242
    .line 243
    if-lt p1, p4, :cond_10

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 246
    .line 247
    .line 248
    move-result p4

    .line 249
    if-eqz p4, :cond_10

    .line 250
    .line 251
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 252
    .line 253
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 254
    .line 255
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 256
    .line 257
    and-int/lit8 p1, p1, -0x11

    .line 258
    .line 259
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 260
    .line 261
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 262
    .line 263
    .line 264
    :cond_10
    :goto_9
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    :cond_11
    aput-object v0, p3, v3

    .line 268
    .line 269
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 270
    .line 271
    if-nez p0, :cond_12

    .line 272
    .line 273
    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    goto :goto_a

    .line 278
    :cond_12
    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    :goto_a
    return p0
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public final getEdge(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 11
    .line 12
    const/high16 v1, 0x40000

    .line 13
    .line 14
    and-int/2addr v0, v1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_0
    return p0
.end method

.method public final getSize(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    :goto_0
    return p0
.end method
