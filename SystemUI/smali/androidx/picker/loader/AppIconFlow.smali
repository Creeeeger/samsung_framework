.class public final Landroidx/picker/loader/AppIconFlow;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final base:Landroidx/picker/features/observable/UpdateMutableState;

.field public final defaultIconFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    .line 2
    .line 3
    const-string v1, "<v#0>"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Landroidx/picker/loader/AppIconFlow;

    .line 7
    .line 8
    const-string v4, "icon"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Landroidx/picker/loader/AppIconFlow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/UpdateMutableState;",
            "Lkotlinx/coroutines/flow/Flow;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/loader/AppIconFlow;->base:Landroidx/picker/features/observable/UpdateMutableState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/loader/AppIconFlow;->defaultIconFlow:Lkotlinx/coroutines/flow/Flow;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/picker/loader/AppIconFlow$collect$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/picker/loader/AppIconFlow$collect$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/picker/loader/AppIconFlow$collect$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/picker/loader/AppIconFlow$collect$1;-><init>(Landroidx/picker/loader/AppIconFlow;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    iget-object p0, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$2:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Landroidx/picker/features/observable/UpdateMutableState;

    .line 55
    .line 56
    iget-object p1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 59
    .line 60
    iget-object v2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Landroidx/picker/loader/AppIconFlow;

    .line 63
    .line 64
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object p2, p0

    .line 68
    move-object p0, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object p2, Landroidx/picker/loader/AppIconFlow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    aget-object p2, p2, v2

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/picker/loader/AppIconFlow;->base:Landroidx/picker/features/observable/UpdateMutableState;

    .line 79
    .line 80
    invoke-interface {p2}, Landroidx/picker/features/observable/MutableState;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    iput-object p0, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object p1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object p2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$2:Ljava/lang/Object;

    .line 93
    .line 94
    iput v4, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    .line 95
    .line 96
    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-ne v2, v1, :cond_4

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move-object v2, v5

    .line 107
    :goto_2
    if-nez v2, :cond_7

    .line 108
    .line 109
    iget-object p0, p0, Landroidx/picker/loader/AppIconFlow;->defaultIconFlow:Lkotlinx/coroutines/flow/Flow;

    .line 110
    .line 111
    new-instance v2, Landroidx/picker/loader/AppIconFlow$collect$3;

    .line 112
    .line 113
    invoke-direct {v2, p1, p2}, Landroidx/picker/loader/AppIconFlow$collect$3;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/picker/features/observable/UpdateMutableState;)V

    .line 114
    .line 115
    .line 116
    iput-object v5, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v5, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v5, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$2:Ljava/lang/Object;

    .line 121
    .line 122
    iput v3, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    .line 123
    .line 124
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-ne p0, v1, :cond_6

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0
.end method
