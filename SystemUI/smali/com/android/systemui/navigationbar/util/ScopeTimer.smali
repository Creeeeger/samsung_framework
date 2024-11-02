.class public final Lcom/android/systemui/navigationbar/util/ScopeTimer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public job:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractCoroutine;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    return-void
.end method

.method public final start(JLkotlin/jvm/functions/Function0;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/util/ScopeTimer;->cancel()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/android/systemui/navigationbar/util/ScopeTimer$start$1;

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move-wide v1, p1

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/util/ScopeTimer$start$1;-><init>(JLkotlin/jvm/functions/Function0;Lcom/android/systemui/navigationbar/util/ScopeTimer;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    iget-object p2, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-static {p2, p3, p3, v6, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 23
    .line 24
    return-void
.end method
