.class public Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    if-eqz p0, :cond_1

    .line 5
    iput p2, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mColorType:I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->hide()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    const-wide/16 v1, 0x1f4

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 16
    .line 17
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    .line 18
    .line 19
    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 20
    .line 21
    iput v2, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->setImageDrawable()V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 42
    .line 43
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    const/4 v2, -0x1

    .line 46
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->hide()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const-wide/16 v1, 0x1f4

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v2, v0, v1

    .line 8
    .line 9
    if-lez v2, :cond_1

    .line 10
    .line 11
    iget v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 12
    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 16
    .line 17
    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 21
    .line 22
    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 25
    .line 26
    cmpl-float v0, p1, v1

    .line 27
    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 31
    .line 32
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 5
    .line 6
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 7
    .line 8
    iput p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 9
    .line 10
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    iget p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aget v2, p0, v1

    .line 27
    .line 28
    float-to-double v3, v2

    .line 29
    const-wide v5, 0x3fc3333333333333L    # 0.15

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmpg-double v3, v3, v5

    .line 35
    .line 36
    const-string v4, " B : "

    .line 37
    .line 38
    const-string v5, " S : "

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    if-gtz v3, :cond_0

    .line 42
    .line 43
    aget v3, p0, v6

    .line 44
    .line 45
    const v7, 0x3f666666    # 0.9f

    .line 46
    .line 47
    .line 48
    cmpl-float v3, v3, v7

    .line 49
    .line 50
    if-ltz v3, :cond_0

    .line 51
    .line 52
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 53
    .line 54
    const v2, -0x190503

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 61
    .line 62
    const v2, -0x251214

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 69
    .line 70
    const v2, -0x260c19

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v3, " White color : H : "

    .line 81
    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 86
    .line 87
    aget v0, v3, v0

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 96
    .line 97
    aget v0, v0, v1

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 106
    .line 107
    aget p1, p1, v6

    .line 108
    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_0
    const/4 v3, 0x0

    .line 122
    cmpg-float v3, v3, v2

    .line 123
    .line 124
    if-gtz v3, :cond_1

    .line 125
    .line 126
    const/high16 v3, 0x3f800000    # 1.0f

    .line 127
    .line 128
    cmpg-float v3, v2, v3

    .line 129
    .line 130
    if-gtz v3, :cond_1

    .line 131
    .line 132
    aget v3, p0, v6

    .line 133
    .line 134
    const v7, 0x3dcccccd    # 0.1f

    .line 135
    .line 136
    .line 137
    cmpg-float v3, v3, v7

    .line 138
    .line 139
    if-gtz v3, :cond_1

    .line 140
    .line 141
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 142
    .line 143
    const v2, -0xc1bcb5

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 150
    .line 151
    const v2, -0xadb7a9

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 158
    .line 159
    const v2, -0xb2a6a6

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v3, " Black color : H : "

    .line 170
    .line 171
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v3, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 175
    .line 176
    aget v0, v3, v0

    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 185
    .line 186
    aget v0, v0, v1

    .line 187
    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 195
    .line 196
    aget p1, p1, v6

    .line 197
    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :cond_1
    aget v3, p0, v0

    .line 211
    .line 212
    const/high16 v4, 0x43160000    # 150.0f

    .line 213
    .line 214
    cmpl-float v5, v3, v4

    .line 215
    .line 216
    const/high16 v7, 0x43b40000    # 360.0f

    .line 217
    .line 218
    const/high16 v8, 0x41200000    # 10.0f

    .line 219
    .line 220
    const/high16 v9, 0x42700000    # 60.0f

    .line 221
    .line 222
    const v10, 0x3e99999a    # 0.3f

    .line 223
    .line 224
    .line 225
    const v11, 0x3f4ccccd    # 0.8f

    .line 226
    .line 227
    .line 228
    if-ltz v5, :cond_3

    .line 229
    .line 230
    cmpg-float v5, v3, v7

    .line 231
    .line 232
    if-gtz v5, :cond_3

    .line 233
    .line 234
    sub-float/2addr v3, v9

    .line 235
    aput v3, p0, v0

    .line 236
    .line 237
    cmpl-float v2, v2, v11

    .line 238
    .line 239
    if-lez v2, :cond_2

    .line 240
    .line 241
    aput v11, p0, v1

    .line 242
    .line 243
    :cond_2
    aget v2, p0, v6

    .line 244
    .line 245
    cmpl-float v2, v2, v11

    .line 246
    .line 247
    if-lez v2, :cond_6

    .line 248
    .line 249
    aput v11, p0, v6

    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_3
    cmpl-float v5, v3, v8

    .line 253
    .line 254
    const/high16 v12, 0x42200000    # 40.0f

    .line 255
    .line 256
    if-lez v5, :cond_5

    .line 257
    .line 258
    cmpg-float v4, v3, v4

    .line 259
    .line 260
    if-gez v4, :cond_5

    .line 261
    .line 262
    add-float/2addr v3, v12

    .line 263
    aput v3, p0, v0

    .line 264
    .line 265
    cmpl-float v2, v2, v11

    .line 266
    .line 267
    if-lez v2, :cond_4

    .line 268
    .line 269
    aput v11, p0, v1

    .line 270
    .line 271
    :cond_4
    aget v2, p0, v6

    .line 272
    .line 273
    cmpl-float v2, v2, v11

    .line 274
    .line 275
    if-lez v2, :cond_6

    .line 276
    .line 277
    aput v11, p0, v6

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :cond_5
    add-float/2addr v3, v12

    .line 281
    aput v3, p0, v0

    .line 282
    .line 283
    add-float/2addr v2, v10

    .line 284
    aput v2, p0, v1

    .line 285
    .line 286
    aget v2, p0, v6

    .line 287
    .line 288
    add-float/2addr v2, v10

    .line 289
    aput v2, p0, v6

    .line 290
    .line 291
    :cond_6
    :goto_0
    iget v2, p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mColorType:I

    .line 292
    .line 293
    if-ne v2, v6, :cond_a

    .line 294
    .line 295
    iget-object v2, p1, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 296
    .line 297
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 302
    .line 303
    .line 304
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 305
    .line 306
    aget v2, p0, v0

    .line 307
    .line 308
    const/high16 v3, 0x42a00000    # 80.0f

    .line 309
    .line 310
    cmpl-float v4, v2, v3

    .line 311
    .line 312
    if-lez v4, :cond_7

    .line 313
    .line 314
    cmpg-float v4, v2, v7

    .line 315
    .line 316
    if-gtz v4, :cond_7

    .line 317
    .line 318
    sub-float/2addr v2, v9

    .line 319
    aput v2, p0, v0

    .line 320
    .line 321
    goto :goto_1

    .line 322
    :cond_7
    cmpl-float v4, v2, v8

    .line 323
    .line 324
    if-lez v4, :cond_8

    .line 325
    .line 326
    cmpg-float v3, v2, v3

    .line 327
    .line 328
    if-gtz v3, :cond_8

    .line 329
    .line 330
    const/high16 v3, 0x42f00000    # 120.0f

    .line 331
    .line 332
    add-float/2addr v2, v3

    .line 333
    aput v2, p0, v0

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :cond_8
    add-float/2addr v2, v9

    .line 337
    aput v2, p0, v0

    .line 338
    .line 339
    :goto_1
    aget v0, p0, v1

    .line 340
    .line 341
    const v2, 0x3e4ccccd    # 0.2f

    .line 342
    .line 343
    .line 344
    sub-float/2addr v0, v2

    .line 345
    aput v0, p0, v1

    .line 346
    .line 347
    aget v0, p0, v6

    .line 348
    .line 349
    cmpl-float v0, v0, v11

    .line 350
    .line 351
    if-lez v0, :cond_9

    .line 352
    .line 353
    aput v11, p0, v6

    .line 354
    .line 355
    :cond_9
    aput v10, p0, v1

    .line 356
    .line 357
    :cond_a
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 358
    .line 359
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 360
    .line 361
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 366
    .line 367
    .line 368
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 369
    .line 370
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 371
    .line 372
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 373
    .line 374
    .line 375
    :goto_2
    return-void
.end method

.method public final setIsMultiResolutionSupoorted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 4
    .line 5
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->setImageDrawable()V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0xbb8

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->startRotation(J)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 32
    .line 33
    const-wide/16 v1, 0x12c

    .line 34
    .line 35
    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final update()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->updateEffectAlpha()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
