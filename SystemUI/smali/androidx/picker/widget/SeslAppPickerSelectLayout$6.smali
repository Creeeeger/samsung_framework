.class public final Landroidx/picker/widget/SeslAppPickerSelectLayout$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v1, "setItemAnimator = null"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v1}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {p1, p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout$6;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    :cond_0
    return-void
.end method
