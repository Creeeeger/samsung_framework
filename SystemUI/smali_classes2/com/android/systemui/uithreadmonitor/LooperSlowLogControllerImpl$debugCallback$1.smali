.class public final synthetic Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;->$tmp0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Ljava/lang/String;

    .line 3
    .line 4
    move-object v5, p2

    .line 5
    check-cast v5, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;->$tmp0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curLogHandler:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const-string p1, "LooperSlow"

    .line 22
    .line 23
    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v0, p1

    .line 30
    move-object v1, p0

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x2

    .line 35
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, p0, v1, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
