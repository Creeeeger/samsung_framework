.class public final Lcom/samsung/android/nexus/particle/emitter/EmissionRule;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final applyParentFactorCheckList:[Z

.field public beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

.field public final configValues:[Z

.field public final emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

.field public final emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final emitterShapeBounds:Landroid/graphics/RectF;

.field public final emitterShapePath:Landroid/graphics/Path;

.field public final initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

.field public mDirectionMode:I

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mRotatedEmitterShapePath:Landroid/graphics/Path;

.field public mShapeScaleMode:I

.field public pathPointerOffsetXArray:[F

.field public pathPointerOffsetYArray:[F

.field public pathPointerVelocitiesX:[F

.field public pathPointerVelocitiesY:[F

.field public pathTanXArray:[F

.field public pathTanYArray:[F

.field public pointerSize:I

.field public shapeBaseScale:F

.field public final shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    .line 3
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    .line 4
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mRotatedEmitterShapePath:Landroid/graphics/Path;

    .line 5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mMatrix:Landroid/graphics/Matrix;

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    .line 7
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    .line 8
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 9
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 10
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 11
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    .line 12
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    .line 13
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 14
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 15
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 16
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 17
    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 19
    new-instance v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v4, 0x3e8

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 20
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 21
    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 22
    sget v1, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v1, v1, 0x3

    .line 23
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    .line 24
    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    .line 25
    sget v1, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sCount:I

    .line 26
    new-array v2, v1, [Z

    .line 27
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 28
    aget-object v5, v4, v0

    iget-boolean v5, v5, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->defaultValue:Z

    aput-boolean v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->setShapeType()V

    .line 31
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    aput-boolean v3, p0, v0

    .line 32
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aput-boolean v3, p0, v0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/EmissionRule;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 34
    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    .line 35
    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    .line 36
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mRotatedEmitterShapePath:Landroid/graphics/Path;

    .line 37
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    .line 39
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    .line 40
    new-instance v5, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v5, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 41
    new-instance v7, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v7, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v7, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 42
    new-instance v8, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v8, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v8, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 43
    iput v6, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    .line 44
    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    .line 45
    new-instance v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(I)V

    iput-object v9, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 46
    new-instance v11, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v11, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 47
    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v6, v12}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v6, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 48
    new-instance v13, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v13, v12}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v13, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 49
    new-instance v12, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v14, 0x0

    invoke-direct {v12, v14, v15}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v12, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/4 v14, 0x0

    .line 50
    iput-object v14, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 51
    new-instance v15, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    move-object/from16 v16, v3

    const-wide/16 v2, 0x3e8

    invoke-direct {v15, v2, v3}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v15, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 52
    iput-object v14, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 53
    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 54
    sget v2, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v2, v2, 0x3

    .line 55
    new-array v3, v2, [Z

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    .line 56
    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    .line 57
    sget v14, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sCount:I

    .line 58
    new-array v10, v14, [Z

    .line 59
    sget-object v18, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    move/from16 v19, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v14, :cond_0

    move/from16 v20, v14

    .line 60
    aget-object v14, v18, v2

    iget-boolean v14, v14, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->defaultValue:Z

    aput-boolean v14, v10, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v20

    goto :goto_0

    :cond_0
    move/from16 v20, v14

    .line 61
    iput-object v10, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->setShapeType()V

    .line 63
    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v2, v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget-object v14, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    const/16 v17, 0x1

    aput-boolean v17, v14, v2

    .line 64
    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v2, v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aput-boolean v17, v14, v2

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 65
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    move-object/from16 v14, v16

    invoke-virtual {v14, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 66
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    invoke-virtual {v4, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 67
    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    .line 68
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v5, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 69
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v7, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 70
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v8, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 71
    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    .line 72
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 73
    iget v4, v2, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput v4, v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 74
    iget v2, v2, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iput v2, v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 75
    invoke-virtual {v9}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    .line 76
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v11, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 77
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v13, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 78
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v6, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 79
    iget v2, v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 80
    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    .line 81
    new-array v4, v2, [F

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    .line 82
    new-array v4, v2, [F

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    .line 83
    new-array v4, v2, [F

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    .line 84
    new-array v4, v2, [F

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    .line 85
    new-array v4, v2, [F

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    .line 86
    new-array v2, v2, [F

    iput-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    .line 87
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 88
    iget-wide v4, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v4, v12, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 89
    iget-wide v4, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v4, v12, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 90
    invoke-virtual {v12}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    .line 91
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 92
    iget-wide v4, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v4, v15, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 93
    iget-wide v4, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v4, v15, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 94
    invoke-virtual {v15}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    .line 95
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v2, :cond_2

    .line 96
    new-instance v4, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v4, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 97
    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 98
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v2, :cond_3

    .line 99
    new-instance v4, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v4, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 100
    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 101
    :cond_3
    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    .line 102
    iget-object v0, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    move/from16 v2, v19

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v0, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    move/from16 v1, v20

    invoke-static {v0, v4, v10, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;-><init>(Lcom/samsung/android/nexus/particle/emitter/EmissionRule;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final setShapeType()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/high16 v1, -0x41000000    # -0.5f

    .line 4
    .line 5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    .line 7
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
