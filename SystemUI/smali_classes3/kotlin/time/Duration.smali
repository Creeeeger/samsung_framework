.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field public static final INFINITE:J

.field public static final NEG_INFINITE:J


# instance fields
.field public final rawValue:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/time/Duration$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 8
    .line 9
    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 10
    .line 11
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    .line 21
    .line 22
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 32
    .line 33
    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    .line 5
    .line 6
    return-void
.end method

.method public static final addValuesMixedRanges-UwyO8pc(JJ)J
    .locals 9

    .line 1
    const v0, 0xf4240

    .line 2
    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    div-long v2, p2, v0

    .line 6
    .line 7
    add-long/2addr p0, v2

    .line 8
    new-instance v4, Lkotlin/ranges/LongRange;

    .line 9
    .line 10
    const-wide v5, -0x431bde82d7aL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v7, 0x431bde82d7aL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5, v6, v7, v8}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    mul-long/2addr v2, v0

    .line 30
    sub-long/2addr p2, v2

    .line 31
    mul-long/2addr p0, v0

    .line 32
    add-long/2addr p0, p2

    .line 33
    const/4 p2, 0x1

    .line 34
    shl-long/2addr p0, p2

    .line 35
    sget p2, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    :goto_0
    return-wide p0
.end method

.method public static final appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_5

    .line 5
    .line 6
    const/16 p1, 0x2e

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, p3}, Lkotlin/text/StringsKt__StringsKt;->padStart(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 p3, -0x1

    .line 24
    add-int/2addr p2, p3

    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    if-ltz p2, :cond_3

    .line 28
    .line 29
    :goto_0
    add-int/lit8 v2, p2, -0x1

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/16 v4, 0x30

    .line 36
    .line 37
    if-eq v3, v4, :cond_0

    .line 38
    .line 39
    move v3, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move v3, v1

    .line 42
    :goto_1
    if-eqz v3, :cond_1

    .line 43
    .line 44
    move p3, p2

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    if-gez v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move p2, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_2
    add-int/2addr p3, v0

    .line 52
    const/4 p2, 0x3

    .line 53
    if-ge p3, p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    add-int/lit8 p3, p3, 0x2

    .line 60
    .line 61
    div-int/2addr p3, p2

    .line 62
    mul-int/2addr p3, p2

    .line 63
    invoke-virtual {p0, p1, v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_3
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 7

    .line 1
    xor-long v0, p0, p2

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    if-ltz v4, :cond_3

    .line 10
    .line 11
    long-to-int v0, v0

    .line 12
    and-int/2addr v0, v6

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    long-to-int v0, p0

    .line 17
    and-int/2addr v0, v6

    .line 18
    long-to-int p2, p2

    .line 19
    and-int/2addr p2, v6

    .line 20
    sub-int/2addr v0, p2

    .line 21
    cmp-long p0, p0, v2

    .line 22
    .line 23
    if-gez p0, :cond_1

    .line 24
    .line 25
    move v5, v6

    .line 26
    :cond_1
    if-eqz v5, :cond_2

    .line 27
    .line 28
    neg-int v0, v0

    .line 29
    :cond_2
    return v0

    .line 30
    :cond_3
    :goto_0
    cmp-long p0, p0, p2

    .line 31
    .line 32
    if-gez p0, :cond_4

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_4
    if-nez p0, :cond_5

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_5
    move v5, v6

    .line 40
    :goto_1
    return v5
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 2

    .line 1
    long-to-int v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    and-int/2addr v0, v1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    shr-long/2addr p0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    :goto_1
    return-wide p0
.end method

.method public static final isInfinite-impl(J)Z
    .locals 2

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 8
    .line 9
    cmp-long p0, p0, v0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static final toDouble-impl(JLkotlin/time/DurationUnit;)D
    .locals 9

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 11
    .line 12
    cmp-long v0, p0, v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    shr-long v1, p0, v0

    .line 21
    .line 22
    long-to-double v1, v1

    .line 23
    long-to-int p0, p0

    .line 24
    and-int/2addr p0, v0

    .line 25
    if-nez p0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    .line 31
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 35
    .line 36
    :goto_1
    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v3, 0x1

    .line 45
    .line 46
    invoke-virtual {p1, v3, v4, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    const-wide/16 v7, 0x0

    .line 51
    .line 52
    cmp-long p1, v5, v7

    .line 53
    .line 54
    if-lez p1, :cond_4

    .line 55
    .line 56
    long-to-double p0, v5

    .line 57
    mul-double/2addr v1, p0

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, v3, v4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 68
    .line 69
    .line 70
    move-result-wide p0

    .line 71
    long-to-double p0, p0

    .line 72
    div-double/2addr v1, p0

    .line 73
    :goto_2
    move-wide p0, v1

    .line 74
    :goto_3
    return-wide p0
.end method

.method public static final toLong-impl(JLkotlin/time/DurationUnit;)J
    .locals 3

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide p0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 14
    .line 15
    cmp-long v0, p0, v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-wide/high16 p0, -0x8000000000000000L

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    shr-long v1, p0, v0

    .line 24
    .line 25
    long-to-int p0, p0

    .line 26
    and-int/2addr p0, v0

    .line 27
    if-nez p0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_3

    .line 32
    .line 33
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 37
    .line 38
    :goto_1
    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    :goto_2
    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 16

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const-string v0, "0s"

    .line 10
    .line 11
    goto/16 :goto_11

    .line 12
    .line 13
    :cond_0
    sget-wide v5, Lkotlin/time/Duration;->INFINITE:J

    .line 14
    .line 15
    cmp-long v5, v0, v5

    .line 16
    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    const-string v0, "Infinity"

    .line 20
    .line 21
    goto/16 :goto_11

    .line 22
    .line 23
    :cond_1
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 24
    .line 25
    cmp-long v5, v0, v5

    .line 26
    .line 27
    if-nez v5, :cond_2

    .line 28
    .line 29
    const-string v0, "-Infinity"

    .line 30
    .line 31
    goto/16 :goto_11

    .line 32
    .line 33
    :cond_2
    const/4 v6, 0x1

    .line 34
    if-gez v4, :cond_3

    .line 35
    .line 36
    move v7, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/4 v7, 0x0

    .line 39
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    if-eqz v7, :cond_4

    .line 45
    .line 46
    const/16 v9, 0x2d

    .line 47
    .line 48
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_4
    if-gez v4, :cond_5

    .line 52
    .line 53
    move v4, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_5
    const/4 v4, 0x0

    .line 56
    :goto_1
    if-eqz v4, :cond_6

    .line 57
    .line 58
    shr-long v9, v0, v6

    .line 59
    .line 60
    neg-long v9, v9

    .line 61
    long-to-int v0, v0

    .line 62
    and-int/2addr v0, v6

    .line 63
    shl-long/2addr v9, v6

    .line 64
    int-to-long v0, v0

    .line 65
    add-long/2addr v0, v9

    .line 66
    sget v4, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 67
    .line 68
    :cond_6
    sget-object v4, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 69
    .line 70
    invoke-static {v0, v1, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    goto :goto_2

    .line 82
    :cond_7
    sget-object v4, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 83
    .line 84
    invoke-static {v0, v1, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v11

    .line 88
    const/16 v4, 0x18

    .line 89
    .line 90
    int-to-long v13, v4

    .line 91
    rem-long/2addr v11, v13

    .line 92
    long-to-int v4, v11

    .line 93
    :goto_2
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    const/16 v12, 0x3c

    .line 98
    .line 99
    if-eqz v11, :cond_8

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    goto :goto_3

    .line 103
    :cond_8
    sget-object v11, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 104
    .line 105
    invoke-static {v0, v1, v11}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    int-to-long v2, v12

    .line 110
    rem-long/2addr v13, v2

    .line 111
    long-to-int v2, v13

    .line 112
    :goto_3
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_9

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 121
    .line 122
    invoke-static {v0, v1, v3}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v13

    .line 126
    int-to-long v11, v12

    .line 127
    rem-long/2addr v13, v11

    .line 128
    long-to-int v3, v13

    .line 129
    :goto_4
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    const/16 v12, 0x3e8

    .line 134
    .line 135
    const v13, 0xf4240

    .line 136
    .line 137
    .line 138
    if-eqz v11, :cond_a

    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    :goto_5
    const-wide/16 v5, 0x0

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_a
    long-to-int v11, v0

    .line 145
    and-int/2addr v11, v6

    .line 146
    if-ne v11, v6, :cond_b

    .line 147
    .line 148
    move v11, v6

    .line 149
    goto :goto_6

    .line 150
    :cond_b
    const/4 v11, 0x0

    .line 151
    :goto_6
    if-eqz v11, :cond_c

    .line 152
    .line 153
    shr-long/2addr v0, v6

    .line 154
    int-to-long v5, v12

    .line 155
    rem-long/2addr v0, v5

    .line 156
    int-to-long v5, v13

    .line 157
    mul-long/2addr v0, v5

    .line 158
    goto :goto_7

    .line 159
    :cond_c
    move v5, v6

    .line 160
    shr-long/2addr v0, v5

    .line 161
    const v5, 0x3b9aca00

    .line 162
    .line 163
    .line 164
    int-to-long v5, v5

    .line 165
    rem-long/2addr v0, v5

    .line 166
    :goto_7
    long-to-int v0, v0

    .line 167
    goto :goto_5

    .line 168
    :goto_8
    cmp-long v1, v9, v5

    .line 169
    .line 170
    if-eqz v1, :cond_d

    .line 171
    .line 172
    const/4 v5, 0x1

    .line 173
    goto :goto_9

    .line 174
    :cond_d
    const/4 v5, 0x0

    .line 175
    :goto_9
    if-eqz v4, :cond_e

    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    goto :goto_a

    .line 179
    :cond_e
    const/4 v1, 0x0

    .line 180
    :goto_a
    if-eqz v2, :cond_f

    .line 181
    .line 182
    const/4 v6, 0x1

    .line 183
    goto :goto_b

    .line 184
    :cond_f
    const/4 v6, 0x0

    .line 185
    :goto_b
    if-nez v3, :cond_11

    .line 186
    .line 187
    if-eqz v0, :cond_10

    .line 188
    .line 189
    goto :goto_c

    .line 190
    :cond_10
    const/4 v15, 0x0

    .line 191
    goto :goto_d

    .line 192
    :cond_11
    :goto_c
    const/4 v15, 0x1

    .line 193
    :goto_d
    if-eqz v5, :cond_12

    .line 194
    .line 195
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const/16 v9, 0x64

    .line 199
    .line 200
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const/4 v11, 0x1

    .line 204
    goto :goto_e

    .line 205
    :cond_12
    const/4 v11, 0x0

    .line 206
    :goto_e
    const/16 v9, 0x20

    .line 207
    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    if-eqz v5, :cond_15

    .line 211
    .line 212
    if-nez v6, :cond_13

    .line 213
    .line 214
    if-eqz v15, :cond_15

    .line 215
    .line 216
    :cond_13
    add-int/lit8 v10, v11, 0x1

    .line 217
    .line 218
    if-lez v11, :cond_14

    .line 219
    .line 220
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    :cond_14
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const/16 v4, 0x68

    .line 227
    .line 228
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    move v11, v10

    .line 232
    :cond_15
    if-nez v6, :cond_16

    .line 233
    .line 234
    if-eqz v15, :cond_18

    .line 235
    .line 236
    if-nez v1, :cond_16

    .line 237
    .line 238
    if-eqz v5, :cond_18

    .line 239
    .line 240
    :cond_16
    add-int/lit8 v4, v11, 0x1

    .line 241
    .line 242
    if-lez v11, :cond_17

    .line 243
    .line 244
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    :cond_17
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const/16 v2, 0x6d

    .line 251
    .line 252
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move v11, v4

    .line 256
    :cond_18
    if-eqz v15, :cond_1e

    .line 257
    .line 258
    add-int/lit8 v2, v11, 0x1

    .line 259
    .line 260
    if-lez v11, :cond_19

    .line 261
    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    :cond_19
    if-nez v3, :cond_1d

    .line 266
    .line 267
    if-nez v5, :cond_1d

    .line 268
    .line 269
    if-nez v1, :cond_1d

    .line 270
    .line 271
    if-eqz v6, :cond_1a

    .line 272
    .line 273
    goto :goto_f

    .line 274
    :cond_1a
    if-lt v0, v13, :cond_1b

    .line 275
    .line 276
    div-int v1, v0, v13

    .line 277
    .line 278
    rem-int/2addr v0, v13

    .line 279
    const/4 v3, 0x6

    .line 280
    const-string v4, "ms"

    .line 281
    .line 282
    invoke-static {v8, v1, v0, v3, v4}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_10

    .line 286
    :cond_1b
    if-lt v0, v12, :cond_1c

    .line 287
    .line 288
    div-int/lit16 v1, v0, 0x3e8

    .line 289
    .line 290
    rem-int/2addr v0, v12

    .line 291
    const/4 v3, 0x3

    .line 292
    const-string v4, "us"

    .line 293
    .line 294
    invoke-static {v8, v1, v0, v3, v4}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_10

    .line 298
    :cond_1c
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v0, "ns"

    .line 302
    .line 303
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    goto :goto_10

    .line 307
    :cond_1d
    :goto_f
    const/16 v1, 0x9

    .line 308
    .line 309
    const-string v4, "s"

    .line 310
    .line 311
    invoke-static {v8, v3, v0, v1, v4}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :goto_10
    move v11, v2

    .line 315
    :cond_1e
    if-eqz v7, :cond_1f

    .line 316
    .line 317
    const/4 v0, 0x1

    .line 318
    if-le v11, v0, :cond_1f

    .line 319
    .line 320
    const/16 v1, 0x28

    .line 321
    .line 322
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const/16 v1, 0x29

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    :goto_11
    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lkotlin/time/Duration;

    .line 2
    .line 3
    iget-wide v0, p1, Lkotlin/time/Duration;->rawValue:J

    .line 4
    .line 5
    iget-wide p0, p0, Lkotlin/time/Duration;->rawValue:J

    .line 6
    .line 7
    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    .line 2
    .line 3
    instance-of p0, p1, Lkotlin/time/Duration;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lkotlin/time/Duration;

    .line 10
    .line 11
    iget-wide p0, p1, Lkotlin/time/Duration;->rawValue:J

    .line 12
    .line 13
    cmp-long p0, v0, p0

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x1

    .line 19
    :goto_0
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
