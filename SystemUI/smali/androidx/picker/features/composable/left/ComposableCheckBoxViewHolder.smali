.class public final Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;

.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method public static synthetic $r8$lambda$c6dy2_HFyURUXjhaRNy7PjUtpVI(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->bindData$lambda-0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$yzzSbIoWERgosgEb1Ck5GIy1OYc(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/widget/CheckBox;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getCheckBox$p(Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final bindData$lambda-0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

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

.method private static final bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

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


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/picker/model/Selectable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/picker/model/Selectable;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-eqz p1, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/picker/model/Selectable;->getSelectableItem()Landroidx/picker/loader/select/SelectableItem;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 23
    .line 24
    .line 25
    :cond_2
    new-instance v0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$bindData$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$bindData$1;-><init>(Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 37
    .line 38
    new-instance v1, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v1, p1, p0}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    invoke-direct {v0, p1, p0}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method public onBind(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Landroidx/picker/helper/CompountButtonHelperKt;->setAccessibilityFocusable(Landroid/widget/CompoundButton;Z)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
