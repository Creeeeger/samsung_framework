.class final Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;
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
    c = "androidx.picker.helper.ImageViewHelperKt$loadIcon$job$1$1$1"
    f = "ImageViewHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic $shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field final synthetic $this_loadIcon:Landroid/widget/ImageView;

.field label:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/facebook/shimmer/ShimmerFrameLayout;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method
