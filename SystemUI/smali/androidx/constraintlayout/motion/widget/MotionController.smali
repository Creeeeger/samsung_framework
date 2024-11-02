.class public final Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

.field public mAttributeInterpolatorCount:[I

.field public mAttributeNames:[Ljava/lang/String;

.field public mAttributesMap:Ljava/util/HashMap;

.field public mCurveFitType:I

.field public mCycleMap:Ljava/util/HashMap;

.field public final mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public mForceMeasure:Z

.field public mId:I

.field public mInterpolateData:[D

.field public mInterpolateVariables:[I

.field public mInterpolateVelocity:[D

.field public final mKeyList:Ljava/util/ArrayList;

.field public mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field public final mMotionPaths:Ljava/util/ArrayList;

.field public mMotionStagger:F

.field public mNoMovement:Z

.field public mPathMotionArc:I

.field public mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field public mQuantizeMotionPhase:F

.field public mQuantizeMotionSteps:I

.field public mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public mStaggerOffset:F

.field public mStaggerScale:F

.field public final mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTimeCycleAttributesMap:Ljava/util/HashMap;

.field public mTransformPivotTarget:I

.field public mTransformPivotView:Landroid/view/View;

.field public final mValuesBuff:[F

.field public final mVelocity:[F

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 16
    .line 17
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 18
    .line 19
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 23
    .line 24
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 25
    .line 26
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 30
    .line 31
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 32
    .line 33
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 37
    .line 38
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 39
    .line 40
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 44
    .line 45
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 46
    .line 47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 51
    .line 52
    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    .line 54
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    new-array v3, v3, [F

    .line 58
    .line 59
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 60
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    new-array v3, v3, [F

    .line 70
    .line 71
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 72
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 79
    .line 80
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 81
    .line 82
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 86
    .line 87
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 88
    .line 89
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 90
    .line 91
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 94
    .line 95
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 108
    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    :cond_0
    return-void
.end method

.method public static rotate(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p0, v0, :cond_3

    .line 4
    .line 5
    if-eq p0, v1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x4

    .line 11
    if-eq p0, p2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget p2, p3, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    add-int/2addr p0, p2

    .line 20
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    add-int/2addr p2, v0

    .line 25
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, p2

    .line 30
    div-int/2addr v0, v1

    .line 31
    sub-int/2addr p1, v0

    .line 32
    iput p1, p4, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    sub-int/2addr p0, p1

    .line 39
    div-int/2addr p0, v1

    .line 40
    iput p0, p4, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    iget p0, p4, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-int/2addr p1, p0

    .line 49
    iput p1, p4, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget p0, p4, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p1, p0

    .line 58
    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_1
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    iget p1, p3, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    add-int/2addr p0, p1

    .line 67
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    div-int/2addr p1, v1

    .line 72
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    add-int/2addr p1, v0

    .line 75
    div-int/lit8 v0, p0, 0x2

    .line 76
    .line 77
    sub-int/2addr p1, v0

    .line 78
    iput p1, p4, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    add-int/2addr p1, p0

    .line 85
    div-int/2addr p1, v1

    .line 86
    sub-int/2addr p2, p1

    .line 87
    iput p2, p4, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    iget p0, p4, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    add-int/2addr p1, p0

    .line 96
    iput p1, p4, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    iget p0, p4, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    add-int/2addr p1, p0

    .line 105
    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    iget p2, p3, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    add-int/2addr p0, p2

    .line 113
    iget p2, p3, Landroid/graphics/Rect;->top:I

    .line 114
    .line 115
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    add-int/2addr p2, v0

    .line 118
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v0, p2

    .line 123
    div-int/2addr v0, v1

    .line 124
    sub-int/2addr p1, v0

    .line 125
    iput p1, p4, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    sub-int/2addr p0, p1

    .line 132
    div-int/2addr p0, v1

    .line 133
    iput p0, p4, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    iget p0, p4, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    add-int/2addr p1, p0

    .line 142
    iput p1, p4, Landroid/graphics/Rect;->right:I

    .line 143
    .line 144
    iget p0, p4, Landroid/graphics/Rect;->top:I

    .line 145
    .line 146
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    add-int/2addr p1, p0

    .line 151
    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 155
    .line 156
    iget p1, p3, Landroid/graphics/Rect;->right:I

    .line 157
    .line 158
    add-int/2addr p0, p1

    .line 159
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 162
    .line 163
    add-int/2addr p1, v0

    .line 164
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    sub-int/2addr p1, v0

    .line 169
    div-int/2addr p1, v1

    .line 170
    iput p1, p4, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    add-int/2addr p1, p0

    .line 177
    div-int/2addr p1, v1

    .line 178
    sub-int/2addr p2, p1

    .line 179
    iput p2, p4, Landroid/graphics/Rect;->top:I

    .line 180
    .line 181
    iget p0, p4, Landroid/graphics/Rect;->left:I

    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    add-int/2addr p1, p0

    .line 188
    iput p1, p4, Landroid/graphics/Rect;->right:I

    .line 189
    .line 190
    iget p0, p4, Landroid/graphics/Rect;->top:I

    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    add-int/2addr p1, p0

    .line 197
    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 198
    .line 199
    :goto_0
    return-void
.end method


# virtual methods
.method public final addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdjustedPosition(F[F)F
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    aput v2, p2, v1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 11
    .line 12
    float-to-double v4, v3

    .line 13
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 14
    .line 15
    cmpl-double v4, v4, v6

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 20
    .line 21
    cmpg-float v5, p1, v4

    .line 22
    .line 23
    if-gez v5, :cond_1

    .line 24
    .line 25
    move p1, v0

    .line 26
    :cond_1
    cmpl-float v5, p1, v4

    .line 27
    .line 28
    if-lez v5, :cond_2

    .line 29
    .line 30
    float-to-double v8, p1

    .line 31
    cmpg-double v5, v8, v6

    .line 32
    .line 33
    if-gez v5, :cond_2

    .line 34
    .line 35
    sub-float/2addr p1, v4

    .line 36
    mul-float/2addr p1, v3

    .line 37
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 42
    .line 43
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 52
    .line 53
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_5

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 64
    .line 65
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 70
    .line 71
    cmpg-float v8, v7, p1

    .line 72
    .line 73
    if-gez v8, :cond_4

    .line 74
    .line 75
    move-object v3, v6

    .line 76
    move v0, v7

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    if-eqz v3, :cond_8

    .line 88
    .line 89
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    move v2, v4

    .line 97
    :goto_2
    sub-float/2addr p1, v0

    .line 98
    sub-float/2addr v2, v0

    .line 99
    div-float/2addr p1, v2

    .line 100
    float-to-double p0, p1

    .line 101
    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    double-to-float v4, v4

    .line 106
    mul-float/2addr v4, v2

    .line 107
    add-float/2addr v0, v4

    .line 108
    if-eqz p2, :cond_7

    .line 109
    .line 110
    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide p0

    .line 114
    double-to-float p0, p0

    .line 115
    aput p0, p2, v1

    .line 116
    .line 117
    :cond_7
    move p1, v0

    .line 118
    :cond_8
    return p1
.end method

.method public final getCenter(D[F[F)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    new-array v5, v4, [D

    .line 9
    .line 10
    new-array v6, v4, [D

    .line 11
    .line 12
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    aget-object v7, v7, v8

    .line 16
    .line 17
    invoke-virtual {v7, v1, v2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 21
    .line 22
    aget-object v7, v7, v8

    .line 23
    .line 24
    invoke-virtual {v7, v1, v2, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 29
    .line 30
    .line 31
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 34
    .line 35
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 36
    .line 37
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 38
    .line 39
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 40
    .line 41
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 42
    .line 43
    move v15, v7

    .line 44
    move/from16 v16, v15

    .line 45
    .line 46
    move v14, v8

    .line 47
    move/from16 v8, v16

    .line 48
    .line 49
    :goto_0
    array-length v4, v9

    .line 50
    if-ge v14, v4, :cond_4

    .line 51
    .line 52
    aget-wide v3, v5, v14

    .line 53
    .line 54
    double-to-float v3, v3

    .line 55
    move/from16 v17, v3

    .line 56
    .line 57
    aget-wide v3, v6, v14

    .line 58
    .line 59
    double-to-float v3, v3

    .line 60
    aget v4, v9, v14

    .line 61
    .line 62
    move/from16 v18, v3

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    if-eq v4, v3, :cond_3

    .line 66
    .line 67
    const/4 v3, 0x2

    .line 68
    if-eq v4, v3, :cond_2

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    if-eq v4, v3, :cond_1

    .line 72
    .line 73
    const/4 v3, 0x4

    .line 74
    if-eq v4, v3, :cond_0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    move/from16 v13, v17

    .line 78
    .line 79
    move/from16 v16, v18

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v3, 0x4

    .line 83
    move/from16 v12, v17

    .line 84
    .line 85
    move/from16 v15, v18

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v3, 0x4

    .line 89
    move/from16 v11, v17

    .line 90
    .line 91
    move/from16 v8, v18

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 v3, 0x4

    .line 95
    move/from16 v10, v17

    .line 96
    .line 97
    move/from16 v7, v18

    .line 98
    .line 99
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 100
    .line 101
    move-object/from16 v3, p4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    .line 105
    .line 106
    div-float/2addr v15, v3

    .line 107
    add-float/2addr v15, v7

    .line 108
    div-float v16, v16, v3

    .line 109
    .line 110
    add-float v16, v16, v8

    .line 111
    .line 112
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    const/4 v4, 0x2

    .line 117
    new-array v5, v4, [F

    .line 118
    .line 119
    new-array v4, v4, [F

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2, v5, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    aget v1, v5, v0

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    aget v5, v5, v2

    .line 129
    .line 130
    aget v6, v4, v0

    .line 131
    .line 132
    aget v0, v4, v2

    .line 133
    .line 134
    float-to-double v1, v1

    .line 135
    float-to-double v9, v10

    .line 136
    float-to-double v14, v11

    .line 137
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 138
    .line 139
    .line 140
    move-result-wide v17

    .line 141
    mul-double v17, v17, v9

    .line 142
    .line 143
    add-double v17, v17, v1

    .line 144
    .line 145
    div-float v1, v12, v3

    .line 146
    .line 147
    float-to-double v1, v1

    .line 148
    sub-double v1, v17, v1

    .line 149
    .line 150
    double-to-float v1, v1

    .line 151
    float-to-double v4, v5

    .line 152
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v17

    .line 156
    mul-double v17, v17, v9

    .line 157
    .line 158
    sub-double v4, v4, v17

    .line 159
    .line 160
    div-float v2, v13, v3

    .line 161
    .line 162
    float-to-double v9, v2

    .line 163
    sub-double/2addr v4, v9

    .line 164
    double-to-float v11, v4

    .line 165
    float-to-double v4, v6

    .line 166
    float-to-double v6, v7

    .line 167
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 168
    .line 169
    .line 170
    move-result-wide v9

    .line 171
    mul-double/2addr v9, v6

    .line 172
    add-double/2addr v9, v4

    .line 173
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v4

    .line 177
    move/from16 v16, v1

    .line 178
    .line 179
    float-to-double v1, v8

    .line 180
    mul-double/2addr v4, v1

    .line 181
    add-double/2addr v4, v9

    .line 182
    double-to-float v4, v4

    .line 183
    float-to-double v8, v0

    .line 184
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 185
    .line 186
    .line 187
    move-result-wide v17

    .line 188
    mul-double v17, v17, v6

    .line 189
    .line 190
    sub-double v8, v8, v17

    .line 191
    .line 192
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 193
    .line 194
    .line 195
    move-result-wide v5

    .line 196
    mul-double/2addr v5, v1

    .line 197
    add-double/2addr v5, v8

    .line 198
    double-to-float v0, v5

    .line 199
    move v15, v4

    .line 200
    move/from16 v10, v16

    .line 201
    .line 202
    move/from16 v16, v0

    .line 203
    .line 204
    :cond_5
    div-float/2addr v12, v3

    .line 205
    add-float/2addr v12, v10

    .line 206
    const/4 v0, 0x0

    .line 207
    add-float/2addr v12, v0

    .line 208
    const/4 v1, 0x0

    .line 209
    aput v12, p3, v1

    .line 210
    .line 211
    div-float/2addr v13, v3

    .line 212
    add-float/2addr v13, v11

    .line 213
    add-float/2addr v13, v0

    .line 214
    const/4 v0, 0x1

    .line 215
    aput v13, p3, v0

    .line 216
    .line 217
    aput v15, p4, v1

    .line 218
    .line 219
    aput v16, p4, v0

    .line 220
    .line 221
    return-void
.end method

.method public final getDpDt(FFF[F)V
    .locals 11

    .line 1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 2
    .line 3
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v3, :cond_3

    .line 13
    .line 14
    aget-object v3, v3, v5

    .line 15
    .line 16
    float-to-double v6, v2

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 18
    .line 19
    invoke-virtual {v3, v6, v7, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 23
    .line 24
    aget-object v2, v2, v5

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 27
    .line 28
    invoke-virtual {v2, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 29
    .line 30
    .line 31
    aget v1, v1, v5

    .line 32
    .line 33
    :goto_0
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 34
    .line 35
    array-length v2, v8

    .line 36
    if-ge v5, v2, :cond_0

    .line 37
    .line 38
    aget-wide v2, v8, v5

    .line 39
    .line 40
    float-to-double v9, v1

    .line 41
    mul-double/2addr v2, v9

    .line 42
    aput-wide v2, v8, v5

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 52
    .line 53
    array-length v3, v2

    .line 54
    if-lez v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, v6, v7, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 62
    .line 63
    invoke-virtual {v1, v6, v7, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 67
    .line 68
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 69
    .line 70
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move v0, p2

    .line 76
    move v1, p3

    .line 77
    move-object v2, p4

    .line 78
    move-object v4, v5

    .line 79
    move-object v5, v6

    .line 80
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 85
    .line 86
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move v0, p2

    .line 92
    move v1, p3

    .line 93
    move-object v2, p4

    .line 94
    move-object v4, v8

    .line 95
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 100
    .line 101
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 102
    .line 103
    iget v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 104
    .line 105
    sub-float/2addr v1, v2

    .line 106
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 107
    .line 108
    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 109
    .line 110
    sub-float/2addr v2, v3

    .line 111
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 112
    .line 113
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 114
    .line 115
    sub-float/2addr v3, v6

    .line 116
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 117
    .line 118
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 119
    .line 120
    sub-float/2addr v0, v4

    .line 121
    add-float/2addr v3, v1

    .line 122
    add-float/2addr v0, v2

    .line 123
    const/high16 v4, 0x3f800000    # 1.0f

    .line 124
    .line 125
    sub-float v6, v4, p2

    .line 126
    .line 127
    mul-float/2addr v6, v1

    .line 128
    mul-float/2addr v3, p2

    .line 129
    add-float/2addr v3, v6

    .line 130
    aput v3, p4, v5

    .line 131
    .line 132
    sub-float/2addr v4, p3

    .line 133
    mul-float/2addr v4, v2

    .line 134
    mul-float/2addr v0, p3

    .line 135
    add-float/2addr v0, v4

    .line 136
    const/4 v1, 0x1

    .line 137
    aput v0, p4, v1

    .line 138
    .line 139
    return-void
.end method

.method public final interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move/from16 v2, p1

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 13
    .line 14
    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v3, v5, :cond_3

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    div-float v3, v4, v3

    .line 21
    .line 22
    div-float v5, v2, v3

    .line 23
    .line 24
    float-to-double v5, v5

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    double-to-float v5, v5

    .line 30
    mul-float/2addr v5, v3

    .line 31
    rem-float/2addr v2, v3

    .line 32
    div-float/2addr v2, v3

    .line 33
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 42
    .line 43
    add-float/2addr v2, v6

    .line 44
    rem-float/2addr v2, v4

    .line 45
    :cond_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    float-to-double v8, v2

    .line 55
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 56
    .line 57
    cmpl-double v2, v8, v10

    .line 58
    .line 59
    if-lez v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v4, 0x0

    .line 63
    :goto_0
    mul-float/2addr v4, v3

    .line 64
    add-float v2, v4, v5

    .line 65
    .line 66
    :cond_3
    move v8, v2

    .line 67
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 90
    .line 91
    invoke-virtual {v3, v7, v8}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    move-object v11, v1

    .line 109
    move v12, v9

    .line 110
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 121
    .line 122
    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    move-object v11, v1

    .line 127
    check-cast v11, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move v2, v8

    .line 131
    move-wide/from16 v3, p2

    .line 132
    .line 133
    move-object/from16 v5, p4

    .line 134
    .line 135
    move-object/from16 v6, p5

    .line 136
    .line 137
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    or-int/2addr v12, v1

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move-object v11, v1

    .line 144
    move v12, v9

    .line 145
    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 146
    .line 147
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 148
    .line 149
    if-eqz v1, :cond_27

    .line 150
    .line 151
    aget-object v1, v1, v9

    .line 152
    .line 153
    float-to-double v13, v8

    .line 154
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 155
    .line 156
    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 160
    .line 161
    aget-object v1, v1, v9

    .line 162
    .line 163
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 164
    .line 165
    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 169
    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 173
    .line 174
    array-length v3, v2

    .line 175
    if-lez v3, :cond_8

    .line 176
    .line 177
    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 181
    .line 182
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 183
    .line 184
    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    .line 185
    .line 186
    .line 187
    :cond_8
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 188
    .line 189
    if-nez v1, :cond_1d

    .line 190
    .line 191
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 192
    .line 193
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 194
    .line 195
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 196
    .line 197
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 198
    .line 199
    iget v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 200
    .line 201
    iget v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 202
    .line 203
    iget v9, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 204
    .line 205
    iget v15, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 206
    .line 207
    move/from16 p1, v5

    .line 208
    .line 209
    array-length v5, v1

    .line 210
    if-eqz v5, :cond_9

    .line 211
    .line 212
    iget-object v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 213
    .line 214
    array-length v5, v5

    .line 215
    move/from16 v16, v6

    .line 216
    .line 217
    array-length v6, v1

    .line 218
    add-int/lit8 v6, v6, -0x1

    .line 219
    .line 220
    aget v6, v1, v6

    .line 221
    .line 222
    if-gt v5, v6, :cond_a

    .line 223
    .line 224
    array-length v5, v1

    .line 225
    add-int/lit8 v5, v5, -0x1

    .line 226
    .line 227
    aget v5, v1, v5

    .line 228
    .line 229
    add-int/lit8 v5, v5, 0x1

    .line 230
    .line 231
    new-array v6, v5, [D

    .line 232
    .line 233
    iput-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 234
    .line 235
    new-array v5, v5, [D

    .line 236
    .line 237
    iput-object v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_9
    move/from16 v16, v6

    .line 241
    .line 242
    :cond_a
    :goto_3
    iget-object v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 243
    .line 244
    move-object/from16 v17, v11

    .line 245
    .line 246
    move/from16 v18, v12

    .line 247
    .line 248
    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    .line 249
    .line 250
    invoke-static {v5, v11, v12}, Ljava/util/Arrays;->fill([DD)V

    .line 251
    .line 252
    .line 253
    const/4 v5, 0x0

    .line 254
    :goto_4
    array-length v6, v1

    .line 255
    if-ge v5, v6, :cond_b

    .line 256
    .line 257
    iget-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 258
    .line 259
    aget v11, v1, v5

    .line 260
    .line 261
    aget-wide v19, v2, v5

    .line 262
    .line 263
    aput-wide v19, v6, v11

    .line 264
    .line 265
    iget-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 266
    .line 267
    aget-wide v19, v3, v5

    .line 268
    .line 269
    aput-wide v19, v6, v11

    .line 270
    .line 271
    add-int/lit8 v5, v5, 0x1

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_b
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    const/4 v5, 0x0

    .line 278
    const/4 v6, 0x0

    .line 279
    const/4 v11, 0x0

    .line 280
    const/4 v12, 0x0

    .line 281
    move/from16 v19, v15

    .line 282
    .line 283
    move v15, v11

    .line 284
    move v11, v6

    .line 285
    move/from16 v6, p1

    .line 286
    .line 287
    move/from16 v27, v16

    .line 288
    .line 289
    move/from16 v16, v8

    .line 290
    .line 291
    move v8, v12

    .line 292
    move v12, v9

    .line 293
    move/from16 v9, v27

    .line 294
    .line 295
    :goto_5
    iget-object v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 296
    .line 297
    move/from16 v20, v4

    .line 298
    .line 299
    array-length v4, v0

    .line 300
    if-ge v5, v4, :cond_13

    .line 301
    .line 302
    aget-wide v21, v0, v5

    .line 303
    .line 304
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_c

    .line 309
    .line 310
    move/from16 p1, v1

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_c
    iget-object v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 314
    .line 315
    aget-wide v21, v0, v5

    .line 316
    .line 317
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    const-wide/16 v21, 0x0

    .line 322
    .line 323
    if-eqz v0, :cond_d

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_d
    iget-object v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 327
    .line 328
    aget-wide v23, v0, v5

    .line 329
    .line 330
    add-double v21, v23, v21

    .line 331
    .line 332
    :goto_6
    move/from16 p1, v1

    .line 333
    .line 334
    move-wide/from16 v0, v21

    .line 335
    .line 336
    double-to-float v0, v0

    .line 337
    iget-object v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 338
    .line 339
    move v4, v0

    .line 340
    aget-wide v0, v1, v5

    .line 341
    .line 342
    double-to-float v0, v0

    .line 343
    const/4 v1, 0x1

    .line 344
    if-eq v5, v1, :cond_12

    .line 345
    .line 346
    const/4 v1, 0x2

    .line 347
    if-eq v5, v1, :cond_11

    .line 348
    .line 349
    const/4 v1, 0x3

    .line 350
    if-eq v5, v1, :cond_10

    .line 351
    .line 352
    const/4 v1, 0x4

    .line 353
    if-eq v5, v1, :cond_f

    .line 354
    .line 355
    const/4 v0, 0x5

    .line 356
    if-eq v5, v0, :cond_e

    .line 357
    .line 358
    :goto_7
    goto :goto_8

    .line 359
    :cond_e
    move v1, v4

    .line 360
    goto :goto_9

    .line 361
    :cond_f
    move v15, v0

    .line 362
    move/from16 v19, v4

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_10
    move v11, v0

    .line 366
    move v12, v4

    .line 367
    goto :goto_8

    .line 368
    :cond_11
    move v8, v0

    .line 369
    move v9, v4

    .line 370
    :goto_8
    move/from16 v1, p1

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_12
    move/from16 v1, p1

    .line 374
    .line 375
    move v2, v0

    .line 376
    move v6, v4

    .line 377
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 378
    .line 379
    move/from16 v4, v20

    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_13
    move/from16 p1, v1

    .line 383
    .line 384
    iget-object v0, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 385
    .line 386
    if-eqz v0, :cond_16

    .line 387
    .line 388
    const/4 v1, 0x2

    .line 389
    new-array v4, v1, [F

    .line 390
    .line 391
    new-array v1, v1, [F

    .line 392
    .line 393
    invoke-virtual {v0, v13, v14, v4, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 394
    .line 395
    .line 396
    const/4 v0, 0x0

    .line 397
    aget v5, v4, v0

    .line 398
    .line 399
    const/4 v11, 0x1

    .line 400
    aget v4, v4, v11

    .line 401
    .line 402
    aget v0, v1, v0

    .line 403
    .line 404
    aget v1, v1, v11

    .line 405
    .line 406
    move-object/from16 v21, v10

    .line 407
    .line 408
    float-to-double v10, v5

    .line 409
    float-to-double v5, v6

    .line 410
    move-wide/from16 v22, v13

    .line 411
    .line 412
    float-to-double v13, v9

    .line 413
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 414
    .line 415
    .line 416
    move-result-wide v24

    .line 417
    mul-double v24, v24, v5

    .line 418
    .line 419
    add-double v24, v24, v10

    .line 420
    .line 421
    const/high16 v9, 0x40000000    # 2.0f

    .line 422
    .line 423
    div-float v9, v12, v9

    .line 424
    .line 425
    float-to-double v9, v9

    .line 426
    sub-double v9, v24, v9

    .line 427
    .line 428
    double-to-float v9, v9

    .line 429
    float-to-double v10, v4

    .line 430
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 431
    .line 432
    .line 433
    move-result-wide v24

    .line 434
    mul-double v24, v24, v5

    .line 435
    .line 436
    sub-double v10, v10, v24

    .line 437
    .line 438
    const/high16 v4, 0x40000000    # 2.0f

    .line 439
    .line 440
    div-float v4, v19, v4

    .line 441
    .line 442
    move-object/from16 v24, v3

    .line 443
    .line 444
    float-to-double v3, v4

    .line 445
    sub-double/2addr v10, v3

    .line 446
    double-to-float v3, v10

    .line 447
    float-to-double v10, v0

    .line 448
    move v0, v3

    .line 449
    float-to-double v2, v2

    .line 450
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 451
    .line 452
    .line 453
    move-result-wide v25

    .line 454
    mul-double v25, v25, v2

    .line 455
    .line 456
    add-double v25, v25, v10

    .line 457
    .line 458
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 459
    .line 460
    .line 461
    move-result-wide v10

    .line 462
    mul-double/2addr v10, v5

    .line 463
    move v4, v9

    .line 464
    float-to-double v8, v8

    .line 465
    mul-double/2addr v10, v8

    .line 466
    add-double v10, v10, v25

    .line 467
    .line 468
    double-to-float v10, v10

    .line 469
    move v11, v0

    .line 470
    float-to-double v0, v1

    .line 471
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 472
    .line 473
    .line 474
    move-result-wide v25

    .line 475
    mul-double v25, v25, v2

    .line 476
    .line 477
    sub-double v0, v0, v25

    .line 478
    .line 479
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 480
    .line 481
    .line 482
    move-result-wide v2

    .line 483
    mul-double/2addr v2, v5

    .line 484
    mul-double/2addr v2, v8

    .line 485
    add-double/2addr v2, v0

    .line 486
    double-to-float v0, v2

    .line 487
    move-object/from16 v1, v24

    .line 488
    .line 489
    array-length v2, v1

    .line 490
    const/4 v3, 0x2

    .line 491
    if-lt v2, v3, :cond_14

    .line 492
    .line 493
    float-to-double v2, v10

    .line 494
    const/4 v5, 0x0

    .line 495
    aput-wide v2, v1, v5

    .line 496
    .line 497
    float-to-double v2, v0

    .line 498
    const/4 v5, 0x1

    .line 499
    aput-wide v2, v1, v5

    .line 500
    .line 501
    :cond_14
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-nez v1, :cond_15

    .line 506
    .line 507
    move/from16 v1, p1

    .line 508
    .line 509
    float-to-double v1, v1

    .line 510
    float-to-double v5, v0

    .line 511
    float-to-double v8, v10

    .line 512
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 513
    .line 514
    .line 515
    move-result-wide v5

    .line 516
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 517
    .line 518
    .line 519
    move-result-wide v5

    .line 520
    add-double/2addr v5, v1

    .line 521
    double-to-float v0, v5

    .line 522
    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    .line 523
    .line 524
    .line 525
    :cond_15
    move v6, v4

    .line 526
    move v9, v11

    .line 527
    goto :goto_a

    .line 528
    :cond_16
    move/from16 v1, p1

    .line 529
    .line 530
    move-object/from16 v21, v10

    .line 531
    .line 532
    move-wide/from16 v22, v13

    .line 533
    .line 534
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-nez v0, :cond_17

    .line 539
    .line 540
    const/high16 v0, 0x40000000    # 2.0f

    .line 541
    .line 542
    div-float/2addr v11, v0

    .line 543
    add-float/2addr v11, v2

    .line 544
    div-float/2addr v15, v0

    .line 545
    add-float/2addr v15, v8

    .line 546
    const/4 v0, 0x0

    .line 547
    float-to-double v2, v0

    .line 548
    float-to-double v0, v1

    .line 549
    float-to-double v4, v15

    .line 550
    float-to-double v10, v11

    .line 551
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 552
    .line 553
    .line 554
    move-result-wide v4

    .line 555
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 556
    .line 557
    .line 558
    move-result-wide v4

    .line 559
    add-double/2addr v4, v0

    .line 560
    add-double/2addr v4, v2

    .line 561
    double-to-float v0, v4

    .line 562
    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    .line 563
    .line 564
    .line 565
    :cond_17
    :goto_a
    instance-of v0, v7, Landroidx/constraintlayout/motion/widget/FloatLayout;

    .line 566
    .line 567
    if-eqz v0, :cond_18

    .line 568
    .line 569
    add-float/2addr v12, v6

    .line 570
    add-float v0, v9, v19

    .line 571
    .line 572
    move-object v1, v7

    .line 573
    check-cast v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    .line 574
    .line 575
    check-cast v1, Landroidx/constraintlayout/utils/widget/MotionLabel;

    .line 576
    .line 577
    invoke-virtual {v1, v6, v9, v12, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->layout(FFFF)V

    .line 578
    .line 579
    .line 580
    goto :goto_d

    .line 581
    :cond_18
    const/high16 v0, 0x3f000000    # 0.5f

    .line 582
    .line 583
    add-float/2addr v6, v0

    .line 584
    float-to-int v1, v6

    .line 585
    add-float/2addr v9, v0

    .line 586
    float-to-int v0, v9

    .line 587
    add-float/2addr v6, v12

    .line 588
    float-to-int v2, v6

    .line 589
    add-float v9, v9, v19

    .line 590
    .line 591
    float-to-int v3, v9

    .line 592
    sub-int v4, v2, v1

    .line 593
    .line 594
    sub-int v5, v3, v0

    .line 595
    .line 596
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    if-ne v4, v6, :cond_1a

    .line 601
    .line 602
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    if-eq v5, v6, :cond_19

    .line 607
    .line 608
    goto :goto_b

    .line 609
    :cond_19
    const/4 v6, 0x0

    .line 610
    goto :goto_c

    .line 611
    :cond_1a
    :goto_b
    const/4 v6, 0x1

    .line 612
    :goto_c
    if-nez v6, :cond_1b

    .line 613
    .line 614
    if-eqz v20, :cond_1c

    .line 615
    .line 616
    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    .line 617
    .line 618
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    .line 627
    .line 628
    .line 629
    :cond_1c
    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 630
    .line 631
    .line 632
    :goto_d
    const/4 v0, 0x0

    .line 633
    move-object/from16 v8, p0

    .line 634
    .line 635
    iput-boolean v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 636
    .line 637
    goto :goto_e

    .line 638
    :cond_1d
    move/from16 v16, v8

    .line 639
    .line 640
    move-object/from16 v21, v10

    .line 641
    .line 642
    move-object/from16 v17, v11

    .line 643
    .line 644
    move/from16 v18, v12

    .line 645
    .line 646
    move-wide/from16 v22, v13

    .line 647
    .line 648
    move-object v8, v0

    .line 649
    :goto_e
    iget v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 650
    .line 651
    const/4 v1, -0x1

    .line 652
    if-eq v0, v1, :cond_1f

    .line 653
    .line 654
    iget-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 655
    .line 656
    if-nez v0, :cond_1e

    .line 657
    .line 658
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    check-cast v0, Landroid/view/View;

    .line 663
    .line 664
    iget v1, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 665
    .line 666
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    iput-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 671
    .line 672
    :cond_1e
    iget-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 673
    .line 674
    if-eqz v0, :cond_1f

    .line 675
    .line 676
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    iget-object v1, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 681
    .line 682
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    add-int/2addr v1, v0

    .line 687
    int-to-float v0, v1

    .line 688
    const/high16 v1, 0x40000000    # 2.0f

    .line 689
    .line 690
    div-float/2addr v0, v1

    .line 691
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 692
    .line 693
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 698
    .line 699
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 700
    .line 701
    .line 702
    move-result v3

    .line 703
    add-int/2addr v3, v2

    .line 704
    int-to-float v2, v3

    .line 705
    div-float/2addr v2, v1

    .line 706
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getRight()I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    sub-int/2addr v1, v3

    .line 715
    if-lez v1, :cond_1f

    .line 716
    .line 717
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBottom()I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    sub-int/2addr v1, v3

    .line 726
    if-lez v1, :cond_1f

    .line 727
    .line 728
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    .line 729
    .line 730
    .line 731
    move-result v1

    .line 732
    int-to-float v1, v1

    .line 733
    sub-float/2addr v2, v1

    .line 734
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    int-to-float v1, v1

    .line 739
    sub-float/2addr v0, v1

    .line 740
    invoke-virtual {v7, v2}, Landroid/view/View;->setPivotX(F)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v7, v0}, Landroid/view/View;->setPivotY(F)V

    .line 744
    .line 745
    .line 746
    :cond_1f
    iget-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 747
    .line 748
    if-eqz v0, :cond_21

    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    if-eqz v1, :cond_21

    .line 763
    .line 764
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 769
    .line 770
    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    .line 771
    .line 772
    if-eqz v2, :cond_20

    .line 773
    .line 774
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 775
    .line 776
    array-length v3, v2

    .line 777
    const/4 v4, 0x1

    .line 778
    if-le v3, v4, :cond_20

    .line 779
    .line 780
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    .line 781
    .line 782
    const/4 v3, 0x0

    .line 783
    aget-wide v5, v2, v3

    .line 784
    .line 785
    aget-wide v2, v2, v4

    .line 786
    .line 787
    move/from16 v9, v16

    .line 788
    .line 789
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 794
    .line 795
    .line 796
    move-result-wide v2

    .line 797
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 798
    .line 799
    .line 800
    move-result-wide v2

    .line 801
    double-to-float v2, v2

    .line 802
    add-float/2addr v1, v2

    .line 803
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 804
    .line 805
    .line 806
    goto :goto_10

    .line 807
    :cond_20
    move/from16 v9, v16

    .line 808
    .line 809
    :goto_10
    move/from16 v16, v9

    .line 810
    .line 811
    goto :goto_f

    .line 812
    :cond_21
    move/from16 v9, v16

    .line 813
    .line 814
    if-eqz v17, :cond_22

    .line 815
    .line 816
    iget-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 817
    .line 818
    const/4 v1, 0x0

    .line 819
    aget-wide v10, v0, v1

    .line 820
    .line 821
    const/4 v1, 0x1

    .line 822
    aget-wide v12, v0, v1

    .line 823
    .line 824
    move-object/from16 v1, v17

    .line 825
    .line 826
    move v2, v9

    .line 827
    move-wide/from16 v3, p2

    .line 828
    .line 829
    move-object/from16 v5, p4

    .line 830
    .line 831
    move-object/from16 v6, p5

    .line 832
    .line 833
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 838
    .line 839
    .line 840
    move-result-wide v1

    .line 841
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    .line 842
    .line 843
    .line 844
    move-result-wide v1

    .line 845
    double-to-float v1, v1

    .line 846
    add-float/2addr v0, v1

    .line 847
    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    .line 848
    .line 849
    .line 850
    move-object/from16 v11, v17

    .line 851
    .line 852
    iget-boolean v0, v11, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 853
    .line 854
    or-int v0, v18, v0

    .line 855
    .line 856
    move v12, v0

    .line 857
    goto :goto_11

    .line 858
    :cond_22
    move/from16 v12, v18

    .line 859
    .line 860
    :goto_11
    const/4 v0, 0x1

    .line 861
    :goto_12
    iget-object v1, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 862
    .line 863
    array-length v2, v1

    .line 864
    if-ge v0, v2, :cond_23

    .line 865
    .line 866
    aget-object v1, v1, v0

    .line 867
    .line 868
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 869
    .line 870
    move-wide/from16 v3, v22

    .line 871
    .line 872
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 873
    .line 874
    .line 875
    move-object/from16 v1, v21

    .line 876
    .line 877
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 878
    .line 879
    iget-object v6, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 880
    .line 881
    add-int/lit8 v10, v0, -0x1

    .line 882
    .line 883
    aget-object v6, v6, v10

    .line 884
    .line 885
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 890
    .line 891
    invoke-static {v5, v7, v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 892
    .line 893
    .line 894
    add-int/lit8 v0, v0, 0x1

    .line 895
    .line 896
    goto :goto_12

    .line 897
    :cond_23
    iget-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 898
    .line 899
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    .line 900
    .line 901
    if-nez v1, :cond_26

    .line 902
    .line 903
    const/4 v1, 0x0

    .line 904
    cmpg-float v1, v9, v1

    .line 905
    .line 906
    if-gtz v1, :cond_24

    .line 907
    .line 908
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 909
    .line 910
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 911
    .line 912
    .line 913
    goto :goto_13

    .line 914
    :cond_24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 915
    .line 916
    cmpl-float v1, v9, v1

    .line 917
    .line 918
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 919
    .line 920
    if-ltz v1, :cond_25

    .line 921
    .line 922
    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 923
    .line 924
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 925
    .line 926
    .line 927
    goto :goto_13

    .line 928
    :cond_25
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 929
    .line 930
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 931
    .line 932
    if-eq v1, v0, :cond_26

    .line 933
    .line 934
    const/4 v0, 0x0

    .line 935
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 936
    .line 937
    .line 938
    :cond_26
    :goto_13
    iget-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 939
    .line 940
    if-eqz v0, :cond_2a

    .line 941
    .line 942
    const/4 v0, 0x0

    .line 943
    :goto_14
    iget-object v1, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 944
    .line 945
    array-length v2, v1

    .line 946
    if-ge v0, v2, :cond_2a

    .line 947
    .line 948
    aget-object v1, v1, v0

    .line 949
    .line 950
    invoke-virtual {v1, v7, v9}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(Landroid/view/View;F)V

    .line 951
    .line 952
    .line 953
    add-int/lit8 v0, v0, 0x1

    .line 954
    .line 955
    goto :goto_14

    .line 956
    :cond_27
    move v9, v8

    .line 957
    move-object v1, v10

    .line 958
    move/from16 v18, v12

    .line 959
    .line 960
    move-object v8, v0

    .line 961
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 962
    .line 963
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 964
    .line 965
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 966
    .line 967
    invoke-static {v3, v0, v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 972
    .line 973
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 974
    .line 975
    invoke-static {v4, v3, v9, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 976
    .line 977
    .line 978
    move-result v3

    .line 979
    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 980
    .line 981
    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 982
    .line 983
    invoke-static {v5, v4, v9, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 984
    .line 985
    .line 986
    move-result v6

    .line 987
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 988
    .line 989
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 990
    .line 991
    invoke-static {v2, v1, v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 992
    .line 993
    .line 994
    move-result v10

    .line 995
    const/high16 v11, 0x3f000000    # 0.5f

    .line 996
    .line 997
    add-float/2addr v0, v11

    .line 998
    float-to-int v12, v0

    .line 999
    add-float/2addr v3, v11

    .line 1000
    float-to-int v11, v3

    .line 1001
    add-float/2addr v0, v6

    .line 1002
    float-to-int v0, v0

    .line 1003
    add-float/2addr v3, v10

    .line 1004
    float-to-int v3, v3

    .line 1005
    sub-int v6, v0, v12

    .line 1006
    .line 1007
    sub-int v10, v3, v11

    .line 1008
    .line 1009
    cmpl-float v4, v5, v4

    .line 1010
    .line 1011
    if-nez v4, :cond_28

    .line 1012
    .line 1013
    cmpl-float v1, v2, v1

    .line 1014
    .line 1015
    if-nez v1, :cond_28

    .line 1016
    .line 1017
    iget-boolean v1, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 1018
    .line 1019
    if-eqz v1, :cond_29

    .line 1020
    .line 1021
    :cond_28
    const/high16 v1, 0x40000000    # 2.0f

    .line 1022
    .line 1023
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1024
    .line 1025
    .line 1026
    move-result v2

    .line 1027
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    invoke-virtual {v7, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1032
    .line 1033
    .line 1034
    const/4 v1, 0x0

    .line 1035
    iput-boolean v1, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 1036
    .line 1037
    :cond_29
    invoke-virtual {v7, v12, v11, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 1038
    .line 1039
    .line 1040
    move/from16 v12, v18

    .line 1041
    .line 1042
    :cond_2a
    iget-object v0, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1043
    .line 1044
    if-eqz v0, :cond_2c

    .line 1045
    .line 1046
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    if-eqz v1, :cond_2c

    .line 1059
    .line 1060
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 1065
    .line 1066
    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    .line 1067
    .line 1068
    if-eqz v2, :cond_2b

    .line 1069
    .line 1070
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    .line 1071
    .line 1072
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 1073
    .line 1074
    const/4 v3, 0x0

    .line 1075
    aget-wide v3, v2, v3

    .line 1076
    .line 1077
    const/4 v5, 0x1

    .line 1078
    aget-wide v5, v2, v5

    .line 1079
    .line 1080
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v2

    .line 1088
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 1089
    .line 1090
    .line 1091
    move-result-wide v2

    .line 1092
    double-to-float v2, v2

    .line 1093
    add-float/2addr v1, v2

    .line 1094
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 1095
    .line 1096
    .line 1097
    goto :goto_15

    .line 1098
    :cond_2b
    invoke-virtual {v1, v7, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_15

    .line 1102
    :cond_2c
    return v12
.end method

.method public final readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    int-to-float v1, v1

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    int-to-float p0, p0

    .line 31
    invoke-virtual {p1, v0, v1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setup(IIJ)V
    .locals 46

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 7
    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 8
    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    .line 9
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-static {v7, v9}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v7

    const-string v9, "alpha"

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-static {v7, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v7

    const-string v10, "elevation"

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget v11, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v7, v11, :cond_4

    iget v12, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v12, :cond_4

    if-eqz v7, :cond_3

    if-nez v11, :cond_4

    .line 14
    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    iget v11, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-static {v7, v11}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v7

    const-string/jumbo v11, "rotation"

    if-eqz v7, :cond_5

    .line 16
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string/jumbo v12, "transitionPathRotate"

    if-eqz v7, :cond_6

    iget v7, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_7

    .line 18
    :cond_6
    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string/jumbo v13, "progress"

    if-eqz v7, :cond_8

    iget v7, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    .line 20
    :cond_8
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_9
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    iget v14, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-static {v7, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v7

    const-string/jumbo v14, "rotationX"

    if-eqz v7, :cond_a

    .line 22
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_a
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget v15, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-static {v7, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v7

    const-string/jumbo v15, "rotationY"

    if-eqz v7, :cond_b

    .line 24
    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_b
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    move-object/from16 v16, v6

    iget v6, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v7, v6}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "transformPivotX"

    .line 26
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_c
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    iget v7, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v6, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "transformPivotY"

    .line 28
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_d
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    iget v7, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-static {v6, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v6

    const-string/jumbo v7, "scaleX"

    if-eqz v6, :cond_e

    .line 30
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_e
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    move-object/from16 v17, v14

    iget v14, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-static {v6, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v6

    const-string/jumbo v14, "scaleY"

    if-eqz v6, :cond_f

    .line 32
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_f
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    move-object/from16 v18, v15

    iget v15, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-static {v6, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v6

    const-string/jumbo v15, "translationX"

    if-eqz v6, :cond_10

    .line 34
    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_10
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    move-object/from16 v19, v15

    iget v15, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-static {v6, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v6

    const-string/jumbo v15, "translationY"

    if-eqz v6, :cond_11

    .line 36
    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_11
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget v6, v8, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    invoke-static {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v5

    const-string/jumbo v6, "translationZ"

    if-eqz v5, :cond_12

    .line 38
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_12
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    const/16 v20, 0x0

    if-eqz v5, :cond_1b

    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v22, v20

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v15

    move-object/from16 v15, v23

    check-cast v15, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v23, v6

    .line 41
    instance-of v6, v15, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v6, :cond_14

    .line 42
    check-cast v15, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 43
    new-instance v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v31, v13

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v32, v7

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v25, v6

    move/from16 v26, p1

    move/from16 v27, p2

    move-object/from16 v28, v15

    move-object/from16 v29, v13

    move-object/from16 v30, v7

    invoke-direct/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 44
    invoke-static {v8, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_13

    .line 45
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    const-string v14, " KeyPath position \""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, "\" outside of range"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "MotionController"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_13
    move-object/from16 v25, v14

    :goto_1
    neg-int v7, v7

    const/4 v13, -0x1

    add-int/2addr v7, v13

    .line 46
    invoke-virtual {v8, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    iget v6, v15, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    if-eq v6, v13, :cond_19

    .line 48
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    goto :goto_2

    :cond_14
    move-object/from16 v32, v7

    move-object/from16 v31, v13

    move-object/from16 v25, v14

    .line 49
    instance-of v6, v15, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v6, :cond_15

    .line 50
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_2

    .line 51
    :cond_15
    instance-of v6, v15, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v6, :cond_16

    .line 52
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_2

    .line 53
    :cond_16
    instance-of v6, v15, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v6, :cond_18

    if-nez v22, :cond_17

    .line 54
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    move-object/from16 v6, v22

    .line 55
    check-cast v15, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v6

    goto :goto_2

    .line 56
    :cond_18
    invoke-virtual {v15, v4}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    .line 57
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    :cond_19
    :goto_2
    move-object/from16 v6, v23

    move-object/from16 v15, v24

    move-object/from16 v14, v25

    move-object/from16 v13, v31

    move-object/from16 v7, v32

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v23, v6

    move-object/from16 v32, v7

    move-object/from16 v31, v13

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    move-object/from16 v6, v22

    goto :goto_3

    :cond_1b
    move-object/from16 v23, v6

    move-object/from16 v32, v7

    move-object/from16 v31, v13

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    move-object/from16 v6, v20

    :goto_3
    const/4 v7, 0x0

    if-eqz v6, :cond_1c

    new-array v7, v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 58
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 59
    :cond_1c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    const-string/jumbo v7, "waveOffset"

    const-string v13, "CUSTOM,"

    const/16 v21, 0x9

    const/16 v22, 0x8

    const/16 v26, 0x5

    const/16 v27, 0x4

    const/16 v28, 0x3

    if-nez v6, :cond_37

    .line 60
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 61
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v14, v29

    check-cast v14, Ljava/lang/String;

    .line 62
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 63
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v29, v6

    const-string v6, ","

    .line 64
    invoke-virtual {v14, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v30, 0x1

    aget-object v6, v6, v30

    .line 65
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1f

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v34, v3

    move-object/from16 v3, v33

    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v33, v2

    .line 66
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v2, :cond_1d

    goto :goto_6

    .line 67
    :cond_1d
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v2, :cond_1e

    .line 68
    iget v3, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v15, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1e
    :goto_6
    move-object/from16 v2, v33

    move-object/from16 v3, v34

    goto :goto_5

    :cond_1f
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    .line 69
    new-instance v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v2, v14, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v15, v23

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object v8, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    goto/16 :goto_12

    :cond_20
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v29, v6

    .line 70
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_7
    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    :goto_8
    move-object/from16 v23, v7

    move-object/from16 v25, v19

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    :goto_9
    move-object/from16 v8, v17

    :goto_a
    move-object/from16 v19, v18

    goto/16 :goto_f

    :sswitch_0
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_7

    :cond_21
    const/16 v2, 0xf

    goto :goto_b

    :sswitch_1
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_7

    :cond_22
    const/16 v2, 0xe

    goto :goto_b

    :sswitch_2
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_7

    :cond_23
    const/16 v2, 0xd

    goto :goto_b

    :sswitch_3
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_7

    :cond_24
    const/16 v2, 0xc

    goto :goto_b

    :sswitch_4
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_7

    :cond_25
    const/16 v2, 0xb

    goto :goto_b

    :sswitch_5
    const-string/jumbo v2, "transformPivotY"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_7

    :cond_26
    const/16 v2, 0xa

    goto :goto_b

    :sswitch_6
    const-string/jumbo v2, "transformPivotX"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_7

    :cond_27
    move/from16 v2, v21

    goto :goto_b

    :sswitch_7
    const-string/jumbo v2, "waveVariesBy"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_7

    :cond_28
    move/from16 v2, v22

    :goto_b
    move-object/from16 v15, v23

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move/from16 v17, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v19

    goto/16 :goto_e

    :sswitch_8
    move-object/from16 v2, v25

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    move-object/from16 v25, v19

    move-object/from16 v15, v23

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    :goto_c
    move-object/from16 v23, v7

    move-object/from16 v19, v18

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    :goto_d
    move-object/from16 v8, v17

    goto/16 :goto_f

    :cond_29
    const/4 v3, 0x7

    move-object/from16 v25, v19

    move-object/from16 v15, v23

    move-object/from16 v6, v31

    move-object/from16 v23, v7

    move-object/from16 v19, v18

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move/from16 v17, v3

    move-object/from16 v3, v32

    goto/16 :goto_10

    :sswitch_9
    move-object/from16 v2, v25

    move-object/from16 v3, v32

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v25, v19

    move-object/from16 v15, v23

    move-object/from16 v6, v31

    goto :goto_c

    :cond_2a
    const/4 v6, 0x6

    move-object/from16 v25, v19

    move-object/from16 v15, v23

    move-object/from16 v23, v7

    move-object/from16 v19, v18

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move/from16 v17, v6

    move-object/from16 v6, v31

    goto/16 :goto_10

    :sswitch_a
    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v25, v19

    if-nez v15, :cond_2b

    move-object/from16 v15, v23

    goto :goto_c

    :cond_2b
    move-object/from16 v15, v23

    move-object/from16 v23, v7

    move-object/from16 v19, v18

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move/from16 v17, v26

    goto/16 :goto_10

    :sswitch_b
    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2c

    goto/16 :goto_8

    :cond_2c
    move-object/from16 v23, v7

    move-object/from16 v25, v19

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move-object/from16 v19, v18

    move/from16 v17, v27

    goto/16 :goto_10

    :sswitch_c
    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v7, v24

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2d

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move-object/from16 v25, v19

    goto/16 :goto_a

    :cond_2d
    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move-object/from16 v25, v19

    move/from16 v17, v28

    goto :goto_e

    :sswitch_d
    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v19

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2e

    move-object/from16 v25, v8

    goto/16 :goto_9

    :cond_2e
    const/16 v19, 0x2

    move-object/from16 v25, v8

    move-object/from16 v8, v17

    move/from16 v17, v19

    :goto_e
    move-object/from16 v19, v18

    goto :goto_10

    :sswitch_e
    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v25, v19

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v18

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2f

    move-object/from16 v19, v8

    goto/16 :goto_d

    :cond_2f
    const/16 v18, 0x1

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move/from16 v17, v18

    goto :goto_10

    :sswitch_f
    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v25, v19

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move-object/from16 v19, v18

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_30

    goto :goto_f

    :cond_30
    const/16 v17, 0x0

    goto :goto_10

    :goto_f
    const/16 v17, -0x1

    :goto_10
    packed-switch v17, :pswitch_data_0

    move-object/from16 v17, v20

    goto/16 :goto_11

    .line 71
    :pswitch_0
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto :goto_11

    .line 72
    :pswitch_1
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto :goto_11

    .line 73
    :pswitch_2
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    goto :goto_11

    .line 74
    :pswitch_3
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    goto :goto_11

    .line 75
    :pswitch_4
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    goto :goto_11

    .line 76
    :pswitch_5
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    goto :goto_11

    .line 77
    :pswitch_6
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    goto :goto_11

    .line 78
    :pswitch_7
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto :goto_11

    .line 79
    :pswitch_8
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    goto :goto_11

    .line 80
    :pswitch_9
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    goto :goto_11

    .line 81
    :pswitch_a
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    goto :goto_11

    .line 82
    :pswitch_b
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    goto :goto_11

    .line 83
    :pswitch_c
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    goto :goto_11

    .line 84
    :pswitch_d
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    goto :goto_11

    .line 85
    :pswitch_e
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    goto :goto_11

    .line 86
    :pswitch_f
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    :goto_11
    move-object/from16 v18, v8

    move-object/from16 v8, v17

    :goto_12
    if-nez v8, :cond_31

    move-object/from16 v17, v7

    goto :goto_13

    .line 87
    :cond_31
    iput-object v14, v8, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

    move-object/from16 v17, v7

    .line 88
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    move-object/from16 v32, v3

    move-object/from16 v31, v6

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v6, v29

    move-object/from16 v3, v34

    move-object/from16 v23, v15

    move-object/from16 v24, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    move-object/from16 v25, v2

    move-object/from16 v2, v33

    goto/16 :goto_4

    :cond_32
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v25, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v24

    move-object/from16 v24, v8

    if-eqz v5, :cond_34

    .line 89
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_33
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    .line 90
    instance-of v14, v8, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v14, :cond_33

    .line 91
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v14}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    goto :goto_14

    .line 92
    :cond_34
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(ILjava/util/HashMap;)V

    .line 93
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v8, 0x64

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v14, v8, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(ILjava/util/HashMap;)V

    .line 94
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 95
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 96
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_35

    .line 97
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_16

    :cond_35
    const/4 v14, 0x0

    :goto_16
    move-object/from16 v29, v7

    .line 98
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-eqz v7, :cond_36

    .line 99
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    :cond_36
    move-object/from16 v7, v29

    goto :goto_15

    :cond_37
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v15, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    move-object/from16 v23, v7

    move-object/from16 v25, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v24

    move-object/from16 v24, v8

    .line 100
    :cond_38
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    const-string v8, "CUSTOM"

    if-nez v7, :cond_61

    .line 101
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v7, :cond_39

    .line 102
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 103
    :cond_39
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 104
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    goto :goto_17

    .line 105
    :cond_3a
    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 106
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v29, v1

    const-string v1, ","

    .line 107
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v30, 0x1

    aget-object v1, v1, v30

    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_18
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3d

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v13

    move-object/from16 v13, v31

    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v31, v4

    .line 109
    iget-object v4, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v4, :cond_3b

    goto :goto_19

    .line 110
    :cond_3b
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v4, :cond_3c

    .line 111
    iget v13, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v14, v13, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3c
    :goto_19
    move-object/from16 v4, v31

    move-object/from16 v13, v32

    goto :goto_18

    :cond_3d
    move-object/from16 v31, v4

    move-object/from16 v32, v13

    .line 112
    new-instance v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    invoke-direct {v1, v7, v14}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v14, v1

    move-object/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v19, v25

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    goto/16 :goto_20

    :cond_3e
    move-object/from16 v29, v1

    move-object/from16 v31, v4

    move-object/from16 v32, v13

    .line 113
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_1a
    move-object/from16 v1, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    :goto_1b
    move-object/from16 v4, v25

    goto/16 :goto_1d

    :sswitch_10
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_1a

    :cond_3f
    const/16 v1, 0xb

    goto :goto_1c

    :sswitch_11
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_1a

    :cond_40
    const/16 v1, 0xa

    goto :goto_1c

    :sswitch_12
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_1a

    :cond_41
    move/from16 v1, v21

    goto :goto_1c

    :sswitch_13
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_1a

    :cond_42
    move/from16 v1, v22

    goto :goto_1c

    :sswitch_14
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_1a

    :cond_43
    const/4 v1, 0x7

    goto :goto_1c

    :sswitch_15
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_1a

    :cond_44
    const/4 v1, 0x6

    :goto_1c
    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v4, v25

    move-object/from16 v45, v17

    move/from16 v17, v1

    move-object/from16 v1, v45

    goto/16 :goto_1e

    :sswitch_16
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_1a

    :cond_45
    move/from16 v1, v26

    goto :goto_1c

    :sswitch_17
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_1a

    :cond_46
    move-object/from16 v1, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v4, v25

    move/from16 v17, v27

    goto :goto_1e

    :sswitch_18
    move-object/from16 v1, v17

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    if-nez v4, :cond_47

    goto :goto_1b

    :cond_47
    move-object/from16 v4, v25

    move/from16 v17, v28

    goto :goto_1e

    :sswitch_19
    move-object/from16 v1, v17

    move-object/from16 v4, v25

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_48

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    goto :goto_1d

    :cond_48
    const/4 v13, 0x2

    move/from16 v17, v13

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    goto :goto_1e

    :sswitch_1a
    move-object/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v4, v25

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_49

    move-object/from16 v14, v18

    goto :goto_1d

    :cond_49
    const/4 v14, 0x1

    move/from16 v17, v14

    move-object/from16 v14, v18

    goto :goto_1e

    :sswitch_1b
    move-object/from16 v1, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v4, v25

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4a

    goto :goto_1d

    :cond_4a
    const/16 v17, 0x0

    goto :goto_1e

    :goto_1d
    const/16 v17, -0x1

    :goto_1e
    packed-switch v17, :pswitch_data_1

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v14

    move-wide/from16 v3, p3

    move-object/from16 v14, v20

    goto :goto_20

    .line 114
    :pswitch_10
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>()V

    goto :goto_1f

    .line 115
    :pswitch_11
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;-><init>()V

    goto :goto_1f

    .line 116
    :pswitch_12
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;-><init>()V

    goto :goto_1f

    .line 117
    :pswitch_13
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;-><init>()V

    goto :goto_1f

    .line 118
    :pswitch_14
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;-><init>()V

    goto :goto_1f

    .line 119
    :pswitch_15
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;-><init>()V

    goto :goto_1f

    .line 120
    :pswitch_16
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;-><init>()V

    goto :goto_1f

    .line 121
    :pswitch_17
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;-><init>()V

    goto :goto_1f

    .line 122
    :pswitch_18
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;-><init>()V

    goto :goto_1f

    .line 123
    :pswitch_19
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;-><init>()V

    goto :goto_1f

    .line 124
    :pswitch_1a
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;-><init>()V

    goto :goto_1f

    .line 125
    :pswitch_1b
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;-><init>()V

    :goto_1f
    move-object/from16 v19, v4

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    .line 126
    iput-wide v3, v14, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_time:J

    :goto_20
    if-nez v14, :cond_4b

    goto :goto_21

    .line 127
    :cond_4b
    iput-object v7, v14, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 128
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    move-object/from16 v3, v17

    move-object/from16 v25, v19

    move-object/from16 v4, v31

    move-object/from16 v17, v1

    move-object/from16 v19, v13

    move-object/from16 v1, v29

    move-object/from16 v13, v32

    goto/16 :goto_17

    :cond_4c
    move-object/from16 v31, v4

    move-object/from16 v32, v13

    move-object/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v19, v25

    move-object/from16 v17, v3

    if-eqz v5, :cond_5f

    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    .line 130
    instance-of v7, v4, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v7, :cond_5e

    .line 131
    check-cast v4, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_23
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 p3, v3

    move-object/from16 v3, v25

    check-cast v3, Ljava/lang/String;

    .line 133
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v35, v25

    check-cast v35, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    if-nez v35, :cond_4d

    move-object/from16 v30, v5

    move-object/from16 v25, v7

    move-object/from16 v29, v8

    move-object/from16 p4, v14

    move-object/from16 v0, v17

    move-object/from16 v17, v18

    move-object v7, v4

    move-object/from16 v18, v13

    move-object/from16 v4, v19

    goto/16 :goto_2d

    .line 134
    :cond_4d
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4f

    move-object/from16 v25, v7

    const/4 v7, 0x7

    .line 135
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v3, :cond_4e

    .line 137
    move-object/from16 v7, v35

    check-cast v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    move-object/from16 p4, v14

    iget v14, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    move-object/from16 v29, v8

    iget v8, v4, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    move-object/from16 v30, v5

    iget v5, v4, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v0, v4, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object/from16 v41, v4

    .line 138
    iget-object v4, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v4, v14, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 139
    iget-object v3, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/16 v35, 0x0

    aput v8, v4, v35

    const/4 v8, 0x1

    aput v0, v4, v8

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 140
    iget v0, v7, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v14, p4

    move-object/from16 v7, v25

    move-object/from16 v8, v29

    move-object/from16 v5, v30

    move-object/from16 v4, v41

    goto/16 :goto_23

    :cond_4e
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v7, v25

    goto/16 :goto_23

    :cond_4f
    move-object/from16 v41, v4

    move-object/from16 v30, v5

    move-object/from16 v25, v7

    move-object/from16 v29, v8

    move-object/from16 p4, v14

    .line 141
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :goto_24
    move-object/from16 v0, v17

    :goto_25
    move-object/from16 v5, v18

    move-object/from16 v4, v19

    goto/16 :goto_2b

    :sswitch_1c
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_24

    :cond_50
    move-object/from16 v0, v17

    const/16 v4, 0xb

    goto :goto_26

    :sswitch_1d
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_24

    :cond_51
    move-object/from16 v0, v17

    const/16 v4, 0xa

    goto :goto_26

    :sswitch_1e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_24

    :cond_52
    move-object/from16 v0, v17

    move/from16 v4, v21

    goto :goto_26

    :sswitch_1f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_24

    :cond_53
    move-object/from16 v0, v17

    move/from16 v4, v22

    goto :goto_26

    :sswitch_20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_24

    :cond_54
    const/4 v0, 0x7

    move v7, v0

    move-object/from16 v0, v17

    goto :goto_27

    :sswitch_21
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto :goto_28

    :cond_55
    const/4 v4, 0x6

    :goto_26
    move v7, v4

    :goto_27
    move-object/from16 v5, v18

    move-object/from16 v4, v19

    goto/16 :goto_2c

    :sswitch_22
    move-object/from16 v0, v17

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    :goto_28
    goto :goto_25

    :cond_56
    move/from16 v4, v26

    goto :goto_26

    :sswitch_23
    move-object/from16 v0, v17

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto :goto_28

    :cond_57
    move/from16 v4, v27

    goto :goto_26

    :sswitch_24
    move-object/from16 v0, v17

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    goto :goto_28

    :cond_58
    move/from16 v4, v28

    goto :goto_26

    :sswitch_25
    move-object/from16 v0, v17

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    goto :goto_29

    :cond_59
    const/4 v5, 0x2

    goto :goto_2a

    :sswitch_26
    move-object/from16 v0, v17

    move-object/from16 v4, v19

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    :goto_29
    move-object/from16 v5, v18

    goto :goto_2b

    :cond_5a
    const/4 v5, 0x1

    :goto_2a
    move v7, v5

    move-object/from16 v5, v18

    goto :goto_2c

    :sswitch_27
    move-object/from16 v0, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    goto :goto_2b

    :cond_5b
    const/4 v7, 0x0

    goto :goto_2c

    :goto_2b
    const/4 v7, -0x1

    :goto_2c
    packed-switch v7, :pswitch_data_2

    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "UNKNOWN addValues \""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "KeyTimeCycles"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    :pswitch_1c
    move-object/from16 v7, v41

    .line 143
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 144
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    move-object/from16 v17, v5

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    move-object/from16 v18, v13

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v8

    move/from16 v37, v14

    move/from16 v38, v13

    move/from16 v39, v3

    move/from16 v40, v5

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :cond_5c
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    goto/16 :goto_2d

    :pswitch_1d
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 145
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 146
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_1e
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 147
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 148
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_1f
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 149
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 150
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_20
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 151
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 152
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_21
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 153
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 154
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_22
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 155
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 156
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_23
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 157
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 158
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_24
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 159
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 160
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_2d

    :pswitch_25
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 161
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 162
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto :goto_2d

    :pswitch_26
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 163
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 164
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto :goto_2d

    :pswitch_27
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v7, v41

    .line 165
    iget v3, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 166
    iget v3, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v5, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v36, v5

    move/from16 v37, v8

    move/from16 v38, v14

    move/from16 v39, v3

    move/from16 v40, v13

    invoke-virtual/range {v35 .. v40}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    :cond_5d
    :goto_2d
    move-object/from16 v3, p3

    move-object/from16 v14, p4

    move-object/from16 v19, v4

    move-object v4, v7

    move-object/from16 v13, v18

    move-object/from16 v7, v25

    move-object/from16 v8, v29

    move-object/from16 v5, v30

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    goto/16 :goto_23

    :cond_5e
    move-object/from16 p3, v3

    move-object/from16 v30, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v17

    move-object/from16 v17, v18

    move-object/from16 v4, v19

    move-object/from16 v18, v13

    move-object/from16 v3, p3

    move-object/from16 v19, v4

    move-object/from16 v13, v18

    move-object/from16 v8, v29

    move-object/from16 v5, v30

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    goto/16 :goto_22

    :cond_5f
    move-object/from16 v30, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v17

    move-object/from16 v17, v18

    move-object/from16 v4, v19

    move-object/from16 v18, v13

    move-object/from16 v3, p0

    .line 167
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v8, v31

    .line 168
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_60

    .line 169
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_2f

    :cond_60
    const/4 v13, 0x0

    .line 170
    :goto_2f
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    invoke-virtual {v7, v13}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    move-object/from16 v31, v8

    goto :goto_2e

    :cond_61
    move-object/from16 v30, v5

    move-object/from16 v29, v8

    move-object/from16 v32, v13

    move-object/from16 v1, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v4, v25

    move-object/from16 v45, v3

    move-object v3, v0

    move-object/from16 v0, v45

    .line 171
    :cond_62
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    new-array v7, v5, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v8, 0x0

    .line 172
    aput-object v16, v7, v8

    add-int/lit8 v13, v5, -0x1

    .line 173
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v14, v7, v13

    .line 174
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_63

    iget v13, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_63

    .line 175
    iput v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 176
    :cond_63
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v13, 0x1

    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_64

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v19, v13, 0x1

    .line 177
    aput-object v14, v7, v13

    move/from16 v13, v19

    goto :goto_30

    .line 178
    :cond_64
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 179
    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_31
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_67

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v19, v4

    move-object/from16 p3, v13

    move-object/from16 v13, v16

    .line 180
    iget-object v4, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v14}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v32

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v33

    invoke-virtual {v13, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    .line 182
    invoke-virtual {v8, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_65
    move-object/from16 v16, v13

    move-object/from16 v13, v33

    :cond_66
    :goto_32
    move-object/from16 v33, v13

    move-object/from16 v4, v19

    move-object/from16 v13, p3

    goto :goto_31

    :cond_67
    move-object/from16 v19, v4

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 183
    invoke-virtual {v8, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 184
    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v4, 0x0

    .line 185
    :goto_33
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v13, v8

    if-ge v4, v13, :cond_6a

    .line 186
    aget-object v8, v8, v4

    .line 187
    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v14, 0x0

    aput v14, v13, v4

    const/4 v13, 0x0

    :goto_34
    if-ge v13, v5, :cond_69

    .line 188
    aget-object v14, v7, v13

    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_68

    .line 189
    aget-object v14, v7, v13

    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v14, :cond_68

    .line 190
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    aget v13, v8, v4

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v14

    add-int/2addr v14, v13

    aput v14, v8, v4

    goto :goto_35

    :cond_68
    add-int/lit8 v13, v13, 0x1

    goto :goto_34

    :cond_69
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_6a
    const/4 v4, 0x0

    .line 191
    aget-object v4, v7, v4

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v13, -0x1

    if-eq v4, v13, :cond_6b

    const/4 v4, 0x1

    goto :goto_36

    :cond_6b
    const/4 v4, 0x0

    .line 192
    :goto_36
    array-length v8, v8

    add-int/lit8 v8, v8, 0x12

    new-array v13, v8, [Z

    const/4 v14, 0x1

    :goto_37
    if-ge v14, v5, :cond_6c

    move-object/from16 v25, v1

    .line 193
    aget-object v1, v7, v14

    add-int/lit8 v31, v14, -0x1

    move-object/from16 v32, v15

    aget-object v15, v7, v31

    move-object/from16 v31, v6

    .line 194
    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    move-object/from16 v33, v0

    .line 195
    iget v0, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v6, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v0

    .line 196
    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    move-object/from16 v35, v2

    iget v2, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v6, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v2

    const/4 v6, 0x0

    .line 197
    aget-boolean v6, v13, v6

    move-object/from16 v36, v11

    iget v11, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    move-object/from16 v37, v10

    iget v10, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v11, v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v10

    or-int/2addr v6, v10

    const/4 v10, 0x0

    aput-boolean v6, v13, v10

    const/4 v6, 0x1

    .line 198
    aget-boolean v10, v13, v6

    or-int/2addr v0, v2

    or-int/2addr v0, v4

    or-int v2, v10, v0

    aput-boolean v2, v13, v6

    const/4 v2, 0x2

    .line 199
    aget-boolean v6, v13, v2

    or-int/2addr v0, v6

    aput-boolean v0, v13, v2

    .line 200
    aget-boolean v0, v13, v28

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v6, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-static {v2, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v2

    or-int/2addr v0, v2

    aput-boolean v0, v13, v28

    .line 201
    aget-boolean v0, v13, v27

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v2, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, v13, v27

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v25

    move-object/from16 v6, v31

    move-object/from16 v15, v32

    move-object/from16 v0, v33

    move-object/from16 v2, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    goto :goto_37

    :cond_6c
    move-object/from16 v33, v0

    move-object/from16 v25, v1

    move-object/from16 v35, v2

    move-object/from16 v31, v6

    move-object/from16 v37, v10

    move-object/from16 v36, v11

    move-object/from16 v32, v15

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_38
    if-ge v0, v8, :cond_6e

    .line 202
    aget-boolean v2, v13, v0

    if-eqz v2, :cond_6d

    add-int/lit8 v1, v1, 0x1

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 203
    :cond_6e
    new-array v0, v1, [I

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v0, 0x2

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 205
    new-array v1, v0, [D

    iput-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 206
    new-array v0, v0, [D

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_39
    if-ge v0, v8, :cond_70

    .line 207
    aget-boolean v2, v13, v0

    if-eqz v2, :cond_6f

    .line 208
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    add-int/lit8 v4, v1, 0x1

    aput v0, v2, v1

    move v1, v4

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 209
    :cond_70
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v0, v0

    filled-new-array {v5, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 210
    new-array v1, v5, [D

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v5, :cond_73

    .line 211
    aget-object v4, v7, v2

    aget-object v6, v0, v2

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v10, 0x6

    new-array v10, v10, [F

    .line 212
    iget v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    const/4 v13, 0x0

    aput v11, v10, v13

    .line 213
    iget v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/4 v13, 0x1

    aput v11, v10, v13

    iget v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    const/4 v13, 0x2

    aput v11, v10, v13

    iget v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    aput v11, v10, v28

    iget v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    aput v11, v10, v27

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    aput v4, v10, v26

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 214
    :goto_3b
    array-length v13, v8

    if-ge v4, v13, :cond_72

    .line 215
    aget v13, v8, v4

    const/4 v14, 0x6

    if-ge v13, v14, :cond_71

    add-int/lit8 v14, v11, 0x1

    .line 216
    aget v13, v10, v13

    move/from16 p3, v14

    float-to-double v13, v13

    aput-wide v13, v6, v11

    move/from16 v11, p3

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 217
    :cond_72
    aget-object v4, v7, v2

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v10, v4

    aput-wide v10, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_73
    const/4 v2, 0x0

    .line 218
    :goto_3c
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v6, v4

    if-ge v2, v6, :cond_75

    .line 219
    aget v4, v4, v2

    const/4 v6, 0x6

    if-ge v4, v6, :cond_74

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v8, v8, v2

    aget-object v6, v6, v8

    const-string v8, " ["

    .line 221
    invoke-static {v4, v6, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_3d
    if-ge v6, v5, :cond_74

    .line 222
    invoke-static {v4}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    aget-object v8, v0, v6

    aget-wide v10, v8, v2

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 224
    :cond_75
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    .line 225
    :goto_3e
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v6, v4

    if-ge v2, v6, :cond_7d

    .line 226
    aget-object v4, v4, v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, v20

    move-object v11, v10

    :goto_3f
    if-ge v6, v5, :cond_7c

    .line 227
    aget-object v13, v7, v6

    .line 228
    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 229
    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7b

    if-nez v11, :cond_77

    .line 230
    new-array v10, v5, [D

    .line 231
    aget-object v11, v7, v6

    .line 232
    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 233
    invoke-virtual {v11, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v11, :cond_76

    const/4 v11, 0x0

    goto :goto_40

    .line 234
    :cond_76
    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v11

    .line 235
    :goto_40
    filled-new-array {v5, v11}, [I

    move-result-object v11

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    .line 236
    :cond_77
    aget-object v13, v7, v6

    iget v14, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v14, v14

    aput-wide v14, v10, v8

    .line 237
    aget-object v14, v11, v8

    .line 238
    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 239
    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v13, :cond_78

    move-object/from16 p3, v4

    move-object/from16 v40, v9

    move-object/from16 p4, v10

    move-object v15, v11

    goto :goto_42

    .line 240
    :cond_78
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v15

    move-object/from16 p3, v4

    const/4 v4, 0x1

    if-ne v15, v4, :cond_7a

    .line 241
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v4

    move-object/from16 p4, v10

    move-object v15, v11

    float-to-double v10, v4

    const/4 v4, 0x0

    aput-wide v10, v14, v4

    :cond_79
    move-object/from16 v40, v9

    goto :goto_42

    :cond_7a
    move-object/from16 p4, v10

    move-object v15, v11

    .line 242
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v4

    .line 243
    new-array v10, v4, [F

    .line 244
    invoke-virtual {v13, v10}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_41
    if-ge v11, v4, :cond_79

    add-int/lit8 v38, v13, 0x1

    move/from16 v39, v4

    .line 245
    aget v4, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    float-to-double v9, v4

    aput-wide v9, v14, v13

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v38

    move/from16 v4, v39

    move-object/from16 v9, v40

    move-object/from16 v10, v41

    goto :goto_41

    :goto_42
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, p4

    move-object v11, v15

    goto :goto_43

    :cond_7b
    move-object/from16 p3, v4

    move-object/from16 v40, v9

    :goto_43
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p3

    move-object/from16 v9, v40

    goto/16 :goto_3f

    :cond_7c
    move-object/from16 v40, v9

    .line 246
    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    .line 247
    invoke-static {v11, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 248
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/lit8 v2, v2, 0x1

    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v9, v4, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v4

    aput-object v4, v8, v2

    move-object/from16 v9, v40

    goto/16 :goto_3e

    :cond_7d
    move-object/from16 v40, v9

    .line 249
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v4, v1, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 250
    aget-object v0, v7, v1

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7f

    .line 251
    new-array v0, v5, [I

    .line 252
    new-array v1, v5, [D

    const/4 v2, 0x2

    .line 253
    filled-new-array {v5, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v4, 0x0

    :goto_44
    if-ge v4, v5, :cond_7e

    .line 254
    aget-object v6, v7, v4

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v8, v0, v4

    .line 255
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v8, v8

    aput-wide v8, v1, v4

    .line 256
    aget-object v8, v2, v4

    iget v9, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    float-to-double v9, v9

    const/4 v11, 0x0

    aput-wide v9, v8, v11

    .line 257
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    float-to-double v9, v6

    const/4 v6, 0x1

    aput-wide v9, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 258
    :cond_7e
    new-instance v4, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    invoke-direct {v4, v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    .line 259
    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 260
    :cond_7f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v30, :cond_b2

    .line 261
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v4, v29

    .line 262
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 263
    new-instance v5, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;-><init>()V

    move-object/from16 p3, v0

    move-object v0, v5

    move-object/from16 v15, v19

    move-object/from16 v5, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    move-object/from16 v19, v18

    goto/16 :goto_53

    .line 264
    :cond_80
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v5, v23

    :goto_46
    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    goto/16 :goto_4e

    :sswitch_28
    move-object/from16 v5, v23

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    goto :goto_46

    :cond_81
    const/16 v6, 0xd

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move/from16 v17, v6

    move-object/from16 v19, v18

    move-object/from16 v6, v40

    goto/16 :goto_51

    :sswitch_29
    move-object/from16 v5, v23

    move-object/from16 v6, v40

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_82

    goto :goto_47

    :cond_82
    const/16 v7, 0xc

    goto :goto_48

    :sswitch_2a
    move-object/from16 v5, v23

    move-object/from16 v6, v40

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    :goto_47
    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    goto/16 :goto_4e

    :cond_83
    const/16 v7, 0xb

    :goto_48
    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move/from16 v17, v7

    move-object/from16 v19, v18

    move-object/from16 v7, v37

    goto/16 :goto_51

    :sswitch_2b
    move-object/from16 v5, v23

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    if-nez v8, :cond_84

    move-object/from16 v8, v36

    goto/16 :goto_4e

    :cond_84
    move-object/from16 v8, v36

    const/16 v17, 0xa

    goto/16 :goto_4f

    :sswitch_2c
    move-object/from16 v5, v23

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_85

    goto :goto_49

    :cond_85
    move/from16 v9, v21

    goto :goto_4a

    :sswitch_2d
    move-object/from16 v5, v23

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    const-string/jumbo v9, "waveVariesBy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_86

    :goto_49
    move-object/from16 v9, v35

    goto :goto_4b

    :cond_86
    move/from16 v9, v22

    :goto_4a
    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move/from16 v17, v9

    move-object/from16 v19, v18

    move-object/from16 v9, v35

    goto/16 :goto_51

    :sswitch_2e
    move-object/from16 v5, v23

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_87

    :goto_4b
    move-object/from16 v10, v33

    goto :goto_4c

    :cond_87
    const/4 v10, 0x7

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move/from16 v17, v10

    move-object/from16 v19, v18

    move-object/from16 v10, v33

    goto/16 :goto_51

    :sswitch_2f
    move-object/from16 v5, v23

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_88

    :goto_4c
    move-object/from16 v11, v31

    goto :goto_4d

    :cond_88
    const/4 v11, 0x6

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v13, v32

    move/from16 v17, v11

    move-object/from16 v19, v18

    move-object/from16 v11, v31

    goto/16 :goto_51

    :sswitch_30
    move-object/from16 v5, v23

    move-object/from16 v11, v31

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_89

    :goto_4d
    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object/from16 v13, v32

    goto/16 :goto_4e

    :cond_89
    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move/from16 v17, v26

    move-object/from16 v13, v32

    goto/16 :goto_4f

    :sswitch_31
    move-object/from16 v5, v23

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    if-nez v14, :cond_8a

    move-object/from16 v14, v25

    goto :goto_4e

    :cond_8a
    move-object/from16 v14, v25

    move/from16 v17, v27

    goto :goto_4f

    :sswitch_32
    move-object/from16 v5, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    if-nez v15, :cond_8b

    move-object/from16 v15, v19

    goto :goto_4e

    :cond_8b
    move-object/from16 v15, v19

    move/from16 v17, v28

    goto :goto_4f

    :sswitch_33
    move-object/from16 v15, v19

    move-object/from16 v5, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8c

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    :goto_4e
    move-object/from16 v19, v18

    goto/16 :goto_50

    :cond_8c
    const/16 v19, 0x2

    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move/from16 v17, v19

    :goto_4f
    move-object/from16 v19, v18

    goto :goto_51

    :sswitch_34
    move-object/from16 p3, v0

    move-object/from16 v0, v18

    move-object/from16 v15, v19

    move-object/from16 v5, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8d

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    goto :goto_50

    :cond_8d
    const/16 v18, 0x1

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v17, v18

    goto :goto_51

    :sswitch_35
    move-object/from16 p3, v0

    move-object/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v5, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    move-object/from16 v8, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    move-object/from16 v19, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8e

    goto :goto_50

    :cond_8e
    const/16 v17, 0x0

    goto :goto_51

    :goto_50
    const/16 v17, -0x1

    :goto_51
    packed-switch v17, :pswitch_data_3

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    goto :goto_53

    .line 265
    :pswitch_28
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto :goto_52

    .line 266
    :pswitch_29
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto :goto_52

    .line 267
    :pswitch_2a
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;-><init>()V

    goto :goto_52

    .line 268
    :pswitch_2b
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;-><init>()V

    goto :goto_52

    .line 269
    :pswitch_2c
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;-><init>()V

    goto :goto_52

    .line 270
    :pswitch_2d
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto :goto_52

    .line 271
    :pswitch_2e
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;-><init>()V

    goto :goto_52

    .line 272
    :pswitch_2f
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;-><init>()V

    goto :goto_52

    .line 273
    :pswitch_30
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;-><init>()V

    goto :goto_52

    .line 274
    :pswitch_31
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;-><init>()V

    goto :goto_52

    .line 275
    :pswitch_32
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;-><init>()V

    goto :goto_52

    .line 276
    :pswitch_33
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;-><init>()V

    goto :goto_52

    .line 277
    :pswitch_34
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;-><init>()V

    goto :goto_52

    .line 278
    :pswitch_35
    new-instance v17, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;-><init>()V

    :goto_52
    move-object/from16 v45, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v45

    :goto_53
    if-nez v0, :cond_8f

    move-object/from16 v0, p3

    move-object/from16 v29, v4

    move-object/from16 v23, v5

    move-object/from16 v40, v6

    move-object/from16 v37, v7

    move-object/from16 v36, v8

    move-object/from16 v35, v9

    move-object/from16 v33, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v13

    move-object/from16 v25, v14

    move-object/from16 v18, v19

    move-object/from16 v19, v15

    goto/16 :goto_45

    :cond_8f
    move-object/from16 v25, v15

    .line 279
    iget v15, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    move-object/from16 v18, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_90

    const/4 v14, 0x1

    goto :goto_54

    :cond_90
    const/4 v14, 0x0

    :goto_54
    if-eqz v14, :cond_98

    .line 280
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_98

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v14, 0x63

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v14

    const-wide/16 v31, 0x0

    const/4 v14, 0x0

    const/16 v23, 0x0

    move-object/from16 v29, v11

    move-wide/from16 v38, v31

    move-wide/from16 v40, v38

    move/from16 v45, v23

    move-object/from16 v23, v13

    move/from16 v13, v45

    :goto_55
    const/16 v11, 0x64

    if-ge v13, v11, :cond_97

    int-to-float v11, v13

    mul-float/2addr v11, v15

    move-object/from16 p4, v9

    move-object/from16 v42, v10

    float-to-double v9, v11

    move-wide/from16 v31, v9

    move-object/from16 v9, v16

    .line 281
    iget-object v10, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 282
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v33, 0x0

    const/high16 v34, 0x7fc00000    # Float.NaN

    :goto_56
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_93

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v43, v9

    move-object/from16 v9, v35

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move/from16 v44, v15

    .line 283
    iget-object v15, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v15, :cond_92

    move-object/from16 v35, v15

    .line 284
    iget v15, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v36, v15, v11

    if-gez v36, :cond_91

    move/from16 v33, v15

    move-object/from16 v10, v35

    goto :goto_57

    .line 285
    :cond_91
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_92

    .line 286
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v34, v9

    :cond_92
    :goto_57
    move-object/from16 v9, v43

    move/from16 v15, v44

    goto :goto_56

    :cond_93
    move-object/from16 v43, v9

    move/from16 v44, v15

    if-eqz v10, :cond_95

    .line 287
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_94

    const/high16 v34, 0x3f800000    # 1.0f

    :cond_94
    sub-float v11, v11, v33

    sub-float v34, v34, v33

    div-float v11, v11, v34

    move-object v15, v8

    float-to-double v8, v11

    .line 288
    invoke-virtual {v10, v8, v9}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v34

    add-float v8, v8, v33

    float-to-double v8, v8

    goto :goto_58

    :cond_95
    move-object v15, v8

    move-wide/from16 v8, v31

    .line 289
    :goto_58
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v10, v8, v9, v11}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 290
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move-object/from16 v16, v15

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    const/16 v37, 0x0

    move-object/from16 v31, v10

    move-wide/from16 v32, v8

    move-object/from16 v34, v11

    move-object/from16 v35, v15

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v37}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    if-lez v13, :cond_96

    float-to-double v8, v14

    const/4 v10, 0x1

    aget v10, v1, v10

    float-to-double v10, v10

    sub-double v10, v38, v10

    const/4 v14, 0x0

    aget v14, v1, v14

    float-to-double v14, v14

    sub-double v14, v40, v14

    .line 291
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    add-double/2addr v10, v8

    double-to-float v8, v10

    move v14, v8

    :cond_96
    const/4 v8, 0x0

    aget v8, v1, v8

    float-to-double v8, v8

    const/4 v10, 0x1

    aget v10, v1, v10

    float-to-double v10, v10

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v40, v8

    move-wide/from16 v38, v10

    move-object/from16 v8, v16

    move-object/from16 v10, v42

    move-object/from16 v16, v43

    move/from16 v15, v44

    move-object/from16 v9, p4

    goto/16 :goto_55

    :cond_97
    move-object/from16 p4, v9

    move-object/from16 v42, v10

    move-object/from16 v43, v16

    move-object/from16 v16, v8

    move v1, v14

    goto :goto_59

    :cond_98
    move-object/from16 p4, v9

    move-object/from16 v42, v10

    move-object/from16 v29, v11

    move-object/from16 v23, v13

    move-object/from16 v43, v16

    move-object/from16 v16, v8

    .line 292
    :goto_59
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 293
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v35, p4

    move-object/from16 v40, v6

    move-object/from16 v37, v7

    move-object/from16 v36, v16

    move-object/from16 v32, v23

    move-object/from16 v31, v29

    move-object/from16 v33, v42

    move-object/from16 v16, v43

    move-object/from16 v29, v4

    move-object/from16 v23, v5

    move-object/from16 v45, v25

    move-object/from16 v25, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v45

    goto/16 :goto_45

    :cond_99
    move-object/from16 v5, v23

    move-object/from16 v4, v29

    move-object/from16 v29, v31

    move-object/from16 v23, v32

    move-object/from16 v42, v33

    move-object/from16 p4, v35

    move-object/from16 v16, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    move-object/from16 v45, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v25

    move-object/from16 v25, v45

    .line 294
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/Key;

    .line 295
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v2, :cond_b0

    .line 296
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 298
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9e

    const/4 v10, 0x7

    .line 299
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 300
    iget-object v11, v1, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v10, :cond_9d

    .line 301
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iget-object v13, v10, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v13, v11, :cond_9a

    goto :goto_5c

    .line 302
    :cond_9a
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-nez v9, :cond_9b

    :goto_5c
    move-object/from16 p3, v0

    move-object/from16 v24, v2

    move-object/from16 v36, v4

    move-object/from16 v20, v8

    goto :goto_5d

    .line 303
    :cond_9b
    iget v11, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iget-object v14, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    move-object/from16 p3, v0

    iget v0, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    move-object/from16 v20, v8

    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    invoke-virtual {v10}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v35

    move-object/from16 v24, v2

    .line 304
    iget-object v2, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    move-object/from16 v36, v4

    new-instance v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move-object/from16 v30, v4

    move/from16 v31, v11

    move/from16 v32, v0

    move/from16 v33, v8

    move/from16 v34, v3

    invoke-direct/range {v30 .. v35}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    if-eq v15, v0, :cond_9c

    .line 305
    iput v15, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 306
    :cond_9c
    iput v13, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 307
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setCustom(Landroidx/constraintlayout/widget/ConstraintAttribute;)V

    .line 308
    iput-object v14, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    :goto_5d
    move-object/from16 v40, v6

    move-object/from16 v37, v7

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v18, v23

    move-object/from16 v11, v25

    move-object/from16 v15, v36

    move-object/from16 v17, v42

    move-object/from16 v25, p4

    move-object/from16 p4, v1

    move-object/from16 v23, v5

    move-object/from16 v36, v16

    move-object/from16 v16, v29

    goto/16 :goto_6a

    :cond_9d
    move-object/from16 v3, p0

    goto/16 :goto_5b

    :cond_9e
    move-object/from16 p3, v0

    move-object/from16 v24, v2

    move-object/from16 v36, v4

    move-object/from16 v20, v8

    .line 309
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_4

    :goto_5e
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    :goto_5f
    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    goto/16 :goto_65

    :sswitch_36
    const-string/jumbo v0, "wavePhase"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_5e

    :cond_9f
    const/16 v0, 0xd

    goto :goto_60

    :sswitch_37
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_5e

    :cond_a0
    const/16 v0, 0xc

    :goto_60
    move v2, v0

    move-object/from16 v0, v16

    goto :goto_61

    :sswitch_38
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_5e

    :cond_a1
    move-object/from16 v0, v16

    const/16 v2, 0xb

    goto :goto_61

    :sswitch_39
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    goto :goto_5e

    :cond_a2
    move-object/from16 v0, v16

    const/16 v2, 0xa

    goto :goto_61

    :sswitch_3a
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_5e

    :cond_a3
    move-object/from16 v0, v16

    move/from16 v2, v21

    goto :goto_61

    :sswitch_3b
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    move-object/from16 v2, p4

    goto :goto_5f

    :cond_a4
    move/from16 v2, v22

    :goto_61
    move v15, v2

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    move-object/from16 v2, p4

    goto/16 :goto_66

    :sswitch_3c
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    move-object/from16 v3, v42

    goto :goto_62

    :cond_a5
    const/4 v3, 0x7

    move v15, v3

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    goto/16 :goto_66

    :sswitch_3d
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    move-object/from16 v3, v42

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    :goto_62
    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    goto/16 :goto_65

    :cond_a6
    const/4 v4, 0x6

    move v15, v4

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    goto/16 :goto_66

    :sswitch_3e
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a7

    move-object/from16 v8, v23

    goto :goto_63

    :cond_a7
    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move/from16 v15, v26

    goto/16 :goto_66

    :sswitch_3f
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    move-object/from16 v8, v23

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a8

    :goto_63
    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    goto :goto_64

    :cond_a8
    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v25

    move/from16 v15, v27

    goto/16 :goto_66

    :sswitch_40
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    move-object/from16 v10, v18

    move-object/from16 v8, v23

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v14, v17

    move-object/from16 v13, v19

    if-nez v11, :cond_a9

    :goto_64
    move-object/from16 v11, v25

    goto/16 :goto_65

    :cond_a9
    move-object/from16 v11, v25

    move/from16 v15, v28

    goto/16 :goto_66

    :sswitch_41
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    move-object/from16 v10, v18

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_aa

    move-object/from16 v14, v17

    move-object/from16 v13, v19

    goto :goto_65

    :cond_aa
    const/4 v13, 0x2

    move v15, v13

    move-object/from16 v14, v17

    move-object/from16 v13, v19

    goto :goto_66

    :sswitch_42
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ab

    move-object/from16 v14, v17

    goto :goto_65

    :cond_ab
    const/4 v14, 0x1

    move v15, v14

    move-object/from16 v14, v17

    goto :goto_66

    :sswitch_43
    move-object/from16 v2, p4

    move-object/from16 v0, v16

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v25

    move-object/from16 v4, v29

    move-object/from16 v3, v42

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ac

    goto :goto_65

    :cond_ac
    const/4 v15, 0x0

    goto :goto_66

    :goto_65
    const/4 v15, -0x1

    :goto_66
    packed-switch v15, :pswitch_data_4

    move-object/from16 v15, v36

    .line 310
    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    const/high16 v16, 0x7fc00000    # Float.NaN

    move/from16 v34, v16

    goto :goto_68

    .line 311
    :pswitch_36
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    goto :goto_67

    .line 312
    :pswitch_37
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    goto :goto_67

    .line 313
    :pswitch_38
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    goto :goto_67

    .line 314
    :pswitch_39
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    goto :goto_67

    .line 315
    :pswitch_3a
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    goto :goto_67

    .line 316
    :pswitch_3b
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    goto :goto_67

    .line 317
    :pswitch_3c
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    goto :goto_67

    .line 318
    :pswitch_3d
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    goto :goto_67

    .line 319
    :pswitch_3e
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    goto :goto_67

    .line 320
    :pswitch_3f
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    goto :goto_67

    .line 321
    :pswitch_40
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    goto :goto_67

    .line 322
    :pswitch_41
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    goto :goto_67

    .line 323
    :pswitch_42
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    goto :goto_67

    .line 324
    :pswitch_43
    iget v15, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    :goto_67
    move/from16 v34, v15

    move-object/from16 v15, v36

    .line 325
    :goto_68
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_ad

    move-object/from16 v36, v0

    move-object/from16 v0, v24

    goto :goto_69

    :cond_ad
    move-object/from16 v36, v0

    move-object/from16 v0, v24

    .line 326
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-nez v9, :cond_ae

    :goto_69
    move-object/from16 p4, v2

    move-object/from16 v42, v3

    move-object/from16 v29, v4

    move-object/from16 v23, v8

    move-object/from16 v18, v10

    move-object/from16 v25, v11

    move-object/from16 v19, v13

    move-object/from16 v17, v14

    move-object v4, v15

    move-object/from16 v8, v20

    move-object/from16 v16, v36

    move-object/from16 v3, p0

    move-object v2, v0

    move-object/from16 v0, p3

    goto/16 :goto_5b

    :cond_ae
    move-object/from16 v24, v0

    .line 327
    iget v0, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    move-object/from16 v25, v2

    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    move-object/from16 v17, v3

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    move-object/from16 v16, v4

    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    move-object/from16 v23, v5

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    move-object/from16 v40, v6

    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    move-object/from16 v37, v7

    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    move-object/from16 p4, v1

    .line 328
    iget-object v1, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    move-object/from16 v18, v8

    new-instance v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move-object/from16 v29, v8

    move/from16 v30, v0

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    invoke-direct/range {v29 .. v34}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    if-eq v4, v0, :cond_af

    .line 329
    iput v4, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 330
    :cond_af
    iput v2, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 331
    iput-object v3, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    :goto_6a
    move-object/from16 v3, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v19, v13

    move-object v4, v15

    move-object/from16 v29, v16

    move-object/from16 v42, v17

    move-object/from16 v8, v20

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    move-object/from16 p4, v25

    move-object/from16 v16, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    move-object/from16 v25, v11

    move-object/from16 v17, v14

    move-object/from16 v23, v18

    move-object/from16 v18, v10

    goto/16 :goto_5b

    :cond_b0
    move-object/from16 p3, v0

    move-object v15, v4

    move-object/from16 v40, v6

    move-object/from16 v37, v7

    move-object/from16 v36, v16

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v18, v23

    move-object/from16 v11, v25

    move-object/from16 v16, v29

    move-object/from16 v17, v42

    move-object/from16 v25, p4

    move-object/from16 v23, v5

    move-object/from16 v3, p0

    move-object/from16 v0, p3

    move-object/from16 v19, v13

    move-object v4, v15

    move-object/from16 v29, v16

    move-object/from16 v42, v17

    move-object/from16 v5, v23

    move-object/from16 p4, v25

    move-object/from16 v16, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v40

    move-object/from16 v25, v11

    move-object/from16 v17, v14

    move-object/from16 v23, v18

    move-object/from16 v18, v10

    goto/16 :goto_5a

    :cond_b1
    move-object v0, v3

    .line 332
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 333
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup()V

    goto :goto_6b

    :cond_b2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_27
        -0x4a771f65 -> :sswitch_26
        -0x490b9c39 -> :sswitch_25
        -0x490b9c38 -> :sswitch_24
        -0x490b9c37 -> :sswitch_23
        -0x3bab3dd3 -> :sswitch_22
        -0x3621dfb2 -> :sswitch_21
        -0x3621dfb1 -> :sswitch_20
        -0x266f082 -> :sswitch_1f
        -0x42d1a3 -> :sswitch_1e
        0x2382115 -> :sswitch_1d
        0x589b15e -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x4a771f66 -> :sswitch_35
        -0x4a771f65 -> :sswitch_34
        -0x490b9c39 -> :sswitch_33
        -0x490b9c38 -> :sswitch_32
        -0x490b9c37 -> :sswitch_31
        -0x3bab3dd3 -> :sswitch_30
        -0x3621dfb2 -> :sswitch_2f
        -0x3621dfb1 -> :sswitch_2e
        -0x2f893320 -> :sswitch_2d
        -0x266f082 -> :sswitch_2c
        -0x42d1a3 -> :sswitch_2b
        0x2382115 -> :sswitch_2a
        0x589b15e -> :sswitch_29
        0x94e04ec -> :sswitch_28
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x4a771f66 -> :sswitch_43
        -0x4a771f65 -> :sswitch_42
        -0x490b9c39 -> :sswitch_41
        -0x490b9c38 -> :sswitch_40
        -0x490b9c37 -> :sswitch_3f
        -0x3bab3dd3 -> :sswitch_3e
        -0x3621dfb2 -> :sswitch_3d
        -0x3621dfb1 -> :sswitch_3c
        -0x266f082 -> :sswitch_3b
        -0x42d1a3 -> :sswitch_3a
        0x2382115 -> :sswitch_39
        0x589b15e -> :sswitch_38
        0x94e04ec -> :sswitch_37
        0x5b327a02 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " start: x: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 9
    .line 10
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " y: "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " end: x: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 31
    .line 32
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method
