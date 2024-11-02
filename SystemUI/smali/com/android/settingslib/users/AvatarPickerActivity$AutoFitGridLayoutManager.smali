.class public Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/AvatarPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoFitGridLayoutManager"
.end annotation


# instance fields
.field public final mColumnWidth:I

.field public final mSpanCount:I

.field public mTotalSpace:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f070d53

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mColumnWidth:I

    .line 19
    .line 20
    iput p3, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mSpanCount:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    .line 14
    .line 15
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    iput v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    .line 20
    .line 21
    iget v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mColumnWidth:I

    .line 22
    .line 23
    div-int/2addr v0, v1

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mSpanCount:I

    .line 30
    .line 31
    if-le v0, v1, :cond_1

    .line 32
    .line 33
    move v0, v1

    .line 34
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
