.class public abstract Landroidx/picker/features/composable/ActionableComposableViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private doAction:Landroidx/core/util/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Supplier;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BJDJxZAU-ss2Jzp2x7eY3iunbRs(Landroidx/picker/features/composable/ActionableComposableViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind$lambda-0(Landroidx/picker/features/composable/ActionableComposableViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onBind$lambda-0(Landroidx/picker/features/composable/ActionableComposableViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract bindData(Landroidx/picker/model/viewdata/ViewData;)V
.end method

.method public getDoAction()Landroidx/core/util/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Supplier;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/ActionableComposableViewHolder;->doAction:Landroidx/core/util/Supplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public onBind(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onBind(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroidx/picker/features/composable/ActionableComposableViewHolder$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/features/composable/ActionableComposableViewHolder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setDoAction(Landroidx/core/util/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Supplier;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/picker/features/composable/ActionableComposableViewHolder;->doAction:Landroidx/core/util/Supplier;

    .line 2
    .line 3
    return-void
.end method
