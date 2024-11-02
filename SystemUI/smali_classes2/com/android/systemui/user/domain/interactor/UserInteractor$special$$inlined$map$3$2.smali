.class public final Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/user/domain/interactor/UserInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->label:I

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
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v5, :cond_3

    .line 38
    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->I$0:I

    .line 65
    .line 66
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$2:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 69
    .line 70
    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 73
    .line 74
    iget-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .line 77
    .line 78
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object v7, p1

    .line 82
    move p1, p0

    .line 83
    move-object p0, v5

    .line 84
    move-object v5, p2

    .line 85
    move-object p2, v7

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    move-object v2, p1

    .line 91
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 92
    .line 93
    iget p1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 94
    .line 95
    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 96
    .line 97
    iput-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 102
    .line 103
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$2:Ljava/lang/Object;

    .line 104
    .line 105
    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->I$0:I

    .line 106
    .line 107
    iput v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->label:I

    .line 108
    .line 109
    sget v5, Lcom/android/systemui/user/domain/interactor/UserInteractor;->$r8$clinit:I

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    if-ne v5, v1, :cond_5

    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_5
    move-object v7, p2

    .line 120
    move-object p2, p0

    .line 121
    move-object p0, v7

    .line 122
    :goto_1
    check-cast v5, Ljava/lang/Boolean;

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$1:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$2:Ljava/lang/Object;

    .line 133
    .line 134
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->label:I

    .line 135
    .line 136
    sget v4, Lcom/android/systemui/user/domain/interactor/UserInteractor;->$r8$clinit:I

    .line 137
    .line 138
    invoke-virtual {p2, v2, p1, v5, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    if-ne p2, v1, :cond_6

    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_6
    :goto_2
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    iput v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$3$2$1;->label:I

    .line 148
    .line 149
    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-ne p0, v1, :cond_7

    .line 154
    .line 155
    return-object v1

    .line 156
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 157
    .line 158
    return-object p0
.end method
