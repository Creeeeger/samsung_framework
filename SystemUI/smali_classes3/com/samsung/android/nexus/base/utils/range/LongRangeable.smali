.class public final Lcom/samsung/android/nexus/base/utils/range/LongRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDelta:J

.field public mMax:J

.field public mMin:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 3
    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 7
    iput-wide p3, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/LongRangeable;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 10
    iget-wide v0, p1, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 11
    iget-wide v0, p1, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/LongRangeable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final get()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mDelta:J

    .line 11
    .line 12
    long-to-float p0, v2

    .line 13
    sget-object v2, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    mul-float/2addr v2, p0

    .line 20
    float-to-long v2, v2

    .line 21
    add-long/2addr v0, v2

    .line 22
    :goto_0
    return-wide v0
.end method

.method public final onRangeUpdated()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 4
    .line 5
    sub-long v4, v0, v2

    .line 6
    .line 7
    iput-wide v4, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mDelta:J

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    .line 17
    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LongRangeable{mMin="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mMax="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mDelta="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mDelta:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
