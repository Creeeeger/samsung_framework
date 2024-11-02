.class public final Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public final mOffset:[F

.field public final mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

.field public final mPeriod:[F

.field public final mPhase:[F

.field public final mPosition:[D

.field public mSplineSlopeCache:[D

.field public mSplineValueCache:[D

.field public final mValues:[F


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 11
    .line 12
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/Oscillator;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 16
    .line 17
    move/from16 v4, p1

    .line 18
    .line 19
    iput v4, v3, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    div-int/lit8 v4, v4, 0x2

    .line 28
    .line 29
    new-array v4, v4, [D

    .line 30
    .line 31
    const/16 v5, 0x28

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x1

    .line 38
    add-int/2addr v5, v6

    .line 39
    const/16 v7, 0x2c

    .line 40
    .line 41
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const/4 v9, 0x0

    .line 46
    move v10, v9

    .line 47
    :goto_0
    const/4 v11, -0x1

    .line 48
    if-eq v8, v11, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    add-int/lit8 v11, v10, 0x1

    .line 59
    .line 60
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 61
    .line 62
    .line 63
    move-result-wide v12

    .line 64
    aput-wide v12, v4, v10

    .line 65
    .line 66
    add-int/lit8 v5, v8, 0x1

    .line 67
    .line 68
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    move v10, v11

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/16 v7, 0x29

    .line 75
    .line 76
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    add-int/lit8 v5, v10, 0x1

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    aput-wide v7, v4, v10

    .line 95
    .line 96
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    array-length v4, v1

    .line 101
    mul-int/lit8 v4, v4, 0x3

    .line 102
    .line 103
    add-int/lit8 v4, v4, -0x2

    .line 104
    .line 105
    array-length v5, v1

    .line 106
    sub-int/2addr v5, v6

    .line 107
    int-to-double v7, v5

    .line 108
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 109
    .line 110
    div-double v7, v10, v7

    .line 111
    .line 112
    filled-new-array {v4, v6}, [I

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    invoke-static {v12, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, [[D

    .line 123
    .line 124
    new-array v4, v4, [D

    .line 125
    .line 126
    move v12, v9

    .line 127
    :goto_1
    array-length v13, v1

    .line 128
    if-ge v12, v13, :cond_2

    .line 129
    .line 130
    aget-wide v13, v1, v12

    .line 131
    .line 132
    add-int v15, v12, v5

    .line 133
    .line 134
    aget-object v16, v6, v15

    .line 135
    .line 136
    aput-wide v13, v16, v9

    .line 137
    .line 138
    int-to-double v9, v12

    .line 139
    mul-double/2addr v9, v7

    .line 140
    aput-wide v9, v4, v15

    .line 141
    .line 142
    if-lez v12, :cond_1

    .line 143
    .line 144
    mul-int/lit8 v11, v5, 0x2

    .line 145
    .line 146
    add-int/2addr v11, v12

    .line 147
    aget-object v15, v6, v11

    .line 148
    .line 149
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 150
    .line 151
    add-double v18, v13, v16

    .line 152
    .line 153
    const/16 v20, 0x0

    .line 154
    .line 155
    aput-wide v18, v15, v20

    .line 156
    .line 157
    add-double v18, v9, v16

    .line 158
    .line 159
    aput-wide v18, v4, v11

    .line 160
    .line 161
    add-int/lit8 v11, v12, -0x1

    .line 162
    .line 163
    aget-object v15, v6, v11

    .line 164
    .line 165
    sub-double v13, v13, v16

    .line 166
    .line 167
    sub-double/2addr v13, v7

    .line 168
    aput-wide v13, v15, v20

    .line 169
    .line 170
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 171
    .line 172
    add-double/2addr v9, v13

    .line 173
    sub-double/2addr v9, v7

    .line 174
    aput-wide v9, v4, v11

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_1
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 178
    .line 179
    const/16 v20, 0x0

    .line 180
    .line 181
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 182
    .line 183
    move-wide/from16 v10, v16

    .line 184
    .line 185
    move/from16 v9, v20

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 189
    .line 190
    invoke-direct {v1, v4, v6}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    .line 191
    .line 192
    .line 193
    iput-object v1, v3, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 194
    .line 195
    :cond_3
    new-array v1, v2, [F

    .line 196
    .line 197
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 198
    .line 199
    new-array v1, v2, [D

    .line 200
    .line 201
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 202
    .line 203
    new-array v1, v2, [F

    .line 204
    .line 205
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 206
    .line 207
    new-array v1, v2, [F

    .line 208
    .line 209
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 210
    .line 211
    new-array v1, v2, [F

    .line 212
    .line 213
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    .line 214
    .line 215
    new-array v0, v2, [F

    .line 216
    .line 217
    return-void
.end method
