.class public final Landroidx/picker/decorator/RoundedCornerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field public final mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    new-instance p2, Landroid/util/TypedValue;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f040508

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 32
    .line 33
    const/16 v3, 0xf

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    if-lez v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iput-object v0, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 49
    .line 50
    new-instance v0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 62
    .line 63
    .line 64
    if-lez p2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {v0, v3, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iput-object v0, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    move-object v1, v0

    .line 11
    check-cast v1, Landroidx/core/view/ViewGroupKt$iterator$1;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$iterator$1;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$iterator$1;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    instance-of v3, v2, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/16 v2, 0xf

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v1, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v3, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 45
    .line 46
    instance-of v5, v3, Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    check-cast v3, Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v3, 0x0

    .line 54
    :goto_1
    if-eqz v3, :cond_0

    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {v3}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    add-int/lit8 v7, v5, -0x1

    .line 65
    .line 66
    invoke-virtual {v3}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    sub-int/2addr v3, v6

    .line 71
    if-lez v5, :cond_3

    .line 72
    .line 73
    invoke-virtual {p2, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    const/4 v2, 0x3

    .line 84
    invoke-virtual {v4, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v1, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    if-lez v6, :cond_4

    .line 92
    .line 93
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    const/16 v2, 0xc

    .line 104
    .line 105
    invoke-virtual {v4, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v1, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iget-object v2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    return-void
.end method
