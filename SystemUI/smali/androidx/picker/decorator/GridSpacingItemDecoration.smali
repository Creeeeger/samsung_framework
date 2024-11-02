.class public final Landroidx/picker/decorator/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final spacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/picker/decorator/GridSpacingItemDecoration;->spacing:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 5
    .line 6
    .line 7
    move-result p4

    .line 8
    const/4 v0, -0x1

    .line 9
    if-ne p4, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    instance-of p2, p2, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of p3, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 31
    .line 32
    if-nez p3, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 36
    .line 37
    iget p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 38
    .line 39
    rem-int/2addr p4, p2

    .line 40
    iget p0, p0, Landroidx/picker/decorator/GridSpacingItemDecoration;->spacing:I

    .line 41
    .line 42
    mul-int p3, p4, p0

    .line 43
    .line 44
    div-int/2addr p3, p2

    .line 45
    sub-int p3, p0, p3

    .line 46
    .line 47
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    add-int/lit8 p4, p4, 0x1

    .line 50
    .line 51
    mul-int/2addr p4, p0

    .line 52
    div-int/2addr p4, p2

    .line 53
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    div-int/lit8 p0, p0, 0x2

    .line 56
    .line 57
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    return-void
.end method
