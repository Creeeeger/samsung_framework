.class public final Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mIncludeEdge:Z

.field public final mRtl:Z

.field public final mSpacing:I

.field public final mSpacingTop:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f070d54

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x7f070d55

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacingTop:I

    .line 29
    .line 30
    iput-boolean p3, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mIncludeEdge:Z

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 p2, 0x1

    .line 37
    if-ne p1, p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x0

    .line 41
    :goto_0
    iput-boolean p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mRtl:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    instance-of p4, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 11
    .line 12
    iget p3, p3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 13
    .line 14
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    rem-int/2addr p2, p3

    .line 19
    iget-boolean p4, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mIncludeEdge:Z

    .line 20
    .line 21
    iget v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacing:I

    .line 22
    .line 23
    if-eqz p4, :cond_1

    .line 24
    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mSpacingTop:I

    .line 32
    .line 33
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$GridItemDecoration;->mRtl:Z

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    mul-int p0, p2, v0

    .line 47
    .line 48
    div-int/2addr p0, p3

    .line 49
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    add-int/lit8 p2, p2, 0x1

    .line 52
    .line 53
    mul-int/2addr p2, v0

    .line 54
    div-int/2addr p2, p3

    .line 55
    sub-int/2addr v0, p2

    .line 56
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method
