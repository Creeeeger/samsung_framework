.class public final Landroidx/picker/decorator/ListSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final spacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x7f070ac5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->spacing:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    iget-object p4, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    instance-of v0, p4, Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p4, Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p4, 0x0

    .line 11
    :goto_0
    if-nez p4, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    instance-of p3, p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    .line 19
    .line 20
    if-nez p3, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    check-cast p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    .line 24
    .line 25
    iget-object p2, p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableType:Landroidx/picker/features/composable/ComposableType;

    .line 26
    .line 27
    sget-object p3, Landroidx/picker/features/composable/ComposableType;->Companion:Landroidx/picker/features/composable/ComposableType$Companion;

    .line 28
    .line 29
    sget-object v0, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox_Expander:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Landroidx/picker/features/composable/ComposableType$Companion;->isSame(Landroidx/picker/features/composable/ComposableType;Landroidx/picker/features/composable/ComposableTypeSet;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const/4 v0, 0x1

    .line 39
    const/4 v1, 0x0

    .line 40
    if-nez p3, :cond_4

    .line 41
    .line 42
    sget-object p3, Landroidx/picker/features/composable/ComposableTypeSet;->AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 43
    .line 44
    invoke-static {p2, p3}, Landroidx/picker/features/composable/ComposableType$Companion;->isSame(Landroidx/picker/features/composable/ComposableType;Landroidx/picker/features/composable/ComposableTypeSet;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move p2, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    :goto_1
    move p2, v0

    .line 54
    :goto_2
    if-eqz p2, :cond_5

    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    iget-object p2, p4, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    .line 58
    .line 59
    iget-object p2, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 60
    .line 61
    check-cast p2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-eqz p3, :cond_8

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Landroidx/picker/model/viewdata/ViewData;

    .line 85
    .line 86
    instance-of p3, p3, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 87
    .line 88
    if-eqz p3, :cond_7

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    :goto_3
    move v0, v1

    .line 92
    :goto_4
    if-eqz v0, :cond_a

    .line 93
    .line 94
    iget-object p2, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->context:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p2}, Landroidx/picker/helper/ContextHelperKt;->isRTL(Landroid/content/Context;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    iget p0, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->spacing:I

    .line 101
    .line 102
    if-eqz p2, :cond_9

    .line 103
    .line 104
    invoke-virtual {p1, v1, v1, p0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_9
    invoke-virtual {p1, p0, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_a
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    .line 114
    .line 115
    :goto_5
    return-void
.end method
