.class public final Lcom/android/systemui/classifier/ZigZagClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mLastDevianceY:F

.field public mLastMaxXDeviance:F

.field public mLastMaxYDeviance:F

.field public final mMaxXPrimaryDeviance:F

.field public final mMaxXSecondaryDeviance:F

.field public final mMaxYPrimaryDeviance:F

.field public final mMaxYSecondaryDeviance:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string/jumbo p1, "systemui"

    .line 8
    .line 9
    .line 10
    const-string p2, "brightline_falsing_zigzag_x_primary_deviance"

    .line 11
    .line 12
    const v0, 0x3d4ccccd    # 0.05f

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput p2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    .line 20
    .line 21
    const-string p2, "brightline_falsing_zigzag_y_primary_deviance"

    .line 22
    .line 23
    const v0, 0x3e19999a    # 0.15f

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    .line 31
    .line 32
    const-string p2, "brightline_falsing_zigzag_x_secondary_deviance"

    .line 33
    .line 34
    const v0, 0x3ecccccd    # 0.4f

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    .line 42
    .line 43
    const-string p2, "brightline_falsing_zigzag_y_secondary_deviance"

    .line 44
    .line 45
    const v0, 0x3e99999a    # 0.3f

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    .line 53
    .line 54
    return-void
.end method

