.class public final Landroidx/picker/loader/DataLoaderImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/picker/loader/DataLoader;


# instance fields
.field public final factory:Landroidx/picker/features/scs/AbstractAppDataListFactory;

.field public final iconLoader:Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

.field public final labelMap$delegate:Lkotlin/Lazy;

.field public final packageManagerHelper:Landroidx/picker/helper/PackageManagerHelper;


# direct methods
.method public constructor <init>(Landroidx/picker/features/scs/AbstractAppDataListFactory;Landroidx/picker/helper/PackageManagerHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl;->factory:Landroidx/picker/features/scs/AbstractAppDataListFactory;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/loader/DataLoaderImpl;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelper;

    .line 7
    .line 8
    new-instance p1, Landroidx/picker/loader/DataLoaderImpl$labelMap$2;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Landroidx/picker/loader/DataLoaderImpl$labelMap$2;-><init>(Landroidx/picker/loader/DataLoaderImpl;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl;->labelMap$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance p1, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;-><init>(Landroidx/picker/loader/DataLoaderImpl;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl;->iconLoader:Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final loadIcon(Landroidx/picker/model/AppInfo;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/picker/loader/DataLoaderImpl;->iconLoader:Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/picker/loader/CachedLoader$load$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Landroidx/picker/loader/CachedLoader$load$1;-><init>(Landroidx/picker/loader/CachedLoader;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
