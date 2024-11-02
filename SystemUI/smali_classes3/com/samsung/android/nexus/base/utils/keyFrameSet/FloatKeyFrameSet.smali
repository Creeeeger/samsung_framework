.class public final Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;
.super Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDeltas:[F

.field public mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    array-length v0, v0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    .line 4
    iget-object v2, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    .line 5
    iget-object v2, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    array-length v0, p0

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;[F)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([FLandroid/view/animation/Interpolator;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;[F)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F[Landroid/view/animation/Interpolator;)V

    .line 12
    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final get(F)F
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v4, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 6
    .line 7
    add-int/2addr v4, v0

    .line 8
    if-ge v2, v4, :cond_0

    .line 9
    .line 10
    iget-object v4, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 11
    .line 12
    aget v4, v4, v2

    .line 13
    .line 14
    cmpg-float v4, v4, p1

    .line 15
    .line 16
    if-gtz v4, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    move v6, v3

    .line 21
    move v3, v2

    .line 22
    move v2, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-gez v3, :cond_1

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "getSectionIndex: -1 : "

    .line 29
    .line 30
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, " "

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 42
    .line 43
    aget v1, v4, v1

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    .line 58
    .line 59
    aget v1, v1, v3

    .line 60
    .line 61
    iget-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    .line 62
    .line 63
    aget v2, v2, v3

    .line 64
    .line 65
    if-gez v3, :cond_2

    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget v4, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 70
    .line 71
    add-int/2addr v4, v0

    .line 72
    if-lt v3, v4, :cond_3

    .line 73
    .line 74
    const/high16 p0, 0x3f800000    # 1.0f

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 78
    .line 79
    aget v4, v0, v3

    .line 80
    .line 81
    add-int/lit8 v5, v3, 0x1

    .line 82
    .line 83
    aget v0, v0, v5

    .line 84
    .line 85
    sub-float/2addr p1, v4

    .line 86
    sub-float/2addr v0, v4

    .line 87
    div-float/2addr p1, v0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    .line 93
    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    aget-object v0, p0, v3

    .line 97
    .line 98
    :cond_4
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move p0, p1

    .line 106
    :goto_1
    mul-float/2addr v2, p0

    .line 107
    add-float/2addr v2, v1

    .line 108
    return v2
.end method

.method public final init([F)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget v2, p1, v1

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    aget v4, p1, v3

    .line 21
    .line 22
    iget-object v5, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    .line 23
    .line 24
    aput v2, v5, v1

    .line 25
    .line 26
    iget-object v5, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    .line 27
    .line 28
    sub-float v2, v4, v2

    .line 29
    .line 30
    aput v2, v5, v1

    .line 31
    .line 32
    move v1, v3

    .line 33
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FloatKeyFrameSet{mValues="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", mDeltas="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", length="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", fractionPositions="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", interpolators="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    .line 61
    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", interpolator="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 p0, 0x7d

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method
