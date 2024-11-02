.class public final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final callbackFlow:Lkotlinx/coroutines/flow/Flow;

.field public final context:Landroid/content/Context;

.field public final emm$delegate:Lkotlin/Lazy;

.field public isCaptureEnabled:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    .line 8
    new-instance p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$emm$2;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$emm$2;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->emm$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    .line 20
    .line 21
    new-instance p3, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p3, p0, v0}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->callbackFlow:Lkotlinx/coroutines/flow/Flow;

    .line 39
    .line 40
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    new-instance p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1;

    .line 45
    .line 46
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x3

    .line 50
    invoke-static {p2, v0, v0, p1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method
