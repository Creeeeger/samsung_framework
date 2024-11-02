.class public abstract Landroidx/constraintlayout/core/motion/utils/SplineSet;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public count:I

.field public mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public mTimePoints:[I

.field public mType:Ljava/lang/String;

.field public mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final get(F)F
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 2
    .line 3
    float-to-double v0, p1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D)D

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    double-to-float p0, p0

    .line 9
    return p0
.end method

.method public setPoint(FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    .line 5
    .line 6
    add-int/lit8 v2, v2, 0x1

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x2

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 31
    .line 32
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    .line 33
    .line 34
    aput p2, v0, v1

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    .line 37
    .line 38
    aput p1, p2, v1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    .line 43
    .line 44
    return-void
.end method

.method public setup(I)V
    .locals 13

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v0, v3

    .line 12
    array-length v4, v1

    .line 13
    add-int/lit8 v4, v4, 0xa

    .line 14
    .line 15
    new-array v4, v4, [I

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput v0, v4, v5

    .line 19
    .line 20
    aput v5, v4, v3

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    :cond_1
    :goto_0
    if-lez v0, :cond_4

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    aget v6, v4, v0

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    aget v7, v4, v0

    .line 32
    .line 33
    if-ge v6, v7, :cond_1

    .line 34
    .line 35
    aget v8, v1, v7

    .line 36
    .line 37
    move v9, v6

    .line 38
    move v10, v9

    .line 39
    :goto_1
    if-ge v9, v7, :cond_3

    .line 40
    .line 41
    aget v11, v1, v9

    .line 42
    .line 43
    if-gt v11, v8, :cond_2

    .line 44
    .line 45
    aget v12, v1, v10

    .line 46
    .line 47
    aput v11, v1, v10

    .line 48
    .line 49
    aput v12, v1, v9

    .line 50
    .line 51
    aget v11, v2, v10

    .line 52
    .line 53
    aget v12, v2, v9

    .line 54
    .line 55
    aput v12, v2, v10

    .line 56
    .line 57
    aput v11, v2, v9

    .line 58
    .line 59
    add-int/lit8 v10, v10, 0x1

    .line 60
    .line 61
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    aget v8, v1, v10

    .line 65
    .line 66
    aget v9, v1, v7

    .line 67
    .line 68
    aput v9, v1, v10

    .line 69
    .line 70
    aput v8, v1, v7

    .line 71
    .line 72
    aget v8, v2, v10

    .line 73
    .line 74
    aget v9, v2, v7

    .line 75
    .line 76
    aput v9, v2, v10

    .line 77
    .line 78
    aput v8, v2, v7

    .line 79
    .line 80
    add-int/lit8 v8, v0, 0x1

    .line 81
    .line 82
    add-int/lit8 v9, v10, -0x1

    .line 83
    .line 84
    aput v9, v4, v0

    .line 85
    .line 86
    add-int/lit8 v0, v8, 0x1

    .line 87
    .line 88
    aput v6, v4, v8

    .line 89
    .line 90
    add-int/lit8 v6, v0, 0x1

    .line 91
    .line 92
    aput v7, v4, v0

    .line 93
    .line 94
    add-int/lit8 v0, v6, 0x1

    .line 95
    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 97
    .line 98
    aput v10, v4, v6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    move v0, v3

    .line 102
    move v1, v0

    .line 103
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    .line 104
    .line 105
    if-ge v0, v2, :cond_6

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 108
    .line 109
    add-int/lit8 v4, v0, -0x1

    .line 110
    .line 111
    aget v4, v2, v4

    .line 112
    .line 113
    aget v2, v2, v0

    .line 114
    .line 115
    if-eq v4, v2, :cond_5

    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    .line 119
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    new-array v0, v1, [D

    .line 123
    .line 124
    filled-new-array {v1, v3}, [I

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 129
    .line 130
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, [[D

    .line 135
    .line 136
    move v2, v5

    .line 137
    move v3, v2

    .line 138
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    .line 139
    .line 140
    if-ge v2, v4, :cond_8

    .line 141
    .line 142
    if-lez v2, :cond_7

    .line 143
    .line 144
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 145
    .line 146
    aget v6, v4, v2

    .line 147
    .line 148
    add-int/lit8 v7, v2, -0x1

    .line 149
    .line 150
    aget v4, v4, v7

    .line 151
    .line 152
    if-ne v6, v4, :cond_7

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 156
    .line 157
    aget v4, v4, v2

    .line 158
    .line 159
    int-to-double v6, v4

    .line 160
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    mul-double/2addr v6, v8

    .line 166
    aput-wide v6, v0, v3

    .line 167
    .line 168
    aget-object v4, v1, v3

    .line 169
    .line 170
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    .line 171
    .line 172
    aget v6, v6, v2

    .line 173
    .line 174
    float-to-double v6, v6

    .line 175
    aput-wide v6, v4, v5

    .line 176
    .line 177
    add-int/lit8 v3, v3, 0x1

    .line 178
    .line 179
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 187
    .line 188
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->count:I

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    const-string v3, "["

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mTimePoints:[I

    .line 22
    .line 23
    aget v3, v3, v2

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " , "

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mValues:[F

    .line 34
    .line 35
    aget v3, v3, v2

    .line 36
    .line 37
    float-to-double v3, v3

    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "] "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method
