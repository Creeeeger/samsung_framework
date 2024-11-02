.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lokio/BufferedSource;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Ljava/nio/channels/WritableByteChannel;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public head:Lokio/Segment;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buffer()Lokio/Buffer;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 25
    .line 26
    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 27
    .line 28
    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 29
    .line 30
    iget-object v4, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 31
    .line 32
    :goto_0
    if-eq v4, v1, :cond_3

    .line 33
    .line 34
    iget-object v5, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 35
    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v5, v6}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :cond_3
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 59
    .line 60
    iput-wide v1, v0, Lokio/Buffer;->size:J

    .line 61
    .line 62
    :goto_1
    return-object v0

    .line 63
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 64
    .line 65
    .line 66
    throw v2
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_1
    instance-of v3, v1, Lokio/Buffer;

    .line 11
    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    :goto_1
    const/4 v2, 0x0

    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_2
    iget-wide v5, v0, Lokio/Buffer;->size:J

    .line 18
    .line 19
    check-cast v1, Lokio/Buffer;

    .line 20
    .line 21
    iget-wide v7, v1, Lokio/Buffer;->size:J

    .line 22
    .line 23
    cmp-long v3, v5, v7

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    cmp-long v3, v5, v7

    .line 31
    .line 32
    if-nez v3, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v3, :cond_c

    .line 39
    .line 40
    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 41
    .line 42
    if-eqz v1, :cond_b

    .line 43
    .line 44
    iget v6, v3, Lokio/Segment;->pos:I

    .line 45
    .line 46
    iget v9, v1, Lokio/Segment;->pos:I

    .line 47
    .line 48
    move-wide v10, v7

    .line 49
    :goto_2
    iget-wide v12, v0, Lokio/Buffer;->size:J

    .line 50
    .line 51
    cmp-long v12, v10, v12

    .line 52
    .line 53
    if-gez v12, :cond_0

    .line 54
    .line 55
    iget v12, v3, Lokio/Segment;->limit:I

    .line 56
    .line 57
    sub-int/2addr v12, v6

    .line 58
    iget v13, v1, Lokio/Segment;->limit:I

    .line 59
    .line 60
    sub-int/2addr v13, v9

    .line 61
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    int-to-long v12, v12

    .line 66
    move-wide v14, v7

    .line 67
    :goto_3
    cmp-long v16, v14, v12

    .line 68
    .line 69
    if-gez v16, :cond_6

    .line 70
    .line 71
    add-int/lit8 v16, v6, 0x1

    .line 72
    .line 73
    iget-object v2, v3, Lokio/Segment;->data:[B

    .line 74
    .line 75
    aget-byte v2, v2, v6

    .line 76
    .line 77
    add-int/lit8 v6, v9, 0x1

    .line 78
    .line 79
    iget-object v4, v1, Lokio/Segment;->data:[B

    .line 80
    .line 81
    aget-byte v4, v4, v9

    .line 82
    .line 83
    if-eq v2, v4, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const-wide/16 v17, 0x1

    .line 87
    .line 88
    add-long v14, v14, v17

    .line 89
    .line 90
    move v9, v6

    .line 91
    move/from16 v6, v16

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    iget v2, v3, Lokio/Segment;->limit:I

    .line 95
    .line 96
    if-ne v6, v2, :cond_8

    .line 97
    .line 98
    iget-object v2, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 99
    .line 100
    if-eqz v2, :cond_7

    .line 101
    .line 102
    iget v3, v2, Lokio/Segment;->pos:I

    .line 103
    .line 104
    move v6, v3

    .line 105
    move-object v3, v2

    .line 106
    goto :goto_4

    .line 107
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 108
    .line 109
    .line 110
    throw v5

    .line 111
    :cond_8
    :goto_4
    iget v2, v1, Lokio/Segment;->limit:I

    .line 112
    .line 113
    if-ne v9, v2, :cond_a

    .line 114
    .line 115
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 116
    .line 117
    if-eqz v1, :cond_9

    .line 118
    .line 119
    iget v2, v1, Lokio/Segment;->pos:I

    .line 120
    .line 121
    move v9, v2

    .line 122
    goto :goto_5

    .line 123
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 124
    .line 125
    .line 126
    throw v5

    .line 127
    :cond_a
    :goto_5
    add-long/2addr v10, v12

    .line 128
    goto :goto_2

    .line 129
    :goto_6
    return v2

    .line 130
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 131
    .line 132
    .line 133
    throw v5

    .line 134
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 135
    .line 136
    .line 137
    throw v5
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getBuffer()Lokio/Buffer;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getByte(J)B
    .locals 7

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    .line 3
    const-wide/16 v4, 0x1

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 15
    .line 16
    sub-long v4, v2, p1

    .line 17
    .line 18
    cmp-long p0, v4, p1

    .line 19
    .line 20
    if-gez p0, :cond_2

    .line 21
    .line 22
    :goto_0
    cmp-long p0, v2, p1

    .line 23
    .line 24
    if-lez p0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget p0, v0, Lokio/Segment;->limit:I

    .line 31
    .line 32
    iget v4, v0, Lokio/Segment;->pos:I

    .line 33
    .line 34
    sub-int/2addr p0, v4

    .line 35
    int-to-long v4, p0

    .line 36
    sub-long/2addr v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_1
    iget p0, v0, Lokio/Segment;->pos:I

    .line 43
    .line 44
    int-to-long v4, p0

    .line 45
    add-long/2addr v4, p1

    .line 46
    sub-long/2addr v4, v2

    .line 47
    long-to-int p0, v4

    .line 48
    iget-object p1, v0, Lokio/Segment;->data:[B

    .line 49
    .line 50
    aget-byte p0, p1, p0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    :goto_1
    iget p0, v0, Lokio/Segment;->limit:I

    .line 56
    .line 57
    iget v4, v0, Lokio/Segment;->pos:I

    .line 58
    .line 59
    sub-int/2addr p0, v4

    .line 60
    int-to-long v5, p0

    .line 61
    add-long/2addr v5, v2

    .line 62
    cmp-long p0, v5, p1

    .line 63
    .line 64
    if-lez p0, :cond_3

    .line 65
    .line 66
    int-to-long v4, v4

    .line 67
    add-long/2addr v4, p1

    .line 68
    sub-long/2addr v4, v2

    .line 69
    long-to-int p0, v4

    .line 70
    iget-object p1, v0, Lokio/Segment;->data:[B

    .line 71
    .line 72
    aget-byte p0, p1, p0

    .line 73
    .line 74
    :goto_2
    return p0

    .line 75
    :cond_3
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    move-wide v2, v5

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 86
    .line 87
    .line 88
    throw v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :cond_0
    iget v2, v0, Lokio/Segment;->pos:I

    .line 7
    .line 8
    iget v3, v0, Lokio/Segment;->limit:I

    .line 9
    .line 10
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 15
    .line 16
    aget-byte v4, v4, v2

    .line 17
    .line 18
    add-int/2addr v1, v4

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 27
    .line 28
    if-ne v0, v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0

    .line 36
    :cond_3
    const/4 v1, 0x0

    .line 37
    :goto_1
    return v1
.end method

.method public final indexOfElement(Lokio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final indexOfElement(Lokio/ByteString;J)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_19

    .line 2
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_18

    .line 3
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long v7, v5, p2

    cmp-long v7, v7, p2

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-gez v7, :cond_c

    :goto_1
    cmp-long v0, v5, p2

    if-lez v0, :cond_2

    .line 4
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v2, :cond_1

    .line 5
    iget v0, v2, Lokio/Segment;->limit:I

    iget v1, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 7
    :cond_2
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    move-result v0

    if-ne v0, v9, :cond_7

    .line 8
    invoke-virtual {p1, v3}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v0

    .line 9
    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$okio(I)B

    move-result p1

    .line 10
    :goto_2
    iget-wide v3, p0, Lokio/Buffer;->size:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_18

    .line 11
    iget v1, v2, Lokio/Segment;->pos:I

    int-to-long v3, v1

    add-long/2addr v3, p2

    sub-long/2addr v3, v5

    long-to-int p2, v3

    .line 12
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 13
    iget-object v1, v2, Lokio/Segment;->data:[B

    aget-byte v1, v1, p2

    if-eq v1, v0, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 14
    :cond_4
    :goto_4
    iget p0, v2, Lokio/Segment;->pos:I

    goto :goto_8

    .line 15
    :cond_5
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 16
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v2, :cond_6

    move-wide p2, v5

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 17
    :cond_7
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    .line 18
    :goto_5
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_18

    .line 19
    iget v0, v2, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    sub-long/2addr v0, v5

    long-to-int p2, v0

    .line 20
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_6
    if-ge p2, p3, :cond_a

    .line 21
    iget-object v0, v2, Lokio/Segment;->data:[B

    aget-byte v0, v0, p2

    .line 22
    array-length v1, p1

    move v4, v3

    :goto_7
    if-ge v4, v1, :cond_9

    aget-byte v7, p1, v4

    if-ne v0, v7, :cond_8

    .line 23
    iget p0, v2, Lokio/Segment;->pos:I

    :goto_8
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v5

    goto/16 :goto_11

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 24
    :cond_a
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 25
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v2, :cond_b

    move-wide p2, v5

    goto :goto_5

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 26
    :cond_c
    :goto_9
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-lez v7, :cond_16

    .line 27
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    move-result v5

    if-ne v5, v9, :cond_11

    .line 28
    invoke-virtual {p1, v3}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v3

    .line 29
    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$okio(I)B

    move-result p1

    .line 30
    :goto_a
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_18

    .line 31
    iget v4, v2, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    sub-long/2addr v4, v0

    long-to-int p2, v4

    .line 32
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_b
    if-ge p2, p3, :cond_f

    .line 33
    iget-object v4, v2, Lokio/Segment;->data:[B

    aget-byte v4, v4, p2

    if-eq v4, v3, :cond_e

    if-ne v4, p1, :cond_d

    goto :goto_c

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 34
    :cond_e
    :goto_c
    iget p0, v2, Lokio/Segment;->pos:I

    goto :goto_10

    .line 35
    :cond_f
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 36
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v2, :cond_10

    move-wide p2, v0

    goto :goto_a

    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 37
    :cond_11
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    .line 38
    :goto_d
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_18

    .line 39
    iget v4, v2, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    sub-long/2addr v4, v0

    long-to-int p2, v4

    .line 40
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_e
    if-ge p2, p3, :cond_14

    .line 41
    iget-object v4, v2, Lokio/Segment;->data:[B

    aget-byte v4, v4, p2

    .line 42
    array-length v5, p1

    move v6, v3

    :goto_f
    if-ge v6, v5, :cond_13

    aget-byte v7, p1, v6

    if-ne v4, v7, :cond_12

    .line 43
    iget p0, v2, Lokio/Segment;->pos:I

    :goto_10
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v0

    goto :goto_11

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 44
    :cond_14
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 45
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v2, :cond_15

    move-wide p2, v0

    goto :goto_d

    :cond_15
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 46
    :cond_16
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v2, :cond_17

    move-wide v0, v5

    goto/16 :goto_9

    :cond_17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    :cond_18
    const-wide/16 p0, -0x1

    :goto_11
    return-wide p0

    :cond_19
    const-string p0, "fromIndex < 0: "

    .line 47
    invoke-static {p0, p2, p3}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 53
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 55
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 56
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/Segment;->pos:I

    .line 57
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 58
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne p1, v2, :cond_0

    .line 59
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 60
    sget-object p0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {p0, v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_0
    return v1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 7

    .line 61
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 62
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_0

    .line 63
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 64
    iget v1, v0, Lokio/Segment;->pos:I

    add-int v2, v1, p3

    sub-int/2addr v2, v1

    .line 65
    iget-object v3, v0, Lokio/Segment;->data:[B

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->pos:I

    .line 67
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 68
    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 69
    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_1

    .line 70
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 71
    sget-object p0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {p0, v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :cond_1
    :goto_0
    return p3
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_18

    .line 1
    iget-wide v3, p0, Lokio/Buffer;->size:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_1

    const-wide/16 p0, -0x1

    goto/16 :goto_c

    :cond_1
    cmp-long v2, p2, v3

    if-lez v2, :cond_2

    move-wide p2, v3

    :cond_2
    if-eq p0, p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_17

    const-wide/16 v5, 0x0

    move-wide v7, p2

    .line 2
    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    move-wide v2, p2

    :goto_2
    cmp-long v0, v2, v0

    if-lez v0, :cond_16

    .line 3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v5, v4

    cmp-long v5, v2, v5

    const/16 v6, 0x2000

    if-gez v5, :cond_b

    .line 4
    iget-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_6

    .line 5
    iget-boolean v7, v5, Lokio/Segment;->owner:Z

    if-eqz v7, :cond_6

    iget v7, v5, Lokio/Segment;->limit:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    iget-boolean v9, v5, Lokio/Segment;->shared:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    iget v9, v5, Lokio/Segment;->pos:I

    :goto_4
    int-to-long v9, v9

    sub-long/2addr v7, v9

    int-to-long v9, v6

    cmp-long v7, v7, v9

    if-gtz v7, :cond_6

    long-to-int v1, v2

    .line 6
    invoke-virtual {v0, v5, v1}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 7
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 9
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lokio/Buffer;->size:J

    goto/16 :goto_b

    :cond_6
    long-to-int v5, v2

    if-lez v5, :cond_7

    if-gt v5, v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_a

    const/16 v4, 0x400

    if-lt v5, v4, :cond_8

    .line 11
    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    const/4 v7, 0x0

    goto :goto_6

    .line 12
    :cond_8
    sget-object v4, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {v4}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v4

    .line 13
    iget v7, v0, Lokio/Segment;->pos:I

    add-int v8, v7, v5

    sub-int/2addr v8, v7

    .line 14
    iget-object v9, v0, Lokio/Segment;->data:[B

    iget-object v10, v4, Lokio/Segment;->data:[B

    const/4 v11, 0x0

    invoke-static {v9, v7, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v11

    .line 15
    :goto_6
    iget v8, v4, Lokio/Segment;->pos:I

    add-int/2addr v8, v5

    iput v8, v4, Lokio/Segment;->limit:I

    .line 16
    iget v8, v0, Lokio/Segment;->pos:I

    add-int/2addr v8, v5

    iput v8, v0, Lokio/Segment;->pos:I

    .line 17
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 18
    iput-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_7

    .line 19
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 20
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount out of range"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/4 v7, 0x0

    .line 21
    :goto_7
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_14

    .line 22
    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    .line 23
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 24
    iget-object v8, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_c

    .line 25
    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 26
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 27
    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_a

    .line 28
    :cond_c
    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v8, :cond_13

    .line 29
    invoke-virtual {v8, v0}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 30
    iget-object v8, v0, Lokio/Segment;->prev:Lokio/Segment;

    if-eq v8, v0, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    move v9, v7

    :goto_8
    if-eqz v9, :cond_12

    if-eqz v8, :cond_11

    .line 31
    iget-boolean v1, v8, Lokio/Segment;->owner:Z

    if-nez v1, :cond_e

    goto :goto_a

    .line 32
    :cond_e
    iget v1, v0, Lokio/Segment;->limit:I

    iget v9, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v9

    .line 33
    iget v9, v8, Lokio/Segment;->limit:I

    sub-int/2addr v6, v9

    iget-boolean v9, v8, Lokio/Segment;->shared:Z

    if-eqz v9, :cond_f

    goto :goto_9

    :cond_f
    iget v7, v8, Lokio/Segment;->pos:I

    :goto_9
    add-int/2addr v6, v7

    if-le v1, v6, :cond_10

    goto :goto_a

    .line 34
    :cond_10
    invoke-virtual {v0, v8, v1}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 35
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 36
    sget-object v1, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {v1, v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 37
    :goto_a
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, v4

    .line 38
    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 39
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, v4

    .line 40
    iput-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v2, v4

    const-wide/16 v0, 0x0

    goto/16 :goto_2

    .line 41
    :cond_11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 42
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot compact"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 44
    :cond_14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 45
    :cond_15
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_16
    :goto_b
    move-wide p0, p2

    :goto_c
    return-wide p0

    .line 46
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    const-string p0, "byteCount < 0: "

    .line 47
    invoke-static {p0, p2, p3}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readByte()B
    .locals 8

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget v3, v2, Lokio/Segment;->pos:I

    .line 14
    .line 15
    iget v4, v2, Lokio/Segment;->limit:I

    .line 16
    .line 17
    add-int/lit8 v5, v3, 0x1

    .line 18
    .line 19
    iget-object v6, v2, Lokio/Segment;->data:[B

    .line 20
    .line 21
    aget-byte v3, v6, v3

    .line 22
    .line 23
    const-wide/16 v6, 0x1

    .line 24
    .line 25
    sub-long/2addr v0, v6

    .line 26
    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 27
    .line 28
    if-ne v5, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 35
    .line 36
    sget-object p0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput v5, v2, Lokio/Segment;->pos:I

    .line 43
    .line 44
    :goto_0
    return v3

    .line 45
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    throw p0

    .line 50
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final readByteArray(J)[B
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    const v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    int-to-long v2, v0

    .line 12
    cmp-long v0, p1, v2

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 22
    .line 23
    cmp-long v0, v2, p1

    .line 24
    .line 25
    if-ltz v0, :cond_3

    .line 26
    .line 27
    long-to-int p1, p1

    .line 28
    new-array p2, p1, [B

    .line 29
    .line 30
    :goto_1
    if-ge v1, p1, :cond_2

    .line 31
    .line 32
    sub-int v0, p1, v1

    .line 33
    .line 34
    invoke-virtual {p0, p2, v1, v0}, Lokio/Buffer;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, -0x1

    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    return-object p2

    .line 50
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_4
    const-string p0, "byteCount: "

    .line 57
    .line 58
    invoke-static {p0, p1, p2}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public final readByteString()Lokio/ByteString;
    .locals 4

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    const v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-eqz v2, :cond_3

    .line 21
    .line 22
    cmp-long v2, v0, v0

    .line 23
    .line 24
    if-ltz v2, :cond_2

    .line 25
    .line 26
    const/16 v2, 0x1000

    .line 27
    .line 28
    int-to-long v2, v2

    .line 29
    cmp-long v2, v0, v2

    .line 30
    .line 31
    if-ltz v2, :cond_1

    .line 32
    .line 33
    long-to-int v2, v0

    .line 34
    invoke-virtual {p0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v2, Lokio/ByteString;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v2, p0}, Lokio/ByteString;-><init>([B)V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-object v2

    .line 52
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_3
    const-string p0, "byteCount: "

    .line 59
    .line 60
    invoke-static {p0, v0, v1}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public final readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    int-to-long v1, v1

    .line 11
    cmp-long v1, p1, v1

    .line 12
    .line 13
    if-gtz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz v1, :cond_6

    .line 19
    .line 20
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 21
    .line 22
    cmp-long v1, v1, p1

    .line 23
    .line 24
    if-ltz v1, :cond_5

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string p0, ""

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget v1, v0, Lokio/Segment;->pos:I

    .line 36
    .line 37
    int-to-long v2, v1

    .line 38
    add-long/2addr v2, p1

    .line 39
    iget v4, v0, Lokio/Segment;->limit:I

    .line 40
    .line 41
    int-to-long v4, v4

    .line 42
    cmp-long v2, v2, v4

    .line 43
    .line 44
    if-lez v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_2
    long-to-int v2, p1

    .line 57
    new-instance v3, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 60
    .line 61
    invoke-direct {v3, v4, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    iget p3, v0, Lokio/Segment;->pos:I

    .line 65
    .line 66
    add-int/2addr p3, v2

    .line 67
    iput p3, v0, Lokio/Segment;->pos:I

    .line 68
    .line 69
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 70
    .line 71
    sub-long/2addr v1, p1

    .line 72
    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 73
    .line 74
    iget p1, v0, Lokio/Segment;->limit:I

    .line 75
    .line 76
    if-ne p3, p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 83
    .line 84
    sget-object p0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-object v3

    .line 90
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    throw p0

    .line 95
    :cond_5
    new-instance p0, Ljava/io/EOFException;

    .line 96
    .line 97
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_6
    const-string p0, "byteCount: "

    .line 102
    .line 103
    invoke-static {p0, p1, p2}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method public final readUtf8(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final request(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    .line 3
    cmp-long p0, v0, p1

    .line 4
    .line 5
    if-ltz p0, :cond_0

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

.method public final select(Lokio/Options;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lokio/internal/BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 12
    .line 13
    aget-object p1, p1, v0

    .line 14
    .line 15
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-long v1, p1

    .line 20
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return v0
.end method

.method public final skip(J)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lokio/Segment;->limit:I

    .line 12
    .line 13
    iget v2, v0, Lokio/Segment;->pos:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 23
    .line 24
    int-to-long v4, v1

    .line 25
    sub-long/2addr v2, v4

    .line 26
    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 27
    .line 28
    sub-long/2addr p1, v4

    .line 29
    iget v2, v0, Lokio/Segment;->pos:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iput v2, v0, Lokio/Segment;->pos:I

    .line 33
    .line 34
    iget v1, v0, Lokio/Segment;->limit:I

    .line 35
    .line 36
    if-ne v2, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 43
    .line 44
    sget-object v1, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    return-void
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    int-to-long v4, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x0

    .line 20
    if-ge v2, p1, :cond_3

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget v4, v0, Lokio/Segment;->limit:I

    .line 25
    .line 26
    iget v5, v0, Lokio/Segment;->pos:I

    .line 27
    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    sub-int/2addr v4, v5

    .line 31
    add-int/2addr v2, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 38
    .line 39
    const-string p1, "s.limit == s.pos"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 46
    .line 47
    .line 48
    throw v4

    .line 49
    :cond_3
    new-array v0, v3, [[B

    .line 50
    .line 51
    mul-int/lit8 v2, v3, 0x2

    .line 52
    .line 53
    new-array v2, v2, [I

    .line 54
    .line 55
    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 56
    .line 57
    move v5, v1

    .line 58
    :goto_1
    if-ge v1, p1, :cond_5

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    iget-object v6, p0, Lokio/Segment;->data:[B

    .line 63
    .line 64
    aput-object v6, v0, v5

    .line 65
    .line 66
    iget v6, p0, Lokio/Segment;->limit:I

    .line 67
    .line 68
    iget v7, p0, Lokio/Segment;->pos:I

    .line 69
    .line 70
    sub-int/2addr v6, v7

    .line 71
    add-int/2addr v1, v6

    .line 72
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    aput v6, v2, v5

    .line 77
    .line 78
    add-int v6, v5, v3

    .line 79
    .line 80
    iget v7, p0, Lokio/Segment;->pos:I

    .line 81
    .line 82
    aput v7, v2, v6

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    iput-boolean v6, p0, Lokio/Segment;->shared:Z

    .line 86
    .line 87
    add-int/2addr v5, v6

    .line 88
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 92
    .line 93
    .line 94
    throw v4

    .line 95
    :cond_5
    new-instance p0, Lokio/SegmentedByteString;

    .line 96
    .line 97
    invoke-direct {p0, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    .line 3
    const v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    int-to-long v2, v2

    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-eqz v2, :cond_1

    .line 15
    .line 16
    long-to-int v0, v0

    .line 17
    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "size > Int.MAX_VALUE: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public final writableSegment$okio(I)Lokio/Segment;
    .locals 2

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 17
    .line 18
    invoke-virtual {p1}, Lokio/SegmentPool;->take()Lokio/Segment;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 23
    .line 24
    iput-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 25
    .line 26
    iput-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object p0, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 30
    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    iget v1, p0, Lokio/Segment;->limit:I

    .line 34
    .line 35
    add-int/2addr v1, p1

    .line 36
    if-gt v1, v0, :cond_3

    .line 37
    .line 38
    iget-boolean p1, p0, Lokio/Segment;->owner:Z

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object p1, p0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :goto_1
    sget-object p1, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 46
    .line 47
    invoke-virtual {p1}, Lokio/SegmentPool;->take()Lokio/Segment;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-object p1

    .line 55
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    throw p0

    .line 60
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p1, "unexpected capacity"

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, v2, Lokio/Segment;->limit:I

    .line 14
    .line 15
    rsub-int v3, v3, 0x2000

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, v2, Lokio/Segment;->data:[B

    .line 22
    .line 23
    iget v5, v2, Lokio/Segment;->limit:I

    .line 24
    .line 25
    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    sub-int/2addr v1, v3

    .line 29
    iget v4, v2, Lokio/Segment;->limit:I

    .line 30
    .line 31
    add-int/2addr v4, v3

    .line 32
    iput v4, v2, Lokio/Segment;->limit:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 36
    .line 37
    int-to-long v3, v0

    .line 38
    add-long/2addr v1, v3

    .line 39
    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 40
    .line 41
    return v0
.end method

.method public final writeByte(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v0, Lokio/Segment;->limit:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, v0, Lokio/Segment;->limit:I

    .line 11
    .line 12
    int-to-byte p1, p1

    .line 13
    iget-object v0, v0, Lokio/Segment;->data:[B

    .line 14
    .line 15
    aput-byte p1, v0, v1

    .line 16
    .line 17
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 23
    .line 24
    return-void
.end method

.method public final writeInt(I)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v0, Lokio/Segment;->limit:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    ushr-int/lit8 v3, p1, 0x18

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-byte v3, v3

    .line 15
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 16
    .line 17
    aput-byte v3, v4, v1

    .line 18
    .line 19
    add-int/lit8 v1, v2, 0x1

    .line 20
    .line 21
    ushr-int/lit8 v3, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v4, v2

    .line 27
    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    ushr-int/lit8 v3, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    .line 34
    int-to-byte v3, v3

    .line 35
    aput-byte v3, v4, v1

    .line 36
    .line 37
    add-int/lit8 v1, v2, 0x1

    .line 38
    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 40
    .line 41
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v4, v2

    .line 43
    .line 44
    iput v1, v0, Lokio/Segment;->limit:I

    .line 45
    .line 46
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 47
    .line 48
    const-wide/16 v2, 0x4

    .line 49
    .line 50
    add-long/2addr v0, v2

    .line 51
    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 52
    .line 53
    return-void
.end method

.method public final writeUtf8(IILjava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    if-eqz v2, :cond_f

    .line 9
    .line 10
    if-lt p2, p1, :cond_1

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    move v2, v0

    .line 15
    :goto_1
    if-eqz v2, :cond_e

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-gt p2, v2, :cond_2

    .line 22
    .line 23
    move v2, v1

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v2, v0

    .line 26
    :goto_2
    if-eqz v2, :cond_d

    .line 27
    .line 28
    :goto_3
    if-ge p1, p2, :cond_c

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v3, 0x80

    .line 35
    .line 36
    if-ge v2, v3, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget v5, v4, Lokio/Segment;->limit:I

    .line 43
    .line 44
    sub-int/2addr v5, p1

    .line 45
    rsub-int v6, v5, 0x2000

    .line 46
    .line 47
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    add-int/lit8 v7, p1, 0x1

    .line 52
    .line 53
    add-int/2addr p1, v5

    .line 54
    int-to-byte v2, v2

    .line 55
    iget-object v8, v4, Lokio/Segment;->data:[B

    .line 56
    .line 57
    aput-byte v2, v8, p1

    .line 58
    .line 59
    :goto_4
    move p1, v7

    .line 60
    if-ge p1, v6, :cond_4

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-lt v2, v3, :cond_3

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_3
    add-int/lit8 v7, p1, 0x1

    .line 70
    .line 71
    add-int/2addr p1, v5

    .line 72
    int-to-byte v2, v2

    .line 73
    aput-byte v2, v8, p1

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    :goto_5
    add-int/2addr v5, p1

    .line 77
    iget v2, v4, Lokio/Segment;->limit:I

    .line 78
    .line 79
    sub-int/2addr v5, v2

    .line 80
    add-int/2addr v2, v5

    .line 81
    iput v2, v4, Lokio/Segment;->limit:I

    .line 82
    .line 83
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 84
    .line 85
    int-to-long v4, v5

    .line 86
    add-long/2addr v2, v4

    .line 87
    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const/16 v4, 0x800

    .line 91
    .line 92
    if-ge v2, v4, :cond_6

    .line 93
    .line 94
    const/4 v4, 0x2

    .line 95
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget v6, v5, Lokio/Segment;->limit:I

    .line 100
    .line 101
    shr-int/lit8 v7, v2, 0x6

    .line 102
    .line 103
    or-int/lit16 v7, v7, 0xc0

    .line 104
    .line 105
    int-to-byte v7, v7

    .line 106
    iget-object v8, v5, Lokio/Segment;->data:[B

    .line 107
    .line 108
    aput-byte v7, v8, v6

    .line 109
    .line 110
    add-int/lit8 v7, v6, 0x1

    .line 111
    .line 112
    and-int/lit8 v2, v2, 0x3f

    .line 113
    .line 114
    or-int/2addr v2, v3

    .line 115
    int-to-byte v2, v2

    .line 116
    aput-byte v2, v8, v7

    .line 117
    .line 118
    add-int/2addr v6, v4

    .line 119
    iput v6, v5, Lokio/Segment;->limit:I

    .line 120
    .line 121
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 122
    .line 123
    const-wide/16 v4, 0x2

    .line 124
    .line 125
    add-long/2addr v2, v4

    .line 126
    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 127
    .line 128
    goto/16 :goto_9

    .line 129
    .line 130
    :cond_6
    const v4, 0xd800

    .line 131
    .line 132
    .line 133
    const/16 v5, 0x3f

    .line 134
    .line 135
    if-lt v2, v4, :cond_b

    .line 136
    .line 137
    const v4, 0xdfff

    .line 138
    .line 139
    .line 140
    if-le v2, v4, :cond_7

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_7
    add-int/lit8 v6, p1, 0x1

    .line 144
    .line 145
    if-ge v6, p2, :cond_8

    .line 146
    .line 147
    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    goto :goto_6

    .line 152
    :cond_8
    move v7, v0

    .line 153
    :goto_6
    const v8, 0xdbff

    .line 154
    .line 155
    .line 156
    if-gt v2, v8, :cond_a

    .line 157
    .line 158
    const v8, 0xdc00

    .line 159
    .line 160
    .line 161
    if-gt v8, v7, :cond_a

    .line 162
    .line 163
    if-ge v4, v7, :cond_9

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_9
    and-int/lit16 v2, v2, 0x3ff

    .line 167
    .line 168
    shl-int/lit8 v2, v2, 0xa

    .line 169
    .line 170
    and-int/lit16 v4, v7, 0x3ff

    .line 171
    .line 172
    or-int/2addr v2, v4

    .line 173
    const/high16 v4, 0x10000

    .line 174
    .line 175
    add-int/2addr v2, v4

    .line 176
    const/4 v4, 0x4

    .line 177
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iget v7, v6, Lokio/Segment;->limit:I

    .line 182
    .line 183
    shr-int/lit8 v8, v2, 0x12

    .line 184
    .line 185
    or-int/lit16 v8, v8, 0xf0

    .line 186
    .line 187
    int-to-byte v8, v8

    .line 188
    iget-object v9, v6, Lokio/Segment;->data:[B

    .line 189
    .line 190
    aput-byte v8, v9, v7

    .line 191
    .line 192
    add-int/lit8 v8, v7, 0x1

    .line 193
    .line 194
    shr-int/lit8 v10, v2, 0xc

    .line 195
    .line 196
    and-int/2addr v10, v5

    .line 197
    or-int/2addr v10, v3

    .line 198
    int-to-byte v10, v10

    .line 199
    aput-byte v10, v9, v8

    .line 200
    .line 201
    add-int/lit8 v8, v7, 0x2

    .line 202
    .line 203
    shr-int/lit8 v10, v2, 0x6

    .line 204
    .line 205
    and-int/2addr v10, v5

    .line 206
    or-int/2addr v10, v3

    .line 207
    int-to-byte v10, v10

    .line 208
    aput-byte v10, v9, v8

    .line 209
    .line 210
    add-int/lit8 v8, v7, 0x3

    .line 211
    .line 212
    and-int/2addr v2, v5

    .line 213
    or-int/2addr v2, v3

    .line 214
    int-to-byte v2, v2

    .line 215
    aput-byte v2, v9, v8

    .line 216
    .line 217
    add-int/2addr v7, v4

    .line 218
    iput v7, v6, Lokio/Segment;->limit:I

    .line 219
    .line 220
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 221
    .line 222
    const-wide/16 v4, 0x4

    .line 223
    .line 224
    add-long/2addr v2, v4

    .line 225
    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 226
    .line 227
    add-int/lit8 p1, p1, 0x2

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_a
    :goto_7
    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)V

    .line 232
    .line 233
    .line 234
    move p1, v6

    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_b
    :goto_8
    const/4 v4, 0x3

    .line 238
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    iget v7, v6, Lokio/Segment;->limit:I

    .line 243
    .line 244
    shr-int/lit8 v8, v2, 0xc

    .line 245
    .line 246
    or-int/lit16 v8, v8, 0xe0

    .line 247
    .line 248
    int-to-byte v8, v8

    .line 249
    iget-object v9, v6, Lokio/Segment;->data:[B

    .line 250
    .line 251
    aput-byte v8, v9, v7

    .line 252
    .line 253
    add-int/lit8 v8, v7, 0x1

    .line 254
    .line 255
    shr-int/lit8 v10, v2, 0x6

    .line 256
    .line 257
    and-int/2addr v5, v10

    .line 258
    or-int/2addr v5, v3

    .line 259
    int-to-byte v5, v5

    .line 260
    aput-byte v5, v9, v8

    .line 261
    .line 262
    add-int/lit8 v5, v7, 0x2

    .line 263
    .line 264
    and-int/lit8 v2, v2, 0x3f

    .line 265
    .line 266
    or-int/2addr v2, v3

    .line 267
    int-to-byte v2, v2

    .line 268
    aput-byte v2, v9, v5

    .line 269
    .line 270
    add-int/2addr v7, v4

    .line 271
    iput v7, v6, Lokio/Segment;->limit:I

    .line 272
    .line 273
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 274
    .line 275
    const-wide/16 v4, 0x3

    .line 276
    .line 277
    add-long/2addr v2, v4

    .line 278
    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 279
    .line 280
    :goto_9
    add-int/lit8 p1, p1, 0x1

    .line 281
    .line 282
    goto/16 :goto_3

    .line 283
    .line 284
    :cond_c
    return-void

    .line 285
    :cond_d
    const-string p0, "endIndex > string.length: "

    .line 286
    .line 287
    const-string p1, " > "

    .line 288
    .line 289
    invoke-static {p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 305
    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw p1

    .line 314
    :cond_e
    const-string p0, "endIndex < beginIndex: "

    .line 315
    .line 316
    const-string p3, " < "

    .line 317
    .line 318
    invoke-static {p0, p2, p3, p1}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 323
    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw p1

    .line 332
    :cond_f
    const-string p0, "beginIndex < 0: "

    .line 333
    .line 334
    invoke-static {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 339
    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw p1
.end method
