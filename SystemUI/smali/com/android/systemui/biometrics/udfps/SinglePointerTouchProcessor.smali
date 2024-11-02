.class public final Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final overlapDetector:Lcom/android/systemui/biometrics/udfps/OverlapDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/udfps/OverlapDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->overlapDetector:Lcom/android/systemui/biometrics/udfps/OverlapDetector;

    .line 5
    .line 6
    return-void
.end method

.method public static final processTouch$preprocess(Landroid/view/MotionEvent;ILcom/android/settingslib/udfps/UdfpsOverlayParams;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;)Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-ge v5, v2, :cond_3

    .line 17
    .line 18
    sget-object v6, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    .line 19
    .line 20
    new-instance v6, Landroid/graphics/PointF;

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    iget v7, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 34
    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    sget-object v9, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eqz v8, :cond_0

    .line 46
    .line 47
    invoke-static {v7, v4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iget v8, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->logicalDisplayWidth:I

    .line 52
    .line 53
    int-to-float v8, v8

    .line 54
    iget v10, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->logicalDisplayHeight:I

    .line 55
    .line 56
    int-to-float v10, v10

    .line 57
    invoke-static {v6, v7, v8, v10}, Landroid/util/RotationUtils;->rotatePointF(Landroid/graphics/PointF;IFF)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 61
    .line 62
    iget v8, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 63
    .line 64
    div-float v12, v7, v8

    .line 65
    .line 66
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 67
    .line 68
    div-float v13, v6, v8

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    div-float v14, v6, v8

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    div-float v15, v6, v8

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getOrientation(I)F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    iget v7, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 87
    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    float-to-double v6, v6

    .line 99
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    rem-double/2addr v6, v8

    .line 105
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    add-double/2addr v6, v10

    .line 111
    rem-double/2addr v6, v8

    .line 112
    cmpg-double v10, v6, v10

    .line 113
    .line 114
    if-gez v10, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    sub-double/2addr v6, v8

    .line 118
    :goto_1
    double-to-float v6, v6

    .line 119
    :cond_2
    move/from16 v16, v6

    .line 120
    .line 121
    new-instance v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 122
    .line 123
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v17

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    .line 132
    .line 133
    .line 134
    move-result-wide v19

    .line 135
    move-object v10, v6

    .line 136
    invoke-direct/range {v10 .. v20}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJ)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    move-object v5, v4

    .line 166
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 167
    .line 168
    iget-object v6, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->nativeSensorBounds:Landroid/graphics/Rect;

    .line 169
    .line 170
    iget-object v7, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->nativeOverlayBounds:Landroid/graphics/Rect;

    .line 171
    .line 172
    move-object/from16 v8, p3

    .line 173
    .line 174
    iget-object v9, v8, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->overlapDetector:Lcom/android/systemui/biometrics/udfps/OverlapDetector;

    .line 175
    .line 176
    invoke-interface {v9, v5, v6, v7}, Lcom/android/systemui/biometrics/udfps/OverlapDetector;->isGoodOverlap(Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_4

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 187
    .line 188
    const/16 v2, 0xa

    .line 189
    .line 190
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_6

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 212
    .line 213
    iget v2, v2, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 214
    .line 215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    new-instance v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;

    .line 224
    .line 225
    move/from16 v2, p1

    .line 226
    .line 227
    invoke-direct {v0, v3, v2, v1}, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;-><init>(Ljava/util/List;ILjava/util/List;)V

    .line 228
    .line 229
    .line 230
    return-object v0
.end method
