.class public final Landroidx/picker/features/composable/widget/ComposableActionViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final divider:Landroid/view/View;

.field private hasCustomClickListener:Ljava/lang/Boolean;

.field private final imageButton:Landroid/widget/ImageButton;


# direct methods
.method public static synthetic $r8$lambda$Wa9wrwJRQJ5DIxuSeXUMe57oSKs(Landroidx/picker/model/viewdata/AppInfoViewData;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->bindData$lambda-2(Landroidx/picker/model/viewdata/AppInfoViewData;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$n8CT1VmLoEGI2id0sDxsGhx8mHY(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->bindData$lambda-1$lambda-0(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a04bc

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/widget/ImageButton;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    .line 17
    .line 18
    const v0, 0x7f0a0b89

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->divider:Landroid/view/View;

    .line 29
    .line 30
    return-void
.end method

.method private static final bindData$lambda-1$lambda-0(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final bindData$lambda-2(Landroidx/picker/model/viewdata/AppInfoViewData;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private final setHasCustomClickListener(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->divider:Landroid/view/View;

    .line 4
    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p1, 0x8

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/picker/model/viewdata/AppInfoViewData;->getActionIcon()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    .line 18
    .line 19
    new-instance v3, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v3, v1, p1}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance p1, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    invoke-direct {p1, v0}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/model/viewdata/AppInfoViewData;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onBind(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->setHasCustomClickListener(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
