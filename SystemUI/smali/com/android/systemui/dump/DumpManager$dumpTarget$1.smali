.class final Lcom/android/systemui/dump/DumpManager$dumpTarget$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.dump.DumpManager$dumpTarget$1"
    f = "DumpManager.kt"
    l = {
        0xa9,
        0xac,
        0xb0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $args:[Ljava/lang/String;

.field final synthetic $pw:Ljava/io/PrintWriter;

.field final synthetic $tailLength:I

.field final synthetic $target:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/dump/DumpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/dump/DumpManager$dumpTarget$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$target:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$pw:Ljava/io/PrintWriter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$args:[Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$tailLength:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$target:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$pw:Ljava/io/PrintWriter;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$args:[Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$tailLength:I

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;-><init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v7, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v7
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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    if-eq v1, v4, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lkotlin/sequences/SequenceScope;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lkotlin/sequences/SequenceScope;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 53
    .line 54
    iget-object v5, v1, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 55
    .line 56
    iget-object v6, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$target:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1, v5, v6}, Lcom/android/systemui/dump/DumpManager;->access$findBestTargetMatch(Lcom/android/systemui/dump/DumpManager;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v5, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$pw:Ljava/io/PrintWriter;

    .line 69
    .line 70
    iget-object v7, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$args:[Ljava/lang/String;

    .line 71
    .line 72
    new-instance v8, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;

    .line 73
    .line 74
    invoke-direct {v8, v5, v1, v6, v7}, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v5, Lkotlin/Pair;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/systemui/dump/RegisteredDumpable;->name:Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {v5, v1, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    iput v4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->label:I

    .line 87
    .line 88
    invoke-virtual {p1, v5, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-ne v1, v0, :cond_4

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_4
    move-object v1, p1

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 97
    .line 98
    iget-object v4, p1, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 99
    .line 100
    iget-object v5, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$target:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p1, v4, v5}, Lcom/android/systemui/dump/DumpManager;->access$findBestTargetMatch(Lcom/android/systemui/dump/DumpManager;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    iget-object v4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 111
    .line 112
    iget-object v5, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$pw:Ljava/io/PrintWriter;

    .line 113
    .line 114
    iget v6, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$tailLength:I

    .line 115
    .line 116
    new-instance v7, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$2$1;

    .line 117
    .line 118
    invoke-direct {v7, v4, p1, v5, v6}, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$2$1;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;I)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lkotlin/Pair;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/android/systemui/dump/RegisteredDumpable;->name:Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {v4, p1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput v3, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->label:I

    .line 131
    .line 132
    invoke-virtual {v1, v4, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-ne p1, v0, :cond_5

    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 140
    .line 141
    iget-object v3, p1, Lcom/android/systemui/dump/DumpManager;->nsDumpables:Ljava/util/Map;

    .line 142
    .line 143
    iget-object v4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$target:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p1, v3, v4}, Lcom/android/systemui/dump/DumpManager;->access$findBestTargetMatch(Lcom/android/systemui/dump/DumpManager;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 150
    .line 151
    if-eqz p1, :cond_6

    .line 152
    .line 153
    iget-object v3, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 154
    .line 155
    iget-object v4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$pw:Ljava/io/PrintWriter;

    .line 156
    .line 157
    iget-object v5, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->$args:[Ljava/lang/String;

    .line 158
    .line 159
    new-instance v6, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$3$1;

    .line 160
    .line 161
    invoke-direct {v6, v3, p1, v4, v5}, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$3$1;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v3, Lkotlin/Pair;

    .line 165
    .line 166
    iget-object p1, p1, Lcom/android/systemui/dump/RegisteredDumpable;->name:Ljava/lang/String;

    .line 167
    .line 168
    invoke-direct {v3, p1, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->L$0:Ljava/lang/Object;

    .line 173
    .line 174
    iput v2, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;->label:I

    .line 175
    .line 176
    invoke-virtual {v1, v3, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    if-ne p0, v0, :cond_6

    .line 181
    .line 182
    return-object v0

    .line 183
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p0
.end method
