.class public final Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final columnWidth:I

.field public columnWidthChanged:Z

.field public final horizontalInterval:I

.field public final logTag:Ljava/lang/String;

.field public prevWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 3
    .line 4
    .line 5
    const-string v1, "AutoFitGridLayoutManager"

    .line 6
    .line 7
    iput-object v1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->logTag:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f070abc

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidth:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const v1, 0x7f070ada

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->horizontalInterval:I

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->logTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->prevWidth:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidth:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    if-lez v2, :cond_4

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v3

    .line 28
    :goto_0
    sub-int/2addr v1, v0

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v0, v3

    .line 41
    :goto_1
    sub-int/2addr v1, v0

    .line 42
    iget v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->horizontalInterval:I

    .line 43
    .line 44
    add-int v4, v1, v0

    .line 45
    .line 46
    add-int/2addr v2, v0

    .line 47
    div-int/2addr v4, v2

    .line 48
    const/4 v0, 0x1

    .line 49
    if-ge v0, v4, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v4, v0

    .line 53
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo v2, "onLayoutChildren "

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 62
    .line 63
    const-string v5, " -> "

    .line 64
    .line 65
    const-string v6, ", availableWidth="

    .line 66
    .line 67
    invoke-static {v0, v2, v5, v4, v6}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 81
    .line 82
    .line 83
    iput-boolean v3, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    .line 84
    .line 85
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 86
    .line 87
    iput v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->prevWidth:I

    .line 88
    .line 89
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
