.class public final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p0, p2}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;->emit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;

    iget v1, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->result:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget v2, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iput-object p0, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 7
    new-instance v2, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
