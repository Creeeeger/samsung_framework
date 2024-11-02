.class public final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final choreographerCallStackCnt$delegate:Lkotlin/Lazy;

.field public final choreographerLazy:Ldagger/Lazy;

.field public final choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

.field public curChoreographerOnly:Z

.field public curLogHandler:Lkotlin/jvm/functions/Function2;

.field public curSlowDeliveryMs:J

.field public curSlowDispatchMs:J

.field public final debug:Z

.field public final debugCallback:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

.field public final dumpBuf$delegate:Lkotlin/Lazy;

.field public final jobs:[Lkotlinx/coroutines/Job;

.field public final mainLooper:Landroid/os/Looper;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final types:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->mainLooper:Landroid/os/Looper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerLazy:Ldagger/Lazy;

    .line 11
    .line 12
    const-string p1, "LooperSlow"

    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    .line 20
    .line 21
    new-instance p1, Landroid/util/SparseArray;

    .line 22
    .line 23
    const/16 p2, 0xa

    .line 24
    .line 25
    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 29
    .line 30
    new-array p1, p2, [Lkotlinx/coroutines/Job;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    .line 33
    .line 34
    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debugCallback:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

    .line 40
    .line 41
    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$dumpBuf$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$dumpBuf$2;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    .line 48
    .line 49
    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerCallStackCnt$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerCallStackCnt$2;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerCallStackCnt$delegate:Lkotlin/Lazy;

    .line 56
    .line 57
    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerSlowDispatchMs$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$choreographerSlowDispatchMs$2;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

    .line 64
    .line 65
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    const-string p1, "LooperSlowLogController"

    .line 70
    .line 71
    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public static synthetic getCurSlowDeliveryMs$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getCurSlowDispatchMs$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final disable(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_4

    .line 3
    .line 4
    const/16 v1, 0xa

    .line 5
    .line 6
    if-lt p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    iput-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 26
    .line 27
    iput-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 28
    .line 29
    iput-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 30
    .line 31
    iput-boolean v0, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 32
    .line 33
    iput-object v3, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    .line 36
    .line 37
    aget-object v0, v0, p1

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    .line 51
    .line 52
    aput-object v3, v0, p1

    .line 53
    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->update()V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit v1

    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v1

    .line 64
    throw p0

    .line 65
    :cond_4
    :goto_0
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->dumpBuf$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/collections/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final enable(IJJJZLkotlin/jvm/functions/Function2;)Z
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v13, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    move-wide/from16 v11, p4

    .line 8
    .line 9
    move-wide/from16 v9, p6

    .line 10
    .line 11
    move/from16 v7, p8

    .line 12
    .line 13
    move-object/from16 v8, p9

    .line 14
    .line 15
    const-string v5, "enable "

    .line 16
    .line 17
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    if-ltz v13, :cond_8

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    if-lt v13, v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    cmp-long v1, v14, v3

    .line 33
    .line 34
    if-gtz v1, :cond_1

    .line 35
    .line 36
    cmp-long v1, v11, v3

    .line 37
    .line 38
    if-gtz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :cond_1
    const/16 v16, 0x1

    .line 45
    .line 46
    if-eqz v8, :cond_2

    .line 47
    .line 48
    move/from16 v2, v16

    .line 49
    .line 50
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v6, "enable type="

    .line 53
    .line 54
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, " dispatch="

    .line 61
    .line 62
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, " delivery="

    .line 69
    .line 70
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, " dur="

    .line 77
    .line 78
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, ", cOnly="

    .line 85
    .line 86
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v6, ", hasLogHandler="

    .line 93
    .line 94
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-boolean v2, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    .line 105
    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    const-string v2, "LooperSlow"

    .line 109
    .line 110
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v6, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 114
    .line 115
    monitor-enter v6

    .line 116
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 117
    .line 118
    new-instance v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    .line 120
    const-wide/16 v17, 0x0

    .line 121
    .line 122
    const-wide/16 v19, 0x0

    .line 123
    .line 124
    const-wide/16 v21, 0x0

    .line 125
    .line 126
    const/16 v23, 0x0

    .line 127
    .line 128
    const/16 v24, 0x0

    .line 129
    .line 130
    const/16 v25, 0x3e

    .line 131
    .line 132
    const/16 v26, 0x0

    .line 133
    .line 134
    move-object/from16 v27, v1

    .line 135
    .line 136
    move-object/from16 v1, v27

    .line 137
    .line 138
    move-object/from16 v28, v2

    .line 139
    .line 140
    move/from16 v2, p1

    .line 141
    .line 142
    move-wide/from16 v3, v17

    .line 143
    .line 144
    move-object/from16 v29, v5

    .line 145
    .line 146
    move-object/from16 v17, v6

    .line 147
    .line 148
    move-wide/from16 v5, v19

    .line 149
    .line 150
    move-wide/from16 v7, v21

    .line 151
    .line 152
    move/from16 v9, v23

    .line 153
    .line 154
    move-object/from16 v10, v24

    .line 155
    .line 156
    move/from16 v11, v25

    .line 157
    .line 158
    move-object/from16 v12, v26

    .line 159
    .line 160
    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;-><init>(IJJJZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v2, v27

    .line 164
    .line 165
    move-object/from16 v1, v28

    .line 166
    .line 167
    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    .line 172
    .line 173
    const-wide/16 v2, 0x0

    .line 174
    .line 175
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    iput-wide v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 180
    .line 181
    move-wide/from16 v4, p4

    .line 182
    .line 183
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    iput-wide v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 188
    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 190
    .line 191
    .line 192
    move-result-wide v4

    .line 193
    iput-wide v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 194
    .line 195
    move/from16 v4, p8

    .line 196
    .line 197
    iput-boolean v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 198
    .line 199
    move-object/from16 v4, p9

    .line 200
    .line 201
    iput-object v4, v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    .line 202
    .line 203
    iget-object v4, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 204
    .line 205
    invoke-virtual {v4, v13, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    move-object/from16 v5, v29

    .line 217
    .line 218
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    iget-boolean v4, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    .line 229
    .line 230
    if-eqz v4, :cond_4

    .line 231
    .line 232
    const-string v4, "LooperSlow"

    .line 233
    .line 234
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    goto :goto_1

    .line 240
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    .line 241
    .line 242
    aget-object v1, v1, v13

    .line 243
    .line 244
    const/4 v7, 0x0

    .line 245
    if-eqz v1, :cond_6

    .line 246
    .line 247
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_5

    .line 252
    .line 253
    invoke-interface {v1, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 254
    .line 255
    .line 256
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    .line 257
    .line 258
    aput-object v7, v1, v13

    .line 259
    .line 260
    :cond_6
    cmp-long v1, p6, v2

    .line 261
    .line 262
    if-lez v1, :cond_7

    .line 263
    .line 264
    iget-object v8, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->jobs:[Lkotlinx/coroutines/Job;

    .line 265
    .line 266
    iget-object v9, v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 267
    .line 268
    new-instance v10, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;

    .line 269
    .line 270
    const/4 v6, 0x0

    .line 271
    move-object v1, v10

    .line 272
    move-wide/from16 v2, p6

    .line 273
    .line 274
    move-object/from16 v4, p0

    .line 275
    .line 276
    move/from16 v5, p1

    .line 277
    .line 278
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;-><init>(JLcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;ILkotlin/coroutines/Continuation;)V

    .line 279
    .line 280
    .line 281
    const/4 v1, 0x3

    .line 282
    invoke-static {v9, v7, v7, v10, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    aput-object v1, v8, v13

    .line 287
    .line 288
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->update()V

    .line 289
    .line 290
    .line 291
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    .line 293
    monitor-exit v17

    .line 294
    return v16

    .line 295
    :catchall_1
    move-exception v0

    .line 296
    move-object/from16 v17, v6

    .line 297
    .line 298
    :goto_1
    monitor-exit v17

    .line 299
    throw v0

    .line 300
    :cond_8
    :goto_2
    return v2
.end method

.method public final isEnabled()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDeliveryMs:J

    .line 10
    .line 11
    cmp-long p0, v0, v2

    .line 12
    .line 13
    if-lez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final update()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->types:Landroid/util/SparseArray;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/util/SparseArrayKt$valueIterator$1;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroidx/core/util/SparseArrayKt$valueIterator$1;-><init>(Landroid/util/SparseArray;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    move-object v2, v0

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-wide v4, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 40
    .line 41
    iget-wide v6, v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 42
    .line 43
    cmp-long v4, v4, v6

    .line 44
    .line 45
    if-gez v4, :cond_0

    .line 46
    .line 47
    :cond_1
    move-object v2, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    iget-wide v5, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-wide v5, v3

    .line 57
    :goto_1
    iput-wide v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    iget-wide v7, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move-wide v7, v3

    .line 65
    :goto_2
    iput-wide v7, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDeliveryMs:J

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    iget-boolean v9, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    move v9, v1

    .line 74
    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curChoreographerOnly:Z

    .line 75
    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    iget-object v0, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    .line 79
    .line 80
    :cond_6
    iput-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curLogHandler:Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    iget v2, v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    const/4 v2, -0x1

    .line 88
    :goto_4
    const/4 v10, 0x1

    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    move v0, v10

    .line 92
    goto :goto_5

    .line 93
    :cond_8
    move v0, v1

    .line 94
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo v12, "update t="

    .line 97
    .line 98
    .line 99
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " disp="

    .line 106
    .line 107
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, " deli="

    .line 114
    .line 115
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, " cOnly="

    .line 122
    .line 123
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, " hasLogHandler="

    .line 127
    .line 128
    const-string v5, "LooperSlow"

    .line 129
    .line 130
    invoke-static {v11, v9, v2, v0, v5}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curChoreographerOnly:Z

    .line 134
    .line 135
    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debugCallback:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;

    .line 136
    .line 137
    iget-object v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerLazy:Ldagger/Lazy;

    .line 138
    .line 139
    iget-object v6, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->mainLooper:Landroid/os/Looper;

    .line 140
    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    invoke-virtual {v6, v3, v4, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Landroid/view/Choreographer;

    .line 151
    .line 152
    const/16 v0, 0x1e

    .line 153
    .line 154
    invoke-virtual {p0, v10, v2, v0, v10}, Landroid/view/Choreographer;->setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_9
    iget-wide v7, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    .line 159
    .line 160
    iget-wide v11, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDeliveryMs:J

    .line 161
    .line 162
    invoke-virtual {v6, v7, v8, v11, v12}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/view/Choreographer;

    .line 170
    .line 171
    iget-wide v5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curSlowDispatchMs:J

    .line 172
    .line 173
    cmp-long v3, v5, v3

    .line 174
    .line 175
    if-lez v3, :cond_a

    .line 176
    .line 177
    move v1, v10

    .line 178
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerCallStackCnt$delegate:Lkotlin/Lazy;

    .line 179
    .line 180
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Ljava/lang/Number;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

    .line 191
    .line 192
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Ljava/lang/Number;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/Choreographer;->setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V

    .line 203
    .line 204
    .line 205
    :goto_6
    return-void
.end method
