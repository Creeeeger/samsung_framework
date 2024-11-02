.class public final Lcom/android/wm/shell/animation/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimatorProperties:Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

.field public mCachedStartGradient:F

.field public mCachedVelocityFactor:F

.field public final mHighVelocityPxPerSecond:F

.field public mInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mLinearOutSlowInX2:F

.field public final mMaxLengthSeconds:F

.field public final mMinVelocityPxPerSecond:F

.field public final mSpeedUpFactor:F

.field public final mY2:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;FF)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;FFFF)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedStartGradient:F

    .line 6
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 7
    iput p2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMaxLengthSeconds:F

    .line 8
    iput p3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 p2, 0x0

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    const p4, 0x3eb33333    # 0.35f

    mul-float/2addr p2, p4

    const p4, 0x3f2e147b    # 0.68f

    mul-float/2addr p4, p3

    add-float/2addr p4, p2

    .line 9
    iput p4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mLinearOutSlowInX2:F

    goto :goto_0

    .line 10
    :cond_0
    iput p4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mLinearOutSlowInX2:F

    .line 11
    :goto_0
    iput p5, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mY2:F

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x437a0000    # 250.0f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    const p2, 0x453b8000    # 3000.0f

    mul-float/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    return-void
.end method


# virtual methods
.method public final apply(Landroid/animation/Animator;FFFF)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMaxLengthSeconds:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    sub-float/2addr p3, p2

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    div-float/2addr p2, p5

    .line 10
    float-to-double v2, p2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    mul-double/2addr v2, v0

    .line 16
    double-to-float p2, v2

    .line 17
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    const/4 p5, 0x0

    .line 26
    iget v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mSpeedUpFactor:F

    .line 27
    .line 28
    cmpl-float p5, v0, p5

    .line 29
    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-nez p5, :cond_0

    .line 33
    .line 34
    move p5, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const p5, 0x453b8000    # 3000.0f

    .line 37
    .line 38
    .line 39
    div-float p5, p4, p5

    .line 40
    .line 41
    invoke-static {p5, v1}, Ljava/lang/Math;->min(FF)F

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    :goto_0
    iget v2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mY2:F

    .line 46
    .line 47
    iget v3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mLinearOutSlowInX2:F

    .line 48
    .line 49
    div-float v4, v2, v3

    .line 50
    .line 51
    sub-float/2addr v1, p5

    .line 52
    const/high16 v5, 0x3f400000    # 0.75f

    .line 53
    .line 54
    mul-float/2addr v5, v1

    .line 55
    mul-float/2addr v4, p5

    .line 56
    add-float/2addr v4, v5

    .line 57
    mul-float v5, v4, p3

    .line 58
    .line 59
    div-float/2addr v5, p4

    .line 60
    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    new-instance p5, Ljava/lang/Throwable;

    .line 67
    .line 68
    invoke-direct {p5}, Ljava/lang/Throwable;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v0, "FlingAnimationUtils"

    .line 72
    .line 73
    const-string v1, "Invalid velocity factor"

    .line 74
    .line 75
    invoke-static {v0, v1, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    sget-object p5, Lcom/android/wm/shell/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iget v6, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedStartGradient:F

    .line 82
    .line 83
    cmpl-float v6, v4, v6

    .line 84
    .line 85
    if-nez v6, :cond_2

    .line 86
    .line 87
    iget v6, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 88
    .line 89
    cmpl-float v6, p5, v6

    .line 90
    .line 91
    if-eqz v6, :cond_3

    .line 92
    .line 93
    :cond_2
    mul-float/2addr v1, v0

    .line 94
    mul-float v0, v1, v4

    .line 95
    .line 96
    :try_start_0
    new-instance v6, Landroid/view/animation/PathInterpolator;

    .line 97
    .line 98
    invoke-direct {v6, v1, v0, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 99
    .line 100
    .line 101
    iput-object v6, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    iput v4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedStartGradient:F

    .line 104
    .line 105
    iput p5, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 106
    .line 107
    :cond_3
    iget-object p5, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 108
    .line 109
    :goto_1
    cmpg-float v0, v5, p2

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    .line 112
    .line 113
    if-gtz v0, :cond_4

    .line 114
    .line 115
    iput-object p5, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 116
    .line 117
    move p2, v5

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 120
    .line 121
    cmpl-float p0, p4, p0

    .line 122
    .line 123
    if-ltz p0, :cond_5

    .line 124
    .line 125
    new-instance p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p2, p4, p3, v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFI)V

    .line 129
    .line 130
    .line 131
    new-instance p3, Lcom/android/wm/shell/animation/FlingAnimationUtils$InterpolatorInterpolator;

    .line 132
    .line 133
    sget-object p4, Lcom/android/wm/shell/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 134
    .line 135
    invoke-direct {p3, p0, p5, p4}, Lcom/android/wm/shell/animation/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 136
    .line 137
    .line 138
    iput-object p3, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    sget-object p0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 142
    .line 143
    iput-object p0, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 144
    .line 145
    :goto_2
    const/high16 p0, 0x447a0000    # 1000.0f

    .line 146
    .line 147
    mul-float/2addr p2, p0

    .line 148
    float-to-long p2, p2

    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 153
    .line 154
    .line 155
    iget-object p0, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :catch_0
    move-exception p0

    .line 162
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    const-string p2, "Illegal path with x1="

    .line 165
    .line 166
    const-string p3, " y1="

    .line 167
    .line 168
    const-string p4, " x2="

    .line 169
    .line 170
    invoke-static {p2, v1, p3, v0, p4}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p3, " y2="

    .line 178
    .line 179
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    throw p1
.end method
