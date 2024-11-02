.class public Landroidx/picker/adapter/viewholder/GridViewHolder;
.super Landroidx/picker/adapter/viewholder/PickerViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final appName:Landroid/widget/TextView;

.field public disposableHandle:Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;

.field public final highlightColor$delegate:Lkotlin/Lazy;

.field public final icon:Landroid/widget/ImageView;

.field public final shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final subIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a21

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 14
    .line 15
    const v0, 0x7f0a04a2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    .line 28
    .line 29
    const v0, 0x7f0a0af4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->subIcon:Landroid/widget/ImageView;

    .line 42
    .line 43
    const v0, 0x7f0a0bd9

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-static {v0}, Landroidx/picker/helper/TextViewHelperKt;->limitFontLarge(Landroid/widget/TextView;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->appName:Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v0, Landroidx/picker/adapter/viewholder/GridViewHolder$highlightColor$2;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Landroidx/picker/adapter/viewholder/GridViewHolder$highlightColor$2;-><init>(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->highlightColor$delegate:Lkotlin/Lazy;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->appName:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    move-object v3, p1

    .line 13
    check-cast v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroidx/picker/model/viewdata/AppInfoViewData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/picker/model/viewdata/AppInfoViewData;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 35
    .line 36
    iget-object v6, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    .line 37
    .line 38
    iget-object v7, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 39
    .line 40
    invoke-static {v5, v4, v6, v7}, Landroidx/picker/helper/ImageViewHelperKt;->loadIcon(Landroid/widget/ImageView;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/picker/loader/AppIconFlow;Lcom/facebook/shimmer/ShimmerFrameLayout;)Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v4, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->subIcon:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/picker/model/viewdata/AppInfoViewData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/picker/model/viewdata/AppInfoViewData;->getLabel()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "accessibility"

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    instance-of v4, v3, Landroid/view/accessibility/AccessibilityManager;

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v3, 0x0

    .line 83
    :goto_1
    if-eqz v3, :cond_3

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->item:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    if-eqz v1, :cond_4

    .line 101
    .line 102
    move-object v1, p1

    .line 103
    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 104
    .line 105
    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    .line 106
    .line 107
    new-instance v2, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$3;

    .line 108
    .line 109
    invoke-direct {v2, p0}, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$3;-><init>(Landroidx/picker/adapter/viewholder/GridViewHolder;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroidx/picker/features/observable/ObservableProperty;->bind(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_4
    new-instance v1, Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->disposableHandle:Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-super {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public onViewRecycled()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->onViewRecycled()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->disposableHandle:Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->subIcon:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
