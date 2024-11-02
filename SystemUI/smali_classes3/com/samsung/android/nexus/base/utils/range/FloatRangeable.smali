.class public final Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDelta:F

.field public mMax:F

.field public mMin:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 3
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 6
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 7
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final get()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 9
    .line 10
    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    .line 11
    .line 12
    sget-object v1, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    mul-float/2addr v1, p0

    .line 19
    add-float p0, v1, v0

    .line 20
    .line 21
    :goto_0
    return p0
.end method

.method public final onRangeUpdated()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 4
    .line 5
    sub-float v2, v0, v1

    .line 6
    .line 7
    iput v2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    .line 8
    .line 9
    cmpl-float v0, v0, v1

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

.method public final set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 2
    .line 3
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 4
    .line 5
    iget p1, p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FloatRangeable{mMin="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
