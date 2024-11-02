.class public final Lcom/samsung/android/nexus/particle/emitter/World;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG_ANY:Z = false

.field public static final DEBUG_UPDATE_DELAY:J

.field public static sDebugUpdateTime:J


# instance fields
.field public final mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field public final mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

.field public mIsPaused:Z

.field public mIsRunning:Z

.field public mLastStepTime:J

.field public mPausedTime:J

.field public final mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

.field public final mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

.field public mStartedTime:J

.field public mTotalPausedTime:J

.field public final mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

.field public final mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

    .line 7
    .line 8
    sput-wide v1, Lcom/samsung/android/nexus/particle/emitter/World;->DEBUG_UPDATE_DELAY:J

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    sput-wide v1, Lcom/samsung/android/nexus/particle/emitter/World;->sDebugUpdateTime:J

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    .line 23
    .line 24
    const/high16 v1, 0x41a00000    # 20.0f

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    .line 28
    .line 29
    const/high16 v1, -0x10000

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Status;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;-><init>(Lcom/samsung/android/nexus/particle/emitter/World;Lcom/samsung/android/nexus/particle/emitter/World$1;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    .line 34
    .line 35
    const-string v0, "World"

    .line 36
    .line 37
    const-string v1, "World: created"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 43
    .line 44
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/samsung/android/nexus/particle/emitter/FrameController;-><init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 50
    .line 51
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 57
    .line 58
    const-wide/16 v3, -0x1

    .line 59
    .line 60
    iput-wide v3, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 61
    .line 62
    iput-wide v3, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 74
    .line 75
    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, p1, p0, v3, v1}, Lcom/samsung/android/nexus/particle/emitter/Emitter;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/World;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 82
    .line 83
    new-instance p1, Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 84
    .line 85
    invoke-direct {p1, v2}, Lcom/samsung/android/nexus/particle/emitter/Particle;-><init>(Lcom/samsung/android/nexus/particle/emitter/Emitter;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/FrameController;->startFrameRateDown()V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    .line 6
    .line 7
    if-eqz v2, :cond_9

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    .line 20
    .line 21
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 22
    .line 23
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    :goto_0
    if-ge v6, v0, :cond_8

    .line 27
    .line 28
    iget-object v7, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 29
    .line 30
    if-eqz v7, :cond_7

    .line 31
    .line 32
    iget-boolean v8, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 33
    .line 34
    if-eqz v8, :cond_7

    .line 35
    .line 36
    iget-boolean v8, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    .line 37
    .line 38
    if-eqz v8, :cond_7

    .line 39
    .line 40
    iget-object v8, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 41
    .line 42
    iget v9, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    cmpg-float v9, v9, v10

    .line 46
    .line 47
    if-gez v9, :cond_1

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    iget-object v9, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 52
    .line 53
    iget-object v9, v9, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 54
    .line 55
    iget-boolean v11, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 56
    .line 57
    iget-object v12, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    .line 58
    .line 59
    if-eqz v11, :cond_2

    .line 60
    .line 61
    iget v11, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 62
    .line 63
    const/high16 v13, 0x40000000    # 2.0f

    .line 64
    .line 65
    div-float/2addr v11, v13

    .line 66
    iget v14, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 67
    .line 68
    div-float/2addr v14, v13

    .line 69
    iget v13, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 70
    .line 71
    sub-float v15, v13, v11

    .line 72
    .line 73
    iget v10, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 74
    .line 75
    sub-float v5, v10, v14

    .line 76
    .line 77
    add-float/2addr v13, v11

    .line 78
    add-float/2addr v10, v14

    .line 79
    invoke-virtual {v12, v15, v5, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    iput-boolean v5, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPaint:Landroid/graphics/Paint;

    .line 94
    .line 95
    iget-object v13, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 96
    .line 97
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 98
    .line 99
    .line 100
    iget v13, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 101
    .line 102
    const/high16 v14, 0x437f0000    # 255.0f

    .line 103
    .line 104
    mul-float/2addr v13, v14

    .line 105
    float-to-int v13, v13

    .line 106
    const/4 v14, 0x0

    .line 107
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    const/16 v15, 0xff

    .line 112
    .line 113
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    .line 122
    .line 123
    iget v13, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 124
    .line 125
    invoke-virtual {v1, v13, v5, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 126
    .line 127
    .line 128
    iget-object v9, v9, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    .line 129
    .line 130
    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->APPLY_DRAW_MORPHING_BY_SPEED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 131
    .line 132
    iget v13, v13, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    .line 133
    .line 134
    aget-boolean v9, v9, v13

    .line 135
    .line 136
    if-eqz v9, :cond_4

    .line 137
    .line 138
    invoke-virtual {v12}, Landroid/graphics/RectF;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_4

    .line 143
    .line 144
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    const/high16 v13, 0x3f000000    # 0.5f

    .line 149
    .line 150
    mul-float/2addr v13, v9

    .line 151
    const/high16 v15, 0x3f800000    # 1.0f

    .line 152
    .line 153
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    div-float/2addr v13, v9

    .line 158
    iget v9, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    .line 159
    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    cmpg-float v9, v9, v16

    .line 163
    .line 164
    if-gez v9, :cond_3

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    move v13, v15

    .line 168
    :goto_1
    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 169
    .line 170
    const/high16 v9, 0x3fc00000    # 1.5f

    .line 171
    .line 172
    sget v16, Lcom/samsung/android/nexus/particle/emitter/Particle;->sDensity:F

    .line 173
    .line 174
    mul-float v16, v16, v9

    .line 175
    .line 176
    div-float v8, v8, v16

    .line 177
    .line 178
    const/high16 v9, 0x41200000    # 10.0f

    .line 179
    .line 180
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    invoke-static {v13, v8}, Ljava/lang/Math;->max(FF)F

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    cmpl-float v9, v8, v15

    .line 189
    .line 190
    if-eqz v9, :cond_4

    .line 191
    .line 192
    invoke-virtual {v1, v15, v8, v5, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 193
    .line 194
    .line 195
    :cond_4
    iget v5, v12, Landroid/graphics/RectF;->left:F

    .line 196
    .line 197
    iget v8, v12, Landroid/graphics/RectF;->top:F

    .line 198
    .line 199
    iget v9, v12, Landroid/graphics/RectF;->right:F

    .line 200
    .line 201
    iget v10, v12, Landroid/graphics/RectF;->bottom:F

    .line 202
    .line 203
    iget-object v12, v7, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mBounds:Landroid/graphics/RectF;

    .line 204
    .line 205
    iget v13, v12, Landroid/graphics/RectF;->left:F

    .line 206
    .line 207
    iget v15, v12, Landroid/graphics/RectF;->top:F

    .line 208
    .line 209
    iget v14, v12, Landroid/graphics/RectF;->right:F

    .line 210
    .line 211
    move/from16 p0, v0

    .line 212
    .line 213
    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    .line 214
    .line 215
    cmpl-float v13, v13, v5

    .line 216
    .line 217
    if-nez v13, :cond_5

    .line 218
    .line 219
    cmpl-float v13, v15, v8

    .line 220
    .line 221
    if-nez v13, :cond_5

    .line 222
    .line 223
    cmpl-float v13, v14, v9

    .line 224
    .line 225
    if-nez v13, :cond_5

    .line 226
    .line 227
    cmpl-float v0, v0, v10

    .line 228
    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    :cond_5
    invoke-virtual {v12, v5, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onBoundChanged()V

    .line 235
    .line 236
    .line 237
    :cond_6
    invoke-virtual {v7, v1, v11}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_7
    :goto_2
    move/from16 p0, v0

    .line 245
    .line 246
    :goto_3
    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 247
    .line 248
    add-int/lit8 v6, v6, 0x1

    .line 249
    .line 250
    move/from16 v0, p0

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_8
    sget-boolean v0, Lcom/samsung/android/nexus/particle/emitter/World;->DEBUG_ANY:Z

    .line 255
    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    sget-wide v0, Lcom/samsung/android/nexus/particle/emitter/World;->sDebugUpdateTime:J

    .line 259
    .line 260
    sget-wide v4, Lcom/samsung/android/nexus/particle/emitter/World;->DEBUG_UPDATE_DELAY:J

    .line 261
    .line 262
    add-long/2addr v0, v4

    .line 263
    cmp-long v0, v0, v2

    .line 264
    .line 265
    if-gez v0, :cond_9

    .line 266
    .line 267
    sput-wide v2, Lcom/samsung/android/nexus/particle/emitter/World;->sDebugUpdateTime:J

    .line 268
    .line 269
    :cond_9
    :goto_4
    return-void
.end method

.method public final resume()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "World"

    .line 7
    .line 8
    const-string v1, "resume: "

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-wide v5, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    .line 24
    .line 25
    cmp-long v2, v3, v5

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    .line 30
    .line 31
    :cond_1
    iget-wide v5, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    .line 32
    .line 33
    cmp-long v2, v3, v5

    .line 34
    .line 35
    if-gez v2, :cond_2

    .line 36
    .line 37
    iget-wide v2, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    .line 38
    .line 39
    sub-long v4, v0, v5

    .line 40
    .line 41
    add-long/2addr v4, v2

    .line 42
    iput-wide v4, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    .line 43
    .line 44
    :cond_2
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 48
    .line 49
    return-void
.end method

.method public final setSize(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 2
    .line 3
    iput p1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 4
    .line 5
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 6
    .line 7
    mul-float/2addr v1, p1

    .line 8
    iput v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 9
    .line 10
    iput p2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 11
    .line 12
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 13
    .line 14
    mul-float/2addr v1, p2

    .line 15
    iput v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 16
    .line 17
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr p1, v1

    .line 20
    iput p1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 21
    .line 22
    div-float/2addr p2, v1

    .line 23
    iput p2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 43
    .line 44
    sput p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->sDensity:F

    .line 45
    .line 46
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    const-string v0, "World"

    .line 2
    .line 3
    const-string v1, "start: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    .line 24
    .line 25
    :cond_0
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/nexus/particle/emitter/Particle;->start(J)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final step(J)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    iget-boolean v5, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    .line 10
    .line 11
    if-eqz v5, :cond_28

    .line 12
    .line 13
    iget-boolean v5, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    goto/16 :goto_18

    .line 18
    .line 19
    :cond_0
    iget-wide v5, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    cmp-long v9, v5, v7

    .line 24
    .line 25
    if-nez v9, :cond_1

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sub-long v5, v1, v5

    .line 30
    .line 31
    long-to-float v5, v5

    .line 32
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 33
    .line 34
    div-float/2addr v5, v6

    .line 35
    :goto_0
    iput-wide v1, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    .line 36
    .line 37
    iget-wide v11, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    .line 38
    .line 39
    sub-long/2addr v1, v11

    .line 40
    iget-wide v11, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    .line 41
    .line 42
    sub-long/2addr v1, v11

    .line 43
    iget-object v6, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 44
    .line 45
    iget-boolean v9, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 46
    .line 47
    if-eqz v9, :cond_3

    .line 48
    .line 49
    iget-wide v13, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 50
    .line 51
    cmp-long v9, v1, v13

    .line 52
    .line 53
    if-lez v9, :cond_2

    .line 54
    .line 55
    iget-object v9, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v9, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    const/4 v9, 0x1

    .line 67
    :goto_2
    const/4 v13, 0x0

    .line 68
    if-nez v9, :cond_4

    .line 69
    .line 70
    invoke-virtual {v6, v1, v2, v13}, Lcom/samsung/android/nexus/particle/emitter/Particle;->checkEmitterSchedule(JLcom/samsung/android/nexus/particle/emitter/Status;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v6, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    .line 74
    .line 75
    iget-object v9, v6, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 76
    .line 77
    iget v15, v6, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 78
    .line 79
    move-wide v10, v1

    .line 80
    move-object/from16 v16, v13

    .line 81
    .line 82
    move-object/from16 v17, v16

    .line 83
    .line 84
    move-object/from16 v18, v17

    .line 85
    .line 86
    move-object/from16 v20, v18

    .line 87
    .line 88
    const/4 v14, 0x0

    .line 89
    const/16 v19, 0x0

    .line 90
    .line 91
    :goto_3
    if-ge v14, v15, :cond_25

    .line 92
    .line 93
    iget-boolean v13, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 94
    .line 95
    if-eqz v13, :cond_6

    .line 96
    .line 97
    iget-wide v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 98
    .line 99
    cmp-long v7, v10, v7

    .line 100
    .line 101
    if-lez v7, :cond_5

    .line 102
    .line 103
    iget-object v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    const/4 v7, 0x0

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    :goto_4
    const/4 v7, 0x1

    .line 115
    :goto_5
    iget-object v8, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 116
    .line 117
    iget-object v13, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    .line 118
    .line 119
    iget-object v12, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 120
    .line 121
    if-eqz v7, :cond_a

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    iput-boolean v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 125
    .line 126
    move-wide/from16 v21, v3

    .line 127
    .line 128
    const-wide/16 v3, 0x0

    .line 129
    .line 130
    iput-wide v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 131
    .line 132
    iput-wide v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    iget-object v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 138
    .line 139
    if-eqz v7, :cond_7

    .line 140
    .line 141
    invoke-virtual {v7}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    .line 142
    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    iput-object v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 146
    .line 147
    :cond_7
    const/4 v7, 0x0

    .line 148
    iput-boolean v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 149
    .line 150
    iput-boolean v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    .line 151
    .line 152
    iput-boolean v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    .line 153
    .line 154
    const-wide/16 v3, -0x1

    .line 155
    .line 156
    iput-wide v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 157
    .line 158
    iput-wide v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 159
    .line 160
    iput-wide v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    iput v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mFraction:F

    .line 164
    .line 165
    const/4 v7, 0x0

    .line 166
    iput-object v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 167
    .line 168
    const-string v3, ""

    .line 169
    .line 170
    iput-object v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v12}, Lcom/samsung/android/nexus/particle/emitter/Status;->reset()V

    .line 173
    .line 174
    .line 175
    iget-object v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 176
    .line 177
    if-eqz v3, :cond_8

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    .line 180
    .line 181
    .line 182
    iput-object v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 183
    .line 184
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 185
    .line 186
    .line 187
    iget-object v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 190
    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    iput-boolean v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    .line 194
    .line 195
    invoke-virtual {v13}, Landroid/graphics/RectF;->setEmpty()V

    .line 196
    .line 197
    .line 198
    if-nez v19, :cond_9

    .line 199
    .line 200
    move-object/from16 v17, v9

    .line 201
    .line 202
    move-object/from16 v20, v16

    .line 203
    .line 204
    :cond_9
    add-int/lit8 v19, v19, 0x1

    .line 205
    .line 206
    move-object/from16 v24, v6

    .line 207
    .line 208
    move-object/from16 v18, v9

    .line 209
    .line 210
    move v12, v14

    .line 211
    move v0, v15

    .line 212
    const/4 v3, 0x1

    .line 213
    const/4 v8, 0x0

    .line 214
    move-wide v6, v1

    .line 215
    const/4 v1, 0x0

    .line 216
    goto/16 :goto_17

    .line 217
    .line 218
    :cond_a
    move-wide/from16 v21, v3

    .line 219
    .line 220
    const/4 v7, 0x0

    .line 221
    iget-boolean v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 222
    .line 223
    if-nez v3, :cond_b

    .line 224
    .line 225
    move-object/from16 v24, v6

    .line 226
    .line 227
    move/from16 v16, v14

    .line 228
    .line 229
    move/from16 v23, v15

    .line 230
    .line 231
    const/4 v3, 0x1

    .line 232
    const/4 v8, 0x0

    .line 233
    move-wide v6, v1

    .line 234
    const/4 v1, 0x0

    .line 235
    goto/16 :goto_16

    .line 236
    .line 237
    :cond_b
    iget-object v3, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 238
    .line 239
    iget-object v3, v3, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 240
    .line 241
    move-object v4, v8

    .line 242
    iget-wide v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 243
    .line 244
    sub-long v7, v10, v7

    .line 245
    .line 246
    long-to-float v7, v7

    .line 247
    move/from16 v16, v14

    .line 248
    .line 249
    move v8, v15

    .line 250
    iget-wide v14, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    .line 251
    .line 252
    long-to-float v14, v14

    .line 253
    div-float/2addr v7, v14

    .line 254
    iput v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mFraction:F

    .line 255
    .line 256
    iget-object v14, v3, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    .line 257
    .line 258
    sget-object v15, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->AUTO_ROTATE_ALONG_MOVE_DIRECTION:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 259
    .line 260
    iget v15, v15, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    .line 261
    .line 262
    aget-boolean v15, v14, v15

    .line 263
    .line 264
    move/from16 v23, v8

    .line 265
    .line 266
    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 267
    .line 268
    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    .line 269
    .line 270
    aget-boolean v8, v14, v8

    .line 271
    .line 272
    move-object/from16 v24, v6

    .line 273
    .line 274
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_OUTSIDE:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    .line 275
    .line 276
    iget v6, v6, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    .line 277
    .line 278
    aget-boolean v6, v14, v6

    .line 279
    .line 280
    iget v14, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 281
    .line 282
    move-wide/from16 v25, v1

    .line 283
    .line 284
    iget v1, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 285
    .line 286
    iget v2, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 287
    .line 288
    move/from16 v27, v8

    .line 289
    .line 290
    iget-object v8, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 291
    .line 292
    if-nez v8, :cond_c

    .line 293
    .line 294
    move-object/from16 v28, v13

    .line 295
    .line 296
    move/from16 v29, v14

    .line 297
    .line 298
    const/4 v3, 0x1

    .line 299
    const/4 v14, 0x0

    .line 300
    goto/16 :goto_d

    .line 301
    .line 302
    :cond_c
    move-object/from16 v28, v13

    .line 303
    .line 304
    move/from16 v29, v14

    .line 305
    .line 306
    iget-wide v13, v3, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    .line 307
    .line 308
    cmp-long v13, v13, v10

    .line 309
    .line 310
    iget-object v14, v3, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->tempWorldFactorValues:[F

    .line 311
    .line 312
    if-eqz v13, :cond_15

    .line 313
    .line 314
    iput-wide v10, v3, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    .line 315
    .line 316
    iget-object v10, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    .line 317
    .line 318
    iget-object v10, v10, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 319
    .line 320
    array-length v11, v14

    .line 321
    const/4 v13, 0x0

    .line 322
    invoke-static {v10, v13, v14, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    .line 324
    .line 325
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 326
    .line 327
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 328
    .line 329
    array-length v11, v10

    .line 330
    const/4 v13, 0x0

    .line 331
    :goto_6
    if-ge v13, v11, :cond_15

    .line 332
    .line 333
    aget-object v0, v10, v13

    .line 334
    .line 335
    move-object/from16 v30, v10

    .line 336
    .line 337
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->opType:I

    .line 338
    .line 339
    const/high16 v31, 0x3f800000    # 1.0f

    .line 340
    .line 341
    move/from16 v32, v11

    .line 342
    .line 343
    iget-object v11, v3, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    .line 344
    .line 345
    if-eqz v10, :cond_11

    .line 346
    .line 347
    move-object/from16 v33, v3

    .line 348
    .line 349
    const/4 v3, 0x1

    .line 350
    if-eq v10, v3, :cond_d

    .line 351
    .line 352
    goto :goto_c

    .line 353
    :cond_d
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 354
    .line 355
    aget-boolean v34, v11, v10

    .line 356
    .line 357
    if-eqz v34, :cond_e

    .line 358
    .line 359
    aget v31, v14, v10

    .line 360
    .line 361
    :cond_e
    aput v31, v14, v10

    .line 362
    .line 363
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 364
    .line 365
    aget-boolean v31, v11, v10

    .line 366
    .line 367
    if-eqz v31, :cond_f

    .line 368
    .line 369
    aget v31, v14, v10

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_f
    const/16 v31, 0x0

    .line 373
    .line 374
    :goto_7
    aput v31, v14, v10

    .line 375
    .line 376
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 377
    .line 378
    aget-boolean v10, v11, v0

    .line 379
    .line 380
    if-eqz v10, :cond_10

    .line 381
    .line 382
    aget v10, v14, v0

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_10
    const/4 v10, 0x0

    .line 386
    :goto_8
    aput v10, v14, v0

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_11
    move-object/from16 v33, v3

    .line 390
    .line 391
    const/4 v3, 0x1

    .line 392
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 393
    .line 394
    aget v34, v14, v10

    .line 395
    .line 396
    aget-boolean v35, v11, v10

    .line 397
    .line 398
    if-eqz v35, :cond_12

    .line 399
    .line 400
    move/from16 v35, v31

    .line 401
    .line 402
    goto :goto_9

    .line 403
    :cond_12
    const/16 v35, 0x0

    .line 404
    .line 405
    :goto_9
    mul-float v34, v34, v35

    .line 406
    .line 407
    aput v34, v14, v10

    .line 408
    .line 409
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 410
    .line 411
    aget v34, v14, v10

    .line 412
    .line 413
    aget-boolean v35, v11, v10

    .line 414
    .line 415
    if-eqz v35, :cond_13

    .line 416
    .line 417
    move/from16 v35, v31

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_13
    const/16 v35, 0x0

    .line 421
    .line 422
    :goto_a
    mul-float v34, v34, v35

    .line 423
    .line 424
    aput v34, v14, v10

    .line 425
    .line 426
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 427
    .line 428
    aget v10, v14, v0

    .line 429
    .line 430
    aget-boolean v11, v11, v0

    .line 431
    .line 432
    if-eqz v11, :cond_14

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_14
    const/16 v31, 0x0

    .line 436
    .line 437
    :goto_b
    mul-float v10, v10, v31

    .line 438
    .line 439
    aput v10, v14, v0

    .line 440
    .line 441
    :goto_c
    add-int/lit8 v13, v13, 0x1

    .line 442
    .line 443
    move-object/from16 v0, p0

    .line 444
    .line 445
    move-object/from16 v10, v30

    .line 446
    .line 447
    move/from16 v11, v32

    .line 448
    .line 449
    move-object/from16 v3, v33

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_15
    const/4 v3, 0x1

    .line 453
    :goto_d
    invoke-virtual {v12, v7, v5, v14}, Lcom/samsung/android/nexus/particle/emitter/Status;->onStep(FF[F)V

    .line 454
    .line 455
    .line 456
    if-eqz v15, :cond_16

    .line 457
    .line 458
    iget v0, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 459
    .line 460
    sub-float/2addr v0, v1

    .line 461
    float-to-double v0, v0

    .line 462
    iget v7, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 463
    .line 464
    sub-float v7, v7, v29

    .line 465
    .line 466
    float-to-double v10, v7

    .line 467
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 468
    .line 469
    .line 470
    move-result-wide v0

    .line 471
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    add-double/2addr v0, v10

    .line 477
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 478
    .line 479
    .line 480
    move-result-wide v0

    .line 481
    double-to-float v0, v0

    .line 482
    const/high16 v1, 0x43b40000    # 360.0f

    .line 483
    .line 484
    add-float/2addr v0, v1

    .line 485
    rem-float/2addr v0, v1

    .line 486
    iput v0, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 487
    .line 488
    :cond_16
    iget v0, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 489
    .line 490
    if-eq v2, v0, :cond_17

    .line 491
    .line 492
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 493
    .line 494
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 495
    .line 496
    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 497
    .line 498
    .line 499
    iput-object v1, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 500
    .line 501
    :cond_17
    iget-boolean v0, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 502
    .line 503
    iget-object v1, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    .line 504
    .line 505
    const/high16 v2, 0x40000000    # 2.0f

    .line 506
    .line 507
    if-eqz v0, :cond_18

    .line 508
    .line 509
    iget v0, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 510
    .line 511
    div-float/2addr v0, v2

    .line 512
    iget v7, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 513
    .line 514
    div-float/2addr v7, v2

    .line 515
    iget v10, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 516
    .line 517
    sub-float v11, v10, v0

    .line 518
    .line 519
    iget v13, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 520
    .line 521
    sub-float v14, v13, v7

    .line 522
    .line 523
    add-float/2addr v10, v0

    .line 524
    add-float/2addr v13, v7

    .line 525
    invoke-virtual {v1, v11, v14, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x0

    .line 529
    iput-boolean v0, v8, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 530
    .line 531
    :cond_18
    move-object/from16 v0, v28

    .line 532
    .line 533
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 534
    .line 535
    .line 536
    iget-boolean v1, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 537
    .line 538
    iget-object v7, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    .line 539
    .line 540
    if-eqz v1, :cond_19

    .line 541
    .line 542
    iget v1, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 543
    .line 544
    div-float/2addr v1, v2

    .line 545
    iget v8, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 546
    .line 547
    div-float/2addr v8, v2

    .line 548
    iget v2, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 549
    .line 550
    sub-float v10, v2, v1

    .line 551
    .line 552
    iget v11, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 553
    .line 554
    sub-float v13, v11, v8

    .line 555
    .line 556
    add-float/2addr v2, v1

    .line 557
    add-float/2addr v11, v8

    .line 558
    invoke-virtual {v7, v10, v13, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 559
    .line 560
    .line 561
    const/4 v1, 0x0

    .line 562
    iput-boolean v1, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 563
    .line 564
    :cond_19
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    iget v8, v0, Landroid/graphics/RectF;->left:F

    .line 573
    .line 574
    sub-float/2addr v8, v1

    .line 575
    iput v8, v0, Landroid/graphics/RectF;->left:F

    .line 576
    .line 577
    iget v8, v0, Landroid/graphics/RectF;->top:F

    .line 578
    .line 579
    sub-float/2addr v8, v2

    .line 580
    iput v8, v0, Landroid/graphics/RectF;->top:F

    .line 581
    .line 582
    iget v8, v0, Landroid/graphics/RectF;->right:F

    .line 583
    .line 584
    add-float/2addr v8, v1

    .line 585
    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 586
    .line 587
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 588
    .line 589
    add-float/2addr v1, v2

    .line 590
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 591
    .line 592
    invoke-virtual {v0, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 597
    .line 598
    iget-object v2, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    .line 599
    .line 600
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    .line 601
    .line 602
    iget v7, v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 603
    .line 604
    aget-object v2, v2, v7

    .line 605
    .line 606
    if-nez v2, :cond_1a

    .line 607
    .line 608
    iget-object v2, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    .line 609
    .line 610
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 611
    .line 612
    iget v7, v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 613
    .line 614
    aget v7, v2, v7

    .line 615
    .line 616
    const/4 v8, 0x0

    .line 617
    cmpg-float v7, v7, v8

    .line 618
    .line 619
    if-gtz v7, :cond_1b

    .line 620
    .line 621
    iget v7, v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 622
    .line 623
    aget v7, v2, v7

    .line 624
    .line 625
    cmpg-float v7, v7, v8

    .line 626
    .line 627
    if-gtz v7, :cond_1b

    .line 628
    .line 629
    iget v1, v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 630
    .line 631
    aget v1, v2, v1

    .line 632
    .line 633
    cmpg-float v1, v1, v8

    .line 634
    .line 635
    if-gtz v1, :cond_1b

    .line 636
    .line 637
    move v7, v3

    .line 638
    goto :goto_e

    .line 639
    :cond_1a
    const/4 v8, 0x0

    .line 640
    :cond_1b
    const/4 v7, 0x0

    .line 641
    :goto_e
    iput-boolean v0, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    .line 642
    .line 643
    if-nez v0, :cond_1d

    .line 644
    .line 645
    if-nez v6, :cond_1c

    .line 646
    .line 647
    goto :goto_f

    .line 648
    :cond_1c
    const/4 v1, 0x0

    .line 649
    goto :goto_10

    .line 650
    :cond_1d
    :goto_f
    move v1, v3

    .line 651
    :goto_10
    iput-boolean v1, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    .line 652
    .line 653
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-nez v1, :cond_21

    .line 658
    .line 659
    if-eqz v6, :cond_1f

    .line 660
    .line 661
    if-eqz v0, :cond_1e

    .line 662
    .line 663
    goto :goto_12

    .line 664
    :cond_1e
    :goto_11
    const/4 v1, 0x0

    .line 665
    goto :goto_13

    .line 666
    :cond_1f
    :goto_12
    if-eqz v27, :cond_20

    .line 667
    .line 668
    if-eqz v7, :cond_20

    .line 669
    .line 670
    goto :goto_11

    .line 671
    :goto_13
    iput-boolean v1, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 672
    .line 673
    goto :goto_15

    .line 674
    :cond_20
    const/4 v1, 0x0

    .line 675
    goto :goto_15

    .line 676
    :cond_21
    const/4 v1, 0x0

    .line 677
    if-eqz v0, :cond_23

    .line 678
    .line 679
    if-eqz v27, :cond_22

    .line 680
    .line 681
    if-nez v7, :cond_23

    .line 682
    .line 683
    :cond_22
    move v7, v3

    .line 684
    goto :goto_14

    .line 685
    :cond_23
    move v7, v1

    .line 686
    :goto_14
    iput-boolean v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 687
    .line 688
    :goto_15
    move-wide/from16 v6, v25

    .line 689
    .line 690
    invoke-virtual {v9, v6, v7, v12}, Lcom/samsung/android/nexus/particle/emitter/Particle;->checkEmitterSchedule(JLcom/samsung/android/nexus/particle/emitter/Status;)V

    .line 691
    .line 692
    .line 693
    move-wide v10, v6

    .line 694
    :goto_16
    if-lez v19, :cond_24

    .line 695
    .line 696
    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    .line 697
    .line 698
    move/from16 v12, v16

    .line 699
    .line 700
    move/from16 v0, v23

    .line 701
    .line 702
    move-object/from16 v15, v24

    .line 703
    .line 704
    move-object/from16 v16, v20

    .line 705
    .line 706
    invoke-virtual/range {v14 .. v19}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V

    .line 707
    .line 708
    .line 709
    move/from16 v19, v1

    .line 710
    .line 711
    const/16 v17, 0x0

    .line 712
    .line 713
    const/16 v18, 0x0

    .line 714
    .line 715
    goto :goto_17

    .line 716
    :cond_24
    move/from16 v12, v16

    .line 717
    .line 718
    move/from16 v0, v23

    .line 719
    .line 720
    :goto_17
    iget-object v2, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 721
    .line 722
    add-int/lit8 v14, v12, 0x1

    .line 723
    .line 724
    move v15, v0

    .line 725
    move-object/from16 v16, v9

    .line 726
    .line 727
    move-wide/from16 v3, v21

    .line 728
    .line 729
    const/4 v13, 0x0

    .line 730
    move-object/from16 v0, p0

    .line 731
    .line 732
    move-object v9, v2

    .line 733
    move-wide v1, v6

    .line 734
    move-object/from16 v6, v24

    .line 735
    .line 736
    const-wide/16 v7, 0x0

    .line 737
    .line 738
    goto/16 :goto_3

    .line 739
    .line 740
    :cond_25
    move-wide/from16 v21, v3

    .line 741
    .line 742
    move-object/from16 v24, v6

    .line 743
    .line 744
    if-lez v19, :cond_26

    .line 745
    .line 746
    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    .line 747
    .line 748
    move-object/from16 v15, v24

    .line 749
    .line 750
    move-object/from16 v16, v20

    .line 751
    .line 752
    invoke-virtual/range {v14 .. v19}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V

    .line 753
    .line 754
    .line 755
    :cond_26
    move-object/from16 v0, v24

    .line 756
    .line 757
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 758
    .line 759
    if-nez v1, :cond_27

    .line 760
    .line 761
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;->this$0:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 762
    .line 763
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 764
    .line 765
    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/FrameController;->startFrameRateDown()V

    .line 766
    .line 767
    .line 768
    :cond_27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 769
    .line 770
    .line 771
    move-result-wide v0

    .line 772
    sub-long v0, v0, v21

    .line 773
    .line 774
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 775
    .line 776
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 777
    .line 778
    .line 779
    :cond_28
    :goto_18
    return-void
.end method
