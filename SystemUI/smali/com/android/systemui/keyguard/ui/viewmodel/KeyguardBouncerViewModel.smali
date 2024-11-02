.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bouncerExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bouncerShowMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

.field public final isInflated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$2;

.field public final isShowing:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shouldUpdateSideFps:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final startDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

.field public final updateResources:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$filter$2;

.field public final view:Lcom/android/systemui/keyguard/data/BouncerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/BouncerView;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->view:Lcom/android/systemui/keyguard/data/BouncerView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 7
    .line 8
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->bouncerExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    .line 12
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$2;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$2;

    .line 15
    .line 16
    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$isShowing$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$isShowing$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 23
    .line 24
    iget-object v1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 25
    .line 26
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerUpdating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->isShowing:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 32
    .line 33
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 36
    .line 37
    iget-object v0, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->startingDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->startDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 40
    .line 41
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    .line 45
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->resourceUpdateRequests:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$filter$2;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->updateResources:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$filter$2;

    .line 48
    .line 49
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->showMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 50
    .line 51
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->bouncerShowMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 52
    .line 53
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 56
    .line 57
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    .line 61
    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$1;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$2;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 74
    .line 75
    .line 76
    filled-new-array {v2, p1, v0}, [Lkotlinx/coroutines/flow/Flow;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->shouldUpdateSideFps:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 85
    .line 86
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isInflated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->isInflated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 89
    .line 90
    return-void
.end method