.method public static rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    check-cast v7, Landroid/view/MotionEvent;

    .line 22
    .line 23
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    if-eqz v11, :cond_0

    .line 40
    .line 41
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    check-cast v11, Landroid/view/MotionEvent;

    .line 46
    .line 47
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    sub-float/2addr v12, v8

    .line 52
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    sub-float/2addr v11, v9

    .line 57
    float-to-double v12, v12

    .line 58
    mul-double v14, v2, v12

    .line 59
    .line 60
    move-object/from16 p2, v7

    .line 61
    .line 62
    float-to-double v6, v11

    .line 63
    mul-double v16, v4, v6

    .line 64
    .line 65
    add-double v16, v16, v14

    .line 66
    .line 67
    float-to-double v14, v8

    .line 68
    add-double v14, v16, v14

    .line 69
    .line 70
    move-object/from16 v16, v10

    .line 71
    .line 72
    neg-double v10, v4

    .line 73
    mul-double/2addr v10, v12

    .line 74
    mul-double/2addr v6, v2

    .line 75
    add-double/2addr v6, v10

    .line 76
    float-to-double v10, v9

    .line 77
    add-double/2addr v6, v10

    .line 78
    new-instance v10, Landroid/graphics/Point;

    .line 79
    .line 80
    double-to-int v11, v14

    .line 81
    double-to-int v6, v6

    .line 82
    invoke-direct {v10, v11, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-object/from16 v7, p2

    .line 89
    .line 90
    move-object/from16 v10, v16

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move-object/from16 p2, v7

    .line 95
    .line 96
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    add-int/lit8 v2, v2, -0x1

    .line 101
    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/view/MotionEvent;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/graphics/Point;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    add-int/lit8 v3, v3, -0x1

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Landroid/graphics/Point;

    .line 126
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 137
    .line 138
    .line 139
    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 140
    .line 141
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 142
    .line 143
    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 144
    .line 145
    return-object v1
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eq p1, v0, :cond_8

    .line 6
    .line 7
    const/16 v0, 0x12

    .line 8
    .line 9
    if-eq p1, v0, :cond_8

    .line 10
    .line 11
    const/16 v0, 0xb

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x3

    .line 26
    if-ge p1, v0, :cond_1

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->getAtan2LastPoint()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    float-to-double v0, v0

    .line 46
    sget-boolean v2, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2, v0, v1}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->getAtan2LastPoint()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-double v0, v0

    .line 62
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    sub-double/2addr v2, v0

    .line 68
    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    neg-double v1, v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    const/4 v1, 0x0

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/graphics/Point;

    .line 85
    .line 86
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v4, 0x1

    .line 93
    sub-int/2addr v3, v4

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Landroid/graphics/Point;

    .line 99
    .line 100
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 101
    .line 102
    sub-int/2addr v2, v3

    .line 103
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    int-to-float v2, v2

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Landroid/graphics/Point;

    .line 113
    .line 114
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    sub-int/2addr v5, v4

    .line 121
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Landroid/graphics/Point;

    .line 126
    .line 127
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 128
    .line 129
    sub-int/2addr v3, v5

    .line 130
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    int-to-float v3, v3

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/4 v5, 0x0

    .line 140
    move v6, v5

    .line 141
    move v7, v6

    .line 142
    move v8, v7

    .line 143
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_4

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Landroid/graphics/Point;

    .line 154
    .line 155
    if-eqz v4, :cond_3

    .line 156
    .line 157
    iget v4, v9, Landroid/graphics/Point;->x:I

    .line 158
    .line 159
    int-to-float v7, v4

    .line 160
    iget v4, v9, Landroid/graphics/Point;->y:I

    .line 161
    .line 162
    int-to-float v8, v4

    .line 163
    move v4, v1

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    iget v10, v9, Landroid/graphics/Point;->x:I

    .line 166
    .line 167
    int-to-float v10, v10

    .line 168
    sub-float/2addr v10, v7

    .line 169
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    add-float/2addr v5, v7

    .line 174
    iget v7, v9, Landroid/graphics/Point;->y:I

    .line 175
    .line 176
    int-to-float v7, v7

    .line 177
    sub-float/2addr v7, v8

    .line 178
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    add-float/2addr v6, v7

    .line 183
    iget v7, v9, Landroid/graphics/Point;->x:I

    .line 184
    .line 185
    int-to-float v7, v7

    .line 186
    iget v8, v9, Landroid/graphics/Point;->y:I

    .line 187
    .line 188
    int-to-float v8, v8

    .line 189
    sget-boolean v9, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_4
    sub-float/2addr v5, v2

    .line 193
    sub-float/2addr v6, v3

    .line 194
    iget v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    .line 195
    .line 196
    div-float v0, v2, v0

    .line 197
    .line 198
    iget v1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    .line 199
    .line 200
    div-float v4, v3, v1

    .line 201
    .line 202
    mul-float/2addr v0, v0

    .line 203
    mul-float/2addr v4, v4

    .line 204
    add-float/2addr v4, v0

    .line 205
    float-to-double v7, v4

    .line 206
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 207
    .line 208
    .line 209
    move-result-wide v7

    .line 210
    double-to-float v0, v7

    .line 211
    cmpl-float v2, v2, v3

    .line 212
    .line 213
    iget p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    .line 214
    .line 215
    if-lez v2, :cond_5

    .line 216
    .line 217
    iget v2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    .line 218
    .line 219
    mul-float/2addr v2, v0

    .line 220
    mul-float/2addr v2, p1

    .line 221
    iget p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_5
    iget v2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    .line 225
    .line 226
    mul-float/2addr v2, v0

    .line 227
    mul-float/2addr v2, p1

    .line 228
    iget p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    .line 229
    .line 230
    :goto_2
    mul-float/2addr p1, v0

    .line 231
    mul-float/2addr p1, v1

    .line 232
    iput v6, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceY:F

    .line 233
    .line 234
    iput v2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxXDeviance:F

    .line 235
    .line 236
    iput p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxYDeviance:F

    .line 237
    .line 238
    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 239
    .line 240
    cmpl-float v0, v5, v2

    .line 241
    .line 242
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 243
    .line 244
    if-gtz v0, :cond_7

    .line 245
    .line 246
    cmpl-float p1, v6, p1

    .line 247
    .line 248
    if-lez p1, :cond_6

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_6
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    goto :goto_4

    .line 256
    :cond_7
    :goto_3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxXDeviance:F

    .line 261
    .line 262
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iget v3, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceY:F

    .line 267
    .line 268
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    iget v4, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxYDeviance:F

    .line 273
    .line 274
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    filled-new-array {p1, v0, v3, v4}, [Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    const/4 v0, 0x0

    .line 283
    const-string/jumbo v3, "{devianceX=%f, maxDevianceX=%s, devianceY=%s, maxDevianceY=%s}"

    .line 284
    .line 285
    .line 286
    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    :goto_4
    return-object p0

    .line 295
    :cond_8
    :goto_5
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    return-object p0
.end method

.method public final getAtan2LastPoint()F
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-float/2addr v2, v1

    .line 26
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    sub-float/2addr p0, v0

    .line 31
    float-to-double v0, p0

    .line 32
    float-to-double v2, v2

    .line 33
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-float p0, v0

    .line 38
    return p0
.end method
