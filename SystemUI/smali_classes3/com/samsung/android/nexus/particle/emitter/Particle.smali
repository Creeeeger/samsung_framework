.class public final Lcom/samsung/android/nexus/particle/emitter/Particle;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final mEmitterScheduleComparator:Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

.field public static sDensity:F

.field public static final sPaint:Landroid/graphics/Paint;

.field public static final sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;


# instance fields
.field public mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field public final mEmitterSchedules:Ljava/util/ArrayList;

.field public mEnable:Z

.field public mEnableEmission:Z

.field public mEndTime:J

.field public mFraction:F

.field public mIsInSight:Z

.field public mLifeTime:J

.field public mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

.field public mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

.field public mScheduleCheckLock:Z

.field public mStartTime:J

.field public mSubEmitterKey:Ljava/lang/String;

.field public final mTempEmitterSchedules:Ljava/util/ArrayList;

.field public final mTempWorldBounds:Landroid/graphics/RectF;

.field public next:Lcom/samsung/android/nexus/particle/emitter/Particle;

.field public final status:Lcom/samsung/android/nexus/particle/emitter/Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterScheduleComparator:Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    .line 37
    .line 38
    const/high16 v4, 0x41a00000    # 20.0f

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    const/16 v3, 0xbb8

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->retain(I)Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    sub-long/2addr v3, v1

    .line 71
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, "static initializer: took"

    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "ms"

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "Particle"

    .line 95
    .line 96
    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    .line 9
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Status;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Status;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/Emitter;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    .line 16
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    .line 20
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Status;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Status;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 21
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 23
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    return-void
.end method


