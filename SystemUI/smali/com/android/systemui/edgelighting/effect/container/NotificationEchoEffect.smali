.class public Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const-wide/16 v1, 0x2bc

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final dismissToastPopup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final init()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 20
    .line 21
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 22
    .line 23
    iget v3, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    .line 24
    .line 25
    iput v2, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    .line 26
    .line 27
    iput v3, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenHeight:I

    .line 28
    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 36
    .line 37
    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 41
    .line 42
    const/high16 v2, -0x40800000    # -1.0f

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 48
    .line 49
    :goto_0
    const/4 v0, 0x3

    .line 50
    if-ge v1, v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v2, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const/16 v3, -0x100

    .line 64
    .line 65
    invoke-static {v3}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .line 74
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    .line 75
    .line 76
    int-to-float v4, v4

    .line 77
    const/high16 v5, 0x40800000    # 4.0f

    .line 78
    .line 79
    mul-float/2addr v4, v5

    .line 80
    const/high16 v6, 0x44870000    # 1080.0f

    .line 81
    .line 82
    div-float/2addr v4, v6

    .line 83
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget v7, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenHeight:I

    .line 88
    .line 89
    int-to-float v7, v7

    .line 90
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    .line 91
    .line 92
    aget v8, v8, v1

    .line 93
    .line 94
    mul-float/2addr v7, v8

    .line 95
    float-to-int v7, v7

    .line 96
    invoke-direct {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    .line 100
    .line 101
    int-to-float v4, v4

    .line 102
    mul-int/lit8 v7, v1, 0xa

    .line 103
    .line 104
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    int-to-float v7, v7

    .line 107
    mul-float/2addr v4, v7

    .line 108
    div-float/2addr v4, v6

    .line 109
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 114
    .line 115
    .line 116
    const/16 v4, 0xf

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 132
    .line 133
    new-instance v2, Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const v9, 0x7f080773

    .line 147
    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    invoke-virtual {v3, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    .line 156
    .line 157
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    .line 159
    iget v9, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    .line 160
    .line 161
    int-to-float v9, v9

    .line 162
    mul-float/2addr v9, v5

    .line 163
    div-float/2addr v9, v6

    .line 164
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    iget v9, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenHeight:I

    .line 169
    .line 170
    int-to-float v9, v9

    .line 171
    iget-object v10, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    .line 172
    .line 173
    aget v10, v10, v1

    .line 174
    .line 175
    mul-float/2addr v9, v10

    .line 176
    float-to-int v9, v9

    .line 177
    invoke-direct {v3, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    .line 179
    .line 180
    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    .line 181
    .line 182
    int-to-float v5, v5

    .line 183
    mul-float/2addr v5, v7

    .line 184
    div-float/2addr v5, v6

    .line 185
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 190
    .line 191
    .line 192
    const/16 v5, 0x15

    .line 193
    .line 194
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public final onFlickUpAnimation()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/4 v1, 0x3

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/View;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/view/View;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->startAnimation()V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final startToastPopupAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->startAnimation()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->startAnimation()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
