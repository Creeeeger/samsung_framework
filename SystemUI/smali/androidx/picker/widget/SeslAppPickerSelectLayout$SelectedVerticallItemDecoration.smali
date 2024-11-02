.class public final Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;
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
    iput p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;->spacing:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    const/4 v0, -0x1

    .line 12
    if-ne p4, v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    instance-of v1, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 30
    .line 31
    iget p3, p3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 32
    .line 33
    iget p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;->spacing:I

    .line 34
    .line 35
    div-int/lit8 p0, p0, 0x2

    .line 36
    .line 37
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const v1, 0x7f070ada

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    div-int/lit8 p0, p0, 0x2

    .line 57
    .line 58
    rem-int/2addr p4, p3

    .line 59
    const/4 v1, 0x0

    .line 60
    if-nez p4, :cond_3

    .line 61
    .line 62
    move v2, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v2, p0

    .line 65
    :goto_0
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    add-int/2addr p3, v0

    .line 68
    if-ne p4, p3, :cond_4

    .line 69
    .line 70
    move p0, v1

    .line 71
    :cond_4
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 72
    .line 73
    const p0, 0x7f0a04dd

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    .line 86
    return-void
.end method
