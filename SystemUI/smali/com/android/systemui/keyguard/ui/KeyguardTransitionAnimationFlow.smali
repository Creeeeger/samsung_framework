.class public final Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final transitionDuration:J

.field public final transitionFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method private constructor <init>(JLkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/flow/Flow;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionDuration:J

    .line 4
    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public synthetic constructor <init>(JLkotlinx/coroutines/flow/Flow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;-><init>(JLkotlinx/coroutines/flow/Flow;)V

    return-void
.end method

.method public static final access$createFlow_53AowQI$stepToValue(FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/shared/model/TransitionStep;)Ljava/lang/Float;
    .locals 3

    .line 1
    iget v0, p6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 2
    .line 3
    sub-float/2addr v0, p0

    .line 4
    mul-float/2addr v0, p1

    .line 5
    sget-object p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    iget-object p1, p6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p0, p0, p1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 p6, 0x1

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq p0, p6, :cond_4

    .line 21
    .line 22
    const/4 p3, 0x2

    .line 23
    if-eq p0, p3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    cmpl-float p0, v0, v1

    .line 32
    .line 33
    if-ltz p0, :cond_2

    .line 34
    .line 35
    iput-boolean p6, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    cmpl-float p0, v0, p1

    .line 43
    .line 44
    if-ltz p0, :cond_3

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    move-object p0, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const/4 p0, 0x0

    .line 54
    iput-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 55
    .line 56
    if-eqz p3, :cond_5

    .line 57
    .line 58
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_1
    if-eqz p0, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-interface {p5, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Ljava/lang/Number;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :cond_6
    return-object v2
.end method

.method public static createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    and-int/lit8 v3, p10, 0x4

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 11
    .line 12
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 13
    .line 14
    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide/from16 v5, p4

    .line 20
    .line 21
    :goto_0
    and-int/lit8 v3, p10, 0x8

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move-object v15, v7

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object/from16 v15, p6

    .line 29
    .line 30
    :goto_1
    and-int/lit8 v3, p10, 0x10

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    move-object v10, v7

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object/from16 v10, p7

    .line 37
    .line 38
    :goto_2
    and-int/lit8 v3, p10, 0x20

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    move-object v11, v7

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move-object/from16 v11, p8

    .line 45
    .line 46
    :goto_3
    and-int/lit8 v3, p10, 0x40

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    sget-object v3, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    move-object/from16 v17, v3

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move-object/from16 v17, p9

    .line 56
    .line 57
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 61
    .line 62
    const-wide/16 v7, 0x0

    .line 63
    .line 64
    cmp-long v3, v1, v7

    .line 65
    .line 66
    const/4 v9, 0x1

    .line 67
    if-lez v3, :cond_5

    .line 68
    .line 69
    move v3, v9

    .line 70
    goto :goto_5

    .line 71
    :cond_5
    move v3, v4

    .line 72
    :goto_5
    if-eqz v3, :cond_1c

    .line 73
    .line 74
    invoke-static {v5, v6}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_8

    .line 79
    .line 80
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    xor-int/2addr v3, v9

    .line 85
    if-nez v3, :cond_7

    .line 86
    .line 87
    xor-long v3, v1, v5

    .line 88
    .line 89
    cmp-long v3, v3, v7

    .line 90
    .line 91
    if-ltz v3, :cond_6

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string v1, "Summing infinite durations of different signs yields an undefined result."

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_7
    :goto_6
    move-wide v7, v5

    .line 103
    goto :goto_7

    .line 104
    :cond_8
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_9

    .line 109
    .line 110
    move-wide v7, v1

    .line 111
    :goto_7
    move v4, v9

    .line 112
    move-object/from16 p4, v10

    .line 113
    .line 114
    goto/16 :goto_a

    .line 115
    .line 116
    :cond_9
    long-to-int v3, v5

    .line 117
    and-int/2addr v3, v9

    .line 118
    long-to-int v7, v1

    .line 119
    and-int/2addr v7, v9

    .line 120
    if-ne v3, v7, :cond_e

    .line 121
    .line 122
    shr-long v7, v5, v9

    .line 123
    .line 124
    shr-long v12, v1, v9

    .line 125
    .line 126
    add-long/2addr v7, v12

    .line 127
    if-nez v3, :cond_a

    .line 128
    .line 129
    move v4, v9

    .line 130
    :cond_a
    const v3, 0xf4240

    .line 131
    .line 132
    .line 133
    if-eqz v4, :cond_c

    .line 134
    .line 135
    new-instance v4, Lkotlin/ranges/LongRange;

    .line 136
    .line 137
    const-wide v12, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    move-object/from16 p4, v10

    .line 143
    .line 144
    const-wide v9, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    invoke-direct {v4, v12, v13, v9, v10}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v7, v8}, Lkotlin/ranges/LongRange;->contains(J)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_b

    .line 157
    .line 158
    const/4 v4, 0x1

    .line 159
    shl-long/2addr v7, v4

    .line 160
    sget v3, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_b
    int-to-long v3, v3

    .line 164
    div-long/2addr v7, v3

    .line 165
    invoke-static {v7, v8}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    :goto_8
    const/4 v4, 0x1

    .line 170
    goto :goto_a

    .line 171
    :cond_c
    move-object/from16 p4, v10

    .line 172
    .line 173
    new-instance v4, Lkotlin/ranges/LongRange;

    .line 174
    .line 175
    const-wide v9, -0x431bde82d7aL

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    const-wide v12, 0x431bde82d7aL

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    invoke-direct {v4, v9, v10, v12, v13}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v7, v8}, Lkotlin/ranges/LongRange;->contains(J)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_d

    .line 193
    .line 194
    int-to-long v3, v3

    .line 195
    mul-long/2addr v7, v3

    .line 196
    const/4 v4, 0x1

    .line 197
    shl-long/2addr v7, v4

    .line 198
    sget v3, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_d
    const/4 v4, 0x1

    .line 202
    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    invoke-static {v7, v8}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v7

    .line 210
    goto :goto_a

    .line 211
    :cond_e
    move v4, v9

    .line 212
    move-object/from16 p4, v10

    .line 213
    .line 214
    if-ne v3, v4, :cond_f

    .line 215
    .line 216
    move v3, v4

    .line 217
    goto :goto_9

    .line 218
    :cond_f
    const/4 v3, 0x0

    .line 219
    :goto_9
    if-eqz v3, :cond_10

    .line 220
    .line 221
    shr-long v7, v5, v4

    .line 222
    .line 223
    shr-long v9, v1, v4

    .line 224
    .line 225
    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    .line 226
    .line 227
    .line 228
    move-result-wide v7

    .line 229
    goto :goto_a

    .line 230
    :cond_10
    shr-long v7, v1, v4

    .line 231
    .line 232
    shr-long v9, v5, v4

    .line 233
    .line 234
    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    .line 235
    .line 236
    .line 237
    move-result-wide v7

    .line 238
    :goto_a
    iget-wide v9, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionDuration:J

    .line 239
    .line 240
    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-gtz v3, :cond_1b

    .line 245
    .line 246
    long-to-int v3, v5

    .line 247
    and-int/2addr v3, v4

    .line 248
    if-nez v3, :cond_11

    .line 249
    .line 250
    move v3, v4

    .line 251
    goto :goto_b

    .line 252
    :cond_11
    const/4 v3, 0x0

    .line 253
    :goto_b
    if-eqz v3, :cond_12

    .line 254
    .line 255
    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 256
    .line 257
    goto :goto_c

    .line 258
    :cond_12
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 259
    .line 260
    :goto_c
    long-to-int v7, v9

    .line 261
    and-int/2addr v7, v4

    .line 262
    if-nez v7, :cond_13

    .line 263
    .line 264
    const/4 v4, 0x1

    .line 265
    goto :goto_d

    .line 266
    :cond_13
    const/4 v4, 0x0

    .line 267
    :goto_d
    if-eqz v4, :cond_14

    .line 268
    .line 269
    sget-object v4, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 270
    .line 271
    goto :goto_e

    .line 272
    :cond_14
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 273
    .line 274
    :goto_e
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Object;)I

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-ltz v8, :cond_15

    .line 279
    .line 280
    goto :goto_f

    .line 281
    :cond_15
    move-object v3, v4

    .line 282
    :goto_f
    invoke-static {v5, v6, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 283
    .line 284
    .line 285
    move-result-wide v4

    .line 286
    invoke-static {v9, v10, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 287
    .line 288
    .line 289
    move-result-wide v12

    .line 290
    div-double/2addr v4, v12

    .line 291
    double-to-float v12, v4

    .line 292
    if-nez v7, :cond_16

    .line 293
    .line 294
    const/4 v3, 0x1

    .line 295
    goto :goto_10

    .line 296
    :cond_16
    const/4 v3, 0x0

    .line 297
    :goto_10
    if-eqz v3, :cond_17

    .line 298
    .line 299
    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 300
    .line 301
    goto :goto_11

    .line 302
    :cond_17
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 303
    .line 304
    :goto_11
    long-to-int v4, v1

    .line 305
    const/4 v5, 0x1

    .line 306
    and-int/2addr v4, v5

    .line 307
    if-nez v4, :cond_18

    .line 308
    .line 309
    const/4 v4, 0x1

    .line 310
    goto :goto_12

    .line 311
    :cond_18
    const/4 v4, 0x0

    .line 312
    :goto_12
    if-eqz v4, :cond_19

    .line 313
    .line 314
    sget-object v4, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 315
    .line 316
    goto :goto_13

    .line 317
    :cond_19
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 318
    .line 319
    :goto_13
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Object;)I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-ltz v5, :cond_1a

    .line 324
    .line 325
    goto :goto_14

    .line 326
    :cond_1a
    move-object v3, v4

    .line 327
    :goto_14
    invoke-static {v9, v10, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 328
    .line 329
    .line 330
    move-result-wide v4

    .line 331
    invoke-static {v1, v2, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 332
    .line 333
    .line 334
    move-result-wide v1

    .line 335
    div-double/2addr v4, v1

    .line 336
    double-to-float v13, v4

    .line 337
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 338
    .line 339
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 340
    .line 341
    .line 342
    const/4 v1, 0x1

    .line 343
    iput-boolean v1, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 344
    .line 345
    iget-object v9, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionFlow:Lkotlinx/coroutines/flow/Flow;

    .line 346
    .line 347
    new-instance v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;

    .line 348
    .line 349
    move-object v8, v0

    .line 350
    move-object/from16 v10, p4

    .line 351
    .line 352
    move-object/from16 v16, p3

    .line 353
    .line 354
    invoke-direct/range {v8 .. v17}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;)V

    .line 355
    .line 356
    .line 357
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 358
    .line 359
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 360
    .line 361
    .line 362
    return-object v1

    .line 363
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 364
    .line 365
    invoke-static {v5, v6}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v9, v10}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    const-string/jumbo v4, "startTime("

    .line 378
    .line 379
    .line 380
    const-string v5, ") + duration("

    .line 381
    .line 382
    const-string v6, ") must be <= transitionDuration("

    .line 383
    .line 384
    invoke-static {v4, v3, v5, v1, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    const-string v3, ")"

    .line 389
    .line 390
    invoke-static {v1, v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 399
    .line 400
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    const-string v2, "duration must be a positive number: "

    .line 405
    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v0
.end method
