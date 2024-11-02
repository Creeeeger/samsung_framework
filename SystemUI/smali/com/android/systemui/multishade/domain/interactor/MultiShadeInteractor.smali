.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final inputProxy:Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;

.field public final isAnyShadeExpanded:Lkotlinx/coroutines/flow/Flow;

.field public final maxShadeExpansion:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final processedProxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

.field public final shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->inputProxy:Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;

    .line 7
    .line 8
    iget-object p3, p2, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->maxShadeExpansion:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$1;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->isAnyShadeExpanded:Lkotlinx/coroutines/flow/Flow;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 36
    .line 37
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget-object v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$processedProxiedInput$2;->INSTANCE:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$processedProxiedInput$2;

    .line 42
    .line 43
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 44
    .line 45
    invoke-direct {v1, p3, p2, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2;

    .line 49
    .line 50
    invoke-direct {p2, v1, p0}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;)V

    .line 51
    .line 52
    .line 53
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->processedProxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 66
    .line 67
    return-void
.end method
