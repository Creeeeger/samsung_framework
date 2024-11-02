.class public final Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;
.super Lcom/android/systemui/biometrics/AuthIconController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public lastPulseLightToDark:Z

.field public state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0700c4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 30
    .line 31
    const p2, 0x7f080794

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final handleAnimationEnd()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->state:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const v0, 0x7f080794

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const v0, 0x7f080795

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 25
    .line 26
    xor-int/2addr v0, v1

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final updateIcon(II)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    if-eq p1, v2, :cond_1

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    if-ne p1, v3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v3, v0

    .line 13
    :goto_1
    const v4, 0x7f130203

    .line 14
    .line 15
    .line 16
    const v5, 0x7f080794

    .line 17
    .line 18
    .line 19
    if-ne p2, v0, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_2
    const/4 v6, 0x2

    .line 46
    if-ne p2, v6, :cond_3

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 49
    .line 50
    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_3
    const/4 v0, 0x5

    .line 67
    const v4, 0x7f080790

    .line 68
    .line 69
    .line 70
    const/4 v5, 0x6

    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    if-ne p2, v5, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 81
    .line 82
    const v1, 0x7f130204

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_4
    const v7, 0x7f130205

    .line 95
    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    if-nez p2, :cond_5

    .line 100
    .line 101
    const p1, 0x7f080792

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :cond_5
    const v8, 0x7f130202

    .line 121
    .line 122
    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    if-ne p2, v5, :cond_6

    .line 126
    .line 127
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    if-ne p2, v2, :cond_7

    .line 143
    .line 144
    if-eq p1, v2, :cond_7

    .line 145
    .line 146
    const p1, 0x7f080791

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    if-ne p1, v6, :cond_8

    .line 154
    .line 155
    if-ne p2, v5, :cond_8

    .line 156
    .line 157
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    if-ne p2, v0, :cond_9

    .line 173
    .line 174
    const p1, 0x7f080796

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_9
    if-nez p2, :cond_a

    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 197
    .line 198
    const v1, 0x7f080793

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 211
    .line 212
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_a
    const-string p1, "Unhandled state: "

    .line 221
    .line 222
    const-string v0, "AuthBiometricFaceIconController"

    .line 223
    .line 224
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_2
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->state:I

    .line 228
    .line 229
    return-void
.end method
