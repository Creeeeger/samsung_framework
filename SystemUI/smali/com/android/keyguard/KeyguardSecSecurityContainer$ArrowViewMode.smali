.class public final Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;


# instance fields
.field public mView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field public mViewFlipperWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/keyguard/KeyguardSecurityViewFlipper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->updateSecurityViewFlipperWidth()V

    .line 6
    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->updateSecurityViewPosition(IZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final updateSecurityViewFlipperWidth()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0704fd

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipperWidth:I

    .line 33
    .line 34
    return-void
.end method

.method public final updateSecurityViewPosition(IZ)V
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewTransition;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardSecurityViewTransition;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->updateSecurityViewFlipperWidth()V

    .line 14
    .line 15
    .line 16
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 17
    .line 18
    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const v1, 0x7f070547

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const v1, 0x7f070546

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v0, v3

    .line 73
    :goto_1
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 80
    .line 81
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    sget v2, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move v2, v3

    .line 91
    :goto_2
    const/4 v4, 0x1

    .line 92
    const/4 v5, 0x2

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    if-eq p1, v5, :cond_4

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_4
    if-ne v0, v4, :cond_6

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    const/4 v6, 0x3

    .line 102
    if-ne v0, v6, :cond_6

    .line 103
    .line 104
    :goto_3
    add-int/2addr v1, v2

    .line 105
    :cond_6
    :goto_4
    move v6, v1

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    const v1, 0x1050255

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    goto :goto_5

    .line 124
    :cond_7
    move v1, v3

    .line 125
    :goto_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_8

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    goto :goto_6

    .line 152
    :cond_8
    move v0, v3

    .line 153
    :goto_6
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 154
    .line 155
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 160
    .line 161
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_9

    .line 166
    .line 167
    sget v2, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 168
    .line 169
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_a

    .line 174
    .line 175
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 176
    .line 177
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    const v8, 0x7f0704af

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    add-int/2addr v2, v7

    .line 189
    goto :goto_7

    .line 190
    :cond_9
    move v2, v3

    .line 191
    :cond_a
    :goto_7
    if-nez v0, :cond_c

    .line 192
    .line 193
    if-nez v2, :cond_b

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_b
    move v0, v2

    .line 197
    goto :goto_9

    .line 198
    :cond_c
    :goto_8
    move v0, v1

    .line 199
    :goto_9
    if-nez p1, :cond_d

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    const/4 v3, 0x1

    .line 208
    const/4 v4, 0x0

    .line 209
    const/4 v5, 0x1

    .line 210
    move-object v1, p2

    .line 211
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 212
    .line 213
    .line 214
    goto :goto_a

    .line 215
    :cond_d
    if-ne p1, v5, :cond_e

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    const/4 v3, 0x2

    .line 224
    const/4 v4, 0x0

    .line 225
    const/4 v5, 0x2

    .line 226
    move-object v1, p2

    .line 227
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 228
    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_e
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-virtual {p2, p1, v4, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    invoke-virtual {p2, p1, v5, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 247
    .line 248
    .line 249
    :goto_a
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    const/4 v3, 0x4

    .line 256
    const/4 v4, 0x0

    .line 257
    const/4 v5, 0x4

    .line 258
    move-object v1, p2

    .line 259
    move v6, v0

    .line 260
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipperWidth:I

    .line 270
    .line 271
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 272
    .line 273
    .line 274
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 275
    .line 276
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 277
    .line 278
    .line 279
    return-void
.end method
