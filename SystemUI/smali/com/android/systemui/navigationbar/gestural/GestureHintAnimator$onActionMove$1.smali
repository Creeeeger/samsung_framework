.class public final Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $distanceX:I

.field public final synthetic $distanceY:I

.field public final synthetic $duration:J

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;IIJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceX:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceY:I

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$duration:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v0, :cond_c

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 14
    .line 15
    iget v2, v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    .line 16
    .line 17
    invoke-static {v2}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/high16 v2, 0x43520000    # 210.0f

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/high16 v2, 0x42d20000    # 105.0f

    .line 27
    .line 28
    :goto_0
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->context:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 44
    .line 45
    iget v4, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    .line 46
    .line 47
    invoke-static {v4}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const/high16 v4, 0x41880000    # 17.0f

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/high16 v4, 0x41080000    # 8.5f

    .line 57
    .line 58
    :goto_1
    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->context:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 73
    .line 74
    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceX:I

    .line 75
    .line 76
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceY:I

    .line 77
    .line 78
    iget-object v7, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 79
    .line 80
    iget-object v7, v7, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 81
    .line 82
    iget v7, v7, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 83
    .line 84
    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    .line 85
    .line 86
    const/4 v8, 0x2

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    if-eqz v7, :cond_3

    .line 90
    .line 91
    if-ne v7, v8, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    :goto_3
    int-to-float v5, v4

    .line 104
    mul-float v6, v2, v5

    .line 105
    .line 106
    div-float/2addr v6, v1

    .line 107
    if-lez v4, :cond_4

    .line 108
    .line 109
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    neg-float v2, v2

    .line 115
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 120
    .line 121
    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    .line 122
    .line 123
    invoke-static {v4}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    const v4, 0x3f947ae1    # 1.16f

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_5
    const v4, 0x3f8ccccd    # 1.1f

    .line 134
    .line 135
    .line 136
    :goto_5
    const/high16 v6, 0x3f800000    # 1.0f

    .line 137
    .line 138
    sub-float v7, v4, v6

    .line 139
    .line 140
    mul-float/2addr v7, v5

    .line 141
    div-float/2addr v7, v1

    .line 142
    add-float/2addr v7, v6

    .line 143
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 148
    .line 149
    iget-object v5, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 150
    .line 151
    iget-object v5, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 152
    .line 153
    iget v5, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 154
    .line 155
    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    .line 156
    .line 157
    const-string/jumbo v7, "scaleY"

    .line 158
    .line 159
    .line 160
    if-eqz v4, :cond_9

    .line 161
    .line 162
    if-eqz v5, :cond_9

    .line 163
    .line 164
    if-ne v5, v8, :cond_6

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_6
    const/4 v4, 0x3

    .line 168
    if-ne v5, v4, :cond_7

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_7
    if-ne v5, v3, :cond_8

    .line 178
    .line 179
    neg-float v2, v2

    .line 180
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 184
    .line 185
    .line 186
    :cond_8
    :goto_6
    move-object v1, v7

    .line 187
    goto :goto_8

    .line 188
    :cond_9
    :goto_7
    neg-float v2, v2

    .line 189
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 193
    .line 194
    .line 195
    const-string/jumbo v1, "scaleX"

    .line 196
    .line 197
    .line 198
    :goto_8
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 199
    .line 200
    iget v2, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    .line 201
    .line 202
    if-ne v2, v3, :cond_c

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-lez v2, :cond_c

    .line 209
    .line 210
    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-wide v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$duration:J

    .line 216
    .line 217
    const-wide/16 v8, 0x0

    .line 218
    .line 219
    cmp-long v4, v4, v8

    .line 220
    .line 221
    if-nez v4, :cond_a

    .line 222
    .line 223
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 226
    .line 227
    if-eqz v0, :cond_c

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 233
    .line 234
    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 239
    .line 240
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 241
    .line 242
    if-nez v4, :cond_c

    .line 243
    .line 244
    new-array v3, v3, [F

    .line 245
    .line 246
    aput v6, v3, v2

    .line 247
    .line 248
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 253
    .line 254
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 255
    .line 256
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 257
    .line 258
    .line 259
    iput-object v4, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 260
    .line 261
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 262
    .line 263
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 264
    .line 265
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 273
    .line 274
    .line 275
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 276
    .line 277
    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 278
    .line 279
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    const-wide/16 v3, 0x1f4

    .line 283
    .line 284
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 285
    .line 286
    .line 287
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 288
    .line 289
    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 290
    .line 291
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    new-instance v3, Landroid/view/animation/PathInterpolator;

    .line 295
    .line 296
    const v4, 0x3e2e147b    # 0.17f

    .line 297
    .line 298
    .line 299
    const v5, 0x3dcccccd    # 0.1f

    .line 300
    .line 301
    .line 302
    invoke-direct {v3, v4, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    .line 307
    .line 308
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 309
    .line 310
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    .line 311
    .line 312
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 316
    .line 317
    .line 318
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    if-eqz p0, :cond_b

    .line 323
    .line 324
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 325
    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_b
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    .line 329
    .line 330
    .line 331
    :cond_c
    :goto_9
    return-void
.end method
