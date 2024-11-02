.class public final Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mPropagationSpeed:F

.field public mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40400000    # 3.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 7
    .line 8
    const/16 v0, 0x50

    .line 9
    .line 10
    iput v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    return-wide v3

    .line 14
    :cond_0
    iget-object v5, v1, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 15
    .line 16
    if-nez v5, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v5}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    :goto_0
    const/4 v6, 0x1

    .line 25
    if-eqz p4, :cond_5

    .line 26
    .line 27
    const/16 v7, 0x8

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v8, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 33
    .line 34
    const-string v9, "android:visibilityPropagation:visibility"

    .line 35
    .line 36
    check-cast v8, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    check-cast v8, Ljava/lang/Integer;

    .line 43
    .line 44
    if-nez v8, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    :goto_1
    if-nez v7, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move-object/from16 v2, p4

    .line 55
    .line 56
    move v7, v6

    .line 57
    goto :goto_3

    .line 58
    :cond_5
    :goto_2
    const/4 v7, -0x1

    .line 59
    :goto_3
    const/4 v8, 0x0

    .line 60
    invoke-static {v2, v8}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    invoke-static {v2, v6}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v10, 0x2

    .line 69
    new-array v11, v10, [I

    .line 70
    .line 71
    move-object/from16 v12, p1

    .line 72
    .line 73
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 74
    .line 75
    .line 76
    aget v13, v11, v8

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    add-int/2addr v14, v13

    .line 87
    aget v11, v11, v6

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    add-int/2addr v13, v11

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    add-int/2addr v11, v14

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    add-int/2addr v15, v13

    .line 108
    if-eqz v5, :cond_6

    .line 109
    .line 110
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    add-int v5, v14, v11

    .line 120
    .line 121
    div-int/2addr v5, v10

    .line 122
    add-int v16, v13, v15

    .line 123
    .line 124
    div-int/lit8 v10, v16, 0x2

    .line 125
    .line 126
    move/from16 v17, v10

    .line 127
    .line 128
    move v10, v5

    .line 129
    move/from16 v5, v17

    .line 130
    .line 131
    :goto_4
    iget v8, v0, Landroidx/transition/SidePropagation;->mSide:I

    .line 132
    .line 133
    const v4, 0x800005

    .line 134
    .line 135
    .line 136
    const v3, 0x800003

    .line 137
    .line 138
    .line 139
    if-ne v8, v3, :cond_8

    .line 140
    .line 141
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 142
    .line 143
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-ne v8, v6, :cond_7

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_7
    const/4 v6, 0x0

    .line 151
    :goto_5
    if-eqz v6, :cond_a

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_8
    if-ne v8, v4, :cond_c

    .line 155
    .line 156
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 157
    .line 158
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-ne v8, v6, :cond_9

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_9
    const/4 v6, 0x0

    .line 166
    :goto_6
    if-eqz v6, :cond_b

    .line 167
    .line 168
    :cond_a
    const/4 v6, 0x3

    .line 169
    const/4 v8, 0x3

    .line 170
    goto :goto_8

    .line 171
    :cond_b
    :goto_7
    const/4 v6, 0x3

    .line 172
    const/4 v8, 0x5

    .line 173
    goto :goto_8

    .line 174
    :cond_c
    const/4 v6, 0x3

    .line 175
    :goto_8
    if-eq v8, v6, :cond_10

    .line 176
    .line 177
    const/4 v6, 0x5

    .line 178
    if-eq v8, v6, :cond_f

    .line 179
    .line 180
    const/16 v5, 0x30

    .line 181
    .line 182
    if-eq v8, v5, :cond_e

    .line 183
    .line 184
    const/16 v5, 0x50

    .line 185
    .line 186
    if-eq v8, v5, :cond_d

    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    goto :goto_9

    .line 190
    :cond_d
    sub-int/2addr v2, v13

    .line 191
    sub-int/2addr v10, v9

    .line 192
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    add-int v8, v5, v2

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_e
    sub-int/2addr v15, v2

    .line 200
    sub-int/2addr v10, v9

    .line 201
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    add-int v8, v2, v15

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_f
    sub-int/2addr v9, v14

    .line 209
    sub-int/2addr v5, v2

    .line 210
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    add-int v8, v2, v9

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_10
    sub-int/2addr v11, v9

    .line 218
    sub-int/2addr v5, v2

    .line 219
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    add-int v8, v2, v11

    .line 224
    .line 225
    :goto_9
    int-to-float v2, v8

    .line 226
    iget v5, v0, Landroidx/transition/SidePropagation;->mSide:I

    .line 227
    .line 228
    const/4 v6, 0x3

    .line 229
    if-eq v5, v6, :cond_11

    .line 230
    .line 231
    const/4 v6, 0x5

    .line 232
    if-eq v5, v6, :cond_11

    .line 233
    .line 234
    if-eq v5, v3, :cond_11

    .line 235
    .line 236
    if-eq v5, v4, :cond_11

    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    goto :goto_a

    .line 243
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    :goto_a
    int-to-float v3, v3

    .line 248
    div-float/2addr v2, v3

    .line 249
    iget-wide v3, v1, Landroidx/transition/Transition;->mDuration:J

    .line 250
    .line 251
    const-wide/16 v5, 0x0

    .line 252
    .line 253
    cmp-long v1, v3, v5

    .line 254
    .line 255
    if-gez v1, :cond_12

    .line 256
    .line 257
    const-wide/16 v3, 0x12c

    .line 258
    .line 259
    :cond_12
    int-to-long v5, v7

    .line 260
    mul-long/2addr v3, v5

    .line 261
    long-to-float v1, v3

    .line 262
    iget v0, v0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 263
    .line 264
    div-float/2addr v1, v0

    .line 265
    mul-float/2addr v1, v2

    .line 266
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    int-to-long v0, v0

    .line 271
    return-wide v0
.end method
