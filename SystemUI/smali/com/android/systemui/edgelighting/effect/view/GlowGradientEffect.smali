.class public final Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mGlowView:Landroid/widget/ImageView;

.field public mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

.field public mLightingAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mLightingAlpha:F

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 18
    .line 19
    new-instance p1, Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 29
    .line 30
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 36
    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v1, "display"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 64
    .line 65
    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "getSubDisplay() : length "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    array-length v2, p1

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v2, Lcom/android/systemui/edgelighting/effect/utils/Utils;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    array-length v1, p1

    .line 94
    move v3, v0

    .line 95
    :goto_0
    if-ge v3, v1, :cond_3

    .line 96
    .line 97
    aget-object v4, p1, v3

    .line 98
    .line 99
    if-nez v4, :cond_0

    .line 100
    .line 101
    const-string v5, "Do not show SubScreen UI on null display"

    .line 102
    .line 103
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const/4 v6, 0x1

    .line 112
    if-ne v5, v6, :cond_1

    .line 113
    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v7, "Show SubScreen UI on this display "

    .line 117
    .line 118
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v6, "Do not show SubScreen UI on this display "

    .line 135
    .line 136
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :goto_1
    move v6, v0

    .line 150
    :goto_2
    if-eqz v6, :cond_2

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    const/4 v4, 0x0

    .line 157
    :goto_3
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_4

    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 164
    .line 165
    const v1, 0x7f080776

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 173
    .line 174
    const v1, 0x7f080775

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    .line 179
    .line 180
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 191
    .line 192
    .line 193
    const-string p0, "GLOW"

    .line 194
    .line 195
    const-string p1, "init"

    .line 196
    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mLightingAlpha:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [F

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    aput v3, v1, v2

    .line 16
    .line 17
    const-string v2, "alpha"

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0x384

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect$1;

    .line 29
    .line 30
    invoke-direct {v4, p0}, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-static {p0, v3, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
