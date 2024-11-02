.class public abstract Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field public mType:Ljava/lang/String;

.field public mVariesBy:I

.field public final mWavePoints:Ljava/util/ArrayList;

.field public mWaveShape:I

.field public mWaveString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final get(F)F
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    float-to-double v4, p1

    .line 11
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 12
    .line 13
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 20
    .line 21
    aget v4, v4, v3

    .line 22
    .line 23
    float-to-double v4, v4

    .line 24
    aput-wide v4, v0, v3

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 27
    .line 28
    aget v4, v4, v3

    .line 29
    .line 30
    float-to-double v4, v4

    .line 31
    aput-wide v4, v0, v2

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 34
    .line 35
    aget v4, v4, v3

    .line 36
    .line 37
    float-to-double v4, v4

    .line 38
    aput-wide v4, v0, v1

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 41
    .line 42
    aget-wide v3, v0, v3

    .line 43
    .line 44
    aget-wide v5, v0, v2

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 47
    .line 48
    float-to-double v7, p1

    .line 49
    invoke-virtual {v0, v7, v8, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 54
    .line 55
    aget-wide p0, p0, v1

    .line 56
    .line 57
    mul-double/2addr v5, p0

    .line 58
    add-double/2addr v5, v3

    .line 59
    double-to-float p0, v5

    .line 60
    return p0
.end method

.method public final getSlope(F)F
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    float-to-double v8, v1

    .line 17
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 18
    .line 19
    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 23
    .line 24
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 25
    .line 26
    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 31
    .line 32
    aput-wide v4, v2, v6

    .line 33
    .line 34
    aput-wide v4, v2, v7

    .line 35
    .line 36
    aput-wide v4, v2, v3

    .line 37
    .line 38
    :goto_0
    float-to-double v1, v1

    .line 39
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 40
    .line 41
    aget-wide v8, v8, v7

    .line 42
    .line 43
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 44
    .line 45
    invoke-virtual {v10, v1, v2, v8, v9}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 50
    .line 51
    aget-wide v11, v11, v7

    .line 52
    .line 53
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 54
    .line 55
    aget-wide v13, v13, v7

    .line 56
    .line 57
    invoke-virtual {v10, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v15

    .line 61
    add-double/2addr v15, v11

    .line 62
    cmpg-double v7, v1, v4

    .line 63
    .line 64
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 65
    .line 66
    if-gtz v7, :cond_1

    .line 67
    .line 68
    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    cmpl-double v7, v1, v11

    .line 75
    .line 76
    if-ltz v7, :cond_2

    .line 77
    .line 78
    const-wide v1, 0x3feffffde7210be9L    # 0.999999

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    iget-object v7, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 84
    .line 85
    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-lez v7, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    if-eqz v7, :cond_4

    .line 93
    .line 94
    neg-int v7, v7

    .line 95
    add-int/lit8 v7, v7, -0x1

    .line 96
    .line 97
    iget-object v4, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 98
    .line 99
    aget v5, v4, v7

    .line 100
    .line 101
    add-int/lit8 v17, v7, -0x1

    .line 102
    .line 103
    aget v4, v4, v17

    .line 104
    .line 105
    sub-float/2addr v5, v4

    .line 106
    float-to-double v11, v5

    .line 107
    iget-object v5, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 108
    .line 109
    aget-wide v18, v5, v7

    .line 110
    .line 111
    aget-wide v20, v5, v17

    .line 112
    .line 113
    sub-double v18, v18, v20

    .line 114
    .line 115
    div-double v11, v11, v18

    .line 116
    .line 117
    mul-double/2addr v1, v11

    .line 118
    float-to-double v4, v4

    .line 119
    mul-double v11, v11, v20

    .line 120
    .line 121
    sub-double/2addr v4, v11

    .line 122
    add-double/2addr v4, v1

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const-wide/16 v4, 0x0

    .line 125
    .line 126
    :goto_2
    add-double/2addr v4, v13

    .line 127
    iget v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 128
    .line 129
    iget-wide v11, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    .line 130
    .line 131
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 132
    .line 133
    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    .line 134
    .line 135
    packed-switch v1, :pswitch_data_0

    .line 136
    .line 137
    .line 138
    mul-double/2addr v4, v11

    .line 139
    mul-double/2addr v11, v15

    .line 140
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    goto :goto_3

    .line 145
    :pswitch_0
    iget-object v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 146
    .line 147
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 148
    .line 149
    rem-double v4, v15, v4

    .line 150
    .line 151
    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    goto :goto_4

    .line 156
    :pswitch_1
    mul-double v4, v4, v17

    .line 157
    .line 158
    mul-double v15, v15, v17

    .line 159
    .line 160
    add-double/2addr v15, v13

    .line 161
    rem-double v15, v15, v17

    .line 162
    .line 163
    sub-double/2addr v15, v13

    .line 164
    mul-double/2addr v4, v15

    .line 165
    goto :goto_4

    .line 166
    :pswitch_2
    neg-double v1, v11

    .line 167
    mul-double/2addr v1, v4

    .line 168
    mul-double/2addr v11, v15

    .line 169
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    :goto_3
    mul-double/2addr v4, v1

    .line 174
    goto :goto_4

    .line 175
    :pswitch_3
    neg-double v1, v4

    .line 176
    mul-double v4, v1, v13

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :pswitch_4
    mul-double/2addr v4, v13

    .line 180
    goto :goto_4

    .line 181
    :pswitch_5
    mul-double v4, v4, v17

    .line 182
    .line 183
    mul-double v15, v15, v17

    .line 184
    .line 185
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 186
    .line 187
    add-double/2addr v15, v1

    .line 188
    rem-double v15, v15, v17

    .line 189
    .line 190
    sub-double/2addr v15, v13

    .line 191
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->signum(D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v1

    .line 195
    goto :goto_3

    .line 196
    :pswitch_6
    const-wide/16 v4, 0x0

    .line 197
    .line 198
    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 199
    .line 200
    aget-wide v6, v1, v6

    .line 201
    .line 202
    aget-wide v1, v1, v3

    .line 203
    .line 204
    mul-double/2addr v8, v1

    .line 205
    add-double/2addr v8, v6

    .line 206
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 207
    .line 208
    aget-wide v0, v0, v3

    .line 209
    .line 210
    mul-double/2addr v4, v0

    .line 211
    add-double/2addr v4, v8

    .line 212
    double-to-float v0, v4

    .line 213
    return v0

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustom(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setup()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    .line 19
    .line 20
    new-array v3, v2, [D

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    filled-new-array {v2, v4}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, [[D

    .line 34
    .line 35
    new-instance v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 36
    .line 37
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 38
    .line 39
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    .line 40
    .line 41
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 42
    .line 43
    invoke-direct {v6, v7, v8, v9, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;-><init>(ILjava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    iput-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    move v6, v2

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x1

    .line 59
    const/4 v9, 0x2

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 67
    .line 68
    iget v10, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    .line 69
    .line 70
    float-to-double v11, v10

    .line 71
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    mul-double/2addr v11, v13

    .line 77
    aput-wide v11, v3, v6

    .line 78
    .line 79
    aget-object v11, v5, v6

    .line 80
    .line 81
    iget v12, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 82
    .line 83
    float-to-double v13, v12

    .line 84
    aput-wide v13, v11, v2

    .line 85
    .line 86
    iget v13, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    .line 87
    .line 88
    float-to-double v14, v13

    .line 89
    aput-wide v14, v11, v8

    .line 90
    .line 91
    iget v14, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    .line 92
    .line 93
    move-object v15, v3

    .line 94
    float-to-double v2, v14

    .line 95
    aput-wide v2, v11, v9

    .line 96
    .line 97
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 98
    .line 99
    iget v3, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 100
    .line 101
    move-object v11, v5

    .line 102
    int-to-double v4, v3

    .line 103
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 104
    .line 105
    div-double v4, v4, v16

    .line 106
    .line 107
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 108
    .line 109
    aput-wide v4, v3, v6

    .line 110
    .line 111
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 112
    .line 113
    aput v10, v3, v6

    .line 114
    .line 115
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 116
    .line 117
    aput v13, v3, v6

    .line 118
    .line 119
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 120
    .line 121
    aput v14, v3, v6

    .line 122
    .line 123
    iget-object v2, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 124
    .line 125
    aput v12, v2, v6

    .line 126
    .line 127
    add-int/2addr v6, v8

    .line 128
    move-object v5, v11

    .line 129
    move-object v3, v15

    .line 130
    const/4 v2, 0x0

    .line 131
    const/4 v4, 0x3

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    move-object v15, v3

    .line 134
    move-object v11, v5

    .line 135
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 136
    .line 137
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 138
    .line 139
    array-length v2, v1

    .line 140
    const/4 v3, 0x3

    .line 141
    filled-new-array {v2, v3}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 146
    .line 147
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, [[D

    .line 152
    .line 153
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 154
    .line 155
    array-length v4, v3

    .line 156
    add-int/2addr v4, v9

    .line 157
    new-array v4, v4, [D

    .line 158
    .line 159
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 160
    .line 161
    array-length v4, v3

    .line 162
    add-int/2addr v4, v9

    .line 163
    new-array v4, v4, [D

    .line 164
    .line 165
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    aget-wide v5, v1, v4

    .line 169
    .line 170
    const-wide/16 v12, 0x0

    .line 171
    .line 172
    cmpl-double v5, v5, v12

    .line 173
    .line 174
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 175
    .line 176
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 177
    .line 178
    if-lez v5, :cond_2

    .line 179
    .line 180
    aget v5, v6, v4

    .line 181
    .line 182
    invoke-virtual {v7, v12, v13, v5}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 183
    .line 184
    .line 185
    :cond_2
    array-length v4, v1

    .line 186
    sub-int/2addr v4, v8

    .line 187
    aget-wide v16, v1, v4

    .line 188
    .line 189
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 190
    .line 191
    cmpg-double v5, v16, v12

    .line 192
    .line 193
    if-gez v5, :cond_3

    .line 194
    .line 195
    aget v4, v6, v4

    .line 196
    .line 197
    invoke-virtual {v7, v12, v13, v4}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 198
    .line 199
    .line 200
    :cond_3
    const/4 v4, 0x0

    .line 201
    :goto_1
    array-length v5, v2

    .line 202
    if-ge v4, v5, :cond_4

    .line 203
    .line 204
    aget-object v5, v2, v4

    .line 205
    .line 206
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 207
    .line 208
    aget v10, v10, v4

    .line 209
    .line 210
    float-to-double v12, v10

    .line 211
    const/4 v10, 0x0

    .line 212
    aput-wide v12, v5, v10

    .line 213
    .line 214
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 215
    .line 216
    aget v10, v10, v4

    .line 217
    .line 218
    float-to-double v12, v10

    .line 219
    aput-wide v12, v5, v8

    .line 220
    .line 221
    aget v10, v3, v4

    .line 222
    .line 223
    float-to-double v12, v10

    .line 224
    aput-wide v12, v5, v9

    .line 225
    .line 226
    aget-wide v12, v1, v4

    .line 227
    .line 228
    aget v5, v6, v4

    .line 229
    .line 230
    invoke-virtual {v7, v12, v13, v5}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 231
    .line 232
    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_4
    const/4 v3, 0x0

    .line 237
    const-wide/16 v4, 0x0

    .line 238
    .line 239
    :goto_2
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 240
    .line 241
    array-length v9, v6

    .line 242
    if-ge v3, v9, :cond_5

    .line 243
    .line 244
    aget v6, v6, v3

    .line 245
    .line 246
    float-to-double v9, v6

    .line 247
    add-double/2addr v4, v9

    .line 248
    add-int/lit8 v3, v3, 0x1

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_5
    move v3, v8

    .line 252
    const-wide/16 v9, 0x0

    .line 253
    .line 254
    :goto_3
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 255
    .line 256
    array-length v12, v6

    .line 257
    const/high16 v13, 0x40000000    # 2.0f

    .line 258
    .line 259
    if-ge v3, v12, :cond_6

    .line 260
    .line 261
    add-int/lit8 v12, v3, -0x1

    .line 262
    .line 263
    aget v14, v6, v12

    .line 264
    .line 265
    aget v6, v6, v3

    .line 266
    .line 267
    add-float/2addr v14, v6

    .line 268
    div-float/2addr v14, v13

    .line 269
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 270
    .line 271
    aget-wide v16, v6, v3

    .line 272
    .line 273
    aget-wide v12, v6, v12

    .line 274
    .line 275
    sub-double v16, v16, v12

    .line 276
    .line 277
    float-to-double v12, v14

    .line 278
    mul-double v16, v16, v12

    .line 279
    .line 280
    add-double v9, v16, v9

    .line 281
    .line 282
    add-int/lit8 v3, v3, 0x1

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_6
    const/4 v3, 0x0

    .line 286
    :goto_4
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 287
    .line 288
    array-length v12, v6

    .line 289
    if-ge v3, v12, :cond_7

    .line 290
    .line 291
    aget v12, v6, v3

    .line 292
    .line 293
    float-to-double v13, v12

    .line 294
    div-double v16, v4, v9

    .line 295
    .line 296
    mul-double v12, v16, v13

    .line 297
    .line 298
    double-to-float v12, v12

    .line 299
    aput v12, v6, v3

    .line 300
    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    .line 303
    const/high16 v13, 0x40000000    # 2.0f

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_7
    iget-object v3, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 307
    .line 308
    const-wide/16 v4, 0x0

    .line 309
    .line 310
    const/4 v6, 0x0

    .line 311
    aput-wide v4, v3, v6

    .line 312
    .line 313
    move v3, v8

    .line 314
    :goto_5
    iget-object v4, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 315
    .line 316
    array-length v5, v4

    .line 317
    if-ge v3, v5, :cond_8

    .line 318
    .line 319
    add-int/lit8 v5, v3, -0x1

    .line 320
    .line 321
    aget v6, v4, v5

    .line 322
    .line 323
    aget v4, v4, v3

    .line 324
    .line 325
    add-float/2addr v6, v4

    .line 326
    const/high16 v4, 0x40000000    # 2.0f

    .line 327
    .line 328
    div-float/2addr v6, v4

    .line 329
    iget-object v9, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 330
    .line 331
    aget-wide v12, v9, v3

    .line 332
    .line 333
    aget-wide v9, v9, v5

    .line 334
    .line 335
    sub-double/2addr v12, v9

    .line 336
    iget-object v9, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 337
    .line 338
    aget-wide v16, v9, v5

    .line 339
    .line 340
    float-to-double v5, v6

    .line 341
    mul-double/2addr v12, v5

    .line 342
    add-double v12, v12, v16

    .line 343
    .line 344
    aput-wide v12, v9, v3

    .line 345
    .line 346
    add-int/lit8 v3, v3, 0x1

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_8
    array-length v3, v1

    .line 350
    if-le v3, v8, :cond_9

    .line 351
    .line 352
    const/4 v3, 0x0

    .line 353
    invoke-static {v3, v1, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_9
    const/4 v3, 0x0

    .line 361
    const/4 v1, 0x0

    .line 362
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 363
    .line 364
    :goto_6
    move-object v0, v15

    .line 365
    invoke-static {v3, v0, v11}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    .line 5
    const-string v2, "##.##"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 27
    .line 28
    const-string v3, "["

    .line 29
    .line 30
    invoke-static {v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, " , "

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v2, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 45
    .line 46
    float-to-double v2, v2

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "] "

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-object v0
.end method
