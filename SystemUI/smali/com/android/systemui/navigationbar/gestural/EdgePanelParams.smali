.class public final Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

.field public arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

.field public arrowThickness:F

.field public cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public deactivationTriggerThreshold:F

.field public dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

.field public edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

.field public entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

.field public entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

.field public farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

.field public fingerOffset:I

.field public flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public heightInterpolator:Landroidx/core/animation/PathInterpolator;

.field public horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

.field public minArrowYPosition:I

.field public preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public reactivationTriggerThreshold:F

.field public resources:Landroid/content/res/Resources;

.field public staticTriggerThreshold:F

.field public swipeProgressThreshold:F

.field public verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->update(Landroid/content/res/Resources;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getDimen(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDimenFloat(I)F
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/res/Resources;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "EdgePanelParams(resources="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final update(Landroid/content/res/Resources;)V
    .locals 74

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 6
    .line 7
    const v1, 0x7f070979

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowThickness:F

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 17
    .line 18
    const v2, 0x7f07098c

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 25
    .line 26
    const v2, 0x7f070978

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->minArrowYPosition:I

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 36
    .line 37
    const v2, 0x7f07098a

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fingerOffset:I

    .line 45
    .line 46
    const v1, 0x7f07096b

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 54
    .line 55
    const v1, 0x7f07096d

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 63
    .line 64
    const v1, 0x7f07096a

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    .line 72
    .line 73
    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 74
    .line 75
    neg-float v1, v1

    .line 76
    new-instance v3, Lkotlin/ranges/ClosedFloatRange;

    .line 77
    .line 78
    invoke-direct {v3, v2, v1}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    .line 79
    .line 80
    .line 81
    iput-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

    .line 82
    .line 83
    const v1, 0x7f07096c

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->swipeProgressThreshold:F

    .line 91
    .line 92
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 93
    .line 94
    const v2, 0x3fa28f5c    # 1.27f

    .line 95
    .line 96
    .line 97
    const v3, 0x3e428f5c    # 0.19f

    .line 98
    .line 99
    .line 100
    const v4, 0x3f35c28f    # 0.71f

    .line 101
    .line 102
    .line 103
    const v5, 0x3f5c28f6    # 0.86f

    .line 104
    .line 105
    .line 106
    invoke-direct {v1, v3, v2, v4, v5}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 107
    .line 108
    .line 109
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 110
    .line 111
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 112
    .line 113
    const/high16 v2, -0x3fc00000    # -3.0f

    .line 114
    .line 115
    const v4, 0x3f99999a    # 1.2f

    .line 116
    .line 117
    .line 118
    const/high16 v5, 0x3f800000    # 1.0f

    .line 119
    .line 120
    invoke-direct {v1, v5, v2, v5, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 121
    .line 122
    .line 123
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 124
    .line 125
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 126
    .line 127
    const v2, 0x3f333333    # 0.7f

    .line 128
    .line 129
    .line 130
    const v4, -0x418a3d71    # -0.24f

    .line 131
    .line 132
    .line 133
    const v6, 0x3ef5c28f    # 0.48f

    .line 134
    .line 135
    .line 136
    const v7, 0x3f9ae148    # 1.21f

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v2, v4, v6, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 140
    .line 141
    .line 142
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 143
    .line 144
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 145
    .line 146
    if-eqz v1, :cond_0

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_0
    const/4 v1, 0x0

    .line 150
    :goto_0
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 151
    .line 152
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 153
    .line 154
    const v4, 0x3e4ccccd    # 0.2f

    .line 155
    .line 156
    .line 157
    invoke-direct {v1, v4, v5, v5, v5}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 158
    .line 159
    .line 160
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 161
    .line 162
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 163
    .line 164
    const v4, 0x3f70a3d7    # 0.94f

    .line 165
    .line 166
    .line 167
    const v6, 0x3f933333    # 1.15f

    .line 168
    .line 169
    .line 170
    const/high16 v7, 0x3f000000    # 0.5f

    .line 171
    .line 172
    const v8, 0x3ed1eb85    # 0.41f

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v7, v6, v8, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 176
    .line 177
    .line 178
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 179
    .line 180
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 181
    .line 182
    const v4, 0x3f8b851f    # 1.09f

    .line 183
    .line 184
    .line 185
    const v6, 0x3cf5c28f    # 0.03f

    .line 186
    .line 187
    .line 188
    const v8, 0x3e0f5c29    # 0.14f

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v6, v3, v8, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 192
    .line 193
    .line 194
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 195
    .line 196
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 197
    .line 198
    const v3, 0x3f8e147b    # 1.11f

    .line 199
    .line 200
    .line 201
    const v4, 0x3f570a3d    # 0.84f

    .line 202
    .line 203
    .line 204
    const/4 v6, 0x0

    .line 205
    const v8, 0x3f59999a    # 0.85f

    .line 206
    .line 207
    .line 208
    invoke-direct {v1, v6, v3, v8, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 209
    .line 210
    .line 211
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 212
    .line 213
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 214
    .line 215
    const v3, 0x3d4ccccd    # 0.05f

    .line 216
    .line 217
    .line 218
    const v4, 0x3f666666    # 0.9f

    .line 219
    .line 220
    .line 221
    const v9, -0x416b851f    # -0.29f

    .line 222
    .line 223
    .line 224
    invoke-direct {v1, v5, v3, v4, v9}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 225
    .line 226
    .line 227
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 228
    .line 229
    const v1, 0x44bb8000    # 1500.0f

    .line 230
    .line 231
    .line 232
    const v3, 0x3e947ae1    # 0.29f

    .line 233
    .line 234
    .line 235
    invoke-static {v1, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    invoke-static {v1, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    const v14, 0x461c4000    # 10000.0f

    .line 244
    .line 245
    .line 246
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 247
    .line 248
    .line 249
    move-result-object v24

    .line 250
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 251
    .line 252
    .line 253
    move-result-object v25

    .line 254
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 255
    .line 256
    .line 257
    move-result-object v26

    .line 258
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 259
    .line 260
    .line 261
    move-result-object v27

    .line 262
    new-instance v13, Lcom/android/systemui/navigationbar/gestural/Step;

    .line 263
    .line 264
    const/high16 v9, 0x43340000    # 180.0f

    .line 265
    .line 266
    invoke-static {v9, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    const/high16 v9, 0x44fa0000    # 2000.0f

    .line 271
    .line 272
    const v12, 0x3f19999a    # 0.6f

    .line 273
    .line 274
    .line 275
    invoke-static {v9, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    const v10, 0x3e28f5c3    # 0.165f

    .line 280
    .line 281
    .line 282
    const v11, 0x3f866666    # 1.05f

    .line 283
    .line 284
    .line 285
    invoke-direct {v13, v10, v11, v4, v9}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(FFLjava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    new-instance v4, Lcom/android/systemui/navigationbar/gestural/Step;

    .line 289
    .line 290
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-direct {v4, v10, v11, v9, v8}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(FFLjava/lang/Object;Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    const v8, 0x7f070988

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    const v9, 0x7f070989

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 312
    .line 313
    .line 314
    move-result v30

    .line 315
    const v11, 0x7f070993

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    const/high16 v10, 0x44480000    # 800.0f

    .line 323
    .line 324
    const v11, 0x3f428f5c    # 0.76f

    .line 325
    .line 326
    .line 327
    invoke-static {v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 328
    .line 329
    .line 330
    move-result-object v35

    .line 331
    const v10, 0x46ea6000    # 30000.0f

    .line 332
    .line 333
    .line 334
    invoke-static {v10, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 335
    .line 336
    .line 337
    move-result-object v34

    .line 338
    const/high16 v11, 0x42f00000    # 120.0f

    .line 339
    .line 340
    const v10, 0x3f4ccccd    # 0.8f

    .line 341
    .line 342
    .line 343
    invoke-static {v11, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 344
    .line 345
    .line 346
    move-result-object v36

    .line 347
    const v11, 0x7f070982

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    const v12, 0x7f070981

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    const/high16 v14, 0x44160000    # 600.0f

    .line 362
    .line 363
    const v6, 0x3ecccccd    # 0.4f

    .line 364
    .line 365
    .line 366
    invoke-static {v14, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 367
    .line 368
    .line 369
    move-result-object v21

    .line 370
    invoke-static {v14, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 371
    .line 372
    .line 373
    move-result-object v20

    .line 374
    new-instance v32, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 375
    .line 376
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 377
    .line 378
    .line 379
    move-result-object v17

    .line 380
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 381
    .line 382
    .line 383
    move-result-object v18

    .line 384
    const/16 v19, 0x0

    .line 385
    .line 386
    move-object/from16 v16, v32

    .line 387
    .line 388
    move-object/from16 v22, v13

    .line 389
    .line 390
    move-object/from16 v23, v4

    .line 391
    .line 392
    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    .line 393
    .line 394
    .line 395
    const v6, 0x7f070985

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    const v11, 0x7f070984

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 406
    .line 407
    .line 408
    move-result v39

    .line 409
    const v11, 0x7f070986

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 413
    .line 414
    .line 415
    move-result v40

    .line 416
    const v11, 0x7f070987

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 420
    .line 421
    .line 422
    move-result v41

    .line 423
    const v11, 0x3f266666    # 0.65f

    .line 424
    .line 425
    .line 426
    const/high16 v14, 0x43e10000    # 450.0f

    .line 427
    .line 428
    invoke-static {v14, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 429
    .line 430
    .line 431
    move-result-object v43

    .line 432
    const v12, 0x3ee66666    # 0.45f

    .line 433
    .line 434
    .line 435
    invoke-static {v1, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 436
    .line 437
    .line 438
    move-result-object v44

    .line 439
    const/high16 v11, 0x43960000    # 300.0f

    .line 440
    .line 441
    invoke-static {v11, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 442
    .line 443
    .line 444
    move-result-object v45

    .line 445
    const/high16 v11, 0x43160000    # 150.0f

    .line 446
    .line 447
    invoke-static {v11, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 448
    .line 449
    .line 450
    move-result-object v46

    .line 451
    new-instance v33, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 452
    .line 453
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 454
    .line 455
    .line 456
    move-result-object v38

    .line 457
    const/high16 v42, 0x3f800000    # 1.0f

    .line 458
    .line 459
    const/16 v47, 0x0

    .line 460
    .line 461
    const/16 v48, 0x200

    .line 462
    .line 463
    const/16 v49, 0x0

    .line 464
    .line 465
    move-object/from16 v37, v33

    .line 466
    .line 467
    invoke-direct/range {v37 .. v49}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 468
    .line 469
    .line 470
    new-instance v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 471
    .line 472
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 473
    .line 474
    .line 475
    move-result-object v29

    .line 476
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 477
    .line 478
    .line 479
    move-result-object v31

    .line 480
    move-object/from16 v28, v6

    .line 481
    .line 482
    invoke-direct/range {v28 .. v36}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 483
    .line 484
    .line 485
    iput-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 486
    .line 487
    const v6, 0x7f070976

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    const v8, 0x7f070977

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 498
    .line 499
    .line 500
    move-result v39

    .line 501
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 502
    .line 503
    invoke-static {v8, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 504
    .line 505
    .line 506
    move-result-object v44

    .line 507
    sget-boolean v8, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 508
    .line 509
    if-eqz v8, :cond_1

    .line 510
    .line 511
    const v9, 0x3f59999a    # 0.85f

    .line 512
    .line 513
    .line 514
    goto :goto_1

    .line 515
    :cond_1
    const v9, 0x3f0ccccd    # 0.55f

    .line 516
    .line 517
    .line 518
    :goto_1
    const v11, 0x43a28000    # 325.0f

    .line 519
    .line 520
    .line 521
    invoke-static {v11, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 522
    .line 523
    .line 524
    move-result-object v45

    .line 525
    const v11, 0x7f070973

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 529
    .line 530
    .line 531
    move-result v17

    .line 532
    if-eqz v8, :cond_2

    .line 533
    .line 534
    const v9, 0x7f070d16

    .line 535
    .line 536
    .line 537
    goto :goto_2

    .line 538
    :cond_2
    const v9, 0x7f070970

    .line 539
    .line 540
    .line 541
    :goto_2
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    if-eqz v8, :cond_3

    .line 546
    .line 547
    const v8, 0x7f070d15

    .line 548
    .line 549
    .line 550
    goto :goto_3

    .line 551
    :cond_3
    const v8, 0x7f07096f

    .line 552
    .line 553
    .line 554
    :goto_3
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 555
    .line 556
    .line 557
    move-result v8

    .line 558
    new-instance v41, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 559
    .line 560
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 561
    .line 562
    .line 563
    move-result-object v18

    .line 564
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    const/high16 v19, 0x3f800000    # 1.0f

    .line 569
    .line 570
    move-object/from16 v9, v41

    .line 571
    .line 572
    move v2, v10

    .line 573
    move-object/from16 v10, v18

    .line 574
    .line 575
    move v2, v11

    .line 576
    const v1, 0x7f070993

    .line 577
    .line 578
    .line 579
    const/high16 v7, 0x42f00000    # 120.0f

    .line 580
    .line 581
    move-object v11, v8

    .line 582
    const v8, 0x3f19999a    # 0.6f

    .line 583
    .line 584
    .line 585
    move/from16 v12, v19

    .line 586
    .line 587
    move-object/from16 v22, v13

    .line 588
    .line 589
    move-object v13, v3

    .line 590
    const v8, 0x461c4000    # 10000.0f

    .line 591
    .line 592
    .line 593
    move-object v14, v15

    .line 594
    move-object/from16 v50, v15

    .line 595
    .line 596
    move-object/from16 v15, v22

    .line 597
    .line 598
    move-object/from16 v16, v4

    .line 599
    .line 600
    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    const v9, 0x7f070972

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 611
    .line 612
    .line 613
    move-result v53

    .line 614
    const v9, 0x7f070974

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 618
    .line 619
    .line 620
    move-result v54

    .line 621
    const v9, 0x7f070975

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 625
    .line 626
    .line 627
    move-result v55

    .line 628
    const v9, 0x44548000    # 850.0f

    .line 629
    .line 630
    .line 631
    const/high16 v10, 0x3f400000    # 0.75f

    .line 632
    .line 633
    invoke-static {v9, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 634
    .line 635
    .line 636
    move-result-object v57

    .line 637
    invoke-static {v8, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 638
    .line 639
    .line 640
    move-result-object v58

    .line 641
    const v8, 0x45228000    # 2600.0f

    .line 642
    .line 643
    .line 644
    const v10, 0x3f5ae148    # 0.855f

    .line 645
    .line 646
    .line 647
    invoke-static {v8, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 648
    .line 649
    .line 650
    move-result-object v60

    .line 651
    const/high16 v8, 0x44960000    # 1200.0f

    .line 652
    .line 653
    const v10, 0x3e99999a    # 0.3f

    .line 654
    .line 655
    .line 656
    invoke-static {v8, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 657
    .line 658
    .line 659
    move-result-object v59

    .line 660
    new-instance v42, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 661
    .line 662
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 663
    .line 664
    .line 665
    move-result-object v52

    .line 666
    const/high16 v66, 0x3f800000    # 1.0f

    .line 667
    .line 668
    const/16 v71, 0x0

    .line 669
    .line 670
    const/16 v72, 0x200

    .line 671
    .line 672
    const/16 v73, 0x0

    .line 673
    .line 674
    const/high16 v56, 0x3f800000    # 1.0f

    .line 675
    .line 676
    const/16 v61, 0x0

    .line 677
    .line 678
    const/16 v62, 0x200

    .line 679
    .line 680
    const/16 v63, 0x0

    .line 681
    .line 682
    move-object/from16 v51, v42

    .line 683
    .line 684
    invoke-direct/range {v51 .. v63}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 685
    .line 686
    .line 687
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 688
    .line 689
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 690
    .line 691
    .line 692
    move-result-object v38

    .line 693
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 694
    .line 695
    .line 696
    move-result-object v40

    .line 697
    const/16 v57, 0x0

    .line 698
    .line 699
    const/16 v60, 0x20

    .line 700
    .line 701
    const/4 v6, 0x0

    .line 702
    const/16 v43, 0x0

    .line 703
    .line 704
    const/16 v46, 0x20

    .line 705
    .line 706
    const/16 v47, 0x0

    .line 707
    .line 708
    move-object/from16 v37, v2

    .line 709
    .line 710
    invoke-direct/range {v37 .. v47}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 711
    .line 712
    .line 713
    iput-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 714
    .line 715
    const v2, 0x7f070996

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    const v8, 0x7f070997

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 726
    .line 727
    .line 728
    move-result v53

    .line 729
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 730
    .line 731
    .line 732
    move-result v8

    .line 733
    const v10, 0x3f4ccccd    # 0.8f

    .line 734
    .line 735
    .line 736
    invoke-static {v7, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 737
    .line 738
    .line 739
    move-result-object v59

    .line 740
    const v7, 0x45bb8000    # 6000.0f

    .line 741
    .line 742
    .line 743
    invoke-static {v7, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 744
    .line 745
    .line 746
    move-result-object v58

    .line 747
    const v7, 0x7f070990

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 751
    .line 752
    .line 753
    move-result v7

    .line 754
    const v10, 0x7f07098f

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 758
    .line 759
    .line 760
    move-result v10

    .line 761
    const/high16 v11, 0x42c80000    # 100.0f

    .line 762
    .line 763
    const v12, 0x3f19999a    # 0.6f

    .line 764
    .line 765
    .line 766
    invoke-static {v11, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 767
    .line 768
    .line 769
    move-result-object v21

    .line 770
    invoke-static {v11, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 771
    .line 772
    .line 773
    move-result-object v20

    .line 774
    new-instance v55, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 775
    .line 776
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 777
    .line 778
    .line 779
    move-result-object v17

    .line 780
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 781
    .line 782
    .line 783
    move-result-object v18

    .line 784
    move-object/from16 v16, v55

    .line 785
    .line 786
    move-object/from16 v23, v4

    .line 787
    .line 788
    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 792
    .line 793
    .line 794
    move-result v1

    .line 795
    const v4, 0x7f070992

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 799
    .line 800
    .line 801
    move-result v63

    .line 802
    const v4, 0x7f070994

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 806
    .line 807
    .line 808
    move-result v64

    .line 809
    const v4, 0x7f070995

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 813
    .line 814
    .line 815
    move-result v65

    .line 816
    const v4, 0x44228000    # 650.0f

    .line 817
    .line 818
    .line 819
    invoke-static {v4, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 820
    .line 821
    .line 822
    move-result-object v67

    .line 823
    const v4, 0x3ee66666    # 0.45f

    .line 824
    .line 825
    .line 826
    const v7, 0x44bb8000    # 1500.0f

    .line 827
    .line 828
    .line 829
    invoke-static {v7, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 830
    .line 831
    .line 832
    move-result-object v68

    .line 833
    const/high16 v4, 0x43960000    # 300.0f

    .line 834
    .line 835
    invoke-static {v4, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 836
    .line 837
    .line 838
    move-result-object v69

    .line 839
    const/high16 v4, 0x437a0000    # 250.0f

    .line 840
    .line 841
    const/high16 v7, 0x3f000000    # 0.5f

    .line 842
    .line 843
    invoke-static {v4, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 844
    .line 845
    .line 846
    move-result-object v70

    .line 847
    new-instance v56, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 848
    .line 849
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 850
    .line 851
    .line 852
    move-result-object v62

    .line 853
    move-object/from16 v61, v56

    .line 854
    .line 855
    invoke-direct/range {v61 .. v73}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 856
    .line 857
    .line 858
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 859
    .line 860
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 861
    .line 862
    .line 863
    move-result-object v52

    .line 864
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 865
    .line 866
    .line 867
    move-result-object v54

    .line 868
    move-object/from16 v51, v1

    .line 869
    .line 870
    move-object/from16 v61, v6

    .line 871
    .line 872
    invoke-direct/range {v51 .. v61}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 873
    .line 874
    .line 875
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 876
    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 878
    .line 879
    .line 880
    move-result-object v10

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 886
    .line 887
    move-object/from16 v2, v50

    .line 888
    .line 889
    const/4 v4, 0x0

    .line 890
    invoke-static {v1, v4, v4, v3, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Ljava/lang/Float;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 891
    .line 892
    .line 893
    move-result-object v12

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 899
    .line 900
    const/high16 v2, 0x44af0000    # 1400.0f

    .line 901
    .line 902
    invoke-static {v2, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 903
    .line 904
    .line 905
    move-result-object v22

    .line 906
    const/16 v17, 0x0

    .line 907
    .line 908
    const/16 v23, 0xe

    .line 909
    .line 910
    move-object/from16 v16, v1

    .line 911
    .line 912
    move-object/from16 v18, v26

    .line 913
    .line 914
    move-object/from16 v19, v27

    .line 915
    .line 916
    move-object/from16 v20, v25

    .line 917
    .line 918
    move-object/from16 v21, v24

    .line 919
    .line 920
    invoke-static/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 921
    .line 922
    .line 923
    move-result-object v13

    .line 924
    const v1, 0x45b22000    # 5700.0f

    .line 925
    .line 926
    .line 927
    invoke-static {v1, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 928
    .line 929
    .line 930
    move-result-object v15

    .line 931
    const v11, 0x3f5c28f6    # 0.86f

    .line 932
    .line 933
    .line 934
    const/4 v14, 0x0

    .line 935
    const/16 v16, 0x60

    .line 936
    .line 937
    invoke-static/range {v10 .. v16}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 942
    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 944
    .line 945
    .line 946
    move-result-object v10

    .line 947
    const/4 v11, 0x0

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 953
    .line 954
    const v2, 0x3eeb851f    # 0.46f

    .line 955
    .line 956
    .line 957
    invoke-static {v9, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 958
    .line 959
    .line 960
    move-result-object v3

    .line 961
    invoke-static {v9, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 966
    .line 967
    .line 968
    move-result-object v4

    .line 969
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 970
    .line 971
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    .line 972
    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 974
    .line 975
    .line 976
    move-result-object v6

    .line 977
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 978
    .line 979
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    .line 980
    .line 981
    invoke-static {v1, v4, v6, v2, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Ljava/lang/Float;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 982
    .line 983
    .line 984
    move-result-object v12

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 990
    .line 991
    const/16 v22, 0x0

    .line 992
    .line 993
    const/16 v23, 0x21f

    .line 994
    .line 995
    move-object/from16 v16, v1

    .line 996
    .line 997
    invoke-static/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 998
    .line 999
    .line 1000
    move-result-object v13

    .line 1001
    const/4 v15, 0x0

    .line 1002
    const/16 v16, 0xe7

    .line 1003
    .line 1004
    invoke-static/range {v10 .. v16}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1009
    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    const/4 v7, 0x0

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 1020
    .line 1021
    const/4 v1, 0x0

    .line 1022
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v9

    .line 1026
    const/16 v20, 0x0

    .line 1027
    .line 1028
    const/4 v11, 0x0

    .line 1029
    const/16 v30, 0x0

    .line 1030
    .line 1031
    const/4 v13, 0x0

    .line 1032
    const/high16 v1, 0x43e10000    # 450.0f

    .line 1033
    .line 1034
    invoke-static {v1, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v14

    .line 1038
    const/16 v15, 0x1ee

    .line 1039
    .line 1040
    const/4 v10, 0x0

    .line 1041
    const/4 v12, 0x0

    .line 1042
    invoke-static/range {v8 .. v15}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v9

    .line 1046
    const/16 v12, 0xef

    .line 1047
    .line 1048
    const/16 v27, 0x0

    .line 1049
    .line 1050
    const/4 v8, 0x0

    .line 1051
    invoke-static/range {v6 .. v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1056
    .line 1057
    const v1, 0x7f07099e

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    const v2, 0x7f07099f

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 1068
    .line 1069
    .line 1070
    move-result v12

    .line 1071
    const v2, 0x7f0709a1

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1075
    .line 1076
    .line 1077
    move-result v2

    .line 1078
    const v3, 0x7f0709a0

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1082
    .line 1083
    .line 1084
    move-result v3

    .line 1085
    new-instance v14, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 1086
    .line 1087
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v22

    .line 1091
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v23

    .line 1095
    const/high16 v24, 0x3f800000    # 1.0f

    .line 1096
    .line 1097
    const/16 v18, 0x0

    .line 1098
    .line 1099
    const/16 v29, 0x40

    .line 1100
    .line 1101
    const/16 v25, 0x0

    .line 1102
    .line 1103
    const/16 v26, 0x0

    .line 1104
    .line 1105
    const/16 v28, 0x0

    .line 1106
    .line 1107
    move-object/from16 v21, v14

    .line 1108
    .line 1109
    invoke-direct/range {v21 .. v30}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1110
    .line 1111
    .line 1112
    const v2, 0x7f07099b

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1116
    .line 1117
    .line 1118
    move-result v2

    .line 1119
    const v3, 0x7f07099a

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1123
    .line 1124
    .line 1125
    move-result v23

    .line 1126
    const v3, 0x7f07099c

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1130
    .line 1131
    .line 1132
    move-result v24

    .line 1133
    const v3, 0x7f07099d

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1137
    .line 1138
    .line 1139
    move-result v25

    .line 1140
    new-instance v15, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 1141
    .line 1142
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v22

    .line 1146
    const/high16 v26, 0x3f800000    # 1.0f

    .line 1147
    .line 1148
    const/16 v29, 0x0

    .line 1149
    .line 1150
    const/16 v31, 0x0

    .line 1151
    .line 1152
    move-object/from16 v21, v15

    .line 1153
    .line 1154
    invoke-direct/range {v21 .. v31}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 1155
    .line 1156
    .line 1157
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1158
    .line 1159
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v11

    .line 1163
    const/16 v16, 0x0

    .line 1164
    .line 1165
    const/16 v19, 0x4

    .line 1166
    .line 1167
    move-object v10, v2

    .line 1168
    invoke-direct/range {v10 .. v20}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1169
    .line 1170
    .line 1171
    iput-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1172
    .line 1173
    return-void
.end method
