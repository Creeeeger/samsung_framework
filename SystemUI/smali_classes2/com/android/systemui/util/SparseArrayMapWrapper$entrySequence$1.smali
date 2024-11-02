.class final Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/SparseArrayMapWrapper;-><init>(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.util.SparseArrayMapWrapper$entrySequence$1"
    f = "SparseArrayUtils.kt"
    l = {
        0x5b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/util/SparseArrayMapWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/SparseArrayMapWrapper;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SparseArrayMapWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/SparseArrayMapWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->this$0:Lcom/android/systemui/util/SparseArrayMapWrapper;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->this$0:Lcom/android/systemui/util/SparseArrayMapWrapper;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;-><init>(Lcom/android/systemui/util/SparseArrayMapWrapper;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->label:I

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
    iget v1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->I$1:I

    .line 11
    .line 12
    iget v3, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->I$0:I

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Lkotlin/sequences/SequenceScope;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

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

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->this$0:Lcom/android/systemui/util/SparseArrayMapWrapper;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/systemui/util/SparseArrayMapWrapper;->sparseArray:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v3, 0x0

    .line 46
    move-object v4, p1

    .line 47
    move v7, v3

    .line 48
    move v3, v1

    .line 49
    move v1, v7

    .line 50
    :goto_0
    if-ge v1, v3, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->this$0:Lcom/android/systemui/util/SparseArrayMapWrapper;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/systemui/util/SparseArrayMapWrapper;->sparseArray:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v5, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->this$0:Lcom/android/systemui/util/SparseArrayMapWrapper;

    .line 61
    .line 62
    iget-object v5, v5, Lcom/android/systemui/util/SparseArrayMapWrapper;->sparseArray:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    new-instance v6, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;

    .line 69
    .line 70
    invoke-direct {v6, p1, v5}, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput v3, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->I$0:I

    .line 76
    .line 77
    iput v1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->I$1:I

    .line 78
    .line 79
    iput v2, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$entrySequence$1;->label:I

    .line 80
    .line 81
    invoke-virtual {v4, v6, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_2

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_2
    :goto_1
    add-int/2addr v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0
.end method
