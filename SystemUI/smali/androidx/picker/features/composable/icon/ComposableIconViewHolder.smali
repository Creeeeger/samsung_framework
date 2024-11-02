.class public final Landroidx/picker/features/composable/icon/ComposableIconViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final iconView:Landroid/widget/ImageView;

.field private final shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field private final subIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

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
    iput-object v0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

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
    iput-object v0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

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
    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->subIconView:Landroid/widget/ImageView;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 26
    .line 27
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 28
    .line 29
    iget-object v3, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    .line 30
    .line 31
    invoke-static {v0, v2, v3, v1}, Landroidx/picker/helper/ImageViewHelperKt;->loadIcon(Landroid/widget/ImageView;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/picker/loader/AppIconFlow;Lcom/facebook/shimmer/ShimmerFrameLayout;)Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 36
    .line 37
    :goto_0
    iget-object p0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->subIconView:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    instance-of v0, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    .line 52
    .line 53
    check-cast p1, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->subIconView:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
