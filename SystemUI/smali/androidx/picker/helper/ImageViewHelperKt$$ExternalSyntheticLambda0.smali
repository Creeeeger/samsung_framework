.class public final synthetic Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic f$0:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic f$1:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlinx/coroutines/StandaloneCoroutine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroidx/picker/helper/ImageViewHelperKt;->loadIcon$lambda-0(Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlinx/coroutines/Job;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
