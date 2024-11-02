.class final Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;
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
    c = "com.android.systemui.broadcast.BroadcastDispatcher$broadcastFlow$1"
    f = "BroadcastDispatcher.kt"
    l = {
        0xc6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $filter:Landroid/content/IntentFilter;

.field final synthetic $flags:I

.field final synthetic $map:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $permission:Ljava/lang/String;

.field final synthetic $user:Landroid/os/UserHandle;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Landroid/content/IntentFilter;",
            "Landroid/os/UserHandle;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$filter:Landroid/content/IntentFilter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$user:Landroid/os/UserHandle;

    .line 6
    .line 7
    iput p4, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$flags:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$permission:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$map:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$filter:Landroid/content/IntentFilter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$user:Landroid/os/UserHandle;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$flags:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$permission:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$map:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 28
    .line 29
    new-instance v1, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1$receiver$1;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$map:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    invoke-direct {v1, p1, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1$receiver$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function2;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$filter:Landroid/content/IntentFilter;

    .line 39
    .line 40
    iget-object v6, v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastExecutor:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    iget-object v7, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$user:Landroid/os/UserHandle;

    .line 43
    .line 44
    iget v8, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$flags:I

    .line 45
    .line 46
    iget-object v9, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->$permission:Ljava/lang/String;

    .line 47
    .line 48
    move-object v4, v1

    .line 49
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1$1;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 55
    .line 56
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1$1;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1$receiver$1;)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$broadcastFlow$1;->label:I

    .line 60
    .line 61
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-ne p0, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method
