.class public final Lcom/samsung/android/nexus/particle/emitter/ParticleRule;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final applyWorldFactorCheckList:[Z

.field public colorMode:I

.field public final configValues:[Z

.field public final factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

.field public final factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

.field public lastWorldFactorUpdateTime:J

.field public final lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

.field public particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

.field public posMode:I

.field public scaleMode:I

.field public final tempWorldFactorValues:[F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    .line 6
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 7
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    .line 8
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 9
    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v0, v0, 0x3

    .line 10
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    const-wide/16 v2, -0x1

    .line 11
    iput-wide v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    .line 12
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->tempWorldFactorValues:[F

    .line 13
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 14
    sget v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sCount:I

    .line 15
    new-array v2, v0, [Z

    .line 16
    sget-object v3, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 17
    aget-object v5, v3, v4

    iget-boolean v5, v5, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->defaultValue:Z

    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    .line 19
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V
    .locals 12

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/16 v1, 0xa

    .line 22
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    const/4 v2, 0x0

    .line 23
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    .line 24
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    .line 25
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 26
    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    .line 27
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 28
    sget v4, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v4, v4, 0x3

    .line 29
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    const-wide/16 v6, -0x1

    .line 30
    iput-wide v6, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    .line 31
    new-array v6, v4, [F

    iput-object v6, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->tempWorldFactorValues:[F

    .line 32
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 33
    sget v6, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sCount:I

    .line 34
    new-array v7, v6, [Z

    .line 35
    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    move v9, v2

    :goto_0
    if-ge v9, v6, :cond_0

    .line 36
    aget-object v10, v8, v9

    iget-boolean v10, v10, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->defaultValue:Z

    aput-boolean v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iput-object v7, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    .line 38
    iget-object v8, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([ZZ)V

    if-nez p1, :cond_1

    goto :goto_2

    .line 39
    :cond_1
    iget-object v8, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    iput-object v8, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 40
    iget-object v8, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    .line 41
    iget-object v9, v8, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    array-length v10, v9

    .line 42
    iget v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iput v11, v3, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    .line 43
    iget-object v11, v3, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-static {v9, v2, v11, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v9, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v10, v9

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-static {v11, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v9, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v10, v9

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-static {v11, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v9, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    array-length v10, v9

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    invoke-static {v11, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v9, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    array-length v10, v9

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    invoke-static {v11, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    iput v8, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    .line 49
    iget-object v3, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 50
    iget-wide v8, v3, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v8, v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 51
    iget-wide v8, v3, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v8, v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    .line 53
    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 54
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 55
    array-length v3, v0

    move v8, v2

    :goto_1
    if-ge v8, v3, :cond_2

    .line 56
    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v10, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v10, v9}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 58
    iget-object v9, v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 59
    :cond_2
    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    .line 60
    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    .line 61
    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    .line 62
    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    invoke-static {p0, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    invoke-static {p0, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;-><init>(Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 4
    .line 5
    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 6
    .line 7
    aget-object p0, p0, p1

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 10
    .line 11
    iput p3, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setKeyFrameListRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    array-length v1, p3

    .line 10
    if-ne v0, v1, :cond_4

    .line 11
    .line 12
    array-length v0, p2

    .line 13
    const/4 v1, 0x0

    .line 14
    aget-object v2, p2, v1

    .line 15
    .line 16
    iget v2, v2, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 17
    .line 18
    new-array v3, v0, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 19
    .line 20
    new-array v4, v0, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 21
    .line 22
    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    .line 24
    aget-object v5, p2, v1

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 30
    .line 31
    invoke-direct {v6, v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 32
    .line 33
    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    iget v5, v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 37
    .line 38
    cmpg-float v2, v5, v2

    .line 39
    .line 40
    if-ltz v2, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p1, "position range overlapped. it will occurs non-Ascending positions"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_1
    iget v2, v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 52
    .line 53
    aput-object v6, v3, v1

    .line 54
    .line 55
    aget-object v5, p3, v1

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 61
    .line 62
    invoke-direct {v6, v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 63
    .line 64
    .line 65
    aput-object v6, v4, v1

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 71
    .line 72
    aget-object p3, p2, p1

    .line 73
    .line 74
    if-nez p3, :cond_3

    .line 75
    .line 76
    iget p3, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    .line 77
    .line 78
    add-int/lit8 p3, p3, 0x1

    .line 79
    .line 80
    iput p3, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    .line 81
    .line 82
    :cond_3
    aput-object v3, p2, p1

    .line 83
    .line 84
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 85
    .line 86
    aput-object v4, p2, p1

    .line 87
    .line 88
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    .line 89
    .line 90
    const/4 p3, 0x0

    .line 91
    aput-object p3, p2, p1

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    .line 94
    .line 95
    aput-object p3, p0, p1

    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p1, "different length"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 4
    .line 5
    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 6
    .line 7
    aget-object p0, p0, p1

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 10
    .line 11
    iput p3, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 4
    .line 5
    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 6
    .line 7
    aget-object p0, p0, p1

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 10
    .line 11
    iput p3, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
