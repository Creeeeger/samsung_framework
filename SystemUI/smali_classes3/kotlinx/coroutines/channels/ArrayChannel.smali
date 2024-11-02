.class public final Lkotlinx/coroutines/channels/ArrayChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public buffer:[Ljava/lang/Object;

.field public final capacity:I

.field public head:I

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field public final size:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 p3, 0x1

    .line 10
    if-lt p1, p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p3, p2

    .line 14
    :goto_0
    if-eqz p3, :cond_1

    .line 15
    .line 16
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    const/16 p3, 0x8

    .line 24
    .line 25
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p3, p1, [Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 32
    .line 33
    invoke-static {p3, p2, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {}, Lkotlinx/atomicfu/AtomicFU;->atomic()Lkotlinx/atomicfu/AtomicInt;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-string p0, "ArrayChannel capacity must be at least 1, but "

    .line 46
    .line 47
    const-string p2, " was specified"

    .line 48
    .line 49
    invoke-static {p0, p1, p2}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method


# virtual methods
.method public final enqueueElement(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-lt p1, v2, :cond_1

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-array v1, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, p1, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 24
    .line 25
    iget v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 26
    .line 27
    add-int/2addr v5, v3

    .line 28
    array-length v6, v4

    .line 29
    rem-int/2addr v5, v6

    .line 30
    aget-object v4, v4, v5

    .line 31
    .line 32
    aput-object v4, v1, v3

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 38
    .line 39
    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 43
    .line 44
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 47
    .line 48
    iget p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 49
    .line 50
    add-int/2addr p0, p1

    .line 51
    array-length p1, v0

    .line 52
    rem-int/2addr p0, p1

    .line 53
    aput-object p2, v0, p0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 57
    .line 58
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 59
    .line 60
    array-length v2, v0

    .line 61
    rem-int v2, v1, v2

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    aput-object v3, v0, v2

    .line 65
    .line 66
    add-int/2addr p1, v1

    .line 67
    array-length v2, v0

    .line 68
    rem-int/2addr p1, v2

    .line 69
    aput-object p2, v0, p1

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    array-length p1, v0

    .line 74
    rem-int/2addr v1, p1

    .line 75
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method public final enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    .line 12
    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final enqueueSend(Lkotlinx/coroutines/channels/SendElement;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/channels/SendElement;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final getBufferDebugString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 2
    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 4
    .line 5
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 6
    .line 7
    const-string v1, "(buffer:capacity="

    .line 8
    .line 9
    const-string v2, ",size="

    .line 10
    .line 11
    const-string v3, ")"

    .line 12
    .line 13
    invoke-static {v1, v0, v2, p0, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final isBufferAlwaysEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isBufferAlwaysFull()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isBufferEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    .line 3
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isBufferFull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    .line 3
    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    .line 5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 10
    .line 11
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isClosedForReceive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isClosedForReceive()Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 21
    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 25
    .line 26
    add-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/ArrayChannel$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 33
    .line 34
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    aget v2, v2, v3

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-eq v2, v3, :cond_4

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-eq v2, v3, :cond_3

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    :goto_0
    const/4 v2, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 54
    .line 55
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_3
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    :goto_1
    if-eqz v2, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_5
    if-nez v1, :cond_9

    .line 71
    .line 72
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-nez v2, :cond_7

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    .line 80
    .line 81
    if-eqz v3, :cond_8

    .line 82
    .line 83
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :cond_8
    :try_start_3
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_6

    .line 97
    .line 98
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 101
    .line 102
    .line 103
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_9
    :goto_2
    :try_start_4
    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->enqueueElement(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public final onCancelIdempotent(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 9
    .line 10
    iget v2, v2, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v3

    .line 15
    :goto_0
    if-ge v5, v2, :cond_1

    .line 16
    .line 17
    iget-object v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 18
    .line 19
    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 20
    .line 21
    aget-object v6, v6, v7

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v7, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 26
    .line 27
    if-eq v6, v7, :cond_0

    .line 28
    .line 29
    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_0
    iget-object v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 34
    .line 35
    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 36
    .line 37
    sget-object v8, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 38
    .line 39
    aput-object v8, v6, v7

    .line 40
    .line 41
    add-int/lit8 v7, v7, 0x1

    .line 42
    .line 43
    array-length v6, v6

    .line 44
    rem-int/2addr v7, v6

    .line 45
    iput v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    .line 61
    .line 62
    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    throw v4

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final pollInternal()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 25
    .line 26
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 27
    .line 28
    aget-object v4, v2, v3

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v5, v2, v3

    .line 32
    .line 33
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 34
    .line 35
    add-int/lit8 v3, v1, -0x1

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 38
    .line 39
    .line 40
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 41
    .line 42
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-ne v1, v3, :cond_4

    .line 47
    .line 48
    move-object v3, v5

    .line 49
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-nez v8, :cond_2

    .line 54
    .line 55
    move-object v5, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v8, v5}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move v7, v6

    .line 68
    move-object v5, v8

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    .line 71
    .line 72
    .line 73
    move-object v3, v8

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    :goto_1
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 76
    .line 77
    if-eq v2, v3, :cond_5

    .line 78
    .line 79
    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    .line 80
    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 84
    .line 85
    invoke-virtual {v3, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 89
    .line 90
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 91
    .line 92
    add-int/2addr v8, v1

    .line 93
    array-length v1, v3

    .line 94
    rem-int/2addr v8, v1

    .line 95
    aput-object v2, v3, v8

    .line 96
    .line 97
    :cond_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 98
    .line 99
    add-int/2addr v1, v6

    .line 100
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 101
    .line 102
    array-length v2, v2

    .line 103
    rem-int/2addr v1, v2

    .line 104
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 105
    .line 106
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    .line 110
    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 117
    .line 118
    .line 119
    :cond_6
    return-object v4

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final pollSelectInternal(Lkotlinx/coroutines/selects/SelectBuilderImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 25
    .line 26
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 27
    .line 28
    aget-object v4, v2, v3

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v5, v2, v3

    .line 32
    .line 33
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 34
    .line 35
    add-int/lit8 v3, v1, -0x1

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 38
    .line 39
    .line 40
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 41
    .line 42
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    if-ne v1, v3, :cond_6

    .line 46
    .line 47
    :cond_2
    new-instance v3, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 48
    .line 49
    iget-object v7, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 50
    .line 51
    invoke-direct {v3, v7}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    .line 55
    .line 56
    invoke-direct {v7, p1, v3}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v5}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    if-nez v7, :cond_3

    .line 64
    .line 65
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;->getAffectedNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v2, v5

    .line 73
    check-cast v2, Lkotlinx/coroutines/channels/Send;

    .line 74
    .line 75
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move v3, v6

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 82
    .line 83
    if-eq v7, v3, :cond_6

    .line 84
    .line 85
    sget-object v3, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Lkotlinx/coroutines/internal/Symbol;

    .line 86
    .line 87
    if-eq v7, v3, :cond_2

    .line 88
    .line 89
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 90
    .line 91
    if-ne v7, v2, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 99
    .line 100
    iget p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 101
    .line 102
    aput-object v4, p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    .line 106
    .line 107
    return-object v7

    .line 108
    :cond_4
    :try_start_2
    instance-of v2, v7, Lkotlinx/coroutines/channels/Closed;

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    move v3, v6

    .line 113
    move-object v2, v7

    .line 114
    move-object v5, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "performAtomicTrySelect(describeTryOffer) returned "

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_6
    const/4 v3, 0x0

    .line 144
    :goto_0
    sget-object v7, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 145
    .line 146
    if-eq v2, v7, :cond_7

    .line 147
    .line 148
    instance-of v7, v2, Lkotlinx/coroutines/channels/Closed;

    .line 149
    .line 150
    if-nez v7, :cond_7

    .line 151
    .line 152
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 158
    .line 159
    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 160
    .line 161
    add-int/2addr v7, v1

    .line 162
    array-length v1, p1

    .line 163
    rem-int/2addr v7, v1

    .line 164
    aput-object v2, p1, v7

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_8

    .line 172
    .line 173
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 179
    .line 180
    iget p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 181
    .line 182
    aput-object v4, p1, p0

    .line 183
    .line 184
    sget-object p0, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    .line 188
    .line 189
    return-object p0

    .line 190
    :cond_8
    :goto_1
    :try_start_3
    iget p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 191
    .line 192
    add-int/2addr p1, v6

    .line 193
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 194
    .line 195
    array-length v1, v1

    .line 196
    rem-int/2addr p1, v1

    .line 197
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 198
    .line 199
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    .line 203
    .line 204
    if-eqz v3, :cond_9

    .line 205
    .line 206
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    check-cast v5, Lkotlinx/coroutines/channels/Send;

    .line 210
    .line 211
    invoke-virtual {v5}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 212
    .line 213
    .line 214
    :cond_9
    return-object v4

    .line 215
    :catchall_0
    move-exception p0

    .line 216
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    .line 218
    .line 219
    throw p0
.end method
