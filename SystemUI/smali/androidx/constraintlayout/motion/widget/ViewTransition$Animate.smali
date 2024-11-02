.class public final Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final hold_at_100:Z

.field public final mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field public final mClearsTag:I

.field public mDpositionDt:F

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mLastRender:J

.field public final mMC:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mPosition:F

.field public final mSetsTag:I

.field public final mTempRec:Landroid/graphics/Rect;

.field public final mUpDuration:I

.field public final mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

.field public reverse:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 26
    .line 27
    iput p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 34
    .line 35
    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 45
    .line 46
    :cond_0
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    .line 53
    iput p7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    .line 54
    .line 55
    iput p8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    .line 56
    .line 57
    const/4 p1, 0x3

    .line 58
    if-ne p5, p1, :cond_1

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    .line 62
    .line 63
    :cond_1
    if-nez p3, :cond_2

    .line 64
    .line 65
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    int-to-float p2, p3

    .line 72
    div-float/2addr p1, p2

    .line 73
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final mutate()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    .line 7
    .line 8
    iget v4, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    .line 9
    .line 10
    const/4 v5, -0x1

    .line 11
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 12
    .line 13
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v12

    .line 28
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 29
    .line 30
    sub-long v10, v12, v10

    .line 31
    .line 32
    iput-wide v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 33
    .line 34
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 35
    .line 36
    long-to-double v10, v10

    .line 37
    mul-double/2addr v10, v8

    .line 38
    double-to-float v8, v10

    .line 39
    iget v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 40
    .line 41
    mul-float/2addr v8, v9

    .line 42
    sub-float/2addr v1, v8

    .line 43
    iput v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    cmpg-float v1, v1, v8

    .line 47
    .line 48
    if-gez v1, :cond_0

    .line 49
    .line 50
    iput v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 51
    .line 52
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 53
    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_0
    move v11, v1

    .line 62
    iget-object v14, v15, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 63
    .line 64
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 65
    .line 66
    move-object v10, v15

    .line 67
    move-object v7, v15

    .line 68
    move-object v15, v1

    .line 69
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 74
    .line 75
    cmpg-float v9, v9, v8

    .line 76
    .line 77
    if-gtz v9, :cond_4

    .line 78
    .line 79
    if-eq v4, v5, :cond_2

    .line 80
    .line 81
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v10

    .line 87
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v9, v4, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    if-eq v3, v5, :cond_3

    .line 95
    .line 96
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v4, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 107
    .line 108
    cmpl-float v0, v0, v8

    .line 109
    .line 110
    if-gtz v0, :cond_5

    .line 111
    .line 112
    if-eqz v1, :cond_d

    .line 113
    .line 114
    :cond_5
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    move-object v1, v15

    .line 121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v12

    .line 125
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 126
    .line 127
    sub-long v10, v12, v10

    .line 128
    .line 129
    iput-wide v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 130
    .line 131
    iget v14, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 132
    .line 133
    long-to-double v10, v10

    .line 134
    mul-double/2addr v10, v8

    .line 135
    double-to-float v8, v10

    .line 136
    iget v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 137
    .line 138
    mul-float/2addr v8, v9

    .line 139
    add-float/2addr v8, v14

    .line 140
    iput v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 141
    .line 142
    const/high16 v9, 0x3f800000    # 1.0f

    .line 143
    .line 144
    cmpl-float v8, v8, v9

    .line 145
    .line 146
    if-ltz v8, :cond_7

    .line 147
    .line 148
    iput v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 149
    .line 150
    :cond_7
    if-nez v7, :cond_8

    .line 151
    .line 152
    iget v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    iget v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 156
    .line 157
    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    :goto_1
    move v11, v7

    .line 162
    iget-object v14, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 163
    .line 164
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 165
    .line 166
    move-object v10, v1

    .line 167
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    iget v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 172
    .line 173
    cmpl-float v8, v8, v9

    .line 174
    .line 175
    if-ltz v8, :cond_b

    .line 176
    .line 177
    if-eq v4, v5, :cond_9

    .line 178
    .line 179
    iget-object v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 180
    .line 181
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 182
    .line 183
    .line 184
    move-result-wide v10

    .line 185
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {v8, v4, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    if-eq v3, v5, :cond_a

    .line 193
    .line 194
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_a
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    .line 200
    .line 201
    if-nez v1, :cond_b

    .line 202
    .line 203
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_b
    iget v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 209
    .line 210
    cmpg-float v0, v0, v9

    .line 211
    .line 212
    if-ltz v0, :cond_c

    .line 213
    .line 214
    if-eqz v7, :cond_d

    .line 215
    .line 216
    :cond_c
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 219
    .line 220
    .line 221
    :cond_d
    :goto_2
    return-void
.end method

.method public final reverse()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    .line 6
    .line 7
    if-eq v1, v0, :cond_1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    div-float/2addr v0, v1

    .line 19
    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 33
    .line 34
    return-void
.end method
