.class public Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;
.super Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mColorType:I

.field public mMidLayer:Landroid/widget/ImageView;

.field public mMultiLineEffectContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    const-string p1, "GradientMultiLineEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mColorType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    const-string p1, "GradientMultiLineEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mColorType:I

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-wide/16 v2, 0x190

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "layout_inflater"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/LayoutInflater;

    .line 12
    .line 13
    const v1, 0x7f0d04f0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a043b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    const v0, 0x7f0a0c00

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 40
    .line 41
    const v0, 0x7f0a0175

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 51
    .line 52
    const v0, 0x7f0a0608

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 60
    .line 61
    const v0, 0x7f0a0692

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final setImageDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f08070b

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mColorType:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 18
    .line 19
    const v2, 0x7f08070c

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method public final startRotation(J)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    new-array v1, v0, [F

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    .line 40
    aput v3, v1, v2

    .line 41
    .line 42
    const-string v2, "alpha"

    .line 43
    .line 44
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-wide/16 v1, 0x12c

    .line 49
    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    new-array v6, v5, [F

    .line 57
    .line 58
    fill-array-data v6, :array_0

    .line 59
    .line 60
    .line 61
    const-string/jumbo v7, "rotation"

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 69
    .line 70
    new-array v8, v5, [F

    .line 71
    .line 72
    fill-array-data v8, :array_1

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 80
    .line 81
    new-array v9, v5, [F

    .line 82
    .line 83
    fill-array-data v9, :array_2

    .line 84
    .line 85
    .line 86
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const-wide/16 v8, 0xbb8

    .line 91
    .line 92
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    .line 100
    .line 101
    iget v8, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mColorType:I

    .line 102
    .line 103
    if-ne v8, v5, :cond_1

    .line 104
    .line 105
    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v1, 0x1f4

    .line 109
    .line 110
    invoke-virtual {v7, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const-wide/16 v1, 0x15e

    .line 115
    .line 116
    invoke-virtual {v4, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 120
    .line 121
    .line 122
    const/4 v1, -0x1

    .line 123
    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 139
    .line 140
    invoke-direct {v0, p2, p2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 147
    .line 148
    invoke-direct {v0, p2, p2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 155
    .line 156
    invoke-direct {v0, p2, p2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    .line 161
    .line 162
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 163
    .line 164
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 168
    .line 169
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mColorType:I

    .line 170
    .line 171
    if-ne v0, v5, :cond_2

    .line 172
    .line 173
    filled-new-array {v4, v6, v7, p1}, [Landroid/animation/Animator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_2
    filled-new-array {v4, v7, p1}, [Landroid/animation/Animator;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    .line 187
    .line 188
    :goto_1
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView$2;

    .line 189
    .line 190
    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final updateEffectAlpha()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
