.class public final Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public halfwayCount:I

.field public lastCount:I

.field public startUptime:J

.field public tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    .line 4
    iput v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;-><init>()V

    return-void
.end method

.method public static ratePerHour(IIJJ)F
    .locals 1

    .line 1
    cmp-long v0, p2, p4

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    if-ltz p0, :cond_1

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-float p1, p1

    .line 11
    int-to-float p0, p0

    .line 12
    sub-float/2addr p1, p0

    .line 13
    sub-long/2addr p4, p2

    .line 14
    long-to-float p0, p4

    .line 15
    div-float/2addr p1, p0

    .line 16
    const/high16 p0, 0x42700000    # 60.0f

    .line 17
    .line 18
    mul-float/2addr p1, p0

    .line 19
    const p0, 0x476a6000    # 60000.0f

    .line 20
    .line 21
    .line 22
    mul-float/2addr p1, p0

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

    .line 5
    iget-object v8, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->tag:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const-wide/32 v9, 0x1b7740

    .line 11
    .line 12
    .line 13
    add-long v4, v2, v9

    .line 14
    .line 15
    iget v1, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(IIJJ)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    iget-wide v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    .line 26
    .line 27
    add-long v2, v0, v9

    .line 28
    .line 29
    iget v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    .line 30
    .line 31
    iget v1, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    .line 32
    .line 33
    move-wide v4, v6

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(IIJJ)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    iget-wide v2, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iget v1, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    .line 46
    .line 47
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(IIJJ)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget p0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    .line 56
    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    filled-new-array {v8, v11, v9, v0, p0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v0, "%s: %.2f (start-30min) / %.2f (30min-now) / %.2f (start-now) (growth rate in #/hour); %d (current size)"

    .line 66
    .line 67
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 68
    .line 69
    .line 70
    return-void
.end method
