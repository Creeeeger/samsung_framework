.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field public mAnimationLoaded:Z

.field public mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field public mChange:Landroid/window/TransitionInfo$Change;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayId:I

.field public mForceHidingTransit:I

.field public mFreeformStashScale:F

.field public mHasCustomDisplayChangeTransition:Z

.field public mIsEnter:Z

.field public mIsFreeformMovingBehindSplitScreen:Z

.field public mIsPopOverAnimationNeeded:Z

.field public mMinimizeAnimState:I

.field public final mMinimizePoint:Landroid/graphics/PointF;

.field public mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mSeparatedFromCustomDisplayChange:Z

.field public mTaskId:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionType:I

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 6
    .line 7
    new-instance v1, Landroid/content/res/Configuration;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    .line 16
    .line 17
    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/PointF;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    .line 31
    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    .line 35
    .line 36
    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    int-to-float v5, v5

    .line 25
    const/high16 v6, 0x40000000    # 2.0f

    .line 26
    .line 27
    div-float v12, v5, v6

    .line 28
    .line 29
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    int-to-float v5, v5

    .line 34
    div-float v13, v5, v6

    .line 35
    .line 36
    const v5, 0x3e4ccccd    # 0.2f

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    move v10, v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v10, v5

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move/from16 v10, p4

    .line 49
    .line 50
    :goto_1
    if-eqz p1, :cond_3

    .line 51
    .line 52
    move/from16 v5, p4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    if-eqz v2, :cond_4

    .line 56
    .line 57
    move v5, v6

    .line 58
    :cond_4
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    int-to-float v8, v8

    .line 67
    mul-float v8, v8, p4

    .line 68
    .line 69
    float-to-int v8, v8

    .line 70
    if-eqz p5, :cond_5

    .line 71
    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    int-to-float v9, v9

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    int-to-float v11, v11

    .line 82
    mul-float v11, v11, p4

    .line 83
    .line 84
    sub-float/2addr v9, v11

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move v9, v6

    .line 87
    :goto_3
    iget v11, v1, Landroid/graphics/PointF;->x:F

    .line 88
    .line 89
    int-to-float v7, v7

    .line 90
    add-float/2addr v7, v9

    .line 91
    sub-float/2addr v11, v7

    .line 92
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 93
    .line 94
    int-to-float v7, v8

    .line 95
    sub-float/2addr v1, v7

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    move v9, v11

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    move v9, v6

    .line 101
    :goto_4
    if-eqz p1, :cond_7

    .line 102
    .line 103
    move v11, v6

    .line 104
    :cond_7
    if-eqz p1, :cond_8

    .line 105
    .line 106
    move v8, v1

    .line 107
    goto :goto_5

    .line 108
    :cond_8
    move v8, v6

    .line 109
    :goto_5
    if-eqz p1, :cond_9

    .line 110
    .line 111
    move v1, v6

    .line 112
    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    .line 113
    .line 114
    if-eqz p1, :cond_a

    .line 115
    .line 116
    move v15, v6

    .line 117
    goto :goto_6

    .line 118
    :cond_a
    move v15, v7

    .line 119
    :goto_6
    if-eqz p1, :cond_b

    .line 120
    .line 121
    move v14, v7

    .line 122
    goto :goto_7

    .line 123
    :cond_b
    move v14, v6

    .line 124
    :goto_7
    cmpl-float v6, p4, v6

    .line 125
    .line 126
    if-lez v6, :cond_d

    .line 127
    .line 128
    cmpg-float v6, p4, v7

    .line 129
    .line 130
    if-gez v6, :cond_d

    .line 131
    .line 132
    if-eqz p5, :cond_c

    .line 133
    .line 134
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    .line 135
    .line 136
    const/16 v19, 0x1

    .line 137
    .line 138
    const/high16 v20, 0x3f800000    # 1.0f

    .line 139
    .line 140
    const/16 v21, 0x1

    .line 141
    .line 142
    const/16 v22, 0x0

    .line 143
    .line 144
    move v7, v14

    .line 145
    move-object v14, v6

    .line 146
    move v12, v15

    .line 147
    move v15, v10

    .line 148
    move/from16 v16, v5

    .line 149
    .line 150
    move/from16 v17, v10

    .line 151
    .line 152
    move/from16 v18, v5

    .line 153
    .line 154
    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 155
    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_c
    move v7, v14

    .line 159
    move v12, v15

    .line 160
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    .line 161
    .line 162
    invoke-direct {v6, v10, v5, v10, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 163
    .line 164
    .line 165
    :goto_8
    move-object/from16 v17, v4

    .line 166
    .line 167
    move-object v5, v6

    .line 168
    move v15, v7

    .line 169
    move v3, v8

    .line 170
    move v14, v9

    .line 171
    move v4, v11

    .line 172
    move v6, v12

    .line 173
    goto :goto_9

    .line 174
    :cond_d
    move v7, v14

    .line 175
    move v6, v15

    .line 176
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    .line 177
    .line 178
    move v15, v7

    .line 179
    move-object v7, v14

    .line 180
    move v3, v8

    .line 181
    move v8, v10

    .line 182
    move-object/from16 p2, v14

    .line 183
    .line 184
    move v14, v9

    .line 185
    move v9, v5

    .line 186
    move-object/from16 v17, v4

    .line 187
    .line 188
    move v4, v11

    .line 189
    move v11, v5

    .line 190
    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v5, p2

    .line 194
    .line 195
    :goto_9
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    .line 196
    .line 197
    invoke-direct {v7, v14, v4, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 201
    .line 202
    invoke-direct {v1, v6, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 203
    .line 204
    .line 205
    if-eqz v2, :cond_e

    .line 206
    .line 207
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 208
    .line 209
    goto :goto_a

    .line 210
    :cond_e
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    .line 211
    .line 212
    :goto_a
    invoke-virtual {v7, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 213
    .line 214
    .line 215
    if-eqz v2, :cond_f

    .line 216
    .line 217
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 218
    .line 219
    goto :goto_b

    .line 220
    :cond_f
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    .line 221
    .line 222
    :goto_b
    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 223
    .line 224
    .line 225
    if-eqz v2, :cond_10

    .line 226
    .line 227
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 228
    .line 229
    goto :goto_c

    .line 230
    :cond_10
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    .line 231
    .line 232
    :goto_c
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 233
    .line 234
    .line 235
    new-instance v2, Landroid/view/animation/AnimationSet;

    .line 236
    .line 237
    const/4 v3, 0x1

    .line 238
    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 254
    .line 255
    .line 256
    if-nez p1, :cond_11

    .line 257
    .line 258
    iget v0, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    .line 259
    .line 260
    const/4 v1, 0x2

    .line 261
    if-ne v0, v1, :cond_11

    .line 262
    .line 263
    const-wide/16 v0, 0x0

    .line 264
    .line 265
    goto :goto_d

    .line 266
    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    .line 267
    .line 268
    if-eqz v0, :cond_12

    .line 269
    .line 270
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_12

    .line 275
    .line 276
    const-wide/16 v0, 0x1c2

    .line 277
    .line 278
    goto :goto_d

    .line 279
    :cond_12
    const-wide/16 v0, 0xfa

    .line 280
    .line 281
    :goto_d
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 282
    .line 283
    .line 284
    if-eqz p1, :cond_13

    .line 285
    .line 286
    const/4 v0, 0x1

    .line 287
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 288
    .line 289
    .line 290
    :cond_13
    return-object v2
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final isActivityTypeHome()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p0, v1, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public final isClosingTransitionType()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final loadAnimationFromResources(I)Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 2
    .line 3
    const-string v0, "android"

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    .line 6
    .line 7
    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    iput v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    iput v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    .line 24
    .line 25
    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 28
    .line 29
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    .line 35
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsFreeformMovingBehindSplitScreen:Z

    .line 40
    .line 41
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mHasCustomDisplayChangeTransition:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mSeparatedFromCustomDisplayChange:Z

    .line 48
    .line 49
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "MultiTaskingTransitionState"

    .line 4
    .line 5
    const-string/jumbo p1, "setAnimation: failed, animation is null"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    .line 16
    .line 17
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, ", mForceHidingTransit="

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    .line 15
    .line 16
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->forceHidingTransitToString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v0, v1

    .line 29
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v3, "{Type="

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, ", mIsEnter="

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-boolean v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, ", mDisplayId="

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ", mTaskId="

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, ", mWindowingMode="

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, ", mAnimationOptions="

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, ", mHasCustomDisplayChangeTransition="

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-boolean v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mHasCustomDisplayChangeTransition:Z

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, ", mSeparatedFromCustomDisplayChange="

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-boolean v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mSeparatedFromCustomDisplayChange:Z

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-boolean v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsFreeformMovingBehindSplitScreen:Z

    .line 113
    .line 114
    if-eqz v3, :cond_1

    .line 115
    .line 116
    const-string v3, ", mFreeformMovingBehindSplit=true"

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    move-object v3, v1

    .line 120
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    .line 127
    .line 128
    sget-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    .line 129
    .line 130
    if-ne p0, v0, :cond_2

    .line 131
    .line 132
    const/4 p0, 0x1

    .line 133
    goto :goto_2

    .line 134
    :cond_2
    const/4 p0, 0x0

    .line 135
    :goto_2
    if-eqz p0, :cond_3

    .line 136
    .line 137
    const-string v1, ", NO_AMIM"

    .line 138
    .line 139
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const/16 p0, 0x7d

    .line 143
    .line 144
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0
.end method
