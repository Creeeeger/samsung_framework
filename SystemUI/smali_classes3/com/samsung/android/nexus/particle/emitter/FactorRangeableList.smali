.class public final Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 3
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 4
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    .line 5
    new-array v2, v2, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 6
    aget-object v4, v0, v3

    .line 7
    iget v5, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget v7, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->min:F

    iget v8, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    aput-object v6, v2, v5

    .line 8
    iget v5, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    aput-object v6, v2, v5

    .line 9
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    new-instance v5, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v5, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 13
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 14
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v3, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v3, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 17
    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;-><init>(Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 2
    .line 3
    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 4
    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 9
    .line 10
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 2
    .line 3
    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 4
    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 9
    .line 10
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 2
    .line 3
    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 4
    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FactorRangeableList{ranges="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 9
    .line 10
    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_0

    .line 15
    .line 16
    aget-object v4, v1, v3

    .line 17
    .line 18
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    iget v8, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 29
    .line 30
    iget-object v9, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 31
    .line 32
    aget-object v8, v9, v8

    .line 33
    .line 34
    iget v10, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 35
    .line 36
    aget-object v10, v9, v10

    .line 37
    .line 38
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 39
    .line 40
    aget-object v4, v9, v4

    .line 41
    .line 42
    filled-new-array {v6, v7, v8, v10, v4}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v6, "\n#%d: %s: val = %f / spd = %f / acc = %f"

    .line 47
    .line 48
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "}"

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
