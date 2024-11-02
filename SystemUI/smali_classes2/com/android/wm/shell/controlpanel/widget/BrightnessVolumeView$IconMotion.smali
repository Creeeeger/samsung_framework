.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIconRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    return-void
.end method

.method public static getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    neg-float v0, p0

    .line 7
    add-float/2addr v0, p1

    .line 8
    :cond_0
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aput p0, p1, v1

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    aput v0, p1, p0

    .line 16
    .line 17
    const-string/jumbo p0, "translationX"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, p0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    int-to-long p1, p2

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v5, p7

    .line 19
    .line 20
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const v5, 0x7f070364

    .line 24
    .line 25
    .line 26
    move-object/from16 v6, p0

    .line 27
    .line 28
    iget-object v6, v6, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    .line 29
    .line 30
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const v7, 0x7f070369

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const v8, 0x7f070367

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/4 v9, 0x2

    .line 49
    move/from16 v10, p1

    .line 50
    .line 51
    if-ne v10, v9, :cond_0

    .line 52
    .line 53
    move-object/from16 v10, p5

    .line 54
    .line 55
    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    const v3, 0x7f070370

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const v3, 0x7f07036e

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    :cond_0
    new-array v3, v9, [F

    .line 79
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    aput v6, v3, v4

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    const/high16 v10, 0x3f000000    # 0.5f

    .line 88
    .line 89
    aput v10, v3, v6

    .line 90
    .line 91
    const-string v11, "alpha"

    .line 92
    .line 93
    invoke-static {v1, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-array v12, v9, [F

    .line 98
    .line 99
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    aput v13, v12, v4

    .line 104
    .line 105
    aput v10, v12, v6

    .line 106
    .line 107
    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    new-instance v11, Landroid/animation/AnimatorSet;

    .line 112
    .line 113
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 114
    .line 115
    .line 116
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 121
    .line 122
    .line 123
    filled-new-array {v10}, [Landroid/animation/Animator;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 128
    .line 129
    .line 130
    const-wide/16 v12, 0x0

    .line 131
    .line 132
    if-eqz p8, :cond_1

    .line 133
    .line 134
    move-wide v14, v12

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    const-wide/16 v14, 0x96

    .line 137
    .line 138
    :goto_0
    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 139
    .line 140
    .line 141
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 142
    .line 143
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    .line 148
    .line 149
    new-array v3, v9, [F

    .line 150
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    aput v10, v3, v4

    .line 156
    .line 157
    int-to-float v5, v5

    .line 158
    aput v5, v3, v6

    .line 159
    .line 160
    const-string/jumbo v5, "x"

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-array v3, v9, [F

    .line 168
    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    aput v10, v3, v4

    .line 174
    .line 175
    int-to-float v7, v7

    .line 176
    aput v7, v3, v6

    .line 177
    .line 178
    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-array v3, v9, [F

    .line 183
    .line 184
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    aput v7, v3, v4

    .line 189
    .line 190
    int-to-float v4, v8

    .line 191
    aput v4, v3, v6

    .line 192
    .line 193
    invoke-static {v2, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 198
    .line 199
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 200
    .line 201
    .line 202
    filled-new-array {v0}, [Landroid/animation/Animator;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 207
    .line 208
    .line 209
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 214
    .line 215
    .line 216
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 221
    .line 222
    .line 223
    if-eqz p8, :cond_2

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    const-wide/16 v12, 0xc8

    .line 227
    .line 228
    :goto_1
    invoke-virtual {v3, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 229
    .line 230
    .line 231
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 232
    .line 233
    const/4 v1, 0x0

    .line 234
    const/high16 v2, 0x3f800000    # 1.0f

    .line 235
    .line 236
    const v4, 0x3e6147ae    # 0.22f

    .line 237
    .line 238
    .line 239
    const/high16 v5, 0x3e800000    # 0.25f

    .line 240
    .line 241
    invoke-direct {v0, v4, v5, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 248
    .line 249
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    .line 251
    .line 252
    filled-new-array {v11}, [Landroid/animation/Animator;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 257
    .line 258
    .line 259
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 21

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v9, p8

    .line 21
    .line 22
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    .line 26
    .line 27
    const v3, 0x7f070365

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const v7, 0x7f07036a

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const v10, 0x7f070368

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const/4 v12, 0x2

    .line 49
    move/from16 v13, p1

    .line 50
    .line 51
    move-object/from16 v14, p6

    .line 52
    .line 53
    if-ne v13, v12, :cond_0

    .line 54
    .line 55
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    const v0, 0x7f070371

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const v0, 0x7f07036f

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    :cond_0
    new-array v0, v12, [F

    .line 79
    .line 80
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    aput v2, v0, v1

    .line 85
    .line 86
    const/high16 v2, 0x3f000000    # 0.5f

    .line 87
    .line 88
    const/4 v15, 0x1

    .line 89
    aput v2, v0, v15

    .line 90
    .line 91
    const-string v2, "alpha"

    .line 92
    .line 93
    invoke-static {v5, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-array v15, v12, [F

    .line 98
    .line 99
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    .line 100
    .line 101
    .line 102
    move-result v17

    .line 103
    aput v17, v15, v1

    .line 104
    .line 105
    const v17, 0x3dcccccd    # 0.1f

    .line 106
    .line 107
    .line 108
    const/16 v16, 0x1

    .line 109
    .line 110
    aput v17, v15, v16

    .line 111
    .line 112
    invoke-static {v6, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v15, Landroid/animation/AnimatorSet;

    .line 117
    .line 118
    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    .line 120
    .line 121
    filled-new-array {v0}, [Landroid/animation/Animator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 126
    .line 127
    .line 128
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 133
    .line 134
    .line 135
    const-wide/16 v17, 0x0

    .line 136
    .line 137
    if-eqz p9, :cond_1

    .line 138
    .line 139
    move-wide/from16 v1, v17

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    const-wide/16 v19, 0x64

    .line 143
    .line 144
    move-wide/from16 v1, v19

    .line 145
    .line 146
    :goto_0
    invoke-virtual {v15, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 147
    .line 148
    .line 149
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 150
    .line 151
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    .line 156
    .line 157
    new-array v1, v12, [F

    .line 158
    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    const/4 v0, 0x0

    .line 164
    aput v2, v1, v0

    .line 165
    .line 166
    int-to-float v2, v3

    .line 167
    const/4 v3, 0x1

    .line 168
    aput v2, v1, v3

    .line 169
    .line 170
    const-string/jumbo v2, "x"

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    new-array v3, v12, [F

    .line 178
    .line 179
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    .line 180
    .line 181
    .line 182
    move-result v19

    .line 183
    aput v19, v3, v0

    .line 184
    .line 185
    int-to-float v7, v7

    .line 186
    const/16 v16, 0x1

    .line 187
    .line 188
    aput v7, v3, v16

    .line 189
    .line 190
    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    new-array v7, v12, [F

    .line 195
    .line 196
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    aput v12, v7, v0

    .line 201
    .line 202
    int-to-float v0, v10

    .line 203
    aput v0, v7, v16

    .line 204
    .line 205
    invoke-static {v6, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 210
    .line 211
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 212
    .line 213
    .line 214
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 219
    .line 220
    .line 221
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 226
    .line 227
    .line 228
    filled-new-array {v0}, [Landroid/animation/Animator;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    .line 234
    .line 235
    if-eqz p9, :cond_2

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_2
    const-wide/16 v17, 0xc8

    .line 239
    .line 240
    :goto_1
    move-wide/from16 v0, v17

    .line 241
    .line 242
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 243
    .line 244
    .line 245
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 246
    .line 247
    const v1, 0x3e6147ae    # 0.22f

    .line 248
    .line 249
    .line 250
    const/high16 v3, 0x3e800000    # 0.25f

    .line 251
    .line 252
    const/4 v7, 0x0

    .line 253
    const/high16 v10, 0x3f800000    # 1.0f

    .line 254
    .line 255
    invoke-direct {v0, v1, v3, v7, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    .line 260
    .line 261
    new-instance v12, Landroid/animation/AnimatorSet;

    .line 262
    .line 263
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 264
    .line 265
    .line 266
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 271
    .line 272
    .line 273
    filled-new-array {v15}, [Landroid/animation/Animator;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mHandler:Landroid/os/Handler;

    .line 281
    .line 282
    iget-object v1, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mIconRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    .line 286
    .line 287
    new-instance v15, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 288
    .line 289
    const/4 v10, 0x0

    .line 290
    move-object v0, v15

    .line 291
    move-object/from16 v1, p0

    .line 292
    .line 293
    move/from16 v2, p2

    .line 294
    .line 295
    move/from16 v3, p1

    .line 296
    .line 297
    move-object/from16 v4, p3

    .line 298
    .line 299
    move-object/from16 v5, p4

    .line 300
    .line 301
    move-object/from16 v6, p5

    .line 302
    .line 303
    move-object/from16 v7, p6

    .line 304
    .line 305
    move-object/from16 v8, p7

    .line 306
    .line 307
    move-object/from16 v9, p8

    .line 308
    .line 309
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 310
    .line 311
    .line 312
    iput-object v15, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mIconRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 313
    .line 314
    new-instance v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$1;

    .line 315
    .line 316
    invoke-direct {v0, v11}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$1;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 21

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    move-object/from16 v8, p7

    .line 14
    .line 15
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v9, p8

    .line 23
    .line 24
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    .line 28
    .line 29
    const v7, 0x7f070366

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const/4 v12, 0x2

    .line 37
    if-ne v3, v12, :cond_0

    .line 38
    .line 39
    move-object/from16 v13, p6

    .line 40
    .line 41
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f07036d

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const v0, 0x3e99999a    # 0.3f

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object/from16 v13, p6

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    new-array v14, v12, [F

    .line 65
    .line 66
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    aput v15, v14, v1

    .line 71
    .line 72
    const/4 v15, 0x1

    .line 73
    aput v0, v14, v15

    .line 74
    .line 75
    const-string v0, "alpha"

    .line 76
    .line 77
    invoke-static {v5, v0, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    new-array v10, v12, [F

    .line 82
    .line 83
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    .line 84
    .line 85
    .line 86
    move-result v17

    .line 87
    aput v17, v10, v1

    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    aput v16, v10, v15

    .line 92
    .line 93
    invoke-static {v6, v0, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v10, Landroid/animation/AnimatorSet;

    .line 98
    .line 99
    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    .line 101
    .line 102
    filled-new-array {v14}, [Landroid/animation/Animator;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 107
    .line 108
    .line 109
    filled-new-array {v0}, [Landroid/animation/Animator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 114
    .line 115
    .line 116
    const-wide/16 v17, 0x0

    .line 117
    .line 118
    if-eqz p9, :cond_1

    .line 119
    .line 120
    move-object v14, v2

    .line 121
    move-wide/from16 v1, v17

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const-wide/16 v19, 0x64

    .line 125
    .line 126
    move-object v14, v2

    .line 127
    move-wide/from16 v1, v19

    .line 128
    .line 129
    :goto_1
    invoke-virtual {v10, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 130
    .line 131
    .line 132
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    .line 139
    .line 140
    new-array v1, v12, [F

    .line 141
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    const/4 v0, 0x0

    .line 147
    aput v2, v1, v0

    .line 148
    .line 149
    int-to-float v2, v7

    .line 150
    aput v2, v1, v15

    .line 151
    .line 152
    const-string/jumbo v2, "x"

    .line 153
    .line 154
    .line 155
    invoke-static {v4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 160
    .line 161
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 162
    .line 163
    .line 164
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 169
    .line 170
    .line 171
    if-ne v3, v12, :cond_2

    .line 172
    .line 173
    const v1, 0x7f070372

    .line 174
    .line 175
    .line 176
    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    new-array v12, v12, [F

    .line 181
    .line 182
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    const/4 v0, 0x0

    .line 187
    aput v14, v12, v0

    .line 188
    .line 189
    int-to-float v0, v1

    .line 190
    aput v0, v12, v15

    .line 191
    .line 192
    invoke-static {v5, v2, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    filled-new-array {v0}, [Landroid/animation/Animator;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 201
    .line 202
    .line 203
    :cond_2
    if-eqz p9, :cond_3

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_3
    const-wide/16 v17, 0xc8

    .line 207
    .line 208
    :goto_2
    move-wide/from16 v0, v17

    .line 209
    .line 210
    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 211
    .line 212
    .line 213
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 214
    .line 215
    const/high16 v1, 0x3f800000    # 1.0f

    .line 216
    .line 217
    const v2, 0x3e6147ae    # 0.22f

    .line 218
    .line 219
    .line 220
    const/high16 v12, 0x3e800000    # 0.25f

    .line 221
    .line 222
    const/4 v14, 0x0

    .line 223
    invoke-direct {v0, v2, v12, v14, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mHandler:Landroid/os/Handler;

    .line 230
    .line 231
    iget-object v1, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mIconRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    .line 235
    .line 236
    new-instance v12, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    const/4 v14, 0x1

    .line 239
    move-object v0, v12

    .line 240
    move-object/from16 v1, p0

    .line 241
    .line 242
    move/from16 v2, p2

    .line 243
    .line 244
    move/from16 v3, p1

    .line 245
    .line 246
    move-object/from16 v4, p3

    .line 247
    .line 248
    move-object/from16 v5, p4

    .line 249
    .line 250
    move-object/from16 v6, p5

    .line 251
    .line 252
    move-object v15, v7

    .line 253
    move-object/from16 v7, p6

    .line 254
    .line 255
    move-object/from16 v8, p7

    .line 256
    .line 257
    move-object/from16 v9, p8

    .line 258
    .line 259
    move-object v13, v10

    .line 260
    move v10, v14

    .line 261
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 262
    .line 263
    .line 264
    iput-object v12, v11, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mIconRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 265
    .line 266
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 267
    .line 268
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 269
    .line 270
    .line 271
    filled-new-array {v13}, [Landroid/animation/Animator;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 276
    .line 277
    .line 278
    filled-new-array {v15}, [Landroid/animation/Animator;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 283
    .line 284
    .line 285
    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$2;

    .line 286
    .line 287
    invoke-direct {v1, v11}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$2;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 294
    .line 295
    .line 296
    return-void
.end method

.method public final startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    .line 23
    .line 24
    const v8, 0x7f070366

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v9, 0x2

    .line 32
    move v10, p1

    .line 33
    if-ne v10, v9, :cond_0

    .line 34
    .line 35
    const v8, 0x7f07036d

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const/16 v7, 0x8

    .line 43
    .line 44
    move-object/from16 v10, p5

    .line 45
    .line 46
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    new-array v6, v9, [F

    .line 56
    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    aput v7, v6, v5

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    const/4 v10, 0x0

    .line 65
    aput v10, v6, v7

    .line 66
    .line 67
    const-string v11, "alpha"

    .line 68
    .line 69
    invoke-static {v2, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-array v6, v9, [F

    .line 74
    .line 75
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    aput v12, v6, v5

    .line 80
    .line 81
    aput v10, v6, v7

    .line 82
    .line 83
    invoke-static {v3, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 88
    .line 89
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 90
    .line 91
    .line 92
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 97
    .line 98
    .line 99
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 104
    .line 105
    .line 106
    const-wide/16 v2, 0x0

    .line 107
    .line 108
    if-eqz p8, :cond_1

    .line 109
    .line 110
    move-wide v11, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const-wide/16 v11, 0x64

    .line 113
    .line 114
    :goto_0
    invoke-virtual {v6, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 115
    .line 116
    .line 117
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    .line 118
    .line 119
    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    .line 124
    .line 125
    new-array v9, v9, [F

    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    aput v11, v9, v5

    .line 132
    .line 133
    int-to-float v5, v8

    .line 134
    aput v5, v9, v7

    .line 135
    .line 136
    const-string/jumbo v5, "x"

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz p8, :cond_2

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    const-wide/16 v2, 0xc8

    .line 147
    .line 148
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    .line 150
    .line 151
    const v2, 0x3e6147ae    # 0.22f

    .line 152
    .line 153
    .line 154
    const/high16 v3, 0x3e800000    # 0.25f

    .line 155
    .line 156
    const/high16 v5, 0x3f800000    # 1.0f

    .line 157
    .line 158
    invoke-static {v2, v3, v10, v5, v1}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mHandler:Landroid/os/Handler;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mIconRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 169
    .line 170
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 171
    .line 172
    .line 173
    filled-new-array {v6}, [Landroid/animation/Animator;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 178
    .line 179
    .line 180
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 188
    .line 189
    .line 190
    if-nez p8, :cond_3

    .line 191
    .line 192
    invoke-virtual {v4, v10}, Landroid/view/View;->setScaleX(F)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 196
    .line 197
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 198
    .line 199
    invoke-direct {v0, v4, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 203
    .line 204
    .line 205
    iput v10, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 206
    .line 207
    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda1;

    .line 208
    .line 209
    invoke-direct {v1, v4}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 216
    .line 217
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 218
    .line 219
    .line 220
    const/high16 v2, 0x43960000    # 300.0f

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 223
    .line 224
    .line 225
    const v2, 0x3f147ae1    # 0.58f

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 229
    .line 230
    .line 231
    iput-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 232
    .line 233
    invoke-virtual {v0, v10}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 237
    .line 238
    .line 239
    :cond_3
    return-void
.end method
