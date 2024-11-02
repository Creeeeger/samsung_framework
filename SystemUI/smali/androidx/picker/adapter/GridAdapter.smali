.class public final Landroidx/picker/adapter/GridAdapter;
.super Landroidx/picker/adapter/AbsAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/adapter/AbsAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    .line 10
    .line 11
    instance-of p1, p0, Landroidx/picker/model/viewdata/CustomViewData;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x105

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    instance-of p1, p0, Landroidx/picker/model/viewdata/GroupTitleViewData;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/16 p0, 0x104

    .line 23
    .line 24
    return p0

    .line 25
    :cond_1
    instance-of p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    check-cast p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/picker/model/viewdata/AppInfoViewData;->getItemType()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x2

    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    const/16 p0, 0x102

    .line 39
    .line 40
    return p0

    .line 41
    :cond_2
    invoke-virtual {p0}, Landroidx/picker/model/viewdata/AppInfoViewData;->getItemType()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const/4 p1, 0x3

    .line 46
    if-ne p0, p1, :cond_3

    .line 47
    .line 48
    const/16 p0, 0x103

    .line 49
    .line 50
    return p0

    .line 51
    :cond_3
    const/16 p0, 0x101

    .line 52
    .line 53
    return p0
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    const/16 p0, 0x104

    .line 2
    .line 3
    if-ne p2, p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    .line 6
    .line 7
    const p2, 0x7f0d0297

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 p0, 0x102

    .line 19
    .line 20
    const v0, 0x7f0d028b

    .line 21
    .line 22
    .line 23
    if-ne p2, p0, :cond_1

    .line 24
    .line 25
    new-instance p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/16 p0, 0x103

    .line 36
    .line 37
    if-ne p2, p0, :cond_2

    .line 38
    .line 39
    new-instance p0, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;

    .line 40
    .line 41
    const p2, 0x7f0d028c

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p0, Landroidx/picker/adapter/viewholder/GridViewHolder;

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/GridViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-object p0
.end method
