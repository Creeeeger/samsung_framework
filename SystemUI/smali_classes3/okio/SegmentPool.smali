.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lokio/SegmentPool;

.field public static byteCount:J

.field public static next:Lokio/Segment;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokio/SegmentPool;

    .line 2
    .line 3
    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final recycle(Lokio/Segment;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-boolean v0, p1, Lokio/Segment;->shared:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    monitor-enter p0

    .line 21
    :try_start_0
    sget-wide v2, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    const/16 v0, 0x2000

    .line 24
    .line 25
    int-to-long v4, v0

    .line 26
    add-long/2addr v2, v4

    .line 27
    const-wide/32 v4, 0x10000

    .line 28
    .line 29
    .line 30
    cmp-long v0, v2, v4

    .line 31
    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_2
    :try_start_1
    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 37
    .line 38
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 39
    .line 40
    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 41
    .line 42
    iput v1, p1, Lokio/Segment;->limit:I

    .line 43
    .line 44
    iput v1, p1, Lokio/Segment;->pos:I

    .line 45
    .line 46
    sput-object p1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 47
    .line 48
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    .line 54
    throw p1

    .line 55
    :cond_3
    const-string p0, "Failed requirement."

    .line 56
    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final take()Lokio/Segment;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 7
    .line 8
    sput-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 12
    .line 13
    sget-wide v1, Lokio/SegmentPool;->byteCount:J

    .line 14
    .line 15
    const/16 v3, 0x2000

    .line 16
    .line 17
    int-to-long v3, v3

    .line 18
    sub-long/2addr v1, v3

    .line 19
    sput-wide v1, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    new-instance p0, Lokio/Segment;

    .line 25
    .line 26
    invoke-direct {p0}, Lokio/Segment;-><init>()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method
