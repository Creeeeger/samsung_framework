.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;
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
    c = "com.android.systemui.uithreadmonitor.LooperSlowLogControllerImpl$enable$1$3"
    f = "LooperSlowLogControllerImpl.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $durMs:J

.field final synthetic $type:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;


# direct methods
.method public constructor <init>(JLcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$durMs:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 4
    .line 5
    iput p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$durMs:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;-><init>(JLcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->label:I

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
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$durMs:J

    .line 26
    .line 27
    iput v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->label:I

    .line 28
    .line 29
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 37
    .line 38
    iget v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    .line 39
    .line 40
    const-string v1, "expired type="

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->$r8$clinit:I

    .line 47
    .line 48
    iget-boolean p1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const-string p1, "LooperSlow"

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 58
    .line 59
    iget p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method
