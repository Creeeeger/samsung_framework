.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field public final synthetic f$1:Landroid/window/SplashScreenView;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Ljava/lang/Runnable;

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$1:Landroid/window/SplashScreenView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Rect;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Runnable;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$5:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 4
    .line 5
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$1:Landroid/window/SplashScreenView;

    .line 6
    .line 7
    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v9, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Runnable;

    .line 12
    .line 13
    iget v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;->f$5:F

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    iget-object v8, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    invoke-direct/range {v2 .. v10}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;-><init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;F)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    .line 34
    .line 35
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 36
    .line 37
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget v5, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    .line 40
    .line 41
    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    .line 42
    .line 43
    iget v7, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    .line 44
    .line 45
    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    .line 46
    .line 47
    iget v9, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    .line 48
    .line 49
    iget v10, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRoundedCornerRadius:F

    .line 50
    .line 51
    sget-object v11, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/4 v12, 0x0

    .line 58
    sub-int/2addr v11, v12

    .line 59
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    const/4 v14, 0x2

    .line 64
    div-int/2addr v13, v14

    .line 65
    mul-int/2addr v11, v11

    .line 66
    mul-int v16, v13, v13

    .line 67
    .line 68
    add-int v11, v16, v11

    .line 69
    .line 70
    move-object/from16 v16, v15

    .line 71
    .line 72
    int-to-double v14, v11

    .line 73
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v14

    .line 77
    double-to-int v11, v14

    .line 78
    int-to-float v11, v11

    .line 79
    const/high16 v14, 0x3fa00000    # 1.25f

    .line 80
    .line 81
    mul-float/2addr v11, v14

    .line 82
    float-to-double v14, v11

    .line 83
    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    .line 84
    .line 85
    add-double v14, v14, v17

    .line 86
    .line 87
    double-to-int v11, v14

    .line 88
    const/4 v14, -0x1

    .line 89
    filled-new-array {v14, v14, v12}, [I

    .line 90
    .line 91
    .line 92
    move-result-object v21

    .line 93
    const/4 v15, 0x3

    .line 94
    new-array v15, v15, [F

    .line 95
    .line 96
    fill-array-data v15, :array_0

    .line 97
    .line 98
    .line 99
    new-instance v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    .line 100
    .line 101
    invoke-direct {v14, v1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;-><init>(Landroid/view/ViewGroup;)V

    .line 102
    .line 103
    .line 104
    move/from16 v24, v9

    .line 105
    .line 106
    iget-object v9, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mCircleCenter:Landroid/graphics/Point;

    .line 107
    .line 108
    invoke-virtual {v9, v13, v12}, Landroid/graphics/Point;->set(II)V

    .line 109
    .line 110
    .line 111
    iput v12, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mInitRadius:I

    .line 112
    .line 113
    iput v11, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mFinishRadius:I

    .line 114
    .line 115
    new-instance v9, Landroid/graphics/RadialGradient;

    .line 116
    .line 117
    const/16 v18, 0x0

    .line 118
    .line 119
    const/16 v19, 0x0

    .line 120
    .line 121
    const/high16 v20, 0x3f800000    # 1.0f

    .line 122
    .line 123
    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 124
    .line 125
    move-object/from16 v17, v9

    .line 126
    .line 127
    move-object/from16 v22, v15

    .line 128
    .line 129
    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 130
    .line 131
    .line 132
    iget-object v11, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    .line 133
    .line 134
    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 135
    .line 136
    .line 137
    iget-object v9, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    .line 138
    .line 139
    sget-object v11, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    .line 140
    .line 141
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 142
    .line 143
    .line 144
    if-eqz v16, :cond_0

    .line 145
    .line 146
    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceControl;->isValid()Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-eqz v9, :cond_0

    .line 151
    .line 152
    new-instance v9, Landroid/view/View;

    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-direct {v9, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 166
    .line 167
    .line 168
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    .line 169
    .line 170
    const/4 v12, -0x1

    .line 171
    invoke-direct {v11, v12, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    new-instance v21, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    .line 178
    .line 179
    const/4 v12, 0x0

    .line 180
    neg-int v11, v2

    .line 181
    int-to-float v13, v11

    .line 182
    move-object/from16 v11, v21

    .line 183
    .line 184
    move-object v15, v14

    .line 185
    move-object v14, v9

    .line 186
    move-object/from16 v25, v15

    .line 187
    .line 188
    move-object/from16 v15, v16

    .line 189
    .line 190
    move-object/from16 v16, v1

    .line 191
    .line 192
    move-object/from16 v17, v3

    .line 193
    .line 194
    move-object/from16 v18, v4

    .line 195
    .line 196
    move/from16 v19, v2

    .line 197
    .line 198
    move/from16 v20, v10

    .line 199
    .line 200
    invoke-direct/range {v11 .. v20}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;-><init>(FFLandroid/view/View;Landroid/view/SurfaceControl;Landroid/view/ViewGroup;Lcom/android/wm/shell/common/TransactionPool;Landroid/graphics/Rect;IF)V

    .line 201
    .line 202
    .line 203
    move-object/from16 v2, v21

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_0
    move-object/from16 v25, v14

    .line 207
    .line 208
    const/4 v9, 0x0

    .line 209
    move-object v2, v9

    .line 210
    :goto_0
    const/4 v3, 0x2

    .line 211
    new-array v3, v3, [F

    .line 212
    .line 213
    fill-array-data v3, :array_1

    .line 214
    .line 215
    .line 216
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    int-to-long v10, v5

    .line 221
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    .line 223
    .line 224
    sget-object v4, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 225
    .line 226
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$1;

    .line 233
    .line 234
    move-object/from16 v4, v25

    .line 235
    .line 236
    invoke-direct {v0, v2, v1, v4, v9}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;Landroid/view/ViewGroup;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;

    .line 243
    .line 244
    move-object v11, v0

    .line 245
    move v12, v6

    .line 246
    move v13, v5

    .line 247
    move-object v14, v1

    .line 248
    move v15, v7

    .line 249
    move/from16 v16, v8

    .line 250
    .line 251
    move/from16 v17, v24

    .line 252
    .line 253
    move-object/from16 v18, v4

    .line 254
    .line 255
    move-object/from16 v19, v2

    .line 256
    .line 257
    invoke-direct/range {v11 .. v19}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;-><init>(IILandroid/view/ViewGroup;FFILcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
