.class public abstract Landroidx/picker/helper/ImageViewHelperKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static final loadIcon(Landroid/widget/ImageView;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/picker/loader/AppIconFlow;Lcom/facebook/shimmer/ShimmerFrameLayout;)Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v7, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, v7

    .line 16
    move-object v2, p2

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p0

    .line 19
    move-object v5, p3

    .line 20
    invoke-direct/range {v1 .. v6}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;-><init>(Landroidx/picker/loader/AppIconFlow;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/widget/ImageView;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x3

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {v0, p1, p1, v7, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {p1, p3, p0}, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlinx/coroutines/StandaloneCoroutine;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public static final loadIcon$lambda-0(Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlinx/coroutines/Job;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
