.class public final Lcom/samsung/android/nexus/particle/emitter/Status;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public acc:F

.field public alpha:F

.field public color:I

.field public colorMode:I

.field public drawingHeight:F

.field public drawingWidth:F

.field public final factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

.field public final factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

.field public height:F

.field public final mBounds:Landroid/graphics/RectF;

.field public mUpdateBounds:Z

.field public posMode:I

.field public posX:F

.field public posY:F

.field public rotation:F

.field public scaleMode:I

.field public scaleX:F

.field public scaleY:F

.field public speed:F

.field public vecTanX:F

.field public vecTanY:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 3
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Factor;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/Factor;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    .line 6
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 7
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 8
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 9
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 10
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 11
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 12
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 13
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 14
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 15
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    const/16 v1, 0xa

    .line 17
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    .line 18
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 19
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    .line 20
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/Status;)V
    .locals 11

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 24
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Factor;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/Factor;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    const/4 v3, 0x0

    .line 26
    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    .line 27
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 28
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 29
    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 30
    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 31
    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 32
    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 33
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 34
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 35
    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 36
    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    const/4 v2, -0x1

    .line 37
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    const/16 v2, 0xa

    .line 38
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    .line 39
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 40
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    .line 41
    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-direct {v2}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    .line 42
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/Status;->reset()V

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 44
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 45
    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    .line 46
    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    .line 47
    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 48
    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 49
    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 50
    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 51
    iget-boolean v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    iget-object v5, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    if-eqz v4, :cond_1

    .line 52
    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 53
    iget v7, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    div-float/2addr v7, v6

    .line 54
    iget v6, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    sub-float v8, v6, v4

    iget v9, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    sub-float v10, v9, v7

    add-float/2addr v6, v4

    add-float/2addr v9, v7

    invoke-virtual {v5, v8, v10, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    iput-boolean v0, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 56
    :cond_1
    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 57
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 58
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 59
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 60
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 61
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 62
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 63
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    .line 64
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 65
    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    .line 66
    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    iget-object v1, v1, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    array-length v3, v1

    invoke-static {p0, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    array-length v1, p1

    .line 70
    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iput p0, v2, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    .line 71
    iget-object p0, v2, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static AHSVToColor(FFFF)I
    .locals 7

    .line 1
    const/high16 v0, 0x42700000    # 60.0f

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    float-to-double v0, p1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    .line 10
    .line 11
    rem-double/2addr v2, v4

    .line 12
    double-to-int p1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-double/2addr v0, v2

    .line 18
    double-to-float v0, v0

    .line 19
    float-to-int p0, p0

    .line 20
    const/high16 v1, 0x437f0000    # 255.0f

    .line 21
    .line 22
    mul-float v2, p3, v1

    .line 23
    .line 24
    const/high16 v3, 0x3f000000    # 0.5f

    .line 25
    .line 26
    add-float/2addr v2, v3

    .line 27
    float-to-int v2, v2

    .line 28
    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    .line 30
    sub-float v5, v4, p2

    .line 31
    .line 32
    mul-float/2addr v5, p3

    .line 33
    mul-float/2addr v5, v1

    .line 34
    add-float/2addr v5, v3

    .line 35
    float-to-int v5, v5

    .line 36
    mul-float v6, v0, p2

    .line 37
    .line 38
    sub-float v6, v4, v6

    .line 39
    .line 40
    mul-float/2addr v6, p3

    .line 41
    mul-float/2addr v6, v1

    .line 42
    add-float/2addr v6, v3

    .line 43
    float-to-int v6, v6

    .line 44
    sub-float v0, v4, v0

    .line 45
    .line 46
    mul-float/2addr v0, p2

    .line 47
    sub-float/2addr v4, v0

    .line 48
    mul-float/2addr v4, p3

    .line 49
    mul-float/2addr v4, v1

    .line 50
    add-float/2addr v4, v3

    .line 51
    float-to-int p2, v4

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const/4 p3, 0x1

    .line 55
    if-eq p1, p3, :cond_3

    .line 56
    .line 57
    const/4 p3, 0x2

    .line 58
    if-eq p1, p3, :cond_2

    .line 59
    .line 60
    const/4 p3, 0x3

    .line 61
    if-eq p1, p3, :cond_1

    .line 62
    .line 63
    const/4 p3, 0x4

    .line 64
    if-eq p1, p3, :cond_0

    .line 65
    .line 66
    shl-int/lit8 p0, p0, 0x18

    .line 67
    .line 68
    shl-int/lit8 p1, v2, 0x10

    .line 69
    .line 70
    or-int/2addr p0, p1

    .line 71
    shl-int/lit8 p1, v5, 0x8

    .line 72
    .line 73
    or-int/2addr p0, p1

    .line 74
    or-int/2addr p0, v6

    .line 75
    return p0

    .line 76
    :cond_0
    shl-int/lit8 p0, p0, 0x18

    .line 77
    .line 78
    shl-int/lit8 p1, p2, 0x10

    .line 79
    .line 80
    or-int/2addr p0, p1

    .line 81
    shl-int/lit8 p1, v5, 0x8

    .line 82
    .line 83
    or-int/2addr p0, p1

    .line 84
    or-int/2addr p0, v2

    .line 85
    return p0

    .line 86
    :cond_1
    shl-int/lit8 p0, p0, 0x18

    .line 87
    .line 88
    shl-int/lit8 p1, v5, 0x10

    .line 89
    .line 90
    or-int/2addr p0, p1

    .line 91
    shl-int/lit8 p1, v6, 0x8

    .line 92
    .line 93
    or-int/2addr p0, p1

    .line 94
    or-int/2addr p0, v2

    .line 95
    return p0

    .line 96
    :cond_2
    shl-int/lit8 p0, p0, 0x18

    .line 97
    .line 98
    shl-int/lit8 p1, v5, 0x10

    .line 99
    .line 100
    or-int/2addr p0, p1

    .line 101
    shl-int/lit8 p1, v2, 0x8

    .line 102
    .line 103
    or-int/2addr p0, p1

    .line 104
    or-int/2addr p0, p2

    .line 105
    return p0

    .line 106
    :cond_3
    shl-int/lit8 p0, p0, 0x18

    .line 107
    .line 108
    shl-int/lit8 p1, v6, 0x10

    .line 109
    .line 110
    or-int/2addr p0, p1

    .line 111
    shl-int/lit8 p1, v2, 0x8

    .line 112
    .line 113
    or-int/2addr p0, p1

    .line 114
    or-int/2addr p0, v5

    .line 115
    return p0

    .line 116
    :cond_4
    shl-int/lit8 p0, p0, 0x18

    .line 117
    .line 118
    shl-int/lit8 p1, v2, 0x10

    .line 119
    .line 120
    or-int/2addr p0, p1

    .line 121
    shl-int/lit8 p1, p2, 0x8

    .line 122
    .line 123
    or-int/2addr p0, p1

    .line 124
    or-int/2addr p0, v5

    .line 125
    return p0
.end method


# virtual methods
.method public final onStep(FF[F)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 6
    .line 7
    iget v3, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 8
    .line 9
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    .line 10
    .line 11
    iget-boolean v5, v4, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/samsung/android/nexus/particle/emitter/Factor;->validate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v5, 0x0

    .line 19
    cmpl-float v6, p2, v5

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    iget-object v8, v4, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    .line 23
    .line 24
    if-nez v6, :cond_1

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_1
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 29
    .line 30
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 31
    .line 32
    array-length v9, v6

    .line 33
    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    .line 34
    .line 35
    move v10, v7

    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    :goto_0
    if-ge v10, v9, :cond_5

    .line 39
    .line 40
    aget-object v11, v6, v10

    .line 41
    .line 42
    aget-boolean v12, v4, v10

    .line 43
    .line 44
    if-eqz v12, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget v12, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 48
    .line 49
    aget v13, v8, v12

    .line 50
    .line 51
    iget v14, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 52
    .line 53
    aget v15, v8, v14

    .line 54
    .line 55
    mul-float v15, v15, p2

    .line 56
    .line 57
    add-float/2addr v15, v13

    .line 58
    aput v15, v8, v12

    .line 59
    .line 60
    aget v12, v8, v14

    .line 61
    .line 62
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 63
    .line 64
    aget v11, v8, v11

    .line 65
    .line 66
    mul-float v11, v11, p2

    .line 67
    .line 68
    add-float/2addr v11, v12

    .line 69
    aput v11, v8, v14

    .line 70
    .line 71
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    :goto_2
    if-ge v10, v9, :cond_5

    .line 75
    .line 76
    aget-object v11, v6, v10

    .line 77
    .line 78
    iget v12, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    .line 79
    .line 80
    aget v13, p3, v12

    .line 81
    .line 82
    iget v14, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 83
    .line 84
    aget v15, p3, v14

    .line 85
    .line 86
    aget-boolean v16, v4, v10

    .line 87
    .line 88
    if-eqz v16, :cond_4

    .line 89
    .line 90
    cmpl-float v16, v5, v13

    .line 91
    .line 92
    if-nez v16, :cond_4

    .line 93
    .line 94
    cmpl-float v16, v5, v15

    .line 95
    .line 96
    if-nez v16, :cond_4

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 100
    .line 101
    aget v16, v8, v11

    .line 102
    .line 103
    aget v17, v8, v12

    .line 104
    .line 105
    add-float v17, v17, v13

    .line 106
    .line 107
    mul-float v17, v17, p2

    .line 108
    .line 109
    add-float v17, v17, v16

    .line 110
    .line 111
    aput v17, v8, v11

    .line 112
    .line 113
    aget v11, v8, v12

    .line 114
    .line 115
    aget v13, v8, v14

    .line 116
    .line 117
    add-float/2addr v13, v15

    .line 118
    mul-float v13, v13, p2

    .line 119
    .line 120
    add-float/2addr v13, v11

    .line 121
    aput v13, v8, v12

    .line 122
    .line 123
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 127
    .line 128
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 129
    .line 130
    aget v4, v8, v4

    .line 131
    .line 132
    :goto_4
    const/high16 v6, 0x43b40000    # 360.0f

    .line 133
    .line 134
    cmpg-float v9, v4, v6

    .line 135
    .line 136
    if-gez v9, :cond_6

    .line 137
    .line 138
    add-float/2addr v4, v6

    .line 139
    goto :goto_4

    .line 140
    :cond_6
    :goto_5
    cmpl-float v9, v4, v6

    .line 141
    .line 142
    if-lez v9, :cond_7

    .line 143
    .line 144
    sub-float/2addr v4, v6

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 147
    .line 148
    iget v6, v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 149
    .line 150
    aput v4, v8, v6

    .line 151
    .line 152
    :goto_6
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    .line 153
    .line 154
    iget-object v6, v4, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const/4 v9, 0x1

    .line 161
    xor-int/2addr v4, v9

    .line 162
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 163
    .line 164
    iget v11, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 165
    .line 166
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 167
    .line 168
    aget-object v10, v6, v10

    .line 169
    .line 170
    if-eqz v10, :cond_8

    .line 171
    .line 172
    invoke-virtual {v10, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    aput v10, v8, v11

    .line 177
    .line 178
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_8
    aget v10, v8, v11

    .line 182
    .line 183
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 184
    .line 185
    :goto_7
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 186
    .line 187
    iget v11, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 188
    .line 189
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 190
    .line 191
    aget-object v10, v6, v10

    .line 192
    .line 193
    if-eqz v10, :cond_9

    .line 194
    .line 195
    invoke-virtual {v10, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    aput v10, v8, v11

    .line 200
    .line 201
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_9
    aget v10, v8, v11

    .line 205
    .line 206
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 207
    .line 208
    :goto_8
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    .line 209
    .line 210
    if-nez v10, :cond_b

    .line 211
    .line 212
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 213
    .line 214
    iget v11, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 215
    .line 216
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 217
    .line 218
    aget-object v10, v6, v10

    .line 219
    .line 220
    if-eqz v10, :cond_a

    .line 221
    .line 222
    invoke-virtual {v10, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    aput v10, v8, v11

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_a
    aget v10, v8, v11

    .line 230
    .line 231
    :goto_9
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 232
    .line 233
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 234
    .line 235
    aget v11, v8, v11

    .line 236
    .line 237
    iget v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    .line 238
    .line 239
    mul-float/2addr v12, v10

    .line 240
    add-float/2addr v12, v11

    .line 241
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 242
    .line 243
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 244
    .line 245
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 246
    .line 247
    aget v11, v8, v11

    .line 248
    .line 249
    iget v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    .line 250
    .line 251
    mul-float/2addr v12, v10

    .line 252
    add-float/2addr v12, v11

    .line 253
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_b
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 257
    .line 258
    iget v11, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 259
    .line 260
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 261
    .line 262
    aget-object v10, v6, v10

    .line 263
    .line 264
    if-eqz v10, :cond_c

    .line 265
    .line 266
    invoke-virtual {v10, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    aput v10, v8, v11

    .line 271
    .line 272
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_c
    aget v10, v8, v11

    .line 276
    .line 277
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 278
    .line 279
    :goto_a
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 280
    .line 281
    iget v11, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 282
    .line 283
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 284
    .line 285
    aget-object v10, v6, v10

    .line 286
    .line 287
    if-eqz v10, :cond_d

    .line 288
    .line 289
    invoke-virtual {v10, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    aput v10, v8, v11

    .line 294
    .line 295
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_d
    aget v10, v8, v11

    .line 299
    .line 300
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 301
    .line 302
    :goto_b
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 303
    .line 304
    iget v11, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 305
    .line 306
    iget v12, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 307
    .line 308
    aget-object v12, v6, v12

    .line 309
    .line 310
    if-eqz v12, :cond_e

    .line 311
    .line 312
    invoke-virtual {v12, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    aput v12, v8, v11

    .line 317
    .line 318
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 319
    .line 320
    goto :goto_c

    .line 321
    :cond_e
    aget v11, v8, v11

    .line 322
    .line 323
    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 324
    .line 325
    :goto_c
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 326
    .line 327
    iget v12, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 328
    .line 329
    iget v13, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 330
    .line 331
    aget-object v13, v6, v13

    .line 332
    .line 333
    if-eqz v13, :cond_f

    .line 334
    .line 335
    invoke-virtual {v13, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 336
    .line 337
    .line 338
    move-result v13

    .line 339
    aput v13, v8, v12

    .line 340
    .line 341
    iput v13, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 342
    .line 343
    goto :goto_d

    .line 344
    :cond_f
    aget v12, v8, v12

    .line 345
    .line 346
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 347
    .line 348
    :goto_d
    iget v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 349
    .line 350
    const/16 v13, 0xa

    .line 351
    .line 352
    if-nez v12, :cond_11

    .line 353
    .line 354
    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 355
    .line 356
    iget v14, v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 357
    .line 358
    iget v12, v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 359
    .line 360
    aget-object v12, v6, v12

    .line 361
    .line 362
    if-eqz v12, :cond_10

    .line 363
    .line 364
    invoke-virtual {v12, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    aput v12, v8, v14

    .line 369
    .line 370
    goto :goto_e

    .line 371
    :cond_10
    aget v12, v8, v14

    .line 372
    .line 373
    :goto_e
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 374
    .line 375
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 376
    .line 377
    goto :goto_10

    .line 378
    :cond_11
    if-ne v13, v12, :cond_14

    .line 379
    .line 380
    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 381
    .line 382
    iget v14, v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 383
    .line 384
    iget v12, v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 385
    .line 386
    aget-object v12, v6, v12

    .line 387
    .line 388
    if-eqz v12, :cond_12

    .line 389
    .line 390
    invoke-virtual {v12, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 391
    .line 392
    .line 393
    move-result v12

    .line 394
    aput v12, v8, v14

    .line 395
    .line 396
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 397
    .line 398
    goto :goto_f

    .line 399
    :cond_12
    aget v12, v8, v14

    .line 400
    .line 401
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 402
    .line 403
    :goto_f
    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 404
    .line 405
    iget v14, v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 406
    .line 407
    iget v12, v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 408
    .line 409
    aget-object v12, v6, v12

    .line 410
    .line 411
    if-eqz v12, :cond_13

    .line 412
    .line 413
    invoke-virtual {v12, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 414
    .line 415
    .line 416
    move-result v12

    .line 417
    aput v12, v8, v14

    .line 418
    .line 419
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 420
    .line 421
    goto :goto_10

    .line 422
    :cond_13
    aget v12, v8, v14

    .line 423
    .line 424
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 425
    .line 426
    :cond_14
    :goto_10
    if-eqz p3, :cond_16

    .line 427
    .line 428
    iget v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 429
    .line 430
    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 431
    .line 432
    iget v14, v14, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 433
    .line 434
    aget v14, p3, v14

    .line 435
    .line 436
    add-float/2addr v12, v14

    .line 437
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 438
    .line 439
    iget v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 440
    .line 441
    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 442
    .line 443
    iget v14, v14, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 444
    .line 445
    aget v14, p3, v14

    .line 446
    .line 447
    add-float/2addr v12, v14

    .line 448
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 449
    .line 450
    iget v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 451
    .line 452
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 453
    .line 454
    aget v10, p3, v10

    .line 455
    .line 456
    add-float/2addr v12, v10

    .line 457
    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 458
    .line 459
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 460
    .line 461
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 462
    .line 463
    aget v11, p3, v11

    .line 464
    .line 465
    mul-float/2addr v10, v11

    .line 466
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 467
    .line 468
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 469
    .line 470
    if-nez v10, :cond_15

    .line 471
    .line 472
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 473
    .line 474
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 475
    .line 476
    aget v10, p3, v10

    .line 477
    .line 478
    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 479
    .line 480
    mul-float/2addr v11, v10

    .line 481
    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 482
    .line 483
    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 484
    .line 485
    mul-float/2addr v11, v10

    .line 486
    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 487
    .line 488
    goto :goto_11

    .line 489
    :cond_15
    if-ne v13, v10, :cond_16

    .line 490
    .line 491
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 492
    .line 493
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 494
    .line 495
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 496
    .line 497
    aget v11, p3, v11

    .line 498
    .line 499
    mul-float/2addr v10, v11

    .line 500
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 501
    .line 502
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 503
    .line 504
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 505
    .line 506
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 507
    .line 508
    aget v11, p3, v11

    .line 509
    .line 510
    mul-float/2addr v10, v11

    .line 511
    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 512
    .line 513
    :cond_16
    :goto_11
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    .line 514
    .line 515
    const-string v11, "null key frame set"

    .line 516
    .line 517
    const/high16 v12, 0x437f0000    # 255.0f

    .line 518
    .line 519
    if-eq v10, v9, :cond_1b

    .line 520
    .line 521
    const/4 v14, 0x2

    .line 522
    if-eq v10, v14, :cond_19

    .line 523
    .line 524
    if-eq v10, v13, :cond_18

    .line 525
    .line 526
    const/16 v4, 0x14

    .line 527
    .line 528
    if-eq v10, v4, :cond_17

    .line 529
    .line 530
    goto/16 :goto_12

    .line 531
    .line 532
    :cond_17
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 533
    .line 534
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 535
    .line 536
    aget v4, v8, v4

    .line 537
    .line 538
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 539
    .line 540
    iget v6, v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 541
    .line 542
    aget v6, v8, v6

    .line 543
    .line 544
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 545
    .line 546
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 547
    .line 548
    aget v10, v8, v10

    .line 549
    .line 550
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 551
    .line 552
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 553
    .line 554
    aget v8, v8, v11

    .line 555
    .line 556
    invoke-static {v4, v6, v10, v8}, Lcom/samsung/android/nexus/particle/emitter/Status;->AHSVToColor(FFFF)I

    .line 557
    .line 558
    .line 559
    move-result v4

    .line 560
    iput v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 561
    .line 562
    goto/16 :goto_12

    .line 563
    .line 564
    :cond_18
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 565
    .line 566
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 567
    .line 568
    aget v4, v8, v4

    .line 569
    .line 570
    div-float/2addr v4, v12

    .line 571
    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 572
    .line 573
    iget v6, v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 574
    .line 575
    aget v6, v8, v6

    .line 576
    .line 577
    div-float/2addr v6, v12

    .line 578
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 579
    .line 580
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 581
    .line 582
    aget v10, v8, v10

    .line 583
    .line 584
    div-float/2addr v10, v12

    .line 585
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 586
    .line 587
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    .line 588
    .line 589
    aget v8, v8, v11

    .line 590
    .line 591
    div-float/2addr v8, v12

    .line 592
    invoke-static {v4, v6, v10, v8}, Landroid/graphics/Color;->argb(FFFF)I

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    iput v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 597
    .line 598
    goto :goto_12

    .line 599
    :cond_19
    if-eqz v4, :cond_1a

    .line 600
    .line 601
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 602
    .line 603
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 604
    .line 605
    aget-object v4, v6, v4

    .line 606
    .line 607
    invoke-virtual {v4, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 612
    .line 613
    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 614
    .line 615
    aget-object v8, v6, v8

    .line 616
    .line 617
    invoke-virtual {v8, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 618
    .line 619
    .line 620
    move-result v8

    .line 621
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 622
    .line 623
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 624
    .line 625
    aget-object v10, v6, v10

    .line 626
    .line 627
    invoke-virtual {v10, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 628
    .line 629
    .line 630
    move-result v10

    .line 631
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 632
    .line 633
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 634
    .line 635
    aget-object v6, v6, v11

    .line 636
    .line 637
    invoke-virtual {v6, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 638
    .line 639
    .line 640
    move-result v6

    .line 641
    invoke-static {v4, v8, v10, v6}, Lcom/samsung/android/nexus/particle/emitter/Status;->AHSVToColor(FFFF)I

    .line 642
    .line 643
    .line 644
    move-result v4

    .line 645
    iput v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 646
    .line 647
    goto :goto_12

    .line 648
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 649
    .line 650
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    throw v0

    .line 654
    :cond_1b
    if-eqz v4, :cond_1d

    .line 655
    .line 656
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 657
    .line 658
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 659
    .line 660
    aget-object v4, v6, v4

    .line 661
    .line 662
    invoke-virtual {v4, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 663
    .line 664
    .line 665
    move-result v4

    .line 666
    div-float/2addr v4, v12

    .line 667
    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 668
    .line 669
    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 670
    .line 671
    aget-object v8, v6, v8

    .line 672
    .line 673
    invoke-virtual {v8, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    div-float/2addr v8, v12

    .line 678
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 679
    .line 680
    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 681
    .line 682
    aget-object v10, v6, v10

    .line 683
    .line 684
    invoke-virtual {v10, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 685
    .line 686
    .line 687
    move-result v10

    .line 688
    div-float/2addr v10, v12

    .line 689
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 690
    .line 691
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    .line 692
    .line 693
    aget-object v6, v6, v11

    .line 694
    .line 695
    invoke-virtual {v6, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    .line 696
    .line 697
    .line 698
    move-result v6

    .line 699
    div-float/2addr v6, v12

    .line 700
    invoke-static {v4, v8, v10, v6}, Landroid/graphics/Color;->argb(FFFF)I

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    iput v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 705
    .line 706
    :goto_12
    iget v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 707
    .line 708
    iget v6, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 709
    .line 710
    mul-float/2addr v4, v6

    .line 711
    iput v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 712
    .line 713
    iget v6, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 714
    .line 715
    iget v8, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 716
    .line 717
    mul-float/2addr v6, v8

    .line 718
    iput v6, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 719
    .line 720
    iput-boolean v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 721
    .line 722
    const/high16 v8, 0x40000000    # 2.0f

    .line 723
    .line 724
    div-float/2addr v4, v8

    .line 725
    div-float/2addr v6, v8

    .line 726
    iget v8, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 727
    .line 728
    sub-float v9, v8, v4

    .line 729
    .line 730
    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 731
    .line 732
    sub-float v11, v10, v6

    .line 733
    .line 734
    add-float/2addr v8, v4

    .line 735
    add-float/2addr v10, v6

    .line 736
    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    .line 737
    .line 738
    invoke-virtual {v4, v9, v11, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 739
    .line 740
    .line 741
    iput-boolean v7, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 742
    .line 743
    cmpl-float v1, v1, v5

    .line 744
    .line 745
    if-lez v1, :cond_1c

    .line 746
    .line 747
    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 748
    .line 749
    iget v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 750
    .line 751
    sub-float/2addr v4, v2

    .line 752
    float-to-double v4, v4

    .line 753
    iget v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 754
    .line 755
    sub-float/2addr v2, v3

    .line 756
    float-to-double v2, v2

    .line 757
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 758
    .line 759
    .line 760
    move-result-wide v2

    .line 761
    double-to-float v2, v2

    .line 762
    div-float v2, v2, p2

    .line 763
    .line 764
    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 765
    .line 766
    sub-float/2addr v2, v1

    .line 767
    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    .line 768
    .line 769
    :cond_1c
    return-void

    .line 770
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 771
    .line 772
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    throw v0
.end method

.method public final reset()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    .line 10
    .line 11
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 12
    .line 13
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 14
    .line 15
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 16
    .line 17
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 22
    .line 23
    .line 24
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 25
    .line 26
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 27
    .line 28
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 29
    .line 30
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 31
    .line 32
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 33
    .line 34
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 35
    .line 36
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 37
    .line 38
    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 42
    .line 43
    const/16 v1, 0xa

    .line 44
    .line 45
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    .line 46
    .line 47
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 48
    .line 49
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/Factor;->reset()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Factor{drawingWidth="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", drawingHeight="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mUpdateBounds="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mBounds="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", width="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", height="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", posX="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", posY="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", alpha="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", rotation="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", scaleX="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", scaleY="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", speed="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", acc="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", color="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", scaleMode="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", colorMode="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", factorValueList="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", factorKeyFrameSetList="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    .line 189
    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const/16 p0, 0x7d

    .line 194
    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0
.end method
