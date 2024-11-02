.class public final Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final interactor:Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;

.field public final repository:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->repository:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->interactor:Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger$collectAndLog$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger$collectAndLog$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->repository:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

    .line 12
    .line 13
    const-string v2, "biometricMessage: "

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    .line 20
    const-string/jumbo v2, "primaryAuthMessage: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 27
    .line 28
    const-string v2, "customMessage: "

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 34
    .line 35
    const-string v2, "faceAcquisitionMessage: "

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    .line 42
    const-string v2, "fingerprintAcquisitionMessage: "

    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

    .line 48
    .line 49
    const-string v1, "authFlagsMessage: "

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->interactor:Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;->bouncerMessage:Lkotlinx/coroutines/flow/Flow;

    .line 57
    .line 58
    const-string v1, "interactor.bouncerMessage: "

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method
