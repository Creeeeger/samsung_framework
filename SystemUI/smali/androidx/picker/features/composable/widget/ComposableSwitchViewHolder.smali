.class public final Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final divider:Landroid/view/View;

.field private hasCustomClickListener:Ljava/lang/Boolean;

.field private final switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public static synthetic $r8$lambda$GZ0TY8wTqMiav_FntBfTWHhMZ1k(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pvdOE9t87ZUg5FXTpcjUwbffyJY(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->bindData$lambda-0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0b8c

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
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

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
    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->divider:Landroid/view/View;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic access$getSwitch$p(Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final bindData$lambda-0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final setHasCustomClickListener(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->divider:Landroid/view/View;

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
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 22
    .line 23
    .line 24
    :cond_3
    new-instance v0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$bindData$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$bindData$1;-><init>(Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 34
    .line 35
    new-instance v0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-direct {v0, p1, p0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 44
    .line 45
    new-instance v1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    invoke-direct {v1, p1, p0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onBind(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

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
    invoke-direct {p0, v0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->setHasCustomClickListener(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1}, Landroidx/picker/helper/CompountButtonHelperKt;->setAccessibilityFocusable(Landroid/widget/CompoundButton;Z)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, v0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->setHasCustomClickListener(Ljava/lang/Boolean;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
