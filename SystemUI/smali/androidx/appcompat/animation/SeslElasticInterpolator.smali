.class public final Landroidx/appcompat/animation/SeslElasticInterpolator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final mAmplitude:F

.field public final mPeriod:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mPeriod:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 11

    .line 1
    iget v0, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 2
    .line 3
    iget p0, p0, Landroidx/appcompat/animation/SeslElasticInterpolator;->mPeriod:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v2, p1, v1

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpl-float v3, p1, v2

    .line 14
    .line 15
    if-ltz v3, :cond_1

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    cmpl-float v3, p0, v1

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    const p0, 0x3e99999a    # 0.3f

    .line 24
    .line 25
    .line 26
    :cond_2
    cmpl-float v1, v0, v1

    .line 27
    .line 28
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    cmpg-float v1, v0, v2

    .line 36
    .line 37
    if-gez v1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    float-to-double v5, p0

    .line 41
    div-double/2addr v5, v3

    .line 42
    div-float/2addr v2, v0

    .line 43
    float-to-double v1, v2

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    mul-double/2addr v1, v5

    .line 49
    double-to-float v1, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    :goto_0
    const/high16 v0, 0x40800000    # 4.0f

    .line 52
    .line 53
    div-float v1, p0, v0

    .line 54
    .line 55
    move v0, v2

    .line 56
    :goto_1
    float-to-double v5, v0

    .line 57
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 58
    .line 59
    mul-float/2addr v0, p1

    .line 60
    float-to-double v7, v0

    .line 61
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 62
    .line 63
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    mul-double/2addr v7, v5

    .line 68
    sub-float/2addr p1, v1

    .line 69
    float-to-double v0, p1

    .line 70
    mul-double/2addr v0, v3

    .line 71
    float-to-double p0, p0

    .line 72
    div-double/2addr v0, p0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    mul-double/2addr p0, v7

    .line 78
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 79
    .line 80
    add-double/2addr p0, v0

    .line 81
    double-to-float v1, p0

    .line 82
    :goto_2
    return v1
.end method
