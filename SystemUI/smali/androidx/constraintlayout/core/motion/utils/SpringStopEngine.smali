.class public final Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# instance fields
.field public mBoundaryMode:I

.field public mDamping:D

.field public mLastTime:F

.field public mMass:F

.field public mPos:F

.field public mStiffness:D

.field public mStopThreshold:F

.field public mTargetPos:D

.field public mV:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 6
    .line 7
    sub-float v2, v1, v2

    .line 8
    .line 9
    float-to-double v2, v2

    .line 10
    iget-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 11
    .line 12
    iget-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 13
    .line 14
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 15
    .line 16
    float-to-double v8, v8

    .line 17
    div-double v8, v4, v8

    .line 18
    .line 19
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    mul-double/2addr v8, v2

    .line 24
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 25
    .line 26
    mul-double/2addr v8, v10

    .line 27
    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    .line 28
    .line 29
    div-double/2addr v10, v8

    .line 30
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    add-double/2addr v10, v8

    .line 33
    double-to-int v8, v10

    .line 34
    int-to-double v9, v8

    .line 35
    div-double/2addr v2, v9

    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    if-ge v9, v8, :cond_2

    .line 38
    .line 39
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 40
    .line 41
    float-to-double v10, v10

    .line 42
    iget-wide v12, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 43
    .line 44
    sub-double v14, v10, v12

    .line 45
    .line 46
    move/from16 v16, v8

    .line 47
    .line 48
    move/from16 v17, v9

    .line 49
    .line 50
    neg-double v8, v4

    .line 51
    mul-double/2addr v8, v14

    .line 52
    iget v14, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 53
    .line 54
    float-to-double v14, v14

    .line 55
    mul-double v18, v14, v6

    .line 56
    .line 57
    sub-double v8, v8, v18

    .line 58
    .line 59
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 60
    .line 61
    float-to-double v0, v1

    .line 62
    div-double/2addr v8, v0

    .line 63
    mul-double/2addr v8, v2

    .line 64
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 65
    .line 66
    div-double v8, v8, v18

    .line 67
    .line 68
    add-double/2addr v8, v14

    .line 69
    mul-double v20, v2, v8

    .line 70
    .line 71
    div-double v20, v20, v18

    .line 72
    .line 73
    add-double v20, v20, v10

    .line 74
    .line 75
    sub-double v12, v20, v12

    .line 76
    .line 77
    neg-double v12, v12

    .line 78
    mul-double/2addr v12, v4

    .line 79
    mul-double/2addr v8, v6

    .line 80
    sub-double/2addr v12, v8

    .line 81
    div-double/2addr v12, v0

    .line 82
    mul-double/2addr v12, v2

    .line 83
    div-double v0, v12, v18

    .line 84
    .line 85
    add-double/2addr v0, v14

    .line 86
    add-double/2addr v14, v12

    .line 87
    double-to-float v8, v14

    .line 88
    move-object/from16 v9, p0

    .line 89
    .line 90
    iput v8, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 91
    .line 92
    mul-double/2addr v0, v2

    .line 93
    add-double/2addr v0, v10

    .line 94
    double-to-float v0, v0

    .line 95
    iput v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 96
    .line 97
    iget v1, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 98
    .line 99
    if-lez v1, :cond_1

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    cmpg-float v10, v0, v10

    .line 103
    .line 104
    if-gez v10, :cond_0

    .line 105
    .line 106
    and-int/lit8 v10, v1, 0x1

    .line 107
    .line 108
    const/4 v11, 0x1

    .line 109
    if-ne v10, v11, :cond_0

    .line 110
    .line 111
    neg-float v0, v0

    .line 112
    iput v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 113
    .line 114
    neg-float v0, v8

    .line 115
    iput v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 116
    .line 117
    :cond_0
    iget v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 118
    .line 119
    const/high16 v8, 0x3f800000    # 1.0f

    .line 120
    .line 121
    cmpl-float v8, v0, v8

    .line 122
    .line 123
    if-lez v8, :cond_1

    .line 124
    .line 125
    and-int/lit8 v1, v1, 0x2

    .line 126
    .line 127
    const/4 v8, 0x2

    .line 128
    if-ne v1, v8, :cond_1

    .line 129
    .line 130
    const/high16 v1, 0x40000000    # 2.0f

    .line 131
    .line 132
    sub-float/2addr v1, v0

    .line 133
    iput v1, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 134
    .line 135
    iget v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 136
    .line 137
    neg-float v0, v0

    .line 138
    iput v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 139
    .line 140
    :cond_1
    add-int/lit8 v0, v17, 0x1

    .line 141
    .line 142
    move/from16 v1, p1

    .line 143
    .line 144
    move/from16 v8, v16

    .line 145
    .line 146
    move-object/from16 v22, v9

    .line 147
    .line 148
    move v9, v0

    .line 149
    move-object/from16 v0, v22

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_2
    move-object v9, v0

    .line 153
    move v0, v1

    .line 154
    iput v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 155
    .line 156
    iget v0, v9, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 157
    .line 158
    return v0
.end method

.method public final getVelocity()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isStopped()Z
    .locals 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 5
    .line 6
    sub-double/2addr v0, v2

    .line 7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 8
    .line 9
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 10
    .line 11
    float-to-double v4, v4

    .line 12
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 13
    .line 14
    float-to-double v6, v6

    .line 15
    mul-double/2addr v4, v4

    .line 16
    mul-double/2addr v4, v6

    .line 17
    mul-double v6, v2, v0

    .line 18
    .line 19
    mul-double/2addr v6, v0

    .line 20
    add-double/2addr v6, v4

    .line 21
    div-double/2addr v6, v2

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget p0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    .line 27
    .line 28
    float-to-double v2, p0

    .line 29
    cmpg-double p0, v0, v2

    .line 30
    .line 31
    if-gtz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method
