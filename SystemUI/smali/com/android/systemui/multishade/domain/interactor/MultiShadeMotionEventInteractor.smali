.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final isAnyShadeExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final multiShadeInteractor:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shade/ShadeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->multiShadeInteractor:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 7
    .line 8
    iput-object p7, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->shadeController:Lcom/android/systemui/shade/ShadeController;

    .line 9
    .line 10
    sget-object p1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 11
    .line 12
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 18
    .line 19
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object p3, p3, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->isAnyShadeExpanded:Lkotlinx/coroutines/flow/Flow;

    .line 22
    .line 23
    invoke-static {p3, p2, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->isAnyShadeExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    sget-object p3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 30
    .line 31
    iget-object p5, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 32
    .line 33
    check-cast p5, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    .line 34
    .line 35
    iget-object p5, p5, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    .line 36
    .line 37
    new-instance p6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$filter$1;

    .line 38
    .line 39
    invoke-direct {p6, p5, p3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    .line 40
    .line 41
    .line 42
    new-instance p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;

    .line 43
    .line 44
    invoke-direct {p5, p6, p3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    .line 45
    .line 46
    .line 47
    new-instance p3, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor$special$$inlined$map$1;

    .line 48
    .line 49
    invoke-direct {p3, p5}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p3, p2, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->isBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 57
    .line 58
    return-void
.end method
