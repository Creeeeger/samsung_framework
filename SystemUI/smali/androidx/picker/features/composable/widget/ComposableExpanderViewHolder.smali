.class public final Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

.field private final toggle:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$S_tYtBosSFGt9wpUYK_hhjTq-UE(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->bindAdapter$lambda-2$lambda-1(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a04bc

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    .line 17
    .line 18
    const p0, 0x7f0a0b89

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final bindAdapter$lambda-2$lambda-1(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    iget-object v0, v0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->checkCollapsed(Landroidx/picker/adapter/AbsAdapter;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final checkCollapsed(Landroidx/picker/adapter/AbsAdapter;Z)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object v1, v2

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/lit8 v4, v1, 0x1

    .line 23
    .line 24
    if-le v3, v4, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/picker/model/viewdata/ViewData;

    .line 31
    .line 32
    invoke-static {v3}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->checkCollapsed$isCanBeCollapsed(Landroidx/picker/model/viewdata/ViewData;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    move-object v3, v2

    .line 43
    :cond_1
    iget-object v3, v3, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1, v4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 62
    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    move-object v3, v2

    .line 66
    :cond_4
    iget-object v3, v3, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    move v4, p2

    .line 73
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroidx/picker/model/viewdata/ViewData;

    .line 84
    .line 85
    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    sub-int/2addr v4, v1

    .line 92
    add-int/lit8 v4, v4, -0x1

    .line 93
    .line 94
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 98
    .line 99
    if-nez p0, :cond_6

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    move-object v2, p0

    .line 103
    :goto_2
    iget-object p0, v2, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private static final checkCollapsed$isCanBeCollapsed(Landroidx/picker/model/viewdata/ViewData;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    .line 2
    .line 3
    new-instance v1, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
