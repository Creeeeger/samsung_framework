.class public final Landroidx/picker/widget/SeslAppPickerGridView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerGridView;

.field public final synthetic val$manager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslAppPickerGridView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->this$0:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->val$manager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->this$0:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge p1, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItem(I)Landroidx/picker/model/viewdata/ViewData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of v0, p1, Landroidx/picker/model/SpanData;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->val$manager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Landroidx/picker/model/SpanData;

    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/picker/model/SpanData;->getSpanCount()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, -0x1

    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 37
    .line 38
    :cond_0
    return p1

    .line 39
    :cond_1
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 40
    .line 41
    return p0

    .line 42
    :cond_2
    const/4 p0, 0x1

    .line 43
    return p0
.end method
