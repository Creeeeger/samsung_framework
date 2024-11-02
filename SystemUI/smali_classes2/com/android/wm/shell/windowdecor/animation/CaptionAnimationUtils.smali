.class public final Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMenuPopupAnimatorSet(Landroid/content/Context;Landroid/view/View;ZIII)Landroid/animation/AnimatorSet;
    .locals 10

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v0, v1

    .line 13
    :goto_1
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    new-array v5, v4, [F

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aput v2, v5, v6

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    aput v0, v5, v7

    .line 23
    .line 24
    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 29
    .line 30
    new-array v8, v4, [F

    .line 31
    .line 32
    aput v2, v8, v6

    .line 33
    .line 34
    aput v0, v8, v7

    .line 35
    .line 36
    invoke-static {p1, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 41
    .line 42
    new-array v9, v4, [F

    .line 43
    .line 44
    aput v2, v9, v6

    .line 45
    .line 46
    aput v0, v9, v7

    .line 47
    .line 48
    invoke-static {p1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->resetPivot()V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    if-ne p3, v2, :cond_6

    .line 57
    .line 58
    const p0, 0x3dcccccd    # 0.1f

    .line 59
    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    int-to-float p3, p5

    .line 64
    mul-float/2addr p3, p0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move p3, v1

    .line 67
    :goto_2
    if-eqz p2, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    int-to-float p5, p5

    .line 71
    mul-float v1, p5, p0

    .line 72
    .line 73
    :goto_3
    if-ne p4, v7, :cond_4

    .line 74
    .line 75
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 76
    .line 77
    new-array p4, v4, [F

    .line 78
    .line 79
    neg-float p3, p3

    .line 80
    aput p3, p4, v6

    .line 81
    .line 82
    neg-float p3, v1

    .line 83
    aput p3, p4, v7

    .line 84
    .line 85
    invoke-static {p1, p0, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_6

    .line 90
    :cond_4
    if-ne p4, v4, :cond_5

    .line 91
    .line 92
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 93
    .line 94
    new-array p4, v4, [F

    .line 95
    .line 96
    aput p3, p4, v6

    .line 97
    .line 98
    aput v1, p4, v7

    .line 99
    .line 100
    invoke-static {p1, p0, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    goto :goto_6

    .line 105
    :cond_5
    const/4 p0, 0x0

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const p3, 0x7f070dae

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    const p3, 0x3ecccccd    # 0.4f

    .line 119
    .line 120
    .line 121
    if-eqz p2, :cond_7

    .line 122
    .line 123
    int-to-float p4, p0

    .line 124
    mul-float/2addr p4, p3

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    move p4, v1

    .line 127
    :goto_4
    if-eqz p2, :cond_8

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_8
    int-to-float p0, p0

    .line 131
    mul-float v1, p0, p3

    .line 132
    .line 133
    :goto_5
    if-eqz p2, :cond_9

    .line 134
    .line 135
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 136
    .line 137
    new-array p3, v4, [F

    .line 138
    .line 139
    neg-float p4, p4

    .line 140
    aput p4, p3, v6

    .line 141
    .line 142
    aput v1, p3, v7

    .line 143
    .line 144
    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    goto :goto_6

    .line 149
    :cond_9
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 150
    .line 151
    new-array p3, v4, [F

    .line 152
    .line 153
    aput p4, p3, v6

    .line 154
    .line 155
    neg-float p4, v1

    .line 156
    aput p4, p3, v7

    .line 157
    .line 158
    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :goto_6
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 163
    .line 164
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 165
    .line 166
    .line 167
    if-eqz p0, :cond_a

    .line 168
    .line 169
    filled-new-array {v3, v5, v0, p0}, [Landroid/animation/Animator;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 174
    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_a
    filled-new-array {v3, v5, v0}, [Landroid/animation/Animator;

    .line 178
    .line 179
    .line 180
    move-result-object p4

    .line 181
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 182
    .line 183
    .line 184
    :goto_7
    if-eqz p2, :cond_b

    .line 185
    .line 186
    const-wide/16 p4, 0xfa

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_b
    const-wide/16 p4, 0x15e

    .line 190
    .line 191
    :goto_8
    invoke-virtual {v5, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 195
    .line 196
    .line 197
    const-wide/16 v0, 0x64

    .line 198
    .line 199
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    .line 201
    .line 202
    if-eqz p0, :cond_c

    .line 203
    .line 204
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    .line 206
    .line 207
    :cond_c
    if-eqz p2, :cond_d

    .line 208
    .line 209
    sget-object p0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_d
    sget-object p0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 213
    .line 214
    :goto_9
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    .line 216
    .line 217
    new-instance p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;

    .line 218
    .line 219
    invoke-direct {p0, p2, p1, p3}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;-><init>(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    .line 224
    .line 225
    return-object p3
.end method

.method public static createSurfaceAlphaAnimator(Landroid/view/SurfaceControl;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    fill-array-data v1, :array_1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {p2, v0, p0}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;

    .line 37
    .line 38
    invoke-direct {p2, p0, p1, v0}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;-><init>(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 17
    .line 18
    new-array v0, v0, [F

    .line 19
    .line 20
    fill-array-data v0, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;

    .line 34
    .line 35
    invoke-direct {p2, p1, p0}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;-><init>(ZLandroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