# virtual methods
.method public final checkEmitterSchedule(JLcom/samsung/android/nexus/particle/emitter/Status;)V
    .locals 57

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 3
    iget-boolean v5, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    if-nez v5, :cond_1

    .line 4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    const/4 v5, 0x1

    .line 5
    iput-boolean v5, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v9, v0

    move-wide v10, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_3a

    .line 7
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    .line 8
    iget-wide v13, v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    cmp-long v15, v13, v10

    if-gtz v15, :cond_39

    .line 9
    iget-object v10, v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v11, v10, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    move/from16 v16, v6

    .line 10
    iget-wide v5, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    .line 11
    iget-object v15, v11, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v15, :cond_2

    long-to-float v5, v5

    .line 12
    invoke-virtual {v15}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-long v5, v6

    goto :goto_1

    .line 13
    :cond_2
    iget-object v5, v11, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    invoke-virtual {v5}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    move-result-wide v5

    :goto_1
    move/from16 v18, v8

    .line 14
    iget-wide v7, v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    add-long/2addr v7, v5

    iput-wide v7, v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    .line 15
    iget-boolean v5, v9, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    iget-boolean v6, v10, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    if-eqz v5, :cond_34

    if-eqz v6, :cond_3

    .line 16
    iget-object v5, v10, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz v5, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_33

    .line 17
    iget-object v5, v10, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz v5, :cond_33

    .line 18
    iget-object v7, v10, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    iget-object v8, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    aget-boolean v9, v8, v9

    .line 19
    iget-object v11, v10, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    iget-object v15, v11, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    move-object/from16 v19, v4

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->AUTO_ROTATE_ALONG_MOVE_DIRECTION:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    aget-boolean v4, v15, v4

    .line 20
    sget-object v15, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ROTATION_TO_SHAPE:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    iget v15, v15, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    aget-boolean v15, v8, v15

    move/from16 v20, v6

    .line 21
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_POS_VECTOR:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    iget v6, v6, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    aget-boolean v6, v8, v6

    if-eqz v15, :cond_4

    if-eqz v3, :cond_4

    .line 22
    iget v15, v3, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 23
    :goto_3
    iget-object v8, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    const/high16 v22, 0x43b40000    # 360.0f

    if-eqz v8, :cond_17

    iget-object v0, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    goto/16 :goto_11

    .line 24
    :cond_5
    iget v0, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    if-nez v0, :cond_6

    .line 25
    iget-object v0, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    iget v1, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    mul-float/2addr v0, v1

    move v1, v0

    goto :goto_4

    .line 26
    :cond_6
    iget-object v0, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    iget v1, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    mul-float/2addr v0, v1

    .line 27
    iget-object v1, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v1

    iget v2, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    mul-float/2addr v1, v2

    :goto_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v23, v0, v2

    if-nez v23, :cond_8

    cmpl-float v23, v1, v2

    if-nez v23, :cond_8

    const/4 v2, 0x0

    cmpl-float v21, v15, v2

    if-eqz v21, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v24, v12

    goto :goto_6

    .line 28
    :cond_8
    :goto_5
    iget-object v2, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mRotatedEmitterShapePath:Landroid/graphics/Path;

    invoke-virtual {v2, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 29
    iget-object v8, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mMatrix:Landroid/graphics/Matrix;

    .line 30
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v24, v12

    const/4 v12, 0x0

    .line 31
    invoke-virtual {v8, v0, v1, v12, v12}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 32
    invoke-virtual {v8, v15, v12, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 33
    invoke-virtual {v2, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object v8, v2

    .line 34
    :goto_6
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 35
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 36
    :goto_7
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 37
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    add-float/2addr v2, v12

    goto :goto_7

    .line 38
    :cond_9
    invoke-virtual {v0, v8, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    const/4 v1, 0x2

    new-array v8, v1, [F

    new-array v12, v1, [F

    .line 39
    iget-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    iget-boolean v1, v15, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    if-eqz v1, :cond_a

    .line 40
    iget v1, v15, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    goto :goto_8

    :cond_a
    iget v1, v15, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iget v15, v15, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mDelta:I

    int-to-float v15, v15

    sget-object v26, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    move-result v26

    mul-float v15, v15, v26

    float-to-int v15, v15

    add-int/2addr v1, v15

    :goto_8
    if-gtz v1, :cond_b

    move/from16 v32, v4

    move-object/from16 v28, v5

    move/from16 v35, v6

    move-object/from16 v54, v7

    move/from16 v34, v9

    move-object/from16 v31, v10

    move-object/from16 v37, v11

    :goto_9
    move-wide/from16 v29, v13

    goto/16 :goto_12

    .line 41
    :cond_b
    iget v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    move/from16 v26, v15

    .line 42
    iget v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    if-ge v15, v1, :cond_c

    .line 43
    new-array v15, v1, [F

    iput-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    .line 44
    new-array v15, v1, [F

    iput-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    .line 45
    new-array v15, v1, [F

    iput-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    .line 46
    new-array v15, v1, [F

    iput-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    .line 47
    new-array v15, v1, [F

    iput-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    .line 48
    new-array v15, v1, [F

    iput-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    .line 49
    iput v1, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    .line 50
    :cond_c
    iget-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    move-object/from16 v27, v15

    .line 51
    iget-object v15, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    move-object/from16 v28, v5

    .line 52
    iget-object v5, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    move-wide/from16 v29, v13

    .line 53
    iget-object v13, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    .line 54
    iget-object v14, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    move-object/from16 v31, v10

    .line 55
    iget-object v10, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    move/from16 v32, v4

    int-to-float v4, v1

    div-float v33, v2, v4

    move/from16 v34, v9

    .line 56
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    move/from16 v35, v6

    .line 57
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 58
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v36

    move-object/from16 v37, v11

    .line 59
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v11

    .line 60
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    move-object/from16 v17, v10

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 61
    invoke-virtual {v0, v3, v11, v6, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 62
    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    move/from16 v3, v26

    move-object/from16 v10, v27

    .line 63
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v26

    .line 64
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v27

    move/from16 v40, v26

    move/from16 v41, v27

    move/from16 v42, v36

    const/4 v11, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x0

    :goto_a
    if-ge v11, v1, :cond_16

    move/from16 v43, v1

    .line 65
    iget-object v1, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v1

    move-object/from16 v44, v14

    int-to-float v14, v11

    mul-float/2addr v14, v2

    div-float/2addr v14, v4

    mul-float v1, v1, v33

    add-float/2addr v1, v14

    rem-float/2addr v1, v2

    cmpl-float v14, v1, v42

    if-lez v14, :cond_d

    .line 66
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 67
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v14

    .line 68
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    move/from16 v45, v2

    move/from16 v38, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 69
    invoke-virtual {v0, v2, v14, v6, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 70
    invoke-virtual {v6, v9, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 71
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 72
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v26

    add-float v14, v42, v14

    move/from16 v40, v4

    move/from16 v41, v26

    move/from16 v26, v42

    move/from16 v42, v14

    goto :goto_b

    :cond_d
    move/from16 v45, v2

    move/from16 v38, v4

    :goto_b
    cmpl-float v4, v1, v26

    if-eqz v4, :cond_e

    sub-float v1, v1, v26

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    .line 73
    :goto_c
    invoke-virtual {v0, v1, v8, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v1, 0x0

    aget v4, v8, v1

    const/4 v1, 0x1

    aget v2, v8, v1

    .line 74
    iget-object v14, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v14}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v14

    if-eqz v3, :cond_14

    if-eq v3, v1, :cond_12

    const/4 v1, 0x2

    if-eq v3, v1, :cond_11

    const/4 v1, 0x3

    if-eq v3, v1, :cond_f

    move-object/from16 v47, v0

    move-object/from16 v48, v13

    move/from16 v49, v14

    move/from16 v1, v36

    move-object/from16 v36, v9

    move/from16 v56, v27

    move-object/from16 v27, v8

    move/from16 v8, v56

    goto/16 :goto_f

    :cond_f
    sub-float v1, v4, v40

    move-object/from16 v27, v8

    move-object/from16 v36, v9

    float-to-double v8, v1

    move-object/from16 v47, v0

    sub-float v0, v2, v41

    move-object/from16 v48, v13

    move/from16 v49, v14

    float-to-double v13, v0

    .line 75
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/16 v21, 0x0

    cmpl-float v9, v21, v8

    if-nez v9, :cond_10

    goto :goto_d

    :cond_10
    div-float/2addr v1, v8

    div-float/2addr v0, v8

    goto :goto_e

    :cond_11
    move-object/from16 v47, v0

    move-object/from16 v27, v8

    move-object/from16 v36, v9

    move-object/from16 v48, v13

    move/from16 v49, v14

    const/16 v21, 0x0

    move/from16 v8, v21

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_12
    move-object/from16 v47, v0

    move-object/from16 v27, v8

    move-object/from16 v36, v9

    move-object/from16 v48, v13

    move/from16 v49, v14

    const/16 v21, 0x0

    float-to-double v0, v4

    float-to-double v8, v2

    .line 76
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    cmpl-float v1, v21, v0

    if-nez v1, :cond_13

    :goto_d
    const/4 v1, 0x0

    const/4 v8, 0x0

    goto :goto_f

    :cond_13
    div-float v1, v4, v0

    div-float v0, v2, v0

    :goto_e
    move v8, v0

    goto :goto_f

    :cond_14
    move-object/from16 v47, v0

    move-object/from16 v27, v8

    move-object/from16 v36, v9

    move-object/from16 v48, v13

    move/from16 v49, v14

    const/4 v0, 0x0

    aget v1, v12, v0

    const/4 v0, 0x1

    aget v8, v12, v0

    const/high16 v9, 0x43870000    # 270.0f

    move/from16 v39, v9

    .line 77
    :goto_f
    iget-object v9, v7, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v9}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v9

    neg-float v9, v9

    add-float v9, v9, v22

    add-float v9, v9, v39

    rem-float v9, v9, v22

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    const-wide/16 v50, 0x0

    cmpl-double v9, v50, v13

    if-eqz v9, :cond_15

    float-to-double v0, v1

    .line 78
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v50

    mul-double v50, v50, v0

    float-to-double v8, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    mul-double v52, v52, v8

    move-object/from16 v55, v6

    move-object/from16 v54, v7

    sub-double v6, v50, v52

    double-to-float v6, v6

    .line 79
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v50, v50, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    add-double v0, v0, v50

    double-to-float v0, v0

    move v1, v6

    goto :goto_10

    :cond_15
    move-object/from16 v55, v6

    move-object/from16 v54, v7

    move v0, v8

    .line 80
    :goto_10
    aput v1, v10, v11

    .line 81
    aput v0, v15, v11

    .line 82
    aput v4, v5, v11

    .line 83
    aput v2, v48, v11

    mul-float v14, v49, v1

    .line 84
    aput v14, v44, v11

    mul-float v14, v49, v0

    .line 85
    aput v14, v17, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v27

    move-object/from16 v9, v36

    move/from16 v4, v38

    move-object/from16 v14, v44

    move/from16 v2, v45

    move-object/from16 v13, v48

    move-object/from16 v7, v54

    move-object/from16 v6, v55

    move/from16 v27, v0

    move/from16 v36, v1

    move/from16 v1, v43

    move-object/from16 v0, v47

    goto/16 :goto_a

    :cond_16
    move/from16 v43, v1

    move-object v1, v7

    move/from16 v0, v43

    goto :goto_13

    :cond_17
    :goto_11
    move/from16 v32, v4

    move-object/from16 v28, v5

    move/from16 v35, v6

    move-object/from16 v54, v7

    move/from16 v34, v9

    move-object/from16 v31, v10

    move-object/from16 v37, v11

    move-object/from16 v24, v12

    goto/16 :goto_9

    :goto_12
    move-object/from16 v1, v54

    const/4 v0, 0x0

    .line 86
    :goto_13
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    .line 87
    iget-object v3, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    .line 88
    iget-object v4, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    .line 89
    iget-object v5, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    .line 90
    iget-object v6, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    .line 91
    iget-object v7, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    move-object/from16 v12, p3

    if-eqz v12, :cond_1a

    .line 92
    iget-object v9, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    iget-object v9, v9, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 93
    array-length v10, v9

    .line 94
    array-length v11, v9

    new-array v11, v11, [F

    const/4 v13, 0x0

    .line 95
    :goto_14
    iget-object v14, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    if-ge v13, v10, :cond_19

    .line 96
    aget-boolean v14, v14, v13

    if-eqz v14, :cond_18

    .line 97
    aget v14, v9, v13

    aput v14, v11, v13

    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 98
    :cond_19
    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v1, v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v1, v9, v1

    goto :goto_15

    :cond_1a
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_15
    if-eqz v12, :cond_1b

    .line 99
    iget v13, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    goto :goto_16

    :cond_1b
    const/4 v13, 0x0

    :goto_16
    if-eqz v12, :cond_1c

    .line 100
    iget v15, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    move/from16 v23, v15

    move-object/from16 v8, v37

    goto :goto_17

    :cond_1c
    move-object/from16 v8, v37

    const/16 v23, 0x0

    .line 101
    :goto_17
    iget v15, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    move/from16 v26, v1

    .line 102
    iget v1, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    move-object/from16 v27, v7

    .line 103
    iget v7, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    move-object/from16 v33, v6

    .line 104
    iget-object v6, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-virtual {v6}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->isEmpty()Z

    move-result v36

    const/16 v25, 0x1

    xor-int/lit8 v36, v36, 0x1

    move-object/from16 v25, v2

    move-object/from16 v37, v3

    move/from16 v3, v23

    .line 105
    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->retain(I)Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    move-result-object v0

    .line 106
    iget v2, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    move/from16 v38, v3

    .line 107
    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    move-object/from16 v39, v0

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_30

    move/from16 v40, v2

    .line 108
    iget-object v2, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    move-object/from16 v41, v3

    .line 109
    iget-object v3, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    move/from16 v42, v13

    .line 110
    iget-object v13, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    iget-object v12, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    if-eqz v36, :cond_24

    .line 111
    sget-object v43, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object/from16 v43, v8

    .line 112
    sget v8, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    move-object/from16 v44, v9

    .line 113
    iget-object v9, v13, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    move-object/from16 v45, v14

    const/4 v14, 0x0

    .line 114
    iput v14, v13, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    const/4 v14, 0x0

    :goto_19
    if-ge v14, v8, :cond_23

    move/from16 v46, v8

    .line 115
    iget-object v8, v6, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aget-object v8, v8, v14

    if-eqz v8, :cond_22

    move/from16 v47, v10

    .line 116
    array-length v10, v8

    move-object/from16 v48, v11

    .line 117
    iget-object v11, v6, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aget-object v11, v11, v14

    move-object/from16 v49, v5

    .line 118
    new-array v5, v10, [F

    move/from16 v50, v0

    .line 119
    new-array v0, v10, [F

    move-object/from16 v51, v4

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v10, :cond_1d

    .line 120
    aget-object v52, v8, v4

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v52

    aput v52, v5, v4

    .line 121
    aget-object v52, v11, v4

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v52

    aput v52, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 122
    :cond_1d
    iget-object v4, v6, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    aget-object v4, v4, v14

    .line 123
    iget-object v8, v6, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    aget-object v8, v8, v14

    .line 124
    aget-object v11, v9, v14

    if-nez v11, :cond_1e

    .line 125
    new-instance v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-direct {v11}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;-><init>()V

    .line 126
    aput-object v11, v9, v14

    .line 127
    :cond_1e
    iput v10, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 128
    iput-object v5, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 129
    iput-object v8, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    .line 130
    iput-object v4, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    add-int/lit8 v10, v10, -0x1

    .line 131
    iput-object v0, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    .line 132
    iget-object v4, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    if-eqz v4, :cond_1f

    array-length v4, v4

    if-eq v10, v4, :cond_20

    .line 133
    :cond_1f
    new-array v4, v10, [F

    iput-object v4, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    :cond_20
    const/4 v4, 0x0

    .line 134
    aget v5, v0, v4

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v10, :cond_21

    add-int/lit8 v8, v4, 0x1

    .line 135
    aget v52, v0, v8

    move-object/from16 v53, v0

    .line 136
    iget-object v0, v11, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    sub-float v5, v52, v5

    aput v5, v0, v4

    move v4, v8

    move/from16 v5, v52

    move-object/from16 v0, v53

    goto :goto_1b

    .line 137
    :cond_21
    iget v0, v13, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v13, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    goto :goto_1c

    :cond_22
    move/from16 v50, v0

    move-object/from16 v51, v4

    move-object/from16 v49, v5

    move/from16 v47, v10

    move-object/from16 v48, v11

    .line 138
    iget-object v0, v6, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    aget-object v0, v0, v14

    aput-object v0, v9, v14

    :goto_1c
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v46

    move/from16 v10, v47

    move-object/from16 v11, v48

    move-object/from16 v5, v49

    move/from16 v0, v50

    move-object/from16 v4, v51

    goto/16 :goto_19

    :cond_23
    move/from16 v50, v0

    move-object/from16 v51, v4

    move-object/from16 v49, v5

    move/from16 v47, v10

    move-object/from16 v48, v11

    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    iget-object v0, v12, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget-object v5, v13, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/nexus/particle/emitter/Factor;->initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    goto :goto_1d

    :cond_24
    move/from16 v50, v0

    move-object/from16 v51, v4

    move-object/from16 v49, v5

    move-object/from16 v43, v8

    move-object/from16 v44, v9

    move/from16 v47, v10

    move-object/from16 v48, v11

    move-object/from16 v45, v14

    .line 141
    invoke-virtual {v13}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    .line 142
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    iget-object v0, v12, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/nexus/particle/emitter/Factor;->initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    .line 144
    :goto_1d
    iput v7, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    .line 145
    iput v1, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 146
    iput v15, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    .line 147
    aget v0, v51, v50

    iput v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    .line 148
    aget v0, v49, v50

    iput v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    .line 149
    iget-object v0, v3, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    move/from16 v10, v47

    if-eqz v48, :cond_26

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v10, :cond_26

    .line 150
    aget-boolean v8, v45, v5

    if-eqz v8, :cond_25

    .line 151
    aget v8, v44, v5

    aput v8, v0, v5

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_26
    if-eqz p3, :cond_27

    if-eqz v35, :cond_27

    move/from16 v13, v42

    .line 152
    iput v13, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    move/from16 v0, v38

    .line 153
    iput v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    goto :goto_1f

    :cond_27
    move/from16 v0, v38

    move/from16 v13, v42

    :goto_1f
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 154
    invoke-virtual {v2, v8, v8, v5}, Lcom/samsung/android/nexus/particle/emitter/Status;->onStep(FF[F)V

    .line 155
    aget v9, v25, v50

    .line 156
    aget v11, v37, v50

    .line 157
    aget v12, v33, v50

    .line 158
    aget v14, v27, v50

    if-eqz v34, :cond_28

    cmpl-float v17, v26, v8

    if-eqz v17, :cond_28

    float-to-double v4, v9

    move/from16 v38, v0

    move v8, v1

    float-to-double v0, v11

    .line 159
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 160
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v0

    .line 161
    aget v0, v51, v50

    mul-float/2addr v0, v1

    add-float/2addr v12, v0

    .line 162
    aget v0, v49, v50

    mul-float/2addr v1, v0

    add-float/2addr v14, v1

    goto :goto_20

    :cond_28
    move/from16 v38, v0

    move v8, v1

    .line 163
    :goto_20
    iget v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    add-float/2addr v0, v9

    iput v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 164
    iget v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    add-float/2addr v0, v11

    iput v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 165
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 166
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget-object v4, v3, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    aget v5, v4, v1

    add-float/2addr v5, v9

    aput v5, v4, v1

    const/4 v1, 0x0

    cmpl-float v5, v9, v1

    if-eqz v5, :cond_29

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, v3, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 168
    :cond_29
    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 169
    iget v9, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v23, v4, v9

    add-float v23, v23, v11

    aput v23, v4, v9

    const/4 v9, 0x0

    cmpl-float v11, v11, v9

    if-eqz v11, :cond_2a

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, v3, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 171
    :cond_2a
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v9, v4, v0

    add-float/2addr v9, v12

    aput v9, v4, v0

    const/4 v9, 0x0

    cmpl-float v11, v12, v9

    if-eqz v11, :cond_2b

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, v3, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 173
    :cond_2b
    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v9, v4, v5

    add-float/2addr v9, v14

    aput v9, v4, v5

    const/4 v5, 0x0

    cmpl-float v11, v14, v5

    if-eqz v11, :cond_2c

    const/4 v1, 0x1

    .line 174
    iput-boolean v1, v3, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 175
    :cond_2c
    aget v0, v4, v0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_2e

    cmpl-float v4, v9, v3

    if-eqz v4, :cond_2d

    goto :goto_21

    :cond_2d
    move v0, v3

    goto :goto_22

    :cond_2e
    :goto_21
    float-to-double v4, v0

    float-to-double v11, v9

    .line 176
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    :goto_22
    iput v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 177
    iput v3, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    if-eqz v32, :cond_2f

    .line 178
    iget v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    aget v4, v49, v50

    float-to-double v4, v4

    aget v9, v51, v50

    float-to-double v11, v9

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v0, v4

    add-float v0, v0, v22

    rem-float v0, v0, v22

    iput v0, v2, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    :cond_2f
    move-object/from16 v2, v31

    move-object/from16 v0, v41

    .line 179
    iput-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    const-wide/16 v4, 0x0

    .line 180
    iput-wide v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 181
    iput-wide v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    move-wide/from16 v4, v29

    .line 182
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/Particle;->start(J)V

    .line 183
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    add-int/lit8 v9, v50, 0x1

    move-object/from16 v12, p3

    move-object v3, v0

    move-object/from16 v31, v2

    move-wide/from16 v29, v4

    move v1, v8

    move v0, v9

    move/from16 v2, v40

    move-object/from16 v8, v43

    move-object/from16 v9, v44

    move-object/from16 v14, v45

    move-object/from16 v11, v48

    move-object/from16 v5, v49

    move-object/from16 v4, v51

    goto/16 :goto_18

    :cond_30
    move-object/from16 v0, v28

    move-object/from16 v2, v31

    .line 184
    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    iget-boolean v4, v3, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    if-nez v4, :cond_31

    goto :goto_23

    :cond_31
    const/4 v4, 0x0

    .line 185
    iput-boolean v4, v3, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    const-string v5, "FrameController"

    const-string v6, "Stop frame control."

    .line 186
    invoke-static {v5, v6}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v5, v3, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v4, v3, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v4

    .line 189
    iget v3, v3, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMaxFrameRate:I

    if-gtz v3, :cond_32

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "NexusContext"

    const-string v6, "setFrameRate() : Do NOT set a negative value."

    .line 190
    invoke-static {v5, v6}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_32
    iget-object v4, v4, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 192
    iput v3, v4, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    add-int/lit8 v3, v3, 0x1

    const v5, 0x3b9aca00

    .line 193
    div-int/2addr v5, v3

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    .line 194
    :goto_23
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    move-object/from16 v3, v39

    invoke-virtual {v0, v3}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    goto :goto_24

    :cond_33
    move-object/from16 v19, v4

    move/from16 v20, v6

    move-object v2, v10

    move-object/from16 v24, v12

    :goto_24
    move-object/from16 v12, v24

    goto :goto_25

    :cond_34
    move-object/from16 v19, v4

    move/from16 v20, v6

    move-object v2, v10

    .line 195
    :goto_25
    iget-wide v3, v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    move-wide/from16 v5, p1

    cmp-long v0, v3, v5

    if-gtz v0, :cond_35

    .line 196
    iput-wide v5, v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    .line 197
    :cond_35
    iget-wide v3, v12, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    cmp-long v3, v3, v7

    if-gtz v3, :cond_38

    if-eqz v20, :cond_36

    .line 198
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz v2, :cond_36

    const/16 v17, 0x1

    goto :goto_26

    :cond_36
    const/16 v17, 0x0

    :goto_26
    if-nez v17, :cond_37

    goto :goto_27

    :cond_37
    move-object v9, v0

    move-wide v10, v5

    move/from16 v7, v18

    move-object/from16 v2, v19

    goto :goto_28

    :cond_38
    :goto_27
    move/from16 v7, v18

    move-object/from16 v2, v19

    .line 199
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_29

    :cond_39
    move/from16 v16, v6

    move v7, v8

    move-wide v5, v1

    move-object v2, v4

    :goto_28
    add-int/lit8 v8, v7, 0x1

    move-object/from16 v3, p3

    move-object v4, v2

    move-wide v1, v5

    move/from16 v6, v16

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3a
    move-object v2, v4

    move-object v0, v9

    move-wide v5, v10

    .line 200
    :goto_29
    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_3c

    .line 201
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v8, v3, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v7, v8, :cond_3b

    iget-object v3, v3, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    const/16 v17, 0x1

    goto :goto_2a

    :cond_3c
    const/16 v17, 0x0

    :goto_2a
    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    if-nez v17, :cond_44

    .line 202
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v7, :cond_43

    .line 204
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 205
    iget-object v10, v9, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 206
    iget-boolean v11, v9, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    if-eqz v11, :cond_3d

    iget-object v11, v9, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz v11, :cond_3d

    const/16 v17, 0x1

    goto :goto_2c

    :cond_3d
    const/16 v17, 0x0

    :goto_2c
    if-eqz v17, :cond_42

    .line 207
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2d
    if-ge v12, v11, :cond_3f

    .line 208
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    iget-object v13, v13, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    if-ne v9, v13, :cond_3e

    const/16 v17, 0x1

    goto :goto_2e

    :cond_3e
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    :cond_3f
    const/16 v17, 0x0

    :goto_2e
    if-nez v17, :cond_42

    .line 209
    new-instance v11, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    iget-wide v12, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    .line 210
    iget-object v14, v10, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v14, :cond_40

    long-to-float v10, v12

    .line 211
    invoke-virtual {v14}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v12

    mul-float/2addr v12, v10

    float-to-long v12, v12

    goto :goto_2f

    .line 212
    :cond_40
    iget-object v10, v10, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    invoke-virtual {v10}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    move-result-wide v12

    :goto_2f
    add-long/2addr v12, v5

    .line 213
    invoke-direct {v11, v0, v9, v12, v13}, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;-><init>(Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Emitter;J)V

    .line 214
    iget-boolean v9, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    if-eqz v9, :cond_41

    .line 215
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 216
    :cond_41
    iget-object v9, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 217
    :cond_43
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    :cond_44
    const/4 v4, 0x0

    .line 218
    iput-boolean v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    .line 219
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 220
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 222
    :cond_45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_46

    .line 223
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterScheduleComparator:Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_46
    return-void
.end method

.method public final start(J)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    .line 8
    .line 9
    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput v3, v1, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput v4, v1, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 35
    .line 36
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 37
    .line 38
    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 39
    .line 40
    .line 41
    iput-object v4, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 42
    .line 43
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 44
    .line 45
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onCreate()V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v2, 0x1

    .line 53
    iput-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    .line 58
    .line 59
    iput-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 60
    .line 61
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    const-wide/16 v6, 0x0

    .line 68
    .line 69
    cmp-long v4, v4, v6

    .line 70
    .line 71
    if-gez v4, :cond_2

    .line 72
    .line 73
    const-wide p1, 0x7fffffffffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    iput-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    add-long/2addr v4, p1

    .line 86
    iput-wide v4, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 87
    .line 88
    :goto_1
    iget-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 89
    .line 90
    iget-wide v4, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 91
    .line 92
    sub-long/2addr p1, v4

    .line 93
    iput-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    .line 94
    .line 95
    iget-object p1, v1, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/nexus/particle/emitter/Factor;->validate()V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iget-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 120
    .line 121
    move v4, v3

    .line 122
    :goto_2
    if-ge v4, p2, :cond_8

    .line 123
    .line 124
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 129
    .line 130
    iget-object v6, v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 131
    .line 132
    iget-boolean v7, v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    .line 133
    .line 134
    if-eqz v7, :cond_4

    .line 135
    .line 136
    iget-object v7, v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 137
    .line 138
    if-eqz v7, :cond_4

    .line 139
    .line 140
    move v7, v2

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    move v7, v3

    .line 143
    :goto_3
    if-eqz v7, :cond_7

    .line 144
    .line 145
    new-instance v7, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    .line 146
    .line 147
    iget-wide v8, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    .line 148
    .line 149
    iget-object v10, v6, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 150
    .line 151
    if-eqz v10, :cond_5

    .line 152
    .line 153
    long-to-float v6, v8

    .line 154
    invoke-virtual {v10}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    mul-float/2addr v8, v6

    .line 159
    float-to-long v8, v8

    .line 160
    goto :goto_4

    .line 161
    :cond_5
    iget-object v6, v6, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    .line 164
    .line 165
    .line 166
    move-result-wide v8

    .line 167
    :goto_4
    add-long/2addr v8, v0

    .line 168
    invoke-direct {v7, p0, v5, v8, v9}, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;-><init>(Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Emitter;J)V

    .line 169
    .line 170
    .line 171
    iget-boolean v5, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    .line 172
    .line 173
    if-eqz v5, :cond_6

    .line 174
    .line 175
    iget-object v5, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    .line 192
    .line 193
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    .line 194
    .line 195
    :goto_6
    return-void

    .line 196
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    const-string p1, "can not start with null rule"

    .line 199
    .line 200
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Particle{mEnable="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mEnableEmission="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mIsInSight="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mStartTime="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mEndTime="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mLifeTime="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mFraction="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mFraction:F

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 p0, 0x7d

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
