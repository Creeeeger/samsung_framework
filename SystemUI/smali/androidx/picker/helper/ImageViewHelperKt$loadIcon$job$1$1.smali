.class public final Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic $this_loadIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/facebook/shimmer/ShimmerFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    new-instance v1, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, p1, p0, v3}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    :goto_0
    return-object p0
.end method
