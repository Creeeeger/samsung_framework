.class final Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.picker.helper.ImageViewHelperKt$loadIcon$job$1"
    f = "ImageViewHelper.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field final synthetic $iconFlow:Landroidx/picker/loader/AppIconFlow;

.field final synthetic $shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field final synthetic $this_loadIcon:Landroid/widget/ImageView;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/picker/loader/AppIconFlow;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/widget/ImageView;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/loader/AppIconFlow;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Landroid/widget/ImageView;",
            "Lcom/facebook/shimmer/ShimmerFrameLayout;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$iconFlow:Landroidx/picker/loader/AppIconFlow;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance p1, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$iconFlow:Landroidx/picker/loader/AppIconFlow;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;-><init>(Landroidx/picker/loader/AppIconFlow;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/widget/ImageView;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$iconFlow:Landroidx/picker/loader/AppIconFlow;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 38
    .line 39
    invoke-direct {v1, v3, v4}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;-><init>(Landroid/widget/ImageView;Lcom/facebook/shimmer/ShimmerFrameLayout;)V

    .line 40
    .line 41
    .line 42
    iput v2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;->label:I

    .line 43
    .line 44
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-ne p0, v0, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method
