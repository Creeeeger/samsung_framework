.class public final Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final input:Ljava/io/InputStream;

.field public final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ltz v2, :cond_1

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v2, v0

    .line 15
    :goto_0
    if-eqz v2, :cond_7

    .line 16
    .line 17
    :try_start_0
    iget-object v2, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    .line 18
    .line 19
    invoke-virtual {v2}, Lokio/Timeout;->throwIfReached()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v3, v2, Lokio/Segment;->limit:I

    .line 27
    .line 28
    rsub-int v3, v3, 0x2000

    .line 29
    .line 30
    int-to-long v3, v3

    .line 31
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p2

    .line 35
    long-to-int p2, p2

    .line 36
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 37
    .line 38
    iget-object p3, v2, Lokio/Segment;->data:[B

    .line 39
    .line 40
    iget v3, v2, Lokio/Segment;->limit:I

    .line 41
    .line 42
    invoke-virtual {p0, p3, v3, p2}, Ljava/io/InputStream;->read([BII)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/4 p2, -0x1

    .line 47
    if-ne p0, p2, :cond_3

    .line 48
    .line 49
    iget p0, v2, Lokio/Segment;->pos:I

    .line 50
    .line 51
    iget p2, v2, Lokio/Segment;->limit:I

    .line 52
    .line 53
    if-ne p0, p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 60
    .line 61
    sget-object p0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    const-wide/16 p0, -0x1

    .line 67
    .line 68
    return-wide p0

    .line 69
    :cond_3
    iget p2, v2, Lokio/Segment;->limit:I

    .line 70
    .line 71
    add-int/2addr p2, p0

    .line 72
    iput p2, v2, Lokio/Segment;->limit:I

    .line 73
    .line 74
    iget-wide p2, p1, Lokio/Buffer;->size:J

    .line 75
    .line 76
    int-to-long v2, p0

    .line 77
    add-long/2addr p2, v2

    .line 78
    iput-wide p2, p1, Lokio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    return-wide v2

    .line 81
    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    const-string p2, "getsockname failed"

    .line 95
    .line 96
    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move p1, v0

    .line 102
    :goto_1
    if-eqz p1, :cond_5

    .line 103
    .line 104
    move v0, v1

    .line 105
    :cond_5
    if-eqz v0, :cond_6

    .line 106
    .line 107
    new-instance p1, Ljava/io/IOException;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_6
    throw p0

    .line 114
    :cond_7
    const-string p0, "byteCount < 0: "

    .line 115
    .line 116
    invoke-static {p0, p2, p3}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "source("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
