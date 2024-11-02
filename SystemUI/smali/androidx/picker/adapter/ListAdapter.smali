.class public final Landroidx/picker/adapter/ListAdapter;
.super Landroidx/picker/adapter/AbsAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TYPE_GROUP_HEADER:I

.field public final mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

.field public final mComposableViewTypeRange:Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/picker/features/composable/ComposableStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/adapter/AbsAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/picker/features/composable/ComposableFactory;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Landroidx/picker/features/composable/ComposableFactory;-><init>(Landroidx/picker/features/composable/ComposableStrategy;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/picker/features/composable/ComposableFactory;->viewTypeRange:Lkotlin/ranges/IntRange;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/picker/adapter/ListAdapter;->mComposableViewTypeRange:Lkotlin/ranges/IntRange;

    .line 14
    .line 15
    iget p1, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput p1, p0, Landroidx/picker/adapter/ListAdapter;->TYPE_GROUP_HEADER:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/picker/features/composable/ComposableFactory;->composableStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Landroidx/picker/features/composable/ComposableStrategy;->selectComposableType(Landroidx/picker/model/viewdata/ViewData;)Landroidx/picker/features/composable/ComposableType;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/picker/features/composable/ComposableFactory;->converter:Landroidx/picker/features/composable/ComposableBitConverter;

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByComposableType:Ljava/util/Map;

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-instance v6, Lkotlin/Pair;

    .line 52
    .line 53
    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v5, 0x1

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    new-instance v8, Lkotlin/Pair;

    .line 66
    .line 67
    invoke-direct {v8, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v7, 0x2

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance v9, Lkotlin/Pair;

    .line 80
    .line 81
    invoke-direct {v9, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/4 v7, 0x3

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    new-instance v10, Lkotlin/Pair;

    .line 94
    .line 95
    invoke-direct {v10, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    filled-new-array {v6, v8, v9, v10}, [Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    move v6, v4

    .line 111
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_3

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Lkotlin/Pair;

    .line 122
    .line 123
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Landroidx/picker/features/composable/ComposableFrame;

    .line 128
    .line 129
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Ljava/lang/Number;

    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v8, :cond_1

    .line 140
    .line 141
    iget-object v9, v0, Landroidx/picker/features/composable/ComposableBitConverter;->frameInfo:[Ljava/util/List;

    .line 142
    .line 143
    aget-object v9, v9, v7

    .line 144
    .line 145
    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    add-int/2addr v8, v5

    .line 150
    if-nez v8, :cond_2

    .line 151
    .line 152
    move v7, v4

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    iget-object v9, v0, Landroidx/picker/features/composable/ComposableBitConverter;->rangeList:[Lkotlin/ranges/IntRange;

    .line 155
    .line 156
    aget-object v7, v9, v7

    .line 157
    .line 158
    iget v7, v7, Lkotlin/ranges/IntProgression;->first:I

    .line 159
    .line 160
    shl-int v7, v8, v7

    .line 161
    .line 162
    :goto_1
    or-int/2addr v6, v7

    .line 163
    goto :goto_0

    .line 164
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move v0, v6

    .line 172
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_3

    .line 177
    :cond_4
    const/4 v0, 0x0

    .line 178
    :goto_3
    if-eqz v0, :cond_5

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    return p0

    .line 185
    :cond_5
    instance-of p1, p1, Landroidx/picker/model/viewdata/GroupTitleViewData;

    .line 186
    .line 187
    if-eqz p1, :cond_6

    .line 188
    .line 189
    iget p0, p0, Landroidx/picker/adapter/ListAdapter;->TYPE_GROUP_HEADER:I

    .line 190
    .line 191
    return p0

    .line 192
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    .line 193
    .line 194
    const-string p1, "Not Implemented"

    .line 195
    .line 196
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableViewTypeRange:Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    iget v1, v0, Lkotlin/ranges/IntProgression;->first:I

    .line 4
    .line 5
    if-gt v1, p2, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/picker/features/composable/ComposableFactory;->inflateComposableView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroidx/picker/features/composable/ComposableFactory;->getComposableType(I)Landroidx/picker/features/composable/ComposableType;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    .line 29
    .line 30
    invoke-direct {p2, p1, p0}, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;-><init>(Landroid/view/View;Landroidx/picker/features/composable/ComposableType;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget p0, p0, Landroidx/picker/adapter/ListAdapter;->TYPE_GROUP_HEADER:I

    .line 35
    .line 36
    if-ne p2, p0, :cond_2

    .line 37
    .line 38
    new-instance p2, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    .line 39
    .line 40
    const p0, 0x7f0d0297

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p2, p0}, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object p2

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string p1, "Not Implemented"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method
