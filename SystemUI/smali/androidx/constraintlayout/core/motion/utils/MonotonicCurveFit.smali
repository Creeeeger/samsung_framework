.class public final Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mExtrapolate:Z

.field public final mSlopeTemp:[D

.field public final mT:[D

.field public final mTangent:[[D

.field public final mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iput-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    const/4 v4, 0x0

    .line 15
    aget-object v5, v2, v4

    .line 16
    .line 17
    array-length v5, v5

    .line 18
    new-array v6, v5, [D

    .line 19
    .line 20
    iput-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    .line 21
    .line 22
    add-int/lit8 v6, v3, -0x1

    .line 23
    .line 24
    filled-new-array {v6, v5}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, [[D

    .line 35
    .line 36
    filled-new-array {v3, v5}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, [[D

    .line 47
    .line 48
    move v9, v4

    .line 49
    :goto_0
    if-ge v9, v5, :cond_2

    .line 50
    .line 51
    move v10, v4

    .line 52
    :goto_1
    if-ge v10, v6, :cond_1

    .line 53
    .line 54
    add-int/lit8 v11, v10, 0x1

    .line 55
    .line 56
    aget-wide v12, v1, v11

    .line 57
    .line 58
    aget-wide v14, v1, v10

    .line 59
    .line 60
    sub-double/2addr v12, v14

    .line 61
    aget-object v14, v7, v10

    .line 62
    .line 63
    aget-object v15, v2, v11

    .line 64
    .line 65
    aget-wide v15, v15, v9

    .line 66
    .line 67
    aget-object v17, v2, v10

    .line 68
    .line 69
    aget-wide v17, v17, v9

    .line 70
    .line 71
    sub-double v15, v15, v17

    .line 72
    .line 73
    div-double/2addr v15, v12

    .line 74
    aput-wide v15, v14, v9

    .line 75
    .line 76
    if-nez v10, :cond_0

    .line 77
    .line 78
    aget-object v10, v8, v10

    .line 79
    .line 80
    aput-wide v15, v10, v9

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_0
    aget-object v12, v8, v10

    .line 84
    .line 85
    add-int/lit8 v10, v10, -0x1

    .line 86
    .line 87
    aget-object v10, v7, v10

    .line 88
    .line 89
    aget-wide v13, v10, v9

    .line 90
    .line 91
    add-double/2addr v13, v15

    .line 92
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 93
    .line 94
    mul-double/2addr v13, v15

    .line 95
    aput-wide v13, v12, v9

    .line 96
    .line 97
    :goto_2
    move v10, v11

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    aget-object v10, v8, v6

    .line 100
    .line 101
    add-int/lit8 v11, v3, -0x2

    .line 102
    .line 103
    aget-object v11, v7, v11

    .line 104
    .line 105
    aget-wide v11, v11, v9

    .line 106
    .line 107
    aput-wide v11, v10, v9

    .line 108
    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move v3, v4

    .line 113
    :goto_3
    if-ge v3, v6, :cond_6

    .line 114
    .line 115
    move v9, v4

    .line 116
    :goto_4
    if-ge v9, v5, :cond_5

    .line 117
    .line 118
    aget-object v10, v7, v3

    .line 119
    .line 120
    aget-wide v10, v10, v9

    .line 121
    .line 122
    const-wide/16 v12, 0x0

    .line 123
    .line 124
    cmpl-double v14, v10, v12

    .line 125
    .line 126
    if-nez v14, :cond_3

    .line 127
    .line 128
    aget-object v10, v8, v3

    .line 129
    .line 130
    aput-wide v12, v10, v9

    .line 131
    .line 132
    add-int/lit8 v10, v3, 0x1

    .line 133
    .line 134
    aget-object v10, v8, v10

    .line 135
    .line 136
    aput-wide v12, v10, v9

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_3
    aget-object v12, v8, v3

    .line 140
    .line 141
    aget-wide v12, v12, v9

    .line 142
    .line 143
    div-double/2addr v12, v10

    .line 144
    add-int/lit8 v14, v3, 0x1

    .line 145
    .line 146
    aget-object v15, v8, v14

    .line 147
    .line 148
    aget-wide v15, v15, v9

    .line 149
    .line 150
    div-double v10, v15, v10

    .line 151
    .line 152
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 153
    .line 154
    .line 155
    move-result-wide v15

    .line 156
    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    .line 157
    .line 158
    cmpl-double v17, v15, v17

    .line 159
    .line 160
    if-lez v17, :cond_4

    .line 161
    .line 162
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    .line 163
    .line 164
    div-double v17, v17, v15

    .line 165
    .line 166
    aget-object v15, v8, v3

    .line 167
    .line 168
    mul-double v12, v12, v17

    .line 169
    .line 170
    aget-object v16, v7, v3

    .line 171
    .line 172
    aget-wide v19, v16, v9

    .line 173
    .line 174
    mul-double v12, v12, v19

    .line 175
    .line 176
    aput-wide v12, v15, v9

    .line 177
    .line 178
    aget-object v12, v8, v14

    .line 179
    .line 180
    mul-double v17, v17, v10

    .line 181
    .line 182
    aget-wide v10, v16, v9

    .line 183
    .line 184
    mul-double v17, v17, v10

    .line 185
    .line 186
    aput-wide v17, v12, v9

    .line 187
    .line 188
    :cond_4
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_6
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 195
    .line 196
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 197
    .line 198
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    .line 199
    .line 200
    return-void
.end method

.method public static diff(DDDDDD)D
    .locals 10

    .line 1
    mul-double v0, p2, p2

    .line 2
    .line 3
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    .line 4
    .line 5
    mul-double/2addr v2, v0

    .line 6
    mul-double v2, v2, p6

    .line 7
    .line 8
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    .line 9
    .line 10
    mul-double v6, p2, v4

    .line 11
    .line 12
    mul-double v8, v6, p6

    .line 13
    .line 14
    add-double/2addr v8, v2

    .line 15
    mul-double/2addr v4, v0

    .line 16
    mul-double/2addr v4, p4

    .line 17
    add-double/2addr v4, v8

    .line 18
    mul-double/2addr v6, p4

    .line 19
    sub-double/2addr v4, v6

    .line 20
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 21
    .line 22
    mul-double/2addr v2, p0

    .line 23
    mul-double v6, v2, p10

    .line 24
    .line 25
    mul-double/2addr v6, v0

    .line 26
    add-double/2addr v6, v4

    .line 27
    mul-double v2, v2, p8

    .line 28
    .line 29
    mul-double/2addr v2, v0

    .line 30
    add-double/2addr v2, v6

    .line 31
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 32
    .line 33
    mul-double/2addr v0, p0

    .line 34
    mul-double v0, v0, p10

    .line 35
    .line 36
    mul-double/2addr v0, p2

    .line 37
    sub-double/2addr v2, v0

    .line 38
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 39
    .line 40
    mul-double/2addr v0, p0

    .line 41
    mul-double v0, v0, p8

    .line 42
    .line 43
    mul-double/2addr v0, p2

    .line 44
    sub-double/2addr v2, v0

    .line 45
    mul-double v0, p0, p8

    .line 46
    .line 47
    add-double/2addr v0, v2

    .line 48
    return-wide v0
.end method

.method public static interpolate(DDDDDD)D
    .locals 12

    .line 1
    mul-double v0, p2, p2

    .line 2
    .line 3
    mul-double v2, v0, p2

    .line 4
    .line 5
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    .line 6
    .line 7
    mul-double/2addr v4, v2

    .line 8
    mul-double v4, v4, p6

    .line 9
    .line 10
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 11
    .line 12
    mul-double/2addr v6, v0

    .line 13
    mul-double v8, v6, p6

    .line 14
    .line 15
    add-double/2addr v8, v4

    .line 16
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 17
    .line 18
    mul-double v10, v2, v4

    .line 19
    .line 20
    mul-double v10, v10, p4

    .line 21
    .line 22
    add-double/2addr v10, v8

    .line 23
    mul-double v6, v6, p4

    .line 24
    .line 25
    sub-double/2addr v10, v6

    .line 26
    add-double v10, v10, p4

    .line 27
    .line 28
    mul-double v6, p0, p10

    .line 29
    .line 30
    mul-double v8, v6, v2

    .line 31
    .line 32
    add-double/2addr v8, v10

    .line 33
    mul-double v10, p0, p8

    .line 34
    .line 35
    mul-double/2addr v2, v10

    .line 36
    add-double/2addr v2, v8

    .line 37
    mul-double/2addr v6, v0

    .line 38
    sub-double/2addr v2, v6

    .line 39
    mul-double/2addr v4, p0

    .line 40
    mul-double v4, v4, p8

    .line 41
    .line 42
    mul-double/2addr v4, v0

    .line 43
    sub-double/2addr v2, v4

    .line 44
    mul-double/2addr v10, p2

    .line 45
    add-double/2addr v10, v2

    .line 46
    return-wide v10
.end method


# virtual methods
.method public final getPos(D)D
    .locals 24

    move-object/from16 v0, p0

    .line 45
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 46
    iget-boolean v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    if-eqz v4, :cond_1

    .line 47
    aget-wide v6, v1, v3

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_0

    .line 48
    aget-object v1, v5, v3

    aget-wide v1, v1, v3

    sub-double v3, p1, v6

    invoke-virtual {v0, v6, v7}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    move-result-wide v5

    :goto_0
    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    return-wide v5

    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 49
    aget-wide v6, v1, v4

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_3

    .line 50
    aget-object v1, v5, v4

    aget-wide v1, v1, v3

    sub-double v3, p1, v6

    invoke-virtual {v0, v6, v7}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    move-result-wide v5

    goto :goto_0

    .line 51
    :cond_1
    aget-wide v6, v1, v3

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_2

    .line 52
    aget-object v0, v5, v3

    aget-wide v0, v0, v3

    return-wide v0

    :cond_2
    add-int/lit8 v4, v2, -0x1

    .line 53
    aget-wide v6, v1, v4

    cmpl-double v6, p1, v6

    if-ltz v6, :cond_3

    .line 54
    aget-object v0, v5, v4

    aget-wide v0, v0, v3

    return-wide v0

    :cond_3
    move v4, v3

    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v4, v6, :cond_6

    .line 55
    aget-wide v6, v1, v4

    cmpl-double v8, p1, v6

    if-nez v8, :cond_4

    .line 56
    aget-object v0, v5, v4

    aget-wide v0, v0, v3

    return-wide v0

    :cond_4
    add-int/lit8 v8, v4, 0x1

    .line 57
    aget-wide v9, v1, v8

    cmpg-double v11, p1, v9

    if-gez v11, :cond_5

    sub-double v12, v9, v6

    sub-double v1, p1, v6

    div-double v14, v1, v12

    .line 58
    aget-object v1, v5, v4

    aget-wide v16, v1, v3

    .line 59
    aget-object v1, v5, v8

    aget-wide v18, v1, v3

    .line 60
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v0, v4

    aget-wide v20, v1, v3

    .line 61
    aget-object v0, v0, v8

    aget-wide v22, v0, v3

    .line 62
    invoke-static/range {v12 .. v23}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v0

    return-wide v0

    :cond_5
    move v4, v8

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getPos(D[D)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 2
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v5, v3, v4

    array-length v5, v5

    .line 3
    iget-boolean v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v6, :cond_3

    .line 4
    aget-wide v6, v1, v4

    cmpg-double v8, p1, v6

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    if-gtz v8, :cond_1

    .line 5
    invoke-virtual {v0, v6, v7, v9}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_0

    .line 6
    aget-object v2, v3, v4

    aget-wide v6, v2, v0

    aget-wide v10, v1, v4

    sub-double v10, p1, v10

    aget-wide v12, v9, v0

    mul-double/2addr v10, v12

    add-double/2addr v10, v6

    aput-wide v10, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v6, v2, -0x1

    .line 7
    aget-wide v7, v1, v6

    cmpl-double v10, p1, v7

    if-ltz v10, :cond_7

    .line 8
    invoke-virtual {v0, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    :goto_1
    if-ge v4, v5, :cond_2

    .line 9
    aget-object v0, v3, v6

    aget-wide v7, v0, v4

    aget-wide v10, v1, v6

    sub-double v10, p1, v10

    aget-wide v12, v9, v4

    mul-double/2addr v10, v12

    add-double/2addr v10, v7

    aput-wide v10, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 10
    :cond_3
    aget-wide v6, v1, v4

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_5

    move v0, v4

    :goto_2
    if-ge v0, v5, :cond_4

    .line 11
    aget-object v1, v3, v4

    aget-wide v1, v1, v0

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v6, v2, -0x1

    .line 12
    aget-wide v7, v1, v6

    cmpl-double v7, p1, v7

    if-ltz v7, :cond_7

    :goto_3
    if-ge v4, v5, :cond_6

    .line 13
    aget-object v0, v3, v6

    aget-wide v0, v0, v4

    aput-wide v0, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    move v6, v4

    :goto_4
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_b

    .line 14
    aget-wide v7, v1, v6

    cmpl-double v7, p1, v7

    if-nez v7, :cond_8

    move v7, v4

    :goto_5
    if-ge v7, v5, :cond_8

    .line 15
    aget-object v8, v3, v6

    aget-wide v8, v8, v7

    aput-wide v8, p3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v6, 0x1

    .line 16
    aget-wide v8, v1, v7

    cmpg-double v10, p1, v8

    if-gez v10, :cond_a

    .line 17
    aget-wide v1, v1, v6

    sub-double/2addr v8, v1

    sub-double v1, p1, v1

    div-double/2addr v1, v8

    :goto_6
    if-ge v4, v5, :cond_9

    .line 18
    aget-object v10, v3, v6

    aget-wide v14, v10, v4

    .line 19
    aget-object v10, v3, v7

    aget-wide v16, v10, v4

    .line 20
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v11, v10, v6

    aget-wide v18, v11, v4

    .line 21
    aget-object v10, v10, v7

    aget-wide v20, v10, v4

    move-wide v10, v8

    move-wide v12, v1

    .line 22
    invoke-static/range {v10 .. v21}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v10

    aput-wide v10, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    move v6, v7

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final getPos(D[F)V
    .locals 22

    move-object/from16 v0, p0

    .line 23
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 24
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v5, v3, v4

    array-length v5, v5

    .line 25
    iget-boolean v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v6, :cond_3

    .line 26
    aget-wide v6, v1, v4

    cmpg-double v8, p1, v6

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    if-gtz v8, :cond_1

    .line 27
    invoke-virtual {v0, v6, v7, v9}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_0

    .line 28
    aget-object v2, v3, v4

    aget-wide v6, v2, v0

    aget-wide v10, v1, v4

    sub-double v10, p1, v10

    aget-wide v12, v9, v0

    mul-double/2addr v10, v12

    add-double/2addr v10, v6

    double-to-float v2, v10

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v6, v2, -0x1

    .line 29
    aget-wide v7, v1, v6

    cmpl-double v10, p1, v7

    if-ltz v10, :cond_7

    .line 30
    invoke-virtual {v0, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    :goto_1
    if-ge v4, v5, :cond_2

    .line 31
    aget-object v0, v3, v6

    aget-wide v7, v0, v4

    aget-wide v10, v1, v6

    sub-double v10, p1, v10

    aget-wide v12, v9, v4

    mul-double/2addr v10, v12

    add-double/2addr v10, v7

    double-to-float v0, v10

    aput v0, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 32
    :cond_3
    aget-wide v6, v1, v4

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_5

    move v0, v4

    :goto_2
    if-ge v0, v5, :cond_4

    .line 33
    aget-object v1, v3, v4

    aget-wide v1, v1, v0

    double-to-float v1, v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v6, v2, -0x1

    .line 34
    aget-wide v7, v1, v6

    cmpl-double v7, p1, v7

    if-ltz v7, :cond_7

    :goto_3
    if-ge v4, v5, :cond_6

    .line 35
    aget-object v0, v3, v6

    aget-wide v0, v0, v4

    double-to-float v0, v0

    aput v0, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    move v6, v4

    :goto_4
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_b

    .line 36
    aget-wide v7, v1, v6

    cmpl-double v7, p1, v7

    if-nez v7, :cond_8

    move v7, v4

    :goto_5
    if-ge v7, v5, :cond_8

    .line 37
    aget-object v8, v3, v6

    aget-wide v8, v8, v7

    double-to-float v8, v8

    aput v8, p3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v6, 0x1

    .line 38
    aget-wide v8, v1, v7

    cmpg-double v10, p1, v8

    if-gez v10, :cond_a

    .line 39
    aget-wide v1, v1, v6

    sub-double/2addr v8, v1

    sub-double v1, p1, v1

    div-double/2addr v1, v8

    :goto_6
    if-ge v4, v5, :cond_9

    .line 40
    aget-object v10, v3, v6

    aget-wide v14, v10, v4

    .line 41
    aget-object v10, v3, v7

    aget-wide v16, v10, v4

    .line 42
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v11, v10, v6

    aget-wide v18, v11, v4

    .line 43
    aget-object v10, v10, v7

    aget-wide v20, v10, v4

    move-wide v10, v8

    move-wide v12, v1

    .line 44
    invoke-static/range {v10 .. v21}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    move v6, v7

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final getSlope(D)D
    .locals 22

    move-object/from16 v0, p0

    .line 12
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 13
    aget-wide v4, v1, v3

    cmpg-double v6, p1, v4

    if-gez v6, :cond_0

    :goto_0
    move v6, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 14
    aget-wide v4, v1, v4

    cmpl-double v6, p1, v4

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p1

    goto :goto_0

    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v6, 0x1

    .line 15
    aget-wide v8, v1, v7

    cmpg-double v10, v4, v8

    if-gtz v10, :cond_2

    .line 16
    aget-wide v1, v1, v6

    sub-double/2addr v8, v1

    sub-double/2addr v4, v1

    div-double v12, v4, v8

    .line 17
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v1, v6

    aget-wide v14, v2, v3

    .line 18
    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    .line 19
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v0, v6

    aget-wide v18, v1, v3

    .line 20
    aget-object v0, v0, v7

    aget-wide v20, v0, v3

    move-wide v10, v8

    .line 21
    invoke-static/range {v10 .. v21}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v0

    div-double/2addr v0, v8

    return-wide v0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getSlope(D[D)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 2
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v5, v3, v4

    array-length v5, v5

    .line 3
    aget-wide v6, v1, v4

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 4
    aget-wide v6, v1, v6

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v6, p1

    :goto_0
    move v8, v4

    :goto_1
    add-int/lit8 v9, v2, -0x1

    if-ge v8, v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    .line 5
    aget-wide v10, v1, v9

    cmpg-double v12, v6, v10

    if-gtz v12, :cond_2

    .line 6
    aget-wide v1, v1, v8

    sub-double/2addr v10, v1

    sub-double/2addr v6, v1

    div-double/2addr v6, v10

    :goto_2
    if-ge v4, v5, :cond_3

    .line 7
    aget-object v1, v3, v8

    aget-wide v16, v1, v4

    .line 8
    aget-object v1, v3, v9

    aget-wide v18, v1, v4

    .line 9
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v2, v1, v8

    aget-wide v20, v2, v4

    .line 10
    aget-object v1, v1, v9

    aget-wide v22, v1, v4

    move-wide v12, v10

    move-wide v14, v6

    .line 11
    invoke-static/range {v12 .. v23}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v1

    div-double/2addr v1, v10

    aput-wide v1, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v8, v9

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final getTimePoints()[D
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 2
    .line 3
    return-object p0
.end method
