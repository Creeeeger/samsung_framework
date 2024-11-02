.class public final Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty;"
        }
    .end annotation
.end field


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final divider:Landroid/view/View;

.field private fromUser:Z

.field private final switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public static synthetic $r8$lambda$9WGqwBUoxDrraIXdWA5xPBChVNs(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-4(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Nj2bkZIpyZIae-OGt8pKcWn7W34(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-2(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$S0MPrfoooytYD9WoasBdeTeZuVc(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-3(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$UqIZHadQs0Kdm3vQM1OgkyQsigs(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-5(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    .line 2
    .line 3
    const-string v1, "<v#0>"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;

    .line 7
    .line 8
    const-string/jumbo v4, "selected"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    return-void
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
    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

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
    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->divider:Landroid/view/View;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic access$getSwitch$p(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setFromUser$p(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final bindData$lambda-0(Landroidx/picker/loader/select/SelectableItem;)Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Landroidx/picker/features/observable/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private static final bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Z)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final bindData$lambda-2(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p1, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final bindData$lambda-3(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method private static final bindData$lambda-4(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p3}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    .line 10
    .line 11
    return-void
.end method

.method private static final bindData$lambda-5(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    invoke-static {p1, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-1(Landroidx/picker/loader/select/SelectableItem;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/picker/model/viewdata/AllAppsViewData;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$bindData$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$bindData$1;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroidx/picker/model/viewdata/AllAppsViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda-0(Landroidx/picker/loader/select/SelectableItem;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 33
    .line 34
    new-instance v1, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 43
    .line 44
    new-instance v1, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 53
    .line 54
    new-instance v1, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda2;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->divider:Landroid/view/View;

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda3;

    .line 70
    .line 71
    invoke-direct {v0, p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda3;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onBind(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "accessibility"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
