.class public final Landroidx/picker/decorator/ListDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final divider:Landroid/graphics/drawable/Drawable;

.field public final dividerPaddingStart:I

.field public final iconFrameWidth:I

.field public final leftFrameWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x1010214

    .line 5
    .line 6
    .line 7
    filled-new-array {v0}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p1}, Landroidx/picker/helper/ContextHelperKt;->isRTL(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    :goto_0
    iput v0, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->dividerPaddingStart:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x7f070ac9

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    float-to-int v0, v0

    .line 60
    iput v0, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->iconFrameWidth:I

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const v0, 0x7f070acb

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    float-to-int p1, p1

    .line 74
    iput p1, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->leftFrameWidth:I

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move v2, v3

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_a

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    add-int/lit8 v5, v2, 0x1

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    if-ltz v2, :cond_9

    .line 49
    .line 50
    check-cast v4, Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    add-int/lit8 v7, v7, 0x1

    .line 61
    .line 62
    invoke-virtual {p2, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    instance-of v8, v2, Landroidx/picker/adapter/viewholder/FrameViewHolder;

    .line 67
    .line 68
    if-nez v8, :cond_8

    .line 69
    .line 70
    instance-of v8, v2, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    .line 71
    .line 72
    if-nez v8, :cond_8

    .line 73
    .line 74
    instance-of v7, v7, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    .line 75
    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_1
    instance-of v7, v2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    .line 81
    .line 82
    if-eqz v7, :cond_4

    .line 83
    .line 84
    check-cast v2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    .line 85
    .line 86
    iget-object v7, v2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableType:Landroidx/picker/features/composable/ComposableType;

    .line 87
    .line 88
    invoke-interface {v7}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    iget v7, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->leftFrameWidth:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move v7, v3

    .line 98
    :goto_1
    iget-object v2, v2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableType:Landroidx/picker/features/composable/ComposableType;

    .line 99
    .line 100
    invoke-interface {v2}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    iget v2, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->iconFrameWidth:I

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move v2, v3

    .line 110
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    add-int/2addr v8, v7

    .line 115
    add-int/2addr v8, v2

    .line 116
    iget v2, p0, Landroidx/picker/decorator/ListDividerItemDecoration;->dividerPaddingStart:I

    .line 117
    .line 118
    sub-int/2addr v8, v2

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move v8, v3

    .line 121
    :goto_3
    add-int/2addr v8, v3

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    instance-of v10, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 135
    .line 136
    if-eqz v10, :cond_5

    .line 137
    .line 138
    move-object v6, v9

    .line 139
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 140
    .line 141
    :cond_5
    if-eqz v6, :cond_6

    .line 142
    .line 143
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move v6, v3

    .line 147
    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    add-int/2addr v9, v6

    .line 152
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    add-int/2addr v6, v9

    .line 161
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    add-int/2addr v9, v6

    .line 166
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-static {v4}, Landroidx/picker/helper/ContextHelperKt;->isRTL(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_7

    .line 175
    .line 176
    sub-int/2addr v7, v8

    .line 177
    invoke-virtual {v0, v2, v6, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_7
    add-int/2addr v2, v8

    .line 182
    invoke-virtual {v0, v2, v6, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    .line 184
    .line 185
    :goto_5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    :goto_6
    move v2, v5

    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 192
    .line 193
    .line 194
    throw v6

    .line 195
    :cond_a
    return-void
.end method
