.class public final synthetic Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/loader/select/SelectableItem;

.field public final synthetic f$1:Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/loader/select/SelectableItem;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/loader/select/SelectableItem;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
