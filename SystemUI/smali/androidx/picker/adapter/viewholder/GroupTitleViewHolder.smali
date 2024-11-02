.class public final Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;
.super Landroidx/picker/adapter/viewholder/PickerViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final label:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0bd9

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->title:Landroid/widget/TextView;

    .line 14
    .line 15
    const v0, 0x7f0a056d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->label:Landroid/widget/TextView;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/picker/model/viewdata/GroupTitleViewData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/picker/model/viewdata/GroupTitleViewData;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/picker/model/viewdata/GroupTitleViewData;->appData:Landroidx/picker/model/appdata/GroupAppData;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/picker/model/appdata/GroupAppData;->group:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->title:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Landroidx/picker/model/viewdata/GroupTitleViewData;->label:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->label:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-super {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
