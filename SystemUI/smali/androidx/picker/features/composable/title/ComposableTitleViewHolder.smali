.class public final Landroidx/picker/features/composable/title/ComposableTitleViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
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
.field private currentLayoutId:I

.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final extraTitleView:Landroid/widget/TextView;

.field private final highlightColor$delegate:Lkotlin/Lazy;

.field private final subLabelDescriptionColor$delegate:Lkotlin/Lazy;

.field private final subLabelValueColor$delegate:Lkotlin/Lazy;

.field private final summaryView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Oqtr9S_otCg1hBNJkFdMwVJQCV8(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->bindData$lambda-6(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    .line 2
    .line 3
    const-string v1, "<v#0>"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 7
    .line 8
    const-string v4, "highlightText"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

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
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/picker/helper/TextViewHelperKt;->limitFontLarge(Landroid/widget/TextView;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    .line 20
    .line 21
    const v0, 0x7f0a0b7e

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/picker/helper/TextViewHelperKt;->limitFontLarge(Landroid/widget/TextView;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->summaryView:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0a03e1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/picker/helper/TextViewHelperKt;->limitFontLarge(Landroid/widget/TextView;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->extraTitleView:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$highlightColor$2;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$highlightColor$2;-><init>(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->highlightColor$delegate:Lkotlin/Lazy;

    .line 65
    .line 66
    new-instance v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelValueColor$2;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelValueColor$2;-><init>(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelValueColor$delegate:Lkotlin/Lazy;

    .line 76
    .line 77
    new-instance v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelDescriptionColor$2;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelDescriptionColor$2;-><init>(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelDescriptionColor$delegate:Lkotlin/Lazy;

    .line 87
    .line 88
    const p1, 0x7f0d0286

    .line 89
    .line 90
    .line 91
    iput p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    .line 92
    .line 93
    return-void
.end method

.method public static final synthetic access$adjustLayout(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->adjustLayout(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getHighlightColor(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getHighlightColor()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getLayoutId(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getLayoutId(Z)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getSubLabelShowState(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Landroidx/picker/model/viewdata/ViewData;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelShowState(Landroidx/picker/model/viewdata/ViewData;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getTitleView$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    .line 2
    .line 3
    return-void
.end method

.method private final adjustLayout(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(ILandroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getLayoutHeight(Z)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method private static final bindData$lambda-4(Landroidx/picker/features/observable/ObservableProperty;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/ObservableProperty<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final bindData$lambda-6(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    .line 16
    .line 17
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private final getHighlightColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->highlightColor$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getLayoutHeight(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const p1, 0x7f070ad5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const p1, 0x7f070ad1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    :goto_0
    return p0
.end method

.method private final getLayoutId(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0d0287

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const p0, 0x7f0d0286

    .line 8
    .line 9
    .line 10
    :goto_0
    return p0
.end method

.method private final getSubLabelDescriptionColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelDescriptionColor$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getSubLabelShowState(Landroidx/picker/model/viewdata/ViewData;)Z
    .locals 2

    .line 1
    instance-of p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v1, 0x5

    .line 14
    if-ne p0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->isValueInSubLabel()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getSelected()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    :cond_2
    return v0
.end method

.method private final getSubLabelValueColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelValueColor$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    instance-of v1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    check-cast v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getSubLabel()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelShowState(Landroidx/picker/model/viewdata/ViewData;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-direct {p0, v3}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getLayoutId(Z)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget v5, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    .line 44
    .line 45
    if-eq v5, v4, :cond_2

    .line 46
    .line 47
    iput v4, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    .line 48
    .line 49
    invoke-direct {p0, v3}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->adjustLayout(Z)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v3, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getLabel()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->summaryView:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getSubLabel()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->extraTitleView:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getExtraLabel()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->summaryView:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->isValueInSubLabel()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelValueColor()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelDescriptionColor()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    new-instance v3, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;

    .line 104
    .line 105
    invoke-direct {v3, p1, p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;-><init>(Landroidx/picker/model/viewdata/ViewData;Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    instance-of v2, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 119
    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    iget-object v2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    .line 123
    .line 124
    move-object v3, p1

    .line 125
    check-cast v3, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 126
    .line 127
    iget-object v3, v3, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    .line 128
    .line 129
    iget-object v3, v3, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    instance-of v2, p1, Landroidx/picker/model/viewdata/AllAppsViewData;

    .line 136
    .line 137
    if-eqz v2, :cond_6

    .line 138
    .line 139
    iget-object v2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const v4, 0x7f13114b

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 160
    .line 161
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 162
    .line 163
    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    .line 164
    .line 165
    iget-object v1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-static {p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->bindData$lambda-4(Landroidx/picker/features/observable/ObservableProperty;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getHighlightColor()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-static {v1, v2, v3}, Landroidx/picker/helper/TextViewHelperKt;->setHighLightText(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;

    .line 179
    .line 180
    invoke-direct {v1, p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;-><init>(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1}, Landroidx/picker/features/observable/ObservableProperty;->bind(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_7

    .line 188
    .line 189
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_7
    new-instance p1, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$$ExternalSyntheticLambda0;

    .line 193
    .line 194
    invoke-direct {p1, v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 198
    .line 199
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
