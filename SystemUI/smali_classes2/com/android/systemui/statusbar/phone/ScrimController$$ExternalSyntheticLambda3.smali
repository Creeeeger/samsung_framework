.class public final synthetic Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/LightBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    check-cast v1, Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 8
    .line 9
    move-object/from16 v2, p2

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    move-object/from16 v3, p3

    .line 18
    .line 19
    check-cast v3, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 31
    .line 32
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isOpaqueNavigationBar()Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    move v7, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v7, v6

    .line 41
    :goto_0
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    .line 42
    .line 43
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 44
    .line 45
    sget v10, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    .line 46
    .line 47
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mUseNewLightBarLogic:Z

    .line 48
    .line 49
    if-eqz v11, :cond_9

    .line 50
    .line 51
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    .line 52
    .line 53
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 54
    .line 55
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    .line 56
    .line 57
    sget-object v9, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 58
    .line 59
    if-eq v1, v9, :cond_2

    .line 60
    .line 61
    sget-object v9, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 62
    .line 63
    if-ne v1, v9, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v1, v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    move v1, v5

    .line 69
    :goto_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    cmpl-float v1, v2, v10

    .line 74
    .line 75
    if-ltz v1, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move v1, v6

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    :goto_3
    move v1, v5

    .line 81
    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    move v3, v5

    .line 90
    goto :goto_5

    .line 91
    :cond_5
    move v3, v6

    .line 92
    :goto_5
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_6
    move v5, v6

    .line 100
    :goto_6
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    .line 101
    .line 102
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    .line 103
    .line 104
    if-eq v1, v4, :cond_7

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_d

    .line 110
    .line 111
    :cond_7
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    if-eq v3, v7, :cond_15

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_d

    .line 121
    .line 122
    :cond_8
    if-eq v5, v8, :cond_15

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_d

    .line 128
    .line 129
    :cond_9
    if-eqz v4, :cond_c

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    shr-int/lit8 v12, v11, 0x10

    .line 136
    .line 137
    and-int/lit16 v12, v12, 0xff

    .line 138
    .line 139
    shr-int/lit8 v13, v11, 0x8

    .line 140
    .line 141
    and-int/lit16 v13, v13, 0xff

    .line 142
    .line 143
    and-int/lit16 v11, v11, 0xff

    .line 144
    .line 145
    mul-int/2addr v12, v12

    .line 146
    int-to-double v14, v12

    .line 147
    const-wide v16, 0x3fced916872b020cL    # 0.241

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    mul-double v14, v14, v16

    .line 153
    .line 154
    mul-int/2addr v13, v13

    .line 155
    int-to-double v12, v13

    .line 156
    const-wide v16, 0x3fe61cac083126e9L    # 0.691

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    mul-double v12, v12, v16

    .line 162
    .line 163
    add-double/2addr v12, v14

    .line 164
    mul-int/2addr v11, v11

    .line 165
    int-to-double v14, v11

    .line 166
    const-wide v16, 0x3fb16872b020c49cL    # 0.068

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    mul-double v14, v14, v16

    .line 172
    .line 173
    add-double/2addr v14, v12

    .line 174
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    .line 175
    .line 176
    .line 177
    move-result-wide v11

    .line 178
    double-to-int v11, v11

    .line 179
    const/16 v12, 0x82

    .line 180
    .line 181
    if-lt v11, v12, :cond_a

    .line 182
    .line 183
    move v11, v5

    .line 184
    goto :goto_7

    .line 185
    :cond_a
    move v11, v6

    .line 186
    :goto_7
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 187
    .line 188
    sget-object v11, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 189
    .line 190
    if-ne v1, v11, :cond_b

    .line 191
    .line 192
    cmpl-float v11, v2, v10

    .line 193
    .line 194
    if-ltz v11, :cond_b

    .line 195
    .line 196
    move v11, v5

    .line 197
    goto :goto_8

    .line 198
    :cond_b
    move v11, v6

    .line 199
    :goto_8
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    .line 200
    .line 201
    :cond_c
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 202
    .line 203
    sget-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 204
    .line 205
    if-eq v1, v12, :cond_f

    .line 206
    .line 207
    sget-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 208
    .line 209
    if-eq v1, v12, :cond_f

    .line 210
    .line 211
    cmpl-float v1, v2, v10

    .line 212
    .line 213
    if-ltz v1, :cond_f

    .line 214
    .line 215
    if-nez v4, :cond_d

    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_f

    .line 222
    .line 223
    :cond_d
    if-eqz v4, :cond_e

    .line 224
    .line 225
    if-nez v7, :cond_f

    .line 226
    .line 227
    :cond_e
    move v1, v5

    .line 228
    goto :goto_9

    .line 229
    :cond_f
    move v1, v6

    .line 230
    :goto_9
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 231
    .line 232
    if-eqz v4, :cond_14

    .line 233
    .line 234
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    .line 235
    .line 236
    if-eq v8, v2, :cond_10

    .line 237
    .line 238
    move v2, v5

    .line 239
    goto :goto_a

    .line 240
    :cond_10
    move v2, v6

    .line 241
    :goto_a
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 242
    .line 243
    if-eq v3, v9, :cond_11

    .line 244
    .line 245
    move v3, v5

    .line 246
    goto :goto_b

    .line 247
    :cond_11
    move v3, v6

    .line 248
    :goto_b
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 249
    .line 250
    if-eqz v4, :cond_12

    .line 251
    .line 252
    if-eq v1, v11, :cond_12

    .line 253
    .line 254
    goto :goto_c

    .line 255
    :cond_12
    move v5, v6

    .line 256
    :goto_c
    if-nez v2, :cond_13

    .line 257
    .line 258
    if-nez v3, :cond_13

    .line 259
    .line 260
    if-eqz v5, :cond_15

    .line 261
    .line 262
    :cond_13
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 263
    .line 264
    .line 265
    goto :goto_d

    .line 266
    :cond_14
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 267
    .line 268
    if-eqz v2, :cond_15

    .line 269
    .line 270
    if-eq v1, v11, :cond_15

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 273
    .line 274
    .line 275
    :cond_15
    :goto_d
    return-void
.end method
