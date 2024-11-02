.class final Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;
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
    c = "com.android.systemui.screenshot.sep.SemImageCaptureImpl$semCaptureTask$snapshot$1"
    f = "SemImageCaptureImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $taskId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->this$0:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->$taskId:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->this$0:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->$taskId:I

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;-><init>(Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;ILkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->this$0:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->atmService:Landroid/app/IActivityTaskManager;

    .line 13
    .line 14
    iget p0, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;->$taskId:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p0, v0}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method
