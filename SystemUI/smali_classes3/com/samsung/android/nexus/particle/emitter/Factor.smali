.class public final Lcom/samsung/android/nexus/particle/emitter/Factor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mNeedValidate:Z

.field public final mStepSkipList:[Z

.field public final values:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 3
    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v1, v0, 0x3

    .line 4
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 6
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/Factor;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 11
    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v1, v0, 0x3

    .line 12
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 14
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/particle/emitter/Factor;->initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    .line 15
    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    return-void
.end method


# virtual methods
.method public final initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    array-length v2, p2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    mul-int/lit8 v2, v1, 0x3

    .line 12
    .line 13
    array-length v3, p1

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p1, "wrong length"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    :goto_1
    if-ge v2, v1, :cond_4

    .line 31
    .line 32
    aget-object p2, v0, v2

    .line 33
    .line 34
    iget v3, p2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 35
    .line 36
    aget-object v4, p1, v3

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    aput v4, p0, v3

    .line 43
    .line 44
    iget v3, p2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 45
    .line 46
    aget-object v4, p1, v3

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    aput v4, p0, v3

    .line 53
    .line 54
    iget p2, p2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 55
    .line 56
    aget-object v3, p1, p2

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    aput v3, p0, p2

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    if-ge v2, v1, :cond_4

    .line 68
    .line 69
    aget-object v3, v0, v2

    .line 70
    .line 71
    aget-object v4, p2, v2

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    iget v5, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-virtual {v4, v6}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    aput v4, p0, v5

    .line 83
    .line 84
    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 85
    .line 86
    aput v6, p0, v4

    .line 87
    .line 88
    iget v3, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 89
    .line 90
    aput v6, p0, v3

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 94
    .line 95
    aget-object v5, p1, v4

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    aput v5, p0, v4

    .line 102
    .line 103
    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 104
    .line 105
    aget-object v5, p1, v4

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    aput v5, p0, v4

    .line 112
    .line 113
    iget v3, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 114
    .line 115
    aget-object v4, p1, v3

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    aput v4, p0, v3

    .line 122
    .line 123
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 3
    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 8
    .line 9
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    aput v1, p0, v0

    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 16
    .line 17
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 18
    .line 19
    aput v1, p0, v0

    .line 20
    .line 21
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 22
    .line 23
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 24
    .line 25
    aput v1, p0, v0

    .line 26
    .line 27
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 28
    .line 29
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 30
    .line 31
    aput v1, p0, v0

    .line 32
    .line 33
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 34
    .line 35
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 36
    .line 37
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    .line 38
    .line 39
    aput v0, p0, v1

    .line 40
    .line 41
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 42
    .line 43
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 44
    .line 45
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    .line 46
    .line 47
    aput v0, p0, v1

    .line 48
    .line 49
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 50
    .line 51
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 52
    .line 53
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    .line 54
    .line 55
    aput v0, p0, v1

    .line 56
    .line 57
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 58
    .line 59
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 60
    .line 61
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    .line 62
    .line 63
    aput v0, p0, v1

    .line 64
    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FactorValueList{values="

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
    iget-object v9, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 31
    .line 32
    aget v8, v9, v8

    .line 33
    .line 34
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    iget v10, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 39
    .line 40
    aget v10, v9, v10

    .line 41
    .line 42
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 47
    .line 48
    aget v4, v9, v4

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    filled-new-array {v6, v7, v8, v10, v4}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v6, "\n#%d: %s: val = %f / spd = %f / acc = %f"

    .line 59
    .line 60
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, "}"

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public final validate()V
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    iget v5, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 13
    .line 14
    iget-object v6, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 15
    .line 16
    aget v5, v6, v5

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    cmpl-float v5, v7, v5

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 24
    .line 25
    aget v4, v6, v4

    .line 26
    .line 27
    cmpl-float v4, v7, v4

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v4, v2

    .line 34
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    .line 35
    .line 36
    aput-boolean v4, v5, v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 42
    .line 43
    return-void
.end method
