.class public final Lcom/samsung/android/nexus/base/utils/random/FloatRandom;
.super Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCache:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public final get()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndexLimit:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    .line 13
    .line 14
    iput v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    if-lt v0, v1, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->onRefreshCache()V

    .line 32
    .line 33
    .line 34
    iput v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    .line 43
    .line 44
    aget p0, v0, v1

    .line 45
    .line 46
    return p0
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    const v0, 0x186a0

    .line 2
    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    .line 7
    .line 8
    return-void
.end method

.method public final onRefreshCache()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    .line 4
    .line 5
    double-to-float v1, v1

    .line 6
    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    .line 7
    .line 8
    double-to-float v2, v2

    .line 9
    sget-object v3, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    array-length v4, v0

    .line 17
    if-lez v4, :cond_2

    .line 18
    .line 19
    iget p0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    add-int/2addr p0, v4

    .line 23
    array-length v5, v0

    .line 24
    if-le p0, v5, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sub-float/2addr v2, v1

    .line 28
    iget-wide v5, v3, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    .line 29
    .line 30
    :goto_0
    if-ge v4, p0, :cond_1

    .line 31
    .line 32
    const-wide v7, 0x5deece66dL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    mul-long/2addr v5, v7

    .line 38
    const-wide/16 v7, 0xb

    .line 39
    .line 40
    add-long/2addr v5, v7

    .line 41
    const-wide v7, 0xffffffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v5, v7

    .line 47
    const/16 v7, 0x18

    .line 48
    .line 49
    ushr-long v7, v5, v7

    .line 50
    .line 51
    long-to-int v7, v7

    .line 52
    int-to-float v7, v7

    .line 53
    const/high16 v8, 0x4b800000    # 1.6777216E7f

    .line 54
    .line 55
    div-float/2addr v7, v8

    .line 56
    mul-float/2addr v7, v2

    .line 57
    add-float/2addr v7, v1

    .line 58
    aput v7, v0, v4

    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iput-wide v5, v3, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    .line 64
    .line 65
    :cond_2
    :goto_1
    return-void
.end method
