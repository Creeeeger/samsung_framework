.class public final synthetic Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout$6;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout$6;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout$6;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout$6;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "setItemAnimator ="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
