.class public final Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

.field public static final REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field public final _next:Lkotlinx/atomicfu/AtomicRef;

.field public final _state:Lkotlinx/atomicfu/AtomicLong;

.field public final array:Lkotlinx/atomicfu/AtomicArray;

.field public final capacity:I

.field public final mask:I

.field public final singleConsumer:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 8
    .line 9
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 10
    .line 11
    const-string v1, "REMOVE_FROZEN"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 7
    .line 8
    add-int/lit8 p2, p1, -0x1

    .line 9
    .line 10
    iput p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 18
    .line 19
    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 20
    .line 21
    new-instance v1, Lkotlinx/atomicfu/AtomicLong;

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    invoke-direct {v1, v2, v3, v0}, Lkotlinx/atomicfu/AtomicLong;-><init>(JLkotlinx/atomicfu/TraceBase;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 29
    .line 30
    new-instance v0, Lkotlinx/atomicfu/AtomicArray;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lkotlinx/atomicfu/AtomicArray;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 36
    .line 37
    const p0, 0x3fffffff    # 1.9999999f

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-gt p2, p0, :cond_0

    .line 43
    .line 44
    move p0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p0, v0

    .line 47
    :goto_0
    const-string v2, "Check failed."

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    and-int p0, p1, p2

    .line 52
    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    move v0, v1

    .line 56
    :cond_1
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 6
    .line 7
    :cond_0
    iget-wide v3, v2, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 8
    .line 9
    const-wide/high16 v5, 0x3000000000000000L    # 1.727233711018889E-77

    .line 10
    .line 11
    and-long/2addr v5, v3

    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    cmp-long v5, v5, v7

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    if-eqz v5, :cond_2

    .line 18
    .line 19
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-wide/high16 v0, 0x2000000000000000L

    .line 25
    .line 26
    and-long/2addr v0, v3

    .line 27
    cmp-long v0, v0, v7

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    :cond_1
    return v6

    .line 33
    :cond_2
    const-wide/32 v9, 0x3fffffff

    .line 34
    .line 35
    .line 36
    and-long/2addr v9, v3

    .line 37
    const/4 v5, 0x0

    .line 38
    shr-long/2addr v9, v5

    .line 39
    long-to-int v9, v9

    .line 40
    const-wide v10, 0xfffffffc0000000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long/2addr v10, v3

    .line 46
    const/16 v12, 0x1e

    .line 47
    .line 48
    shr-long/2addr v10, v12

    .line 49
    long-to-int v10, v10

    .line 50
    iget v11, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 51
    .line 52
    add-int/lit8 v13, v10, 0x2

    .line 53
    .line 54
    and-int/2addr v13, v11

    .line 55
    and-int v14, v9, v11

    .line 56
    .line 57
    if-ne v13, v14, :cond_3

    .line 58
    .line 59
    return v6

    .line 60
    :cond_3
    iget-boolean v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 61
    .line 62
    const v14, 0x3fffffff    # 1.9999999f

    .line 63
    .line 64
    .line 65
    if-nez v13, :cond_5

    .line 66
    .line 67
    iget-object v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 68
    .line 69
    and-int v15, v10, v11

    .line 70
    .line 71
    iget-object v13, v13, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 72
    .line 73
    aget-object v13, v13, v15

    .line 74
    .line 75
    iget-object v13, v13, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 76
    .line 77
    if-eqz v13, :cond_5

    .line 78
    .line 79
    iget v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    .line 80
    .line 81
    const/16 v4, 0x400

    .line 82
    .line 83
    if-lt v3, v4, :cond_4

    .line 84
    .line 85
    sub-int/2addr v10, v9

    .line 86
    and-int v4, v10, v14

    .line 87
    .line 88
    shr-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    if-le v4, v3, :cond_0

    .line 91
    .line 92
    :cond_4
    return v6

    .line 93
    :cond_5
    add-int/lit8 v6, v10, 0x1

    .line 94
    .line 95
    and-int/2addr v6, v14

    .line 96
    iget-object v9, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 97
    .line 98
    sget-object v13, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 99
    .line 100
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-wide v13, -0xfffffffc0000001L    # -3.1050369248997324E231

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    and-long/2addr v13, v3

    .line 109
    int-to-long v5, v6

    .line 110
    shl-long/2addr v5, v12

    .line 111
    or-long/2addr v5, v13

    .line 112
    invoke-virtual {v9, v3, v4, v5, v6}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_0

    .line 117
    .line 118
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 119
    .line 120
    and-int v3, v10, v11

    .line 121
    .line 122
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 123
    .line 124
    aget-object v2, v2, v3

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_6
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 130
    .line 131
    iget-wide v2, v2, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 132
    .line 133
    const-wide/high16 v4, 0x1000000000000000L

    .line 134
    .line 135
    and-long/2addr v2, v4

    .line 136
    cmp-long v2, v2, v7

    .line 137
    .line 138
    if-eqz v2, :cond_8

    .line 139
    .line 140
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 145
    .line 146
    iget v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 147
    .line 148
    and-int/2addr v3, v10

    .line 149
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 150
    .line 151
    aget-object v2, v2, v3

    .line 152
    .line 153
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 154
    .line 155
    instance-of v3, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 156
    .line 157
    if-eqz v3, :cond_7

    .line 158
    .line 159
    check-cast v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 160
    .line 161
    iget v2, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;->index:I

    .line 162
    .line 163
    if-ne v2, v10, :cond_7

    .line 164
    .line 165
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 166
    .line 167
    iget v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 168
    .line 169
    and-int/2addr v3, v10

    .line 170
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 171
    .line 172
    aget-object v2, v2, v3

    .line 173
    .line 174
    invoke-virtual {v2, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_7
    const/4 v0, 0x0

    .line 179
    :goto_0
    if-nez v0, :cond_6

    .line 180
    .line 181
    :cond_8
    const/4 v0, 0x0

    .line 182
    return v0
.end method

.method public final close()Z
    .locals 10

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 2
    .line 3
    :cond_0
    iget-wide v0, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 4
    .line 5
    const-wide/high16 v2, 0x2000000000000000L

    .line 6
    .line 7
    and-long v4, v0, v2

    .line 8
    .line 9
    const-wide/16 v6, 0x0

    .line 10
    .line 11
    cmp-long v4, v4, v6

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    return v5

    .line 17
    :cond_1
    const-wide/high16 v8, 0x1000000000000000L

    .line 18
    .line 19
    and-long/2addr v8, v0

    .line 20
    cmp-long v4, v8, v6

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_2
    or-long/2addr v2, v0

    .line 27
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return v5
.end method

.method public final next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 2
    .line 3
    :cond_0
    iget-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 4
    .line 5
    const-wide/high16 v3, 0x1000000000000000L

    .line 6
    .line 7
    and-long v5, v1, v3

    .line 8
    .line 9
    const-wide/16 v7, 0x0

    .line 10
    .line 11
    cmp-long v5, v5, v7

    .line 12
    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    or-long/2addr v3, v1

    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move-wide v1, v3

    .line 24
    :goto_0
    iget-object v3, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 25
    .line 26
    :goto_1
    iget-object v0, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 34
    .line 35
    new-instance v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 36
    .line 37
    iget v5, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    .line 38
    .line 39
    mul-int/lit8 v5, v5, 0x2

    .line 40
    .line 41
    iget-boolean v6, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 42
    .line 43
    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 44
    .line 45
    .line 46
    const-wide/32 v5, 0x3fffffff

    .line 47
    .line 48
    .line 49
    and-long/2addr v5, v1

    .line 50
    const/4 v7, 0x0

    .line 51
    shr-long/2addr v5, v7

    .line 52
    long-to-int v5, v5

    .line 53
    const-wide v6, 0xfffffffc0000000L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    and-long/2addr v6, v1

    .line 59
    const/16 v8, 0x1e

    .line 60
    .line 61
    shr-long/2addr v6, v8

    .line 62
    long-to-int v6, v6

    .line 63
    :goto_2
    iget v7, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 64
    .line 65
    and-int v8, v5, v7

    .line 66
    .line 67
    and-int/2addr v7, v6

    .line 68
    if-eq v8, v7, :cond_4

    .line 69
    .line 70
    iget-object v7, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 71
    .line 72
    iget-object v7, v7, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 73
    .line 74
    aget-object v7, v7, v8

    .line 75
    .line 76
    iget-object v7, v7, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 77
    .line 78
    if-nez v7, :cond_3

    .line 79
    .line 80
    new-instance v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 81
    .line 82
    invoke-direct {v7, v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;-><init>(I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v8, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 86
    .line 87
    iget v9, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 88
    .line 89
    and-int/2addr v9, v5

    .line 90
    iget-object v8, v8, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 91
    .line 92
    aget-object v8, v8, v9

    .line 93
    .line 94
    invoke-virtual {v8, v7}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    iget-object v5, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 101
    .line 102
    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const-wide v6, -0x1000000000000001L    # -3.1050361846014175E231

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    and-long/2addr v6, v1

    .line 113
    iput-wide v6, v5, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 114
    .line 115
    iget-object v5, v5, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 116
    .line 117
    sget-object v6, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 118
    .line 119
    if-eq v5, v6, :cond_5

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :cond_5
    const/4 v5, 0x0

    .line 125
    invoke-virtual {v0, v5, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 4
    .line 5
    :cond_0
    iget-wide v2, v1, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 6
    .line 7
    const-wide/high16 v4, 0x1000000000000000L

    .line 8
    .line 9
    and-long v6, v2, v4

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    cmp-long v6, v6, v8

    .line 14
    .line 15
    if-eqz v6, :cond_1

    .line 16
    .line 17
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    const-wide/32 v6, 0x3fffffff

    .line 21
    .line 22
    .line 23
    and-long v10, v2, v6

    .line 24
    .line 25
    const/4 v12, 0x0

    .line 26
    shr-long/2addr v10, v12

    .line 27
    long-to-int v10, v10

    .line 28
    const-wide v13, 0xfffffffc0000000L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v13, v2

    .line 34
    const/16 v11, 0x1e

    .line 35
    .line 36
    shr-long/2addr v13, v11

    .line 37
    long-to-int v11, v13

    .line 38
    iget v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 39
    .line 40
    and-int/2addr v11, v13

    .line 41
    and-int/2addr v13, v10

    .line 42
    const/4 v14, 0x0

    .line 43
    if-ne v11, v13, :cond_2

    .line 44
    .line 45
    return-object v14

    .line 46
    :cond_2
    iget-object v11, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 47
    .line 48
    iget-object v11, v11, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 49
    .line 50
    aget-object v11, v11, v13

    .line 51
    .line 52
    iget-object v11, v11, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 53
    .line 54
    if-nez v11, :cond_3

    .line 55
    .line 56
    iget-boolean v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    return-object v14

    .line 61
    :cond_3
    instance-of v13, v11, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 62
    .line 63
    if-eqz v13, :cond_4

    .line 64
    .line 65
    return-object v14

    .line 66
    :cond_4
    add-int/lit8 v13, v10, 0x1

    .line 67
    .line 68
    const v15, 0x3fffffff    # 1.9999999f

    .line 69
    .line 70
    .line 71
    and-int/2addr v13, v15

    .line 72
    iget-object v15, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 73
    .line 74
    sget-object v16, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 75
    .line 76
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-wide/32 v16, -0x40000000

    .line 80
    .line 81
    .line 82
    and-long v18, v2, v16

    .line 83
    .line 84
    int-to-long v8, v13

    .line 85
    shl-long/2addr v8, v12

    .line 86
    or-long v4, v8, v18

    .line 87
    .line 88
    invoke-virtual {v15, v2, v3, v4, v5}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 95
    .line 96
    iget v0, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 97
    .line 98
    and-int/2addr v0, v10

    .line 99
    iget-object v1, v1, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 100
    .line 101
    aget-object v0, v1, v0

    .line 102
    .line 103
    invoke-virtual {v0, v14}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-object v11

    .line 107
    :cond_5
    iget-boolean v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 108
    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    move-object v2, v0

    .line 112
    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 113
    .line 114
    :goto_1
    iget-wide v0, v3, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 115
    .line 116
    and-long v4, v0, v6

    .line 117
    .line 118
    shr-long/2addr v4, v12

    .line 119
    long-to-int v4, v4

    .line 120
    const-wide/high16 v18, 0x1000000000000000L

    .line 121
    .line 122
    and-long v22, v0, v18

    .line 123
    .line 124
    const-wide/16 v20, 0x0

    .line 125
    .line 126
    cmp-long v5, v22, v20

    .line 127
    .line 128
    if-eqz v5, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    move-object v2, v0

    .line 135
    goto :goto_2

    .line 136
    :cond_6
    iget-object v5, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 137
    .line 138
    sget-object v10, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    and-long v22, v0, v16

    .line 144
    .line 145
    or-long v6, v8, v22

    .line 146
    .line 147
    invoke-virtual {v5, v0, v1, v6, v7}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    iget-object v0, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 154
    .line 155
    iget v1, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 156
    .line 157
    and-int/2addr v1, v4

    .line 158
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 159
    .line 160
    aget-object v0, v0, v1

    .line 161
    .line 162
    invoke-virtual {v0, v14}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    move-object v2, v14

    .line 166
    :goto_2
    if-nez v2, :cond_7

    .line 167
    .line 168
    return-object v11

    .line 169
    :cond_7
    const-wide/32 v6, 0x3fffffff

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_8
    const-wide/32 v6, 0x3fffffff

    .line 174
    .line 175
    .line 176
    goto :goto_1
.end method
