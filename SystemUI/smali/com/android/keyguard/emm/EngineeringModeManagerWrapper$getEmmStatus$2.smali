.class final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;
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
    c = "com.android.keyguard.emm.EngineeringModeManagerWrapper$getEmmStatus$2"
    f = "EngineeringModeManagerWrapper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->emm$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->emm$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 35
    .line 36
    const/16 p1, 0x40

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const/4 p1, 0x1

    .line 43
    if-ne p0, p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method
