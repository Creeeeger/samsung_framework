.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    const v4, 0x3f333333    # 0.7f

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    iget-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 53
    .line 54
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 57
    .line 58
    .line 59
    const/high16 v7, 0x43af0000    # 350.0f

    .line 60
    .line 61
    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 62
    .line 63
    .line 64
    const v7, 0x3f47ae14    # 0.78f

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 68
    .line 69
    .line 70
    new-instance v7, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 71
    .line 72
    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 73
    .line 74
    invoke-direct {v7, v6, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 78
    .line 79
    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 80
    .line 81
    .line 82
    new-instance v7, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 83
    .line 84
    sget-object v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 85
    .line 86
    invoke-direct {v7, v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 90
    .line 91
    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 92
    .line 93
    .line 94
    new-instance v7, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 95
    .line 96
    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    .line 97
    .line 98
    invoke-direct {v7, v6, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    .line 103
    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 113
    .line 114
    if-nez p0, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :cond_2
    invoke-virtual {v1, p0, v3}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const v10, 0x7f0704a7

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    int-to-float v7, v7

    .line 140
    add-float/2addr v6, v7

    .line 141
    sub-float/2addr v6, v0

    .line 142
    float-to-int v0, v6

    .line 143
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const v7, 0x7f0704a0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    sub-int/2addr v7, v6

    .line 163
    div-int/lit8 v7, v7, 0x2

    .line 164
    .line 165
    if-le v0, v7, :cond_3

    .line 166
    .line 167
    move v0, v7

    .line 168
    :cond_3
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 169
    .line 170
    new-array v2, v2, [F

    .line 171
    .line 172
    mul-int/lit8 v0, v0, -0x1

    .line 173
    .line 174
    int-to-float v0, v0

    .line 175
    aput v0, v2, v3

    .line 176
    .line 177
    invoke-static {p0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, v1, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 182
    .line 183
    const v2, 0x3ecccccd    # 0.4f

    .line 184
    .line 185
    .line 186
    const/high16 v3, 0x3f000000    # 0.5f

    .line 187
    .line 188
    invoke-static {v2, v3, v5, v4, v0}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v1, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 192
    .line 193
    const-wide/16 v2, 0x190

    .line 194
    .line 195
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    .line 197
    .line 198
    iget-object v0, v1, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 201
    .line 202
    .line 203
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 204
    .line 205
    const v2, 0x3f3851ec    # 0.72f

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 209
    .line 210
    .line 211
    const/high16 v2, 0x43160000    # 150.0f

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 214
    .line 215
    .line 216
    const v2, 0x3ef5c28f    # 0.48f

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 220
    .line 221
    .line 222
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 223
    .line 224
    invoke-direct {v2, p0, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 225
    .line 226
    .line 227
    iput-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 228
    .line 229
    iput-object v2, v1, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 230
    .line 231
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 232
    .line 233
    invoke-direct {v2, p0, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 234
    .line 235
    .line 236
    iput-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 237
    .line 238
    iput-object v2, v1, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 239
    .line 240
    iget-object p0, v1, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 243
    .line 244
    .line 245
    iget-object p0, v1, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 246
    .line 247
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 248
    .line 249
    .line 250
    :cond_4
    :goto_1
    return-void
.end method
