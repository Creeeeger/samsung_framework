.class public final Lcom/android/systemui/statusbar/PowerButtonReveal;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public final INCREASE_MULTIPLIER:F

.field public final OFF_SCREEN_START_AMOUNT:F

.field public final powerButtonY:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    .line 5
    .line 6
    const p1, 0x3d4ccccd    # 0.05f

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OFF_SCREEN_START_AMOUNT:F

    .line 10
    .line 11
    const/high16 p1, 0x3fa00000    # 1.25f

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->INCREASE_MULTIPLIER:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    :goto_0
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/high16 v2, 0x3f000000    # 0.5f

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/high16 v3, 0x3f800000    # 1.0f

    .line 31
    .line 32
    sub-float v2, v3, v2

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    .line 35
    .line 36
    .line 37
    iput v1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->interpolatedRevealAmount:F

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    sub-float p1, v3, p1

    .line 43
    .line 44
    iget v0, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    .line 45
    .line 46
    cmpg-float v0, v0, p1

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    move v0, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_1
    if-nez v0, :cond_2

    .line 54
    .line 55
    iput p1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setPaintColorFilter()V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget v0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    .line 69
    .line 70
    iget v4, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->INCREASE_MULTIPLIER:F

    .line 71
    .line 72
    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OFF_SCREEN_START_AMOUNT:F

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    if-eq p1, v2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-float p1, p1

    .line 83
    sub-float/2addr p1, v0

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    int-to-float v2, v2

    .line 89
    mul-float/2addr v2, v1

    .line 90
    sub-float/2addr p1, v2

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    int-to-float v2, v2

    .line 96
    add-float/2addr p0, v3

    .line 97
    mul-float/2addr v2, p0

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    int-to-float v3, v3

    .line 103
    mul-float/2addr v3, v4

    .line 104
    mul-float/2addr v3, v1

    .line 105
    sub-float/2addr v2, v3

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    int-to-float v3, v3

    .line 111
    sub-float/2addr v3, v0

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    int-to-float v0, v0

    .line 117
    mul-float/2addr v0, v1

    .line 118
    add-float/2addr v0, v3

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    int-to-float v3, v3

    .line 124
    mul-float/2addr p0, v3

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    int-to-float v3, v3

    .line 130
    mul-float/2addr v3, v4

    .line 131
    mul-float/2addr v3, v1

    .line 132
    add-float/2addr v3, p0

    .line 133
    invoke-virtual {p2, p1, v2, v0, v3}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    int-to-float p1, p1

    .line 142
    mul-float/2addr p1, v1

    .line 143
    sub-float p1, v0, p1

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    neg-int v2, v2

    .line 150
    int-to-float v2, v2

    .line 151
    mul-float/2addr v2, p0

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    int-to-float v3, v3

    .line 157
    mul-float/2addr v3, v4

    .line 158
    mul-float/2addr v3, v1

    .line 159
    sub-float/2addr v2, v3

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    int-to-float v3, v3

    .line 165
    mul-float/2addr v3, v1

    .line 166
    add-float/2addr v3, v0

    .line 167
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    neg-int v0, v0

    .line 172
    int-to-float v0, v0

    .line 173
    mul-float/2addr v0, p0

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    int-to-float p0, p0

    .line 179
    mul-float/2addr p0, v4

    .line 180
    mul-float/2addr p0, v1

    .line 181
    add-float/2addr p0, v0

    .line 182
    invoke-virtual {p2, p1, v2, v3, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    int-to-float p1, p1

    .line 191
    add-float/2addr p0, v3

    .line 192
    mul-float/2addr p1, p0

    .line 193
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    int-to-float v2, v2

    .line 198
    mul-float/2addr v2, v4

    .line 199
    mul-float/2addr v2, v1

    .line 200
    sub-float/2addr p1, v2

    .line 201
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    int-to-float v2, v2

    .line 206
    mul-float/2addr v2, v1

    .line 207
    sub-float v2, v0, v2

    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    int-to-float v3, v3

    .line 214
    mul-float/2addr p0, v3

    .line 215
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    int-to-float v3, v3

    .line 220
    mul-float/2addr v3, v4

    .line 221
    mul-float/2addr v3, v1

    .line 222
    add-float/2addr v3, p0

    .line 223
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    int-to-float p0, p0

    .line 228
    mul-float/2addr p0, v1

    .line 229
    add-float/2addr p0, v0

    .line 230
    invoke-virtual {p2, p1, v2, v3, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    .line 231
    .line 232
    .line 233
    :goto_2
    return-void
.end method
