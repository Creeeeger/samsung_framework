.class public Lcom/facebook/rebound/BaseSpringSystem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActiveSprings:Ljava/util/Set;

.field public mIdle:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mSpringLooper:Lcom/facebook/rebound/SpringLooper;

.field public final mSpringRegistry:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/SpringLooper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iput-object p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    .line 31
    .line 32
    iput-object p0, p1, Lcom/facebook/rebound/SpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string/jumbo p1, "springLooper is required"

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method


# virtual methods
.method public final activateSpring(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    .line 14
    .line 15
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/facebook/rebound/SpringLooper;->start()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string/jumbo v0, "springId "

    .line 36
    .line 37
    .line 38
    const-string v1, " does not reference a registered spring"

    .line 39
    .line 40
    invoke-static {v0, p1, v1}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final createSpring()Lcom/facebook/rebound/Spring;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/rebound/Spring;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/rebound/Spring;-><init>(Lcom/facebook/rebound/BaseSpringSystem;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    .line 7
    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string/jumbo v0, "spring is already registered"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final loop(D)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_13

    .line 14
    .line 15
    iget-object v2, v0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    .line 16
    .line 17
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_f

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lcom/facebook/rebound/Spring;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    iget-boolean v7, v5, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 42
    .line 43
    if-nez v7, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v7, 0x0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 49
    :goto_2
    if-eqz v7, :cond_e

    .line 50
    .line 51
    const-wide v9, 0x408f400000000000L    # 1000.0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    div-double v9, p1, v9

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_2

    .line 63
    .line 64
    iget-boolean v11, v5, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 65
    .line 66
    if-eqz v11, :cond_2

    .line 67
    .line 68
    move-object/from16 v18, v1

    .line 69
    .line 70
    move-object/from16 v20, v3

    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_2
    const-wide v11, 0x3fb0624dd2f1a9fcL    # 0.064

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmpl-double v13, v9, v11

    .line 80
    .line 81
    if-lez v13, :cond_3

    .line 82
    .line 83
    move-wide v9, v11

    .line 84
    :cond_3
    iget-wide v11, v5, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 85
    .line 86
    add-double/2addr v11, v9

    .line 87
    iput-wide v11, v5, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 88
    .line 89
    iget-object v9, v5, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 90
    .line 91
    iget-wide v10, v9, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 92
    .line 93
    iget-wide v12, v9, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 94
    .line 95
    iget-object v9, v5, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 96
    .line 97
    iget-wide v14, v9, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 98
    .line 99
    move/from16 v16, v7

    .line 100
    .line 101
    iget-wide v6, v9, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 102
    .line 103
    iget-object v4, v5, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 104
    .line 105
    move-object/from16 v17, v9

    .line 106
    .line 107
    iget-wide v8, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 108
    .line 109
    move-wide/from16 v18, v6

    .line 110
    .line 111
    iget-wide v6, v4, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 112
    .line 113
    move-object/from16 v20, v3

    .line 114
    .line 115
    move-wide/from16 v35, v18

    .line 116
    .line 117
    move-object/from16 v18, v1

    .line 118
    .line 119
    move-object/from16 v19, v2

    .line 120
    .line 121
    move-wide v0, v14

    .line 122
    move-wide v14, v8

    .line 123
    move-wide/from16 v8, v35

    .line 124
    .line 125
    :goto_3
    iget-wide v2, v5, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 126
    .line 127
    const-wide v21, 0x3f50624dd2f1a9fcL    # 0.001

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    cmpl-double v23, v2, v21

    .line 133
    .line 134
    move-wide/from16 v24, v6

    .line 135
    .line 136
    iget-object v6, v5, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 137
    .line 138
    if-ltz v23, :cond_5

    .line 139
    .line 140
    sub-double v2, v2, v21

    .line 141
    .line 142
    iput-wide v2, v5, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 143
    .line 144
    cmpg-double v2, v2, v21

    .line 145
    .line 146
    if-gez v2, :cond_4

    .line 147
    .line 148
    iput-wide v0, v6, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 149
    .line 150
    iput-wide v8, v6, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 151
    .line 152
    :cond_4
    iget-wide v2, v5, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 153
    .line 154
    sub-double v6, v2, v14

    .line 155
    .line 156
    mul-double/2addr v6, v10

    .line 157
    mul-double v14, v12, v8

    .line 158
    .line 159
    sub-double/2addr v6, v14

    .line 160
    mul-double v14, v8, v21

    .line 161
    .line 162
    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    .line 163
    .line 164
    mul-double v14, v14, v23

    .line 165
    .line 166
    add-double/2addr v14, v0

    .line 167
    mul-double v25, v6, v21

    .line 168
    .line 169
    mul-double v25, v25, v23

    .line 170
    .line 171
    add-double v25, v25, v8

    .line 172
    .line 173
    sub-double v14, v2, v14

    .line 174
    .line 175
    mul-double/2addr v14, v10

    .line 176
    mul-double v27, v12, v25

    .line 177
    .line 178
    sub-double v14, v14, v27

    .line 179
    .line 180
    mul-double v27, v25, v21

    .line 181
    .line 182
    mul-double v27, v27, v23

    .line 183
    .line 184
    add-double v27, v27, v0

    .line 185
    .line 186
    mul-double v29, v14, v21

    .line 187
    .line 188
    mul-double v29, v29, v23

    .line 189
    .line 190
    add-double v29, v29, v8

    .line 191
    .line 192
    sub-double v23, v2, v27

    .line 193
    .line 194
    mul-double v23, v23, v10

    .line 195
    .line 196
    mul-double v27, v12, v29

    .line 197
    .line 198
    sub-double v23, v23, v27

    .line 199
    .line 200
    mul-double v27, v29, v21

    .line 201
    .line 202
    add-double v27, v27, v0

    .line 203
    .line 204
    mul-double v31, v23, v21

    .line 205
    .line 206
    add-double v31, v31, v8

    .line 207
    .line 208
    sub-double v2, v2, v27

    .line 209
    .line 210
    mul-double/2addr v2, v10

    .line 211
    mul-double v33, v12, v31

    .line 212
    .line 213
    sub-double v2, v2, v33

    .line 214
    .line 215
    add-double v25, v25, v29

    .line 216
    .line 217
    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    .line 218
    .line 219
    mul-double v25, v25, v29

    .line 220
    .line 221
    add-double v25, v25, v8

    .line 222
    .line 223
    add-double v25, v25, v31

    .line 224
    .line 225
    const-wide v33, 0x3fc5555555555555L    # 0.16666666666666666

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    mul-double v25, v25, v33

    .line 231
    .line 232
    add-double v14, v14, v23

    .line 233
    .line 234
    mul-double v14, v14, v29

    .line 235
    .line 236
    add-double/2addr v14, v6

    .line 237
    add-double/2addr v14, v2

    .line 238
    mul-double v14, v14, v33

    .line 239
    .line 240
    mul-double v25, v25, v21

    .line 241
    .line 242
    add-double v0, v25, v0

    .line 243
    .line 244
    mul-double v14, v14, v21

    .line 245
    .line 246
    add-double/2addr v8, v14

    .line 247
    move-wide/from16 v14, v27

    .line 248
    .line 249
    move-wide/from16 v6, v31

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_5
    iput-wide v14, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 253
    .line 254
    move-wide/from16 v12, v24

    .line 255
    .line 256
    iput-wide v12, v4, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 257
    .line 258
    move-object/from16 v4, v17

    .line 259
    .line 260
    iput-wide v0, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 261
    .line 262
    iput-wide v8, v4, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 263
    .line 264
    const-wide/16 v12, 0x0

    .line 265
    .line 266
    cmpl-double v7, v2, v12

    .line 267
    .line 268
    if-lez v7, :cond_6

    .line 269
    .line 270
    div-double v2, v2, v21

    .line 271
    .line 272
    mul-double/2addr v0, v2

    .line 273
    iget-wide v14, v6, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 274
    .line 275
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 276
    .line 277
    sub-double v21, v21, v2

    .line 278
    .line 279
    mul-double v14, v14, v21

    .line 280
    .line 281
    add-double/2addr v14, v0

    .line 282
    iput-wide v14, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 283
    .line 284
    mul-double/2addr v8, v2

    .line 285
    iget-wide v0, v6, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 286
    .line 287
    mul-double v0, v0, v21

    .line 288
    .line 289
    add-double/2addr v0, v8

    .line 290
    iput-wide v0, v4, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 291
    .line 292
    :cond_6
    invoke-virtual {v5}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_7

    .line 297
    .line 298
    move/from16 v7, v16

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_7
    cmpl-double v0, v10, v12

    .line 302
    .line 303
    if-lez v0, :cond_8

    .line 304
    .line 305
    iget-wide v0, v5, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 306
    .line 307
    iput-wide v0, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_8
    iget-wide v0, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 311
    .line 312
    iput-wide v0, v5, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 313
    .line 314
    :goto_4
    invoke-virtual {v5, v12, v13}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    .line 315
    .line 316
    .line 317
    const/4 v7, 0x1

    .line 318
    :goto_5
    iget-boolean v0, v5, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 319
    .line 320
    if-eqz v0, :cond_9

    .line 321
    .line 322
    const/4 v0, 0x0

    .line 323
    iput-boolean v0, v5, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 324
    .line 325
    const/4 v1, 0x1

    .line 326
    goto :goto_6

    .line 327
    :cond_9
    const/4 v0, 0x0

    .line 328
    move v1, v0

    .line 329
    :goto_6
    if-eqz v7, :cond_a

    .line 330
    .line 331
    const/4 v2, 0x1

    .line 332
    iput-boolean v2, v5, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 333
    .line 334
    const/4 v6, 0x1

    .line 335
    goto :goto_7

    .line 336
    :cond_a
    move v6, v0

    .line 337
    :goto_7
    iget-object v0, v5, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_d

    .line 348
    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    check-cast v2, Lcom/facebook/rebound/SpringListener;

    .line 354
    .line 355
    if-eqz v1, :cond_c

    .line 356
    .line 357
    invoke-interface {v2, v5}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 358
    .line 359
    .line 360
    :cond_c
    invoke-interface {v2, v5}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 361
    .line 362
    .line 363
    if-eqz v6, :cond_b

    .line 364
    .line 365
    invoke-interface {v2, v5}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 366
    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_d
    move-object/from16 v2, v19

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_e
    move-object/from16 v18, v1

    .line 373
    .line 374
    move-object/from16 v20, v3

    .line 375
    .line 376
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    :goto_9
    move-object/from16 v0, p0

    .line 380
    .line 381
    move-object/from16 v1, v18

    .line 382
    .line 383
    move-object/from16 v3, v20

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_f
    move-object/from16 v18, v1

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_10

    .line 394
    .line 395
    const/4 v1, 0x1

    .line 396
    move-object/from16 v0, p0

    .line 397
    .line 398
    iput-boolean v1, v0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_10
    move-object/from16 v0, p0

    .line 402
    .line 403
    :goto_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-nez v2, :cond_12

    .line 412
    .line 413
    iget-boolean v1, v0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 414
    .line 415
    if-eqz v1, :cond_11

    .line 416
    .line 417
    iget-object v0, v0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringLooper;->stop()V

    .line 420
    .line 421
    .line 422
    :cond_11
    return-void

    .line 423
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    const/4 v0, 0x0

    .line 431
    throw v0

    .line 432
    :cond_13
    const/4 v0, 0x0

    .line 433
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-static {v1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    throw v0
.end method
