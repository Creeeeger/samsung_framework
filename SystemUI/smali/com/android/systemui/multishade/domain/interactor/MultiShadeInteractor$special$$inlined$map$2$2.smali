.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

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
    .locals 7

    .line 1
    instance-of v0, p2, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Lkotlin/Pair;

    .line 53
    .line 54
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig;

    .line 59
    .line 60
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/android/systemui/multishade/shared/model/ProxiedInputModel;

    .line 65
    .line 66
    instance-of v2, p1, Lcom/android/systemui/multishade/shared/model/ProxiedInputModel$OnTap;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    iget-object v5, v4, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

    .line 73
    .line 74
    iget-object v5, v5, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->_forceCollapseAll:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 75
    .line 76
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    instance-of v5, p1, Lcom/android/systemui/multishade/shared/model/ProxiedInputModel$OnDrag;

    .line 82
    .line 83
    if-eqz v5, :cond_7

    .line 84
    .line 85
    move-object v2, p1

    .line 86
    check-cast v2, Lcom/android/systemui/multishade/shared/model/ProxiedInputModel$OnDrag;

    .line 87
    .line 88
    iget v2, v2, Lcom/android/systemui/multishade/shared/model/ProxiedInputModel$OnDrag;->xFraction:F

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    instance-of v5, p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    check-cast p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

    .line 98
    .line 99
    iget p2, p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 100
    .line 101
    cmpg-float p2, v2, p2

    .line 102
    .line 103
    if-gtz p2, :cond_4

    .line 104
    .line 105
    sget-object p2, Lcom/android/systemui/multishade/shared/model/ShadeId;->LEFT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    sget-object p2, Lcom/android/systemui/multishade/shared/model/ShadeId;->RIGHT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    sget-object p2, Lcom/android/systemui/multishade/shared/model/ShadeId;->SINGLE:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 112
    .line 113
    :goto_1
    iget-object v2, v4, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

    .line 114
    .line 115
    iget-object v4, v2, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->shadeInteraction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 116
    .line 117
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-eqz v4, :cond_6

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    new-instance v4, Lcom/android/systemui/multishade/data/model/MultiShadeInteractionModel;

    .line 125
    .line 126
    invoke-direct {v4, p2, v3}, Lcom/android/systemui/multishade/data/model/MultiShadeInteractionModel;-><init>(Lcom/android/systemui/multishade/shared/model/ShadeId;Z)V

    .line 127
    .line 128
    .line 129
    iget-object p2, v2, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->_shadeInteraction:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 130
    .line 131
    invoke-virtual {p2, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    if-eqz v2, :cond_8

    .line 136
    .line 137
    iget-object p2, v4, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

    .line 138
    .line 139
    iget-object p2, p2, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->_forceCollapseAll:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 140
    .line 141
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {p2, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    :goto_2
    iput v3, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2$1;->label:I

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 149
    .line 150
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    if-ne p0, v1, :cond_9

    .line 155
    .line 156
    return-object v1

    .line 157
    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p0
.end method
