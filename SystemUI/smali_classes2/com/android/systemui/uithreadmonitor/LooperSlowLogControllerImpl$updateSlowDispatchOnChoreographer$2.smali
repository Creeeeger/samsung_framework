.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;
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
    c = "com.android.systemui.uithreadmonitor.LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2"
    f = "LooperSlowLogControllerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $csLog:Ljava/lang/String;

.field final synthetic $curTime:J

.field final synthetic $slowLog:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$curTime:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$slowLog:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$csLog:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$curTime:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$slowLog:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$csLog:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$curTime:J

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$slowLog:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;->$csLog:Ljava/lang/String;

    .line 17
    .line 18
    sget v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->$r8$clinit:I

    .line 19
    .line 20
    iget-object v3, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 27
    .line 28
    monitor-enter v3

    .line 29
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lkotlin/collections/ArrayDeque;

    .line 36
    .line 37
    iget v4, p1, Lkotlin/collections/ArrayDeque;->size:I

    .line 38
    .line 39
    const/16 v5, 0x65

    .line 40
    .line 41
    if-ne v4, v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " "

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit v3

    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit v3

    .line 82
    throw p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method
